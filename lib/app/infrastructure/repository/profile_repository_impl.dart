import 'package:me_app/app/domain/entity/career.dart';
import 'package:me_app/app/domain/entity/profile.dart';
import 'package:me_app/app/domain/entity/project.dart';
import 'package:me_app/app/domain/entity/skill.dart';
import 'package:me_app/app/domain/repository/profile_repository.dart';
import 'package:me_app/app/infrastructure/supabase/supabase_client.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  @override
  Future<Profile?> getProfile(String profileId) async {
    final Map<String, dynamic>? response = await SupabaseClient.database
        .from('profiles')
        .select()
        .eq('id', profileId)
        .maybeSingle();

    if (response == null) {
      return null;
    }

    return Profile.fromJson(response);
  }

  @override
  Future<Profile> createProfile(Profile profile) async {
    final Map<String, dynamic> response = await SupabaseClient.database
        .from('profiles')
        .insert(profile.toJson())
        .select()
        .single();

    return Profile.fromJson(response);
  }

  @override
  Future<Profile> updateProfile(Profile profile) async {
    final Map<String, dynamic> response = await SupabaseClient.database
        .from('profiles')
        .update(profile.toJson())
        .eq('id', profile.id)
        .select()
        .single();

    return Profile.fromJson(response);
  }

  @override
  Future<List<Skill>> getSkills(String profileId) async {
    final List<dynamic> response = await SupabaseClient.database
        .from('skills')
        .select()
        .eq('profile_id', profileId)
        .order('created_at', ascending: false);

    if (response.isEmpty) {
      return [];
    }

    return response
        .map((json) => Skill.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<Skill> addSkill(Skill skill) async {
    final Map<String, dynamic> response = await SupabaseClient.database
        .from('skills')
        .insert(skill.toJson())
        .select()
        .single();

    return Skill.fromJson(response);
  }

  @override
  Future<Skill> updateSkill(Skill skill) async {
    final Map<String, dynamic> response = await SupabaseClient.database
        .from('skills')
        .update(skill.toJson())
        .eq('id', skill.id)
        .select()
        .single();

    return Skill.fromJson(response);
  }

  @override
  Future<void> deleteSkill(String skillId) async {
    await SupabaseClient.database
        .from('skills')
        .delete()
        .eq('id', skillId)
        ;
  }

  @override
  Future<List<Career>> getCareers(String profileId) async {
    final List<dynamic> response = await SupabaseClient.database
        .from('careers')
        .select()
        .eq('profile_id', profileId)
        .order('start_date', ascending: false);

    if (response.isEmpty) {
      return [];
    }

    return response
        .map((json) => Career.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<Career> addCareer(Career career) async {
    final Map<String, dynamic> response = await SupabaseClient.database
        .from('careers')
        .insert(career.toJson())
        .select()
        .single();

    return Career.fromJson(response);
  }

  @override
  Future<Career> updateCareer(Career career) async {
    final Map<String, dynamic> response = await SupabaseClient.database
        .from('careers')
        .update(career.toJson())
        .eq('id', career.id)
        .select()
        .single();

    return Career.fromJson(response);
  }

  @override
  Future<void> deleteCareer(String careerId) async {
    await SupabaseClient.database
        .from('careers')
        .delete()
        .eq('id', careerId)
        ;
  }

  @override
  Future<List<Project>> getProjects(String profileId) async {
    final List<dynamic> response = await SupabaseClient.database
        .from('projects')
        .select()
        .eq('profile_id', profileId)
        .order('created_at', ascending: false);

    if (response.isEmpty) {
      return [];
    }

    return response
        .map((json) => Project.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<Project> addProject(Project project) async {
    final Map<String, dynamic> response = await SupabaseClient.database
        .from('projects')
        .insert(project.toJson())
        .select()
        .single();

    return Project.fromJson(response);
  }

  @override
  Future<Project> updateProject(Project project) async {
    final Map<String, dynamic> response = await SupabaseClient.database
        .from('projects')
        .update(project.toJson())
        .eq('id', project.id)
        .select()
        .single();

    return Project.fromJson(response);
  }

  @override
  Future<void> deleteProject(String projectId) async {
    await SupabaseClient.database
        .from('projects')
        .delete()
        .eq('id', projectId)
        ;
  }
}

