// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// SanitizerGenerator
// **************************************************************************

import 'package:equatable/equatable.dart';
import 'package:schema/schema.dart';
import 'package:schools_app/src/domain/graphql/schools_app.graphql.dart'; // Sanitized Query$GetClassNameAndYear by ResponseClassBuilder

class GetClassNameAndYearResponse with EquatableMixin {
  GetClassNameAndYearResponse({
    required this.classNameAndYear,
    required this.$__typename,
  });

  factory GetClassNameAndYearResponse.fromGen(Query$GetClassNameAndYear gen) =>
      GetClassNameAndYearResponse(
        classNameAndYear: ClassNameAndYear.fromGen(gen.classNameAndYear),
        $__typename: gen.$__typename,
      );

  final ClassNameAndYear classNameAndYear;

  final String $__typename;

  @override
  List<Object?> get props => [
        classNameAndYear,
        $__typename,
      ];
  GetClassNameAndYearResponse copyWith({ClassNameAndYear? classNameAndYear}) =>
      GetClassNameAndYearResponse(
        classNameAndYear: classNameAndYear ?? this.classNameAndYear,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetClassNameAndYear$classNameAndYear$nYear by FieldClassBuilder
class NYear with EquatableMixin {
  NYear({
    required this.id,
    required this.$__typename,
  });

  factory NYear.fromGen(Query$GetClassNameAndYear$classNameAndYear$nYear gen) =>
      NYear(
        id: gen.id,
        $__typename: gen.$__typename,
      );

  final String id;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        $__typename,
      ];
  NYear copyWith({String? id}) => NYear(
        id: id ?? this.id,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetClassNameAndYear$classNameAndYear by FieldClassBuilder
class ClassNameAndYear with EquatableMixin {
  ClassNameAndYear({
    required this.name,
    required this.nYear,
    required this.$__typename,
  });

  factory ClassNameAndYear.fromGen(
          Query$GetClassNameAndYear$classNameAndYear gen) =>
      ClassNameAndYear(
        name: gen.name,
        nYear: NYear.fromGen(gen.nYear),
        $__typename: gen.$__typename,
      );

  final String name;

  final NYear nYear;

  final String $__typename;

  @override
  List<Object?> get props => [
        name,
        nYear,
        $__typename,
      ];
  ClassNameAndYear copyWith({
    String? name,
    NYear? nYear,
  }) =>
      ClassNameAndYear(
        name: name ?? this.name,
        nYear: nYear ?? this.nYear,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetClassName by ResponseClassBuilder
class GetClassNameResponse with EquatableMixin {
  GetClassNameResponse({
    required this.className,
    required this.$__typename,
  });

  factory GetClassNameResponse.fromGen(Query$GetClassName gen) =>
      GetClassNameResponse(
        className: ClassName.fromGen(gen.className),
        $__typename: gen.$__typename,
      );

  final ClassName className;

  final String $__typename;

  @override
  List<Object?> get props => [
        className,
        $__typename,
      ];
  GetClassNameResponse copyWith({ClassName? className}) => GetClassNameResponse(
        className: className ?? this.className,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetClassName$className by FieldClassBuilder
class ClassName with EquatableMixin {
  ClassName({
    required this.name,
    required this.$__typename,
  });

  factory ClassName.fromGen(Query$GetClassName$className gen) => ClassName(
        name: gen.name,
        $__typename: gen.$__typename,
      );

  final String name;

  final String $__typename;

  @override
  List<Object?> get props => [
        name,
        $__typename,
      ];
  ClassName copyWith({String? name}) => ClassName(
        name: name ?? this.name,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetYearTitles by ResponseClassBuilder
class GetYearTitlesResponse with EquatableMixin {
  GetYearTitlesResponse({
    required this.allYears,
    required this.$__typename,
  });

  factory GetYearTitlesResponse.fromGen(Query$GetYearTitles gen) =>
      GetYearTitlesResponse(
        allYears: gen.allYears.map(AllYears.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final List<AllYears> allYears;

  final String $__typename;

  @override
  List<Object?> get props => [
        allYears,
        $__typename,
      ];
  GetYearTitlesResponse copyWith({List<AllYears>? allYears}) =>
      GetYearTitlesResponse(
        allYears: allYears ?? this.allYears,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetYearTitles$allYears by FieldClassBuilder
class AllYears with EquatableMixin {
  AllYears({
    required this.id,
    required this.title,
    required this.$__typename,
  });

  factory AllYears.fromGen(Query$GetYearTitles$allYears gen) => AllYears(
        id: gen.id,
        title: gen.title,
        $__typename: gen.$__typename,
      );

  final String id;

  final String title;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        title,
        $__typename,
      ];
  AllYears copyWith({
    String? id,
    String? title,
  }) =>
      AllYears(
        id: id ?? this.id,
        title: title ?? this.title,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetClassStudentSettings by ResponseClassBuilder
class GetClassStudentSettingsResponse with EquatableMixin {
  GetClassStudentSettingsResponse({
    required this.classStudentSettings,
    required this.$__typename,
  });

  factory GetClassStudentSettingsResponse.fromGen(
          Query$GetClassStudentSettings gen) =>
      GetClassStudentSettingsResponse(
        classStudentSettings:
            ClassStudentSettings.fromGen(gen.classStudentSettings),
        $__typename: gen.$__typename,
      );

  final ClassStudentSettings classStudentSettings;

  final String $__typename;

  @override
  List<Object?> get props => [
        classStudentSettings,
        $__typename,
      ];
  GetClassStudentSettingsResponse copyWith(
          {ClassStudentSettings? classStudentSettings}) =>
      GetClassStudentSettingsResponse(
        classStudentSettings: classStudentSettings ?? this.classStudentSettings,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetClassStudentSettings$classStudentSettings$students$settingsUser by FieldClassBuilder
class SettingsUser with EquatableMixin {
  SettingsUser({
    required this.id,
    required this.$__typename,
  });

  factory SettingsUser.fromGen(
          Query$GetClassStudentSettings$classStudentSettings$students$settingsUser
              gen) =>
      SettingsUser(
        id: gen.id,
        $__typename: gen.$__typename,
      );

  final String id;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        $__typename,
      ];
  SettingsUser copyWith({String? id}) => SettingsUser(
        id: id ?? this.id,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetClassStudentSettings$classStudentSettings$students by FieldClassBuilder
class Students with EquatableMixin {
  Students({
    required this.settingsUser,
    required this.$__typename,
  });

  factory Students.fromGen(
          Query$GetClassStudentSettings$classStudentSettings$students gen) =>
      Students(
        settingsUser: SettingsUser.fromGen(gen.settingsUser),
        $__typename: gen.$__typename,
      );

  final SettingsUser settingsUser;

  final String $__typename;

  @override
  List<Object?> get props => [
        settingsUser,
        $__typename,
      ];
  Students copyWith({SettingsUser? settingsUser}) => Students(
        settingsUser: settingsUser ?? this.settingsUser,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetClassStudentSettings$classStudentSettings by FieldClassBuilder
class ClassStudentSettings with EquatableMixin {
  ClassStudentSettings({
    required this.code,
    required this.students,
    required this.$__typename,
  });

  factory ClassStudentSettings.fromGen(
          Query$GetClassStudentSettings$classStudentSettings gen) =>
      ClassStudentSettings(
        code: gen.code,
        students: gen.students.map(Students.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final String code;

  final List<Students> students;

  final String $__typename;

  @override
  List<Object?> get props => [
        code,
        students,
        $__typename,
      ];
  ClassStudentSettings copyWith({
    String? code,
    List<Students>? students,
  }) =>
      ClassStudentSettings(
        code: code ?? this.code,
        students: students ?? this.students,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetRegions by ResponseClassBuilder
class GetRegionsResponse with EquatableMixin {
  GetRegionsResponse({
    required this.allRegions,
    required this.$__typename,
  });

  factory GetRegionsResponse.fromGen(Query$GetRegions gen) =>
      GetRegionsResponse(
        allRegions: gen.allRegions.map(AllRegions.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final List<AllRegions> allRegions;

  final String $__typename;

  @override
  List<Object?> get props => [
        allRegions,
        $__typename,
      ];
  GetRegionsResponse copyWith({List<AllRegions>? allRegions}) =>
      GetRegionsResponse(
        allRegions: allRegions ?? this.allRegions,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetRegions$allRegions by FieldClassBuilder
class AllRegions with EquatableMixin {
  AllRegions({
    required this.id,
    required this.title,
    required this.defaultTimeZone,
    required this.$__typename,
  });

  factory AllRegions.fromGen(Query$GetRegions$allRegions gen) => AllRegions(
        id: gen.id,
        title: gen.title,
        defaultTimeZone: gen.defaultTimeZone,
        $__typename: gen.$__typename,
      );

  final String id;

  final String title;

  final String defaultTimeZone;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        title,
        defaultTimeZone,
        $__typename,
      ];
  AllRegions copyWith({
    String? id,
    String? title,
    String? defaultTimeZone,
  }) =>
      AllRegions(
        id: id ?? this.id,
        title: title ?? this.title,
        defaultTimeZone: defaultTimeZone ?? this.defaultTimeZone,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetClasses by ResponseClassBuilder
class GetClassesResponse with EquatableMixin {
  GetClassesResponse({
    required this.getClassesTeacher,
    required this.$__typename,
  });

  factory GetClassesResponse.fromGen(Query$GetClasses gen) =>
      GetClassesResponse(
        getClassesTeacher: GetClassesTeacher.fromGen(gen.getClassesTeacher),
        $__typename: gen.$__typename,
      );

  final GetClassesTeacher getClassesTeacher;

  final String $__typename;

  @override
  List<Object?> get props => [
        getClassesTeacher,
        $__typename,
      ];
  GetClassesResponse copyWith({GetClassesTeacher? getClassesTeacher}) =>
      GetClassesResponse(
        getClassesTeacher: getClassesTeacher ?? this.getClassesTeacher,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser by FieldClassBuilder
class TeacherStudentsUser with EquatableMixin {
  TeacherStudentsUser({
    required this.id,
    required this.$__typename,
  });

  factory TeacherStudentsUser.fromGen(
          Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser
              gen) =>
      TeacherStudentsUser(
        id: gen.id,
        $__typename: gen.$__typename,
      );

  final String id;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        $__typename,
      ];
  TeacherStudentsUser copyWith({String? id}) => TeacherStudentsUser(
        id: id ?? this.id,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents by FieldClassBuilder
class TeacherStudents with EquatableMixin {
  TeacherStudents({
    required this.teacherStudentsUser,
    required this.$__typename,
  });

  factory TeacherStudents.fromGen(
          Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents
              gen) =>
      TeacherStudents(
        teacherStudentsUser:
            TeacherStudentsUser.fromGen(gen.teacherStudentsUser),
        $__typename: gen.$__typename,
      );

  final TeacherStudentsUser teacherStudentsUser;

  final String $__typename;

  @override
  List<Object?> get props => [
        teacherStudentsUser,
        $__typename,
      ];
  TeacherStudents copyWith({TeacherStudentsUser? teacherStudentsUser}) =>
      TeacherStudents(
        teacherStudentsUser: teacherStudentsUser ?? this.teacherStudentsUser,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses by FieldClassBuilder
class TeacherClasses with EquatableMixin {
  TeacherClasses({
    required this.id,
    required this.name,
    required this.code,
    required this.teacherStudents,
    required this.$__typename,
  });

  factory TeacherClasses.fromGen(
          Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses
              gen) =>
      TeacherClasses(
        id: gen.id,
        name: gen.name,
        code: gen.code,
        teacherStudents:
            gen.teacherStudents.map(TeacherStudents.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final String id;

  final String name;

  final String code;

  final List<TeacherStudents> teacherStudents;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        name,
        code,
        teacherStudents,
        $__typename,
      ];
  TeacherClasses copyWith({
    String? id,
    String? name,
    String? code,
    List<TeacherStudents>? teacherStudents,
  }) =>
      TeacherClasses(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        teacherStudents: teacherStudents ?? this.teacherStudents,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetClasses$getClassesTeacher$getClassesSchool by FieldClassBuilder
class GetClassesSchool with EquatableMixin {
  GetClassesSchool({
    required this.teacherClasses,
    required this.$__typename,
  });

  factory GetClassesSchool.fromGen(
          Query$GetClasses$getClassesTeacher$getClassesSchool gen) =>
      GetClassesSchool(
        teacherClasses: gen.teacherClasses.map(TeacherClasses.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final List<TeacherClasses> teacherClasses;

  final String $__typename;

  @override
  List<Object?> get props => [
        teacherClasses,
        $__typename,
      ];
  GetClassesSchool copyWith({List<TeacherClasses>? teacherClasses}) =>
      GetClassesSchool(
        teacherClasses: teacherClasses ?? this.teacherClasses,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetClasses$getClassesTeacher by FieldClassBuilder
class GetClassesTeacher with EquatableMixin {
  GetClassesTeacher({
    this.getClassesSchool,
    required this.$__typename,
  });

  factory GetClassesTeacher.fromGen(Query$GetClasses$getClassesTeacher gen) =>
      GetClassesTeacher(
        getClassesSchool: gen.getClassesSchool == null
            ? null
            : GetClassesSchool.fromGen(gen.getClassesSchool!),
        $__typename: gen.$__typename,
      );

  final GetClassesSchool? getClassesSchool;

  final String $__typename;

  @override
  List<Object?> get props => [
        getClassesSchool,
        $__typename,
      ];
  GetClassesTeacher copyWith({GetClassesSchool? getClassesSchool}) =>
      GetClassesTeacher(
        getClassesSchool: getClassesSchool ?? this.getClassesSchool,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetNewClass by ResponseClassBuilder
class GetNewClassResponse with EquatableMixin {
  GetNewClassResponse({
    required this.newClass,
    required this.$__typename,
  });

  factory GetNewClassResponse.fromGen(Query$GetNewClass gen) =>
      GetNewClassResponse(
        newClass: NewClass.fromGen(gen.newClass),
        $__typename: gen.$__typename,
      );

  final NewClass newClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        newClass,
        $__typename,
      ];
  GetNewClassResponse copyWith({NewClass? newClass}) => GetNewClassResponse(
        newClass: newClass ?? this.newClass,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetNewClass$newClass$newClassStudents$newClassUser by FieldClassBuilder
class NewClassUser with EquatableMixin {
  NewClassUser({
    required this.id,
    required this.$__typename,
  });

  factory NewClassUser.fromGen(
          Query$GetNewClass$newClass$newClassStudents$newClassUser gen) =>
      NewClassUser(
        id: gen.id,
        $__typename: gen.$__typename,
      );

  final String id;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        $__typename,
      ];
  NewClassUser copyWith({String? id}) => NewClassUser(
        id: id ?? this.id,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetNewClass$newClass$newClassStudents by FieldClassBuilder
class NewClassStudents with EquatableMixin {
  NewClassStudents({
    required this.newClassUser,
    required this.$__typename,
  });

  factory NewClassStudents.fromGen(
          Query$GetNewClass$newClass$newClassStudents gen) =>
      NewClassStudents(
        newClassUser: NewClassUser.fromGen(gen.newClassUser),
        $__typename: gen.$__typename,
      );

  final NewClassUser newClassUser;

  final String $__typename;

  @override
  List<Object?> get props => [
        newClassUser,
        $__typename,
      ];
  NewClassStudents copyWith({NewClassUser? newClassUser}) => NewClassStudents(
        newClassUser: newClassUser ?? this.newClassUser,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetNewClass$newClass by FieldClassBuilder
class NewClass with EquatableMixin {
  NewClass({
    required this.id,
    required this.name,
    required this.code,
    required this.newClassStudents,
    required this.$__typename,
  });

  factory NewClass.fromGen(Query$GetNewClass$newClass gen) => NewClass(
        id: gen.id,
        name: gen.name,
        code: gen.code,
        newClassStudents:
            gen.newClassStudents.map(NewClassStudents.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final String id;

  final String name;

  final String code;

  final List<NewClassStudents> newClassStudents;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        name,
        code,
        newClassStudents,
        $__typename,
      ];
  NewClass copyWith({
    String? id,
    String? name,
    String? code,
    List<NewClassStudents>? newClassStudents,
  }) =>
      NewClass(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        newClassStudents: newClassStudents ?? this.newClassStudents,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetClassItemInfo by ResponseClassBuilder
class GetClassItemInfoResponse with EquatableMixin {
  GetClassItemInfoResponse({
    required this.updatedClass,
    required this.$__typename,
  });

  factory GetClassItemInfoResponse.fromGen(Query$GetClassItemInfo gen) =>
      GetClassItemInfoResponse(
        updatedClass: UpdatedClass.fromGen(gen.updatedClass),
        $__typename: gen.$__typename,
      );

  final UpdatedClass updatedClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        updatedClass,
        $__typename,
      ];
  GetClassItemInfoResponse copyWith({UpdatedClass? updatedClass}) =>
      GetClassItemInfoResponse(
        updatedClass: updatedClass ?? this.updatedClass,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetClassItemInfo$updatedClass by FieldClassBuilder
class UpdatedClass with EquatableMixin {
  UpdatedClass({
    required this.id,
    required this.name,
    required this.code,
    required this.$__typename,
  });

  factory UpdatedClass.fromGen(Query$GetClassItemInfo$updatedClass gen) =>
      UpdatedClass(
        id: gen.id,
        name: gen.name,
        code: gen.code,
        $__typename: gen.$__typename,
      );

  final String id;

  final String name;

  final String code;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        name,
        code,
        $__typename,
      ];
  UpdatedClass copyWith({
    String? id,
    String? name,
    String? code,
  }) =>
      UpdatedClass(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetUserRoles by ResponseClassBuilder
class GetUserRolesResponse with EquatableMixin {
  GetUserRolesResponse({
    required this.userRoles,
    required this.$__typename,
  });

  factory GetUserRolesResponse.fromGen(Query$GetUserRoles gen) =>
      GetUserRolesResponse(
        userRoles: UserRoles.fromGen(gen.userRoles),
        $__typename: gen.$__typename,
      );

  final UserRoles userRoles;

  final String $__typename;

  @override
  List<Object?> get props => [
        userRoles,
        $__typename,
      ];
  GetUserRolesResponse copyWith({UserRoles? userRoles}) => GetUserRolesResponse(
        userRoles: userRoles ?? this.userRoles,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetUserRoles$userRoles by FieldClassBuilder
class UserRoles with EquatableMixin {
  UserRoles({
    required this.id,
    required this.roles,
    required this.$__typename,
  });

  factory UserRoles.fromGen(Query$GetUserRoles$userRoles gen) => UserRoles(
        id: gen.id,
        roles: gen.roles.map(fromUserRoleGen).toList(),
        $__typename: gen.$__typename,
      );

  final String id;

  final List<UserRole> roles;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        roles,
        $__typename,
      ];
  UserRoles copyWith({
    String? id,
    List<UserRole>? roles,
  }) =>
      UserRoles(
        id: id ?? this.id,
        roles: roles ?? this.roles,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetStudents by ResponseClassBuilder
class GetStudentsResponse with EquatableMixin {
  GetStudentsResponse({
    required this.$class,
    required this.$__typename,
  });

  factory GetStudentsResponse.fromGen(Query$GetStudents gen) =>
      GetStudentsResponse(
        $class: Class.fromGen(gen.$class),
        $__typename: gen.$__typename,
      );

  final Class $class;

  final String $__typename;

  @override
  List<Object?> get props => [
        $class,
        $__typename,
      ];
  GetStudentsResponse copyWith({Class? $class}) => GetStudentsResponse(
        $class: $class ?? this.$class,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetStudents$class$classStudents$classUser by FieldClassBuilder
class ClassUser with EquatableMixin {
  ClassUser({
    required this.id,
    required this.$__typename,
  });

  factory ClassUser.fromGen(
          Query$GetStudents$class$classStudents$classUser gen) =>
      ClassUser(
        id: gen.id,
        $__typename: gen.$__typename,
      );

  final String id;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        $__typename,
      ];
  ClassUser copyWith({String? id}) => ClassUser(
        id: id ?? this.id,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetStudents$class$classStudents by FieldClassBuilder
class ClassStudents with EquatableMixin {
  ClassStudents({
    required this.classUser,
    required this.$__typename,
  });

  factory ClassStudents.fromGen(Query$GetStudents$class$classStudents gen) =>
      ClassStudents(
        classUser: ClassUser.fromGen(gen.classUser),
        $__typename: gen.$__typename,
      );

  final ClassUser classUser;

  final String $__typename;

  @override
  List<Object?> get props => [
        classUser,
        $__typename,
      ];
  ClassStudents copyWith({ClassUser? classUser}) => ClassStudents(
        classUser: classUser ?? this.classUser,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetStudents$class by FieldClassBuilder
class Class with EquatableMixin {
  Class({
    required this.classStudents,
    required this.$__typename,
  });

  factory Class.fromGen(Query$GetStudents$class gen) => Class(
        classStudents: gen.classStudents.map(ClassStudents.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final List<ClassStudents> classStudents;

  final String $__typename;

  @override
  List<Object?> get props => [
        classStudents,
        $__typename,
      ];
  Class copyWith({List<ClassStudents>? classStudents}) => Class(
        classStudents: classStudents ?? this.classStudents,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetUpcomingAssessments by ResponseClassBuilder
class GetUpcomingAssessmentsResponse with EquatableMixin {
  GetUpcomingAssessmentsResponse({
    required this.student,
    required this.$__typename,
  });

  factory GetUpcomingAssessmentsResponse.fromGen(
          Query$GetUpcomingAssessments gen) =>
      GetUpcomingAssessmentsResponse(
        student: Student.fromGen(gen.student),
        $__typename: gen.$__typename,
      );

  final Student student;

  final String $__typename;

  @override
  List<Object?> get props => [
        student,
        $__typename,
      ];
  GetUpcomingAssessmentsResponse copyWith({Student? student}) =>
      GetUpcomingAssessmentsResponse(
        student: student ?? this.student,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetUpcomingAssessments$student$upcomingTests$session by FieldClassBuilder
class Session with EquatableMixin {
  Session({
    required this.id,
    required this.startAt,
    required this.duration,
    required this.name,
    required this.$__typename,
  });

  factory Session.fromGen(
          Query$GetUpcomingAssessments$student$upcomingTests$session gen) =>
      Session(
        id: gen.id,
        startAt: gen.startAt,
        duration: gen.duration,
        name: gen.name,
        $__typename: gen.$__typename,
      );

  final String id;

  final DateTime startAt;

  final Duration duration;

  final String name;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        startAt,
        duration,
        name,
        $__typename,
      ];
  Session copyWith({
    String? id,
    DateTime? startAt,
    Duration? duration,
    String? name,
  }) =>
      Session(
        id: id ?? this.id,
        startAt: startAt ?? this.startAt,
        duration: duration ?? this.duration,
        name: name ?? this.name,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetUpcomingAssessments$student$upcomingTests by FieldClassBuilder
class UpcomingTests with EquatableMixin {
  UpcomingTests({
    required this.id,
    this.session,
    required this.$__typename,
  });

  factory UpcomingTests.fromGen(
          Query$GetUpcomingAssessments$student$upcomingTests gen) =>
      UpcomingTests(
        id: gen.id,
        session: gen.session == null ? null : Session.fromGen(gen.session!),
        $__typename: gen.$__typename,
      );

  final String id;

  final Session? session;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        session,
        $__typename,
      ];
  UpcomingTests copyWith({
    String? id,
    Session? session,
  }) =>
      UpcomingTests(
        id: id ?? this.id,
        session: session ?? this.session,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetUpcomingAssessments$student by FieldClassBuilder
class Student with EquatableMixin {
  Student({
    this.upcomingTests,
    required this.$__typename,
  });

  factory Student.fromGen(Query$GetUpcomingAssessments$student gen) => Student(
        upcomingTests: gen.upcomingTests?.map(UpcomingTests.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final List<UpcomingTests>? upcomingTests;

  final String $__typename;

  @override
  List<Object?> get props => [
        upcomingTests,
        $__typename,
      ];
  Student copyWith({List<UpcomingTests>? upcomingTests}) => Student(
        upcomingTests: upcomingTests ?? this.upcomingTests,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetActiveTestForStudent by ResponseClassBuilder
class GetActiveTestForStudentResponse with EquatableMixin {
  GetActiveTestForStudentResponse({
    required this.activeTestStudent,
    required this.$__typename,
  });

  factory GetActiveTestForStudentResponse.fromGen(
          Query$GetActiveTestForStudent gen) =>
      GetActiveTestForStudentResponse(
        activeTestStudent: ActiveTestStudent.fromGen(gen.activeTestStudent),
        $__typename: gen.$__typename,
      );

  final ActiveTestStudent activeTestStudent;

  final String $__typename;

  @override
  List<Object?> get props => [
        activeTestStudent,
        $__typename,
      ];
  GetActiveTestForStudentResponse copyWith(
          {ActiveTestStudent? activeTestStudent}) =>
      GetActiveTestForStudentResponse(
        activeTestStudent: activeTestStudent ?? this.activeTestStudent,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession by FieldClassBuilder
class ActiveTestSession with EquatableMixin {
  ActiveTestSession({
    required this.status,
    required this.$__typename,
  });

  factory ActiveTestSession.fromGen(
          Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession
              gen) =>
      ActiveTestSession(
        status: fromDiagnosticTestSessionStatusGen(gen.status),
        $__typename: gen.$__typename,
      );

  final DiagnosticTestSessionStatus status;

  final String $__typename;

  @override
  List<Object?> get props => [
        status,
        $__typename,
      ];
  ActiveTestSession copyWith({DiagnosticTestSessionStatus? status}) =>
      ActiveTestSession(
        status: status ?? this.status,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetActiveTestForStudent$activeTestStudent$activeTest by FieldClassBuilder
class ActiveTest with EquatableMixin {
  ActiveTest({
    required this.id,
    this.activeTestSession,
    required this.$__typename,
  });

  factory ActiveTest.fromGen(
          Query$GetActiveTestForStudent$activeTestStudent$activeTest gen) =>
      ActiveTest(
        id: gen.id,
        activeTestSession: gen.activeTestSession == null
            ? null
            : ActiveTestSession.fromGen(gen.activeTestSession!),
        $__typename: gen.$__typename,
      );

  final String id;

  final ActiveTestSession? activeTestSession;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        activeTestSession,
        $__typename,
      ];
  ActiveTest copyWith({
    String? id,
    ActiveTestSession? activeTestSession,
  }) =>
      ActiveTest(
        id: id ?? this.id,
        activeTestSession: activeTestSession ?? this.activeTestSession,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetActiveTestForStudent$activeTestStudent by FieldClassBuilder
class ActiveTestStudent with EquatableMixin {
  ActiveTestStudent({
    this.activeTest,
    required this.$__typename,
  });

  factory ActiveTestStudent.fromGen(
          Query$GetActiveTestForStudent$activeTestStudent gen) =>
      ActiveTestStudent(
        activeTest:
            gen.activeTest == null ? null : ActiveTest.fromGen(gen.activeTest!),
        $__typename: gen.$__typename,
      );

  final ActiveTest? activeTest;

  final String $__typename;

  @override
  List<Object?> get props => [
        activeTest,
        $__typename,
      ];
  ActiveTestStudent copyWith({ActiveTest? activeTest}) => ActiveTestStudent(
        activeTest: activeTest ?? this.activeTest,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$UpdateClass by ResponseClassBuilder
class UpdateClassResponse with EquatableMixin {
  UpdateClassResponse({
    required this.updateClass,
    required this.$__typename,
  });

  factory UpdateClassResponse.fromGen(Mutation$UpdateClass gen) =>
      UpdateClassResponse(
        updateClass: UpdateClass.fromGen(gen.updateClass),
        $__typename: gen.$__typename,
      );

  final UpdateClass updateClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        updateClass,
        $__typename,
      ];
  UpdateClassResponse copyWith({UpdateClass? updateClass}) =>
      UpdateClassResponse(
        updateClass: updateClass ?? this.updateClass,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$UpdateClass$updateClass$cYear by FieldClassBuilder
class CYear with EquatableMixin {
  CYear({
    required this.id,
    required this.$__typename,
  });

  factory CYear.fromGen(Mutation$UpdateClass$updateClass$cYear gen) => CYear(
        id: gen.id,
        $__typename: gen.$__typename,
      );

  final String id;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        $__typename,
      ];
  CYear copyWith({String? id}) => CYear(
        id: id ?? this.id,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$UpdateClass$updateClass by FieldClassBuilder
class UpdateClass with EquatableMixin {
  UpdateClass({
    required this.name,
    required this.cYear,
    required this.$__typename,
  });

  factory UpdateClass.fromGen(Mutation$UpdateClass$updateClass gen) =>
      UpdateClass(
        name: gen.name,
        cYear: CYear.fromGen(gen.cYear),
        $__typename: gen.$__typename,
      );

  final String name;

  final CYear cYear;

  final String $__typename;

  @override
  List<Object?> get props => [
        name,
        cYear,
        $__typename,
      ];
  UpdateClass copyWith({
    String? name,
    CYear? cYear,
  }) =>
      UpdateClass(
        name: name ?? this.name,
        cYear: cYear ?? this.cYear,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$RemoveStudentFromClass by ResponseClassBuilder
class RemoveStudentFromClassResponse with EquatableMixin {
  RemoveStudentFromClassResponse({
    required this.removeStudentFromClass,
    required this.$__typename,
  });

  factory RemoveStudentFromClassResponse.fromGen(
          Mutation$RemoveStudentFromClass gen) =>
      RemoveStudentFromClassResponse(
        removeStudentFromClass:
            RemoveStudentFromClass.fromGen(gen.removeStudentFromClass),
        $__typename: gen.$__typename,
      );

  final RemoveStudentFromClass removeStudentFromClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        removeStudentFromClass,
        $__typename,
      ];
  RemoveStudentFromClassResponse copyWith(
          {RemoveStudentFromClass? removeStudentFromClass}) =>
      RemoveStudentFromClassResponse(
        removeStudentFromClass:
            removeStudentFromClass ?? this.removeStudentFromClass,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$RemoveStudentFromClass$removeStudentFromClass$year by FieldClassBuilder
class Year with EquatableMixin {
  Year({
    required this.title,
    required this.$__typename,
  });

  factory Year.fromGen(
          Mutation$RemoveStudentFromClass$removeStudentFromClass$year gen) =>
      Year(
        title: gen.title,
        $__typename: gen.$__typename,
      );

  final String title;

  final String $__typename;

  @override
  List<Object?> get props => [
        title,
        $__typename,
      ];
  Year copyWith({String? title}) => Year(
        title: title ?? this.title,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$RemoveStudentFromClass$removeStudentFromClass by FieldClassBuilder
class RemoveStudentFromClass with EquatableMixin {
  RemoveStudentFromClass({
    required this.id,
    required this.name,
    required this.year,
    required this.$__typename,
  });

  factory RemoveStudentFromClass.fromGen(
          Mutation$RemoveStudentFromClass$removeStudentFromClass gen) =>
      RemoveStudentFromClass(
        id: gen.id,
        name: gen.name,
        year: Year.fromGen(gen.year),
        $__typename: gen.$__typename,
      );

  final String id;

  final String name;

  final Year year;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        name,
        year,
        $__typename,
      ];
  RemoveStudentFromClass copyWith({
    String? id,
    String? name,
    Year? year,
  }) =>
      RemoveStudentFromClass(
        id: id ?? this.id,
        name: name ?? this.name,
        year: year ?? this.year,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$DeleteClass by ResponseClassBuilder
class DeleteClassResponse with EquatableMixin {
  DeleteClassResponse({
    required this.deleteClass,
    required this.$__typename,
  });

  factory DeleteClassResponse.fromGen(Mutation$DeleteClass gen) =>
      DeleteClassResponse(
        deleteClass: gen.deleteClass,
        $__typename: gen.$__typename,
      );

  final String deleteClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        deleteClass,
        $__typename,
      ];
  DeleteClassResponse copyWith({String? deleteClass}) => DeleteClassResponse(
        deleteClass: deleteClass ?? this.deleteClass,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$CreateSchool by ResponseClassBuilder
class CreateSchoolResponse with EquatableMixin {
  CreateSchoolResponse({
    required this.createSchool,
    required this.$__typename,
  });

  factory CreateSchoolResponse.fromGen(Mutation$CreateSchool gen) =>
      CreateSchoolResponse(
        createSchool: CreateSchool.fromGen(gen.createSchool),
        $__typename: gen.$__typename,
      );

  final CreateSchool createSchool;

  final String $__typename;

  @override
  List<Object?> get props => [
        createSchool,
        $__typename,
      ];
  CreateSchoolResponse copyWith({CreateSchool? createSchool}) =>
      CreateSchoolResponse(
        createSchool: createSchool ?? this.createSchool,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$CreateSchool$createSchool by FieldClassBuilder
class CreateSchool with EquatableMixin {
  CreateSchool({
    required this.id,
    required this.name,
    required this.regionID,
    required this.$__typename,
  });

  factory CreateSchool.fromGen(Mutation$CreateSchool$createSchool gen) =>
      CreateSchool(
        id: gen.id,
        name: gen.name,
        regionID: gen.regionID,
        $__typename: gen.$__typename,
      );

  final String id;

  final String name;

  final String regionID;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        name,
        regionID,
        $__typename,
      ];
  CreateSchool copyWith({
    String? id,
    String? name,
    String? regionID,
  }) =>
      CreateSchool(
        id: id ?? this.id,
        name: name ?? this.name,
        regionID: regionID ?? this.regionID,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$AddClass by ResponseClassBuilder
class AddClassResponse with EquatableMixin {
  AddClassResponse({
    required this.addClass,
    required this.$__typename,
  });

  factory AddClassResponse.fromGen(Mutation$AddClass gen) => AddClassResponse(
        addClass: AddClass.fromGen(gen.addClass),
        $__typename: gen.$__typename,
      );

  final AddClass addClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        addClass,
        $__typename,
      ];
  AddClassResponse copyWith({AddClass? addClass}) => AddClassResponse(
        addClass: addClass ?? this.addClass,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$AddClass$addClass by FieldClassBuilder
class AddClass with EquatableMixin {
  AddClass({
    required this.id,
    required this.$__typename,
  });

  factory AddClass.fromGen(Mutation$AddClass$addClass gen) => AddClass(
        id: gen.id,
        $__typename: gen.$__typename,
      );

  final String id;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        $__typename,
      ];
  AddClass copyWith({String? id}) => AddClass(
        id: id ?? this.id,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$StartStudentAssessment by ResponseClassBuilder
class StartStudentAssessmentResponse with EquatableMixin {
  StartStudentAssessmentResponse({
    required this.startExistingTest,
    required this.$__typename,
  });

  factory StartStudentAssessmentResponse.fromGen(
          Mutation$StartStudentAssessment gen) =>
      StartStudentAssessmentResponse(
        startExistingTest: StartExistingTest.fromGen(gen.startExistingTest),
        $__typename: gen.$__typename,
      );

  final StartExistingTest startExistingTest;

  final String $__typename;

  @override
  List<Object?> get props => [
        startExistingTest,
        $__typename,
      ];
  StartStudentAssessmentResponse copyWith(
          {StartExistingTest? startExistingTest}) =>
      StartStudentAssessmentResponse(
        startExistingTest: startExistingTest ?? this.startExistingTest,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$StartStudentAssessment$startExistingTest by FieldClassBuilder
class StartExistingTest with EquatableMixin {
  StartExistingTest({
    required this.id,
    required this.paused,
    this.startedAt,
    required this.$__typename,
  });

  factory StartExistingTest.fromGen(
          Mutation$StartStudentAssessment$startExistingTest gen) =>
      StartExistingTest(
        id: gen.id,
        paused: gen.paused,
        startedAt: gen.startedAt,
        $__typename: gen.$__typename,
      );

  final String id;

  final bool paused;

  final DateTime? startedAt;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        paused,
        startedAt,
        $__typename,
      ];
  StartExistingTest copyWith({
    String? id,
    bool? paused,
    DateTime? startedAt,
  }) =>
      StartExistingTest(
        id: id ?? this.id,
        paused: paused ?? this.paused,
        startedAt: startedAt ?? this.startedAt,
        $__typename: $__typename,
      );
}

// Sanitized Variables$Query$GetClassNameAndYear by ArgsClassBuilder
class GetClassNameAndYearArgs with EquatableMixin {
  GetClassNameAndYearArgs({required this.classId});

  final String classId;

  @override
  List<Object?> get props => [classId];
  Variables$Query$GetClassNameAndYear toGen() =>
      Variables$Query$GetClassNameAndYear(classId: classId);
}

// Sanitized Variables$Query$GetClassName by ArgsClassBuilder
class GetClassNameArgs with EquatableMixin {
  GetClassNameArgs({required this.classId});

  final String classId;

  @override
  List<Object?> get props => [classId];
  Variables$Query$GetClassName toGen() =>
      Variables$Query$GetClassName(classId: classId);
}

// Sanitized Variables$Query$GetYearTitles by ArgsClassBuilder
class GetYearTitlesArgs with EquatableMixin {
  GetYearTitlesArgs({this.options});

  final GetAllOptions? options;

  @override
  List<Object?> get props => [options];
  Variables$Query$GetYearTitles toGen() => Variables$Query$GetYearTitles(
          options: Input$GetAllOptions(
        sortBy: options?.sortBy,
        query: options?.query,
        ids: options?.ids,
        desc: options?.desc ?? false,
      ));
}

// Sanitized Variables$Query$GetClassStudentSettings by ArgsClassBuilder
class GetClassStudentSettingsArgs with EquatableMixin {
  GetClassStudentSettingsArgs({required this.classId});

  final String classId;

  @override
  List<Object?> get props => [classId];
  Variables$Query$GetClassStudentSettings toGen() =>
      Variables$Query$GetClassStudentSettings(classId: classId);
}

// Sanitized Variables$Query$GetRegions by ArgsClassBuilder
class GetRegionsArgs with EquatableMixin {
  GetRegionsArgs({this.options});

  final GetAllOptions? options;

  @override
  List<Object?> get props => [options];
  Variables$Query$GetRegions toGen() => Variables$Query$GetRegions(
          options: Input$GetAllOptions(
        sortBy: options?.sortBy,
        query: options?.query,
        ids: options?.ids,
        desc: options?.desc ?? false,
      ));
}

// Sanitized Variables$Query$GetNewClass by ArgsClassBuilder
class GetNewClassArgs with EquatableMixin {
  GetNewClassArgs({required this.classId});

  final String classId;

  @override
  List<Object?> get props => [classId];
  Variables$Query$GetNewClass toGen() =>
      Variables$Query$GetNewClass(classId: classId);
}

// Sanitized Variables$Query$GetClassItemInfo by ArgsClassBuilder
class GetClassItemInfoArgs with EquatableMixin {
  GetClassItemInfoArgs({required this.classId});

  final String classId;

  @override
  List<Object?> get props => [classId];
  Variables$Query$GetClassItemInfo toGen() =>
      Variables$Query$GetClassItemInfo(classId: classId);
}

// Sanitized Variables$Query$GetStudents by ArgsClassBuilder
class GetStudentsArgs with EquatableMixin {
  GetStudentsArgs({required this.classId});

  final String classId;

  @override
  List<Object?> get props => [classId];
  Variables$Query$GetStudents toGen() =>
      Variables$Query$GetStudents(classId: classId);
}

// Sanitized Variables$Query$GetUpcomingAssessments by ArgsClassBuilder
class GetUpcomingAssessmentsArgs with EquatableMixin {
  GetUpcomingAssessmentsArgs({required this.studentId});

  final String studentId;

  @override
  List<Object?> get props => [studentId];
  Variables$Query$GetUpcomingAssessments toGen() =>
      Variables$Query$GetUpcomingAssessments(studentId: studentId);
}

// Sanitized Variables$Query$GetActiveTestForStudent by ArgsClassBuilder
class GetActiveTestForStudentArgs with EquatableMixin {
  GetActiveTestForStudentArgs({required this.studentId});

  final String studentId;

  @override
  List<Object?> get props => [studentId];
  Variables$Query$GetActiveTestForStudent toGen() =>
      Variables$Query$GetActiveTestForStudent(studentId: studentId);
}

// Sanitized Variables$Mutation$UpdateClass by ArgsClassBuilder
class UpdateClassArgs with EquatableMixin {
  UpdateClassArgs({
    required this.updateClassId,
    required this.input,
  });

  final String updateClassId;

  final UpdateClassInput input;

  @override
  List<Object?> get props => [
        updateClassId,
        input,
      ];
  Variables$Mutation$UpdateClass toGen() => Variables$Mutation$UpdateClass(
        updateClassId: updateClassId,
        input: input.toGen(),
      );
}

// Sanitized Variables$Mutation$RemoveStudentFromClass by ArgsClassBuilder
class RemoveStudentFromClassArgs with EquatableMixin {
  RemoveStudentFromClassArgs({
    required this.classId,
    required this.studentId,
  });

  final String classId;

  final String studentId;

  @override
  List<Object?> get props => [
        classId,
        studentId,
      ];
  Variables$Mutation$RemoveStudentFromClass toGen() =>
      Variables$Mutation$RemoveStudentFromClass(
        classId: classId,
        studentId: studentId,
      );
}

// Sanitized Variables$Mutation$DeleteClass by ArgsClassBuilder
class DeleteClassArgs with EquatableMixin {
  DeleteClassArgs({required this.deleteClassId});

  final String deleteClassId;

  @override
  List<Object?> get props => [deleteClassId];
  Variables$Mutation$DeleteClass toGen() =>
      Variables$Mutation$DeleteClass(deleteClassId: deleteClassId);
}

// Sanitized Variables$Mutation$CreateSchool by ArgsClassBuilder
class CreateSchoolArgs with EquatableMixin {
  CreateSchoolArgs({required this.input});

  final CreateSchoolInput input;

  @override
  List<Object?> get props => [input];
  Variables$Mutation$CreateSchool toGen() =>
      Variables$Mutation$CreateSchool(input: input.toGen());
}

// Sanitized Variables$Mutation$AddClass by ArgsClassBuilder
class AddClassArgs with EquatableMixin {
  AddClassArgs({required this.input});

  final AddClassInput input;

  @override
  List<Object?> get props => [input];
  Variables$Mutation$AddClass toGen() =>
      Variables$Mutation$AddClass(input: input.toGen());
}

// Sanitized Variables$Mutation$StartStudentAssessment by ArgsClassBuilder
class StartStudentAssessmentArgs with EquatableMixin {
  StartStudentAssessmentArgs({required this.testId});

  final String testId;

  @override
  List<Object?> get props => [testId];
  Variables$Mutation$StartStudentAssessment toGen() =>
      Variables$Mutation$StartStudentAssessment(testId: testId);
}
