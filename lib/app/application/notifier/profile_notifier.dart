import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:me_app/app/domain/entity/career.dart';
import 'package:me_app/app/domain/entity/profile.dart';
import 'package:me_app/app/domain/entity/project.dart';
import 'package:me_app/app/domain/entity/skill.dart';
import 'package:me_app/app/domain/repository/profile_repository.dart';
import 'package:me_app/app/infrastructure/repository/profile_repository_impl.dart';

final profileRepositoryProvider = Provider<ProfileRepository>((ref) {
  return ProfileRepositoryImpl();
});

final profileNotifierProvider =
    NotifierProvider<ProfileNotifier, ProfileState>(() {
  return ProfileNotifier();
});

class ProfileState {
  final Profile? profile;
  final List<Skill> skills;
  final List<Career> careers;
  final List<Project> projects;
  final bool isLoading;
  final String? error;
  final bool hasLoaded;
  final String? currentProfileId;

  ProfileState({
    this.profile,
    this.skills = const [],
    this.careers = const [],
    this.projects = const [],
    this.isLoading = false,
    this.error,
    this.hasLoaded = false,
    this.currentProfileId,
  });

  ProfileState copyWith({
    Profile? profile,
    List<Skill>? skills,
    List<Career>? careers,
    List<Project>? projects,
    bool? isLoading,
    String? error,
    bool? hasLoaded,
    String? currentProfileId,
  }) {
    return ProfileState(
      profile: profile ?? this.profile,
      skills: skills ?? this.skills,
      careers: careers ?? this.careers,
      projects: projects ?? this.projects,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      hasLoaded: hasLoaded ?? this.hasLoaded,
      currentProfileId: currentProfileId ?? this.currentProfileId,
    );
  }
}

class ProfileNotifier extends Notifier<ProfileState> {
  @override
  ProfileState build() {
    return ProfileState();
  }

  ProfileRepository get _repository => ref.read(profileRepositoryProvider);

  Future<void> loadProfile(String profileId, {bool forceReload = false}) async {
    // 既にロード中、または同じプロフィールIDで既にロード済みの場合はスキップ
    if (!forceReload) {
      if (state.isLoading) {
        return;
      }
      if (state.hasLoaded && state.currentProfileId == profileId && state.profile != null) {
        return;
      }
    }

    state = state.copyWith(
      isLoading: true,
      error: null,
      currentProfileId: profileId,
    );

    try {
      final profile = await _repository.getProfile(profileId);
      if (profile == null) {
        state = state.copyWith(
          isLoading: false,
          error: 'Profile not found',
          hasLoaded: true,
        );
        return;
      }

      final skills = await _repository.getSkills(profileId);
      final careers = await _repository.getCareers(profileId);
      final projects = await _repository.getProjects(profileId);

      state = state.copyWith(
        profile: profile,
        skills: skills,
        careers: careers,
        projects: projects,
        isLoading: false,
        hasLoaded: true,
        error: null,
      );
    } catch (e, stackTrace) {
      // エラーログを出力（本番環境では適切なロギングサービスを使用）
      debugPrint('Error loading profile: $e');
      debugPrint('Stack trace: $stackTrace');

      String errorMessage = 'Failed to load profile';
      
      final errorString = e.toString();
      
      // UUID形式エラーの検出
      if (errorString.contains('invalid input syntax for type uuid') ||
          errorString.contains('22P02')) {
        errorMessage = 'Invalid profile ID format. Please use a valid UUID.';
      } else if (errorString.contains('Network') || 
                 errorString.contains('connection') ||
                 errorString.contains('SocketException')) {
        errorMessage = 'Network error. Please check your connection.';
      } else if (errorString.contains('timeout')) {
        errorMessage = 'Request timeout. Please try again.';
      } else if (errorString.contains('404') || 
                 errorString.contains('not found') ||
                 errorString.contains('PGRST116')) {
        errorMessage = 'Profile not found';
      } else if (errorString.contains('400') || 
                 errorString.contains('Bad Request')) {
        errorMessage = 'Invalid request. Please check the profile ID.';
      } else if (errorString.contains('401') || 
                 errorString.contains('Unauthorized')) {
        errorMessage = 'Authentication required. Please log in.';
      } else if (errorString.contains('403') || 
                 errorString.contains('Forbidden')) {
        errorMessage = 'Access denied. You don\'t have permission.';
      } else if (errorString.contains('500') || 
                 errorString.contains('Internal Server Error')) {
        errorMessage = 'Server error. Please try again later.';
      }

      state = state.copyWith(
        isLoading: false,
        error: errorMessage,
        hasLoaded: true,
      );
    }
  }

  Future<void> updateProfile(Profile profile) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final updatedProfile = await _repository.updateProfile(profile);
      state = state.copyWith(
        profile: updatedProfile,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  Future<void> addSkill(Skill skill) async {
    try {
      final newSkill = await _repository.addSkill(skill);
      state = state.copyWith(
        skills: [...state.skills, newSkill],
      );
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }

  Future<void> addCareer(Career career) async {
    try {
      final newCareer = await _repository.addCareer(career);
      state = state.copyWith(
        careers: [...state.careers, newCareer],
      );
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }

  Future<void> addProject(Project project) async {
    try {
      final newProject = await _repository.addProject(project);
      state = state.copyWith(
        projects: [...state.projects, newProject],
      );
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }
}

