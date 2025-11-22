import 'package:me_app/app/domain/entity/career.dart';
import 'package:me_app/app/domain/entity/profile.dart';
import 'package:me_app/app/domain/entity/project.dart';
import 'package:me_app/app/domain/entity/skill.dart';

abstract class ProfileRepository {
  /// プロフィールを取得
  Future<Profile?> getProfile(String profileId);

  /// プロフィールを作成
  Future<Profile> createProfile(Profile profile);

  /// プロフィールを更新
  Future<Profile> updateProfile(Profile profile);

  /// スキル一覧を取得
  Future<List<Skill>> getSkills(String profileId);

  /// スキルを追加
  Future<Skill> addSkill(Skill skill);

  /// スキルを更新
  Future<Skill> updateSkill(Skill skill);

  /// スキルを削除
  Future<void> deleteSkill(String skillId);

  /// 経歴一覧を取得
  Future<List<Career>> getCareers(String profileId);

  /// 経歴を追加
  Future<Career> addCareer(Career career);

  /// 経歴を更新
  Future<Career> updateCareer(Career career);

  /// 経歴を削除
  Future<void> deleteCareer(String careerId);

  /// プロジェクト一覧を取得
  Future<List<Project>> getProjects(String profileId);

  /// プロジェクトを追加
  Future<Project> addProject(Project project);

  /// プロジェクトを更新
  Future<Project> updateProject(Project project);

  /// プロジェクトを削除
  Future<void> deleteProject(String projectId);
}

