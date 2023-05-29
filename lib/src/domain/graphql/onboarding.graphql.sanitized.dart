// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// SanitizerGenerator
// **************************************************************************

import 'package:equatable/equatable.dart';
import 'package:schema/schema.dart';
import 'package:schools_app/src/domain/graphql/onboarding.graphql.dart'; // Sanitized Query$SearchSchools by ResponseClassBuilder

class SearchSchoolsResponse with EquatableMixin {
  SearchSchoolsResponse({
    required this.searchSchools,
    required this.$__typename,
  });

  factory SearchSchoolsResponse.fromGen(Query$SearchSchools gen) =>
      SearchSchoolsResponse(
        searchSchools: gen.searchSchools.map(SearchSchools.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final List<SearchSchools> searchSchools;

  final String $__typename;

  @override
  List<Object?> get props => [
        searchSchools,
        $__typename,
      ];
  SearchSchoolsResponse copyWith({List<SearchSchools>? searchSchools}) =>
      SearchSchoolsResponse(
        searchSchools: searchSchools ?? this.searchSchools,
        $__typename: $__typename,
      );
}

// Sanitized Query$SearchSchools$searchSchools by FieldClassBuilder
class SearchSchools with EquatableMixin {
  SearchSchools({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory SearchSchools.fromGen(Query$SearchSchools$searchSchools gen) =>
      SearchSchools(
        id: gen.id,
        name: gen.name,
        $__typename: gen.$__typename,
      );

  final String id;

  final String name;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        name,
        $__typename,
      ];
  SearchSchools copyWith({
    String? id,
    String? name,
  }) =>
      SearchSchools(
        id: id ?? this.id,
        name: name ?? this.name,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetStudentClasses by ResponseClassBuilder
class GetStudentClassesResponse with EquatableMixin {
  GetStudentClassesResponse({
    required this.getStudentClasses,
    required this.$__typename,
  });

  factory GetStudentClassesResponse.fromGen(Query$GetStudentClasses gen) =>
      GetStudentClassesResponse(
        getStudentClasses: GetStudentClasses.fromGen(gen.getStudentClasses),
        $__typename: gen.$__typename,
      );

  final GetStudentClasses getStudentClasses;

  final String $__typename;

  @override
  List<Object?> get props => [
        getStudentClasses,
        $__typename,
      ];
  GetStudentClassesResponse copyWith({GetStudentClasses? getStudentClasses}) =>
      GetStudentClassesResponse(
        getStudentClasses: getStudentClasses ?? this.getStudentClasses,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetStudentClasses$getStudentClasses$studentClasses by FieldClassBuilder
class StudentClasses with EquatableMixin {
  StudentClasses({
    required this.id,
    required this.$__typename,
  });

  factory StudentClasses.fromGen(
          Query$GetStudentClasses$getStudentClasses$studentClasses gen) =>
      StudentClasses(
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
  StudentClasses copyWith({String? id}) => StudentClasses(
        id: id ?? this.id,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetStudentClasses$getStudentClasses by FieldClassBuilder
class GetStudentClasses with EquatableMixin {
  GetStudentClasses({
    required this.studentClasses,
    required this.$__typename,
  });

  factory GetStudentClasses.fromGen(
          Query$GetStudentClasses$getStudentClasses gen) =>
      GetStudentClasses(
        studentClasses: gen.studentClasses.map(StudentClasses.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final List<StudentClasses> studentClasses;

  final String $__typename;

  @override
  List<Object?> get props => [
        studentClasses,
        $__typename,
      ];
  GetStudentClasses copyWith({List<StudentClasses>? studentClasses}) =>
      GetStudentClasses(
        studentClasses: studentClasses ?? this.studentClasses,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetStudentTeacherId by ResponseClassBuilder
class GetStudentTeacherIdResponse with EquatableMixin {
  GetStudentTeacherIdResponse({
    required this.studentTeacherId,
    required this.$__typename,
  });

  factory GetStudentTeacherIdResponse.fromGen(Query$GetStudentTeacherId gen) =>
      GetStudentTeacherIdResponse(
        studentTeacherId: StudentTeacherId.fromGen(gen.studentTeacherId),
        $__typename: gen.$__typename,
      );

  final StudentTeacherId studentTeacherId;

  final String $__typename;

  @override
  List<Object?> get props => [
        studentTeacherId,
        $__typename,
      ];
  GetStudentTeacherIdResponse copyWith({StudentTeacherId? studentTeacherId}) =>
      GetStudentTeacherIdResponse(
        studentTeacherId: studentTeacherId ?? this.studentTeacherId,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser by FieldClassBuilder
class StudentTeacherUser with EquatableMixin {
  StudentTeacherUser({
    required this.id,
    required this.$__typename,
  });

  factory StudentTeacherUser.fromGen(
          Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser
              gen) =>
      StudentTeacherUser(
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
  StudentTeacherUser copyWith({String? id}) => StudentTeacherUser(
        id: id ?? this.id,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher by FieldClassBuilder
class StudentTeacher with EquatableMixin {
  StudentTeacher({
    required this.studentTeacherUser,
    required this.$__typename,
  });

  factory StudentTeacher.fromGen(
          Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher
              gen) =>
      StudentTeacher(
        studentTeacherUser: StudentTeacherUser.fromGen(gen.studentTeacherUser),
        $__typename: gen.$__typename,
      );

  final StudentTeacherUser studentTeacherUser;

  final String $__typename;

  @override
  List<Object?> get props => [
        studentTeacherUser,
        $__typename,
      ];
  StudentTeacher copyWith({StudentTeacherUser? studentTeacherUser}) =>
      StudentTeacher(
        studentTeacherUser: studentTeacherUser ?? this.studentTeacherUser,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetStudentTeacherId$studentTeacherId$studentClass by FieldClassBuilder
class StudentClass with EquatableMixin {
  StudentClass({
    required this.studentTeacher,
    required this.$__typename,
  });

  factory StudentClass.fromGen(
          Query$GetStudentTeacherId$studentTeacherId$studentClass gen) =>
      StudentClass(
        studentTeacher: gen.studentTeacher.map(StudentTeacher.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final List<StudentTeacher> studentTeacher;

  final String $__typename;

  @override
  List<Object?> get props => [
        studentTeacher,
        $__typename,
      ];
  StudentClass copyWith({List<StudentTeacher>? studentTeacher}) => StudentClass(
        studentTeacher: studentTeacher ?? this.studentTeacher,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetStudentTeacherId$studentTeacherId by FieldClassBuilder
class StudentTeacherId with EquatableMixin {
  StudentTeacherId({
    required this.studentClass,
    required this.$__typename,
  });

  factory StudentTeacherId.fromGen(
          Query$GetStudentTeacherId$studentTeacherId gen) =>
      StudentTeacherId(
        studentClass: gen.studentClass.map(StudentClass.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final List<StudentClass> studentClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        studentClass,
        $__typename,
      ];
  StudentTeacherId copyWith({List<StudentClass>? studentClass}) =>
      StudentTeacherId(
        studentClass: studentClass ?? this.studentClass,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetTeacherSchoolInfo by ResponseClassBuilder
class GetTeacherSchoolInfoResponse with EquatableMixin {
  GetTeacherSchoolInfoResponse({
    required this.schoolInfoTeacher,
    required this.$__typename,
  });

  factory GetTeacherSchoolInfoResponse.fromGen(
          Query$GetTeacherSchoolInfo gen) =>
      GetTeacherSchoolInfoResponse(
        schoolInfoTeacher: SchoolInfoTeacher.fromGen(gen.schoolInfoTeacher),
        $__typename: gen.$__typename,
      );

  final SchoolInfoTeacher schoolInfoTeacher;

  final String $__typename;

  @override
  List<Object?> get props => [
        schoolInfoTeacher,
        $__typename,
      ];
  GetTeacherSchoolInfoResponse copyWith(
          {SchoolInfoTeacher? schoolInfoTeacher}) =>
      GetTeacherSchoolInfoResponse(
        schoolInfoTeacher: schoolInfoTeacher ?? this.schoolInfoTeacher,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool by FieldClassBuilder
class SchoolInfoSchool with EquatableMixin {
  SchoolInfoSchool({
    required this.regionID,
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory SchoolInfoSchool.fromGen(
          Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool gen) =>
      SchoolInfoSchool(
        regionID: gen.regionID,
        id: gen.id,
        name: gen.name,
        $__typename: gen.$__typename,
      );

  final String regionID;

  final String id;

  final String name;

  final String $__typename;

  @override
  List<Object?> get props => [
        regionID,
        id,
        name,
        $__typename,
      ];
  SchoolInfoSchool copyWith({
    String? regionID,
    String? id,
    String? name,
  }) =>
      SchoolInfoSchool(
        regionID: regionID ?? this.regionID,
        id: id ?? this.id,
        name: name ?? this.name,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetTeacherSchoolInfo$schoolInfoTeacher by FieldClassBuilder
class SchoolInfoTeacher with EquatableMixin {
  SchoolInfoTeacher({
    this.schoolInfoSchool,
    required this.$__typename,
  });

  factory SchoolInfoTeacher.fromGen(
          Query$GetTeacherSchoolInfo$schoolInfoTeacher gen) =>
      SchoolInfoTeacher(
        schoolInfoSchool: gen.schoolInfoSchool == null
            ? null
            : SchoolInfoSchool.fromGen(gen.schoolInfoSchool!),
        $__typename: gen.$__typename,
      );

  final SchoolInfoSchool? schoolInfoSchool;

  final String $__typename;

  @override
  List<Object?> get props => [
        schoolInfoSchool,
        $__typename,
      ];
  SchoolInfoTeacher copyWith({SchoolInfoSchool? schoolInfoSchool}) =>
      SchoolInfoTeacher(
        schoolInfoSchool: schoolInfoSchool ?? this.schoolInfoSchool,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$CreateTeacher by ResponseClassBuilder
class CreateTeacherResponse with EquatableMixin {
  CreateTeacherResponse({
    required this.createTeacher,
    required this.$__typename,
  });

  factory CreateTeacherResponse.fromGen(Mutation$CreateTeacher gen) =>
      CreateTeacherResponse(
        createTeacher: CreateTeacher.fromGen(gen.createTeacher),
        $__typename: gen.$__typename,
      );

  final CreateTeacher createTeacher;

  final String $__typename;

  @override
  List<Object?> get props => [
        createTeacher,
        $__typename,
      ];
  CreateTeacherResponse copyWith({CreateTeacher? createTeacher}) =>
      CreateTeacherResponse(
        createTeacher: createTeacher ?? this.createTeacher,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$CreateTeacher$createTeacher$createdUser by FieldClassBuilder
class CreatedUser with EquatableMixin {
  CreatedUser({
    required this.id,
    required this.$__typename,
  });

  factory CreatedUser.fromGen(
          Mutation$CreateTeacher$createTeacher$createdUser gen) =>
      CreatedUser(
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
  CreatedUser copyWith({String? id}) => CreatedUser(
        id: id ?? this.id,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$CreateTeacher$createTeacher by FieldClassBuilder
class CreateTeacher with EquatableMixin {
  CreateTeacher({
    required this.createdUser,
    required this.$__typename,
  });

  factory CreateTeacher.fromGen(Mutation$CreateTeacher$createTeacher gen) =>
      CreateTeacher(
        createdUser: CreatedUser.fromGen(gen.createdUser),
        $__typename: gen.$__typename,
      );

  final CreatedUser createdUser;

  final String $__typename;

  @override
  List<Object?> get props => [
        createdUser,
        $__typename,
      ];
  CreateTeacher copyWith({CreatedUser? createdUser}) => CreateTeacher(
        createdUser: createdUser ?? this.createdUser,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$JoinClass by ResponseClassBuilder
class JoinClassResponse with EquatableMixin {
  JoinClassResponse({
    required this.joinClass,
    required this.$__typename,
  });

  factory JoinClassResponse.fromGen(Mutation$JoinClass gen) =>
      JoinClassResponse(
        joinClass: JoinClass.fromGen(gen.joinClass),
        $__typename: gen.$__typename,
      );

  final JoinClass joinClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        joinClass,
        $__typename,
      ];
  JoinClassResponse copyWith({JoinClass? joinClass}) => JoinClassResponse(
        joinClass: joinClass ?? this.joinClass,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$JoinClass$joinClass by FieldClassBuilder
class JoinClass with EquatableMixin {
  JoinClass({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory JoinClass.fromGen(Mutation$JoinClass$joinClass gen) => JoinClass(
        id: gen.id,
        name: gen.name,
        $__typename: gen.$__typename,
      );

  final String id;

  final String name;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        name,
        $__typename,
      ];
  JoinClass copyWith({
    String? id,
    String? name,
  }) =>
      JoinClass(
        id: id ?? this.id,
        name: name ?? this.name,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$CreateSchoolStudent by ResponseClassBuilder
class CreateSchoolStudentResponse with EquatableMixin {
  CreateSchoolStudentResponse({
    required this.createSchoolStudent,
    required this.$__typename,
  });

  factory CreateSchoolStudentResponse.fromGen(
          Mutation$CreateSchoolStudent gen) =>
      CreateSchoolStudentResponse(
        createSchoolStudent:
            CreateSchoolStudent.fromGen(gen.createSchoolStudent),
        $__typename: gen.$__typename,
      );

  final CreateSchoolStudent createSchoolStudent;

  final String $__typename;

  @override
  List<Object?> get props => [
        createSchoolStudent,
        $__typename,
      ];
  CreateSchoolStudentResponse copyWith(
          {CreateSchoolStudent? createSchoolStudent}) =>
      CreateSchoolStudentResponse(
        createSchoolStudent: createSchoolStudent ?? this.createSchoolStudent,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$CreateSchoolStudent$createSchoolStudent$user by FieldClassBuilder
class User with EquatableMixin {
  User({
    required this.id,
    required this.$__typename,
  });

  factory User.fromGen(
          Mutation$CreateSchoolStudent$createSchoolStudent$user gen) =>
      User(
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
  User copyWith({String? id}) => User(
        id: id ?? this.id,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$CreateSchoolStudent$createSchoolStudent by FieldClassBuilder
class CreateSchoolStudent with EquatableMixin {
  CreateSchoolStudent({
    required this.user,
    required this.$__typename,
  });

  factory CreateSchoolStudent.fromGen(
          Mutation$CreateSchoolStudent$createSchoolStudent gen) =>
      CreateSchoolStudent(
        user: User.fromGen(gen.user),
        $__typename: gen.$__typename,
      );

  final User user;

  final String $__typename;

  @override
  List<Object?> get props => [
        user,
        $__typename,
      ];
  CreateSchoolStudent copyWith({User? user}) => CreateSchoolStudent(
        user: user ?? this.user,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$DeleteSchool by ResponseClassBuilder
class DeleteSchoolResponse with EquatableMixin {
  DeleteSchoolResponse({
    required this.deleteSchool,
    required this.$__typename,
  });

  factory DeleteSchoolResponse.fromGen(Mutation$DeleteSchool gen) =>
      DeleteSchoolResponse(
        deleteSchool: DeleteSchool.fromGen(gen.deleteSchool),
        $__typename: gen.$__typename,
      );

  final DeleteSchool deleteSchool;

  final String $__typename;

  @override
  List<Object?> get props => [
        deleteSchool,
        $__typename,
      ];
  DeleteSchoolResponse copyWith({DeleteSchool? deleteSchool}) =>
      DeleteSchoolResponse(
        deleteSchool: deleteSchool ?? this.deleteSchool,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$DeleteSchool$deleteSchool by FieldClassBuilder
class DeleteSchool with EquatableMixin {
  DeleteSchool({
    required this.id,
    required this.$__typename,
  });

  factory DeleteSchool.fromGen(Mutation$DeleteSchool$deleteSchool gen) =>
      DeleteSchool(
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
  DeleteSchool copyWith({String? id}) => DeleteSchool(
        id: id ?? this.id,
        $__typename: $__typename,
      );
}

// Sanitized Variables$Query$SearchSchools by ArgsClassBuilder
class SearchSchoolsArgs with EquatableMixin {
  SearchSchoolsArgs({
    required this.query,
    required this.regionId,
  });

  final String query;

  final String regionId;

  @override
  List<Object?> get props => [
        query,
        regionId,
      ];
  Variables$Query$SearchSchools toGen() => Variables$Query$SearchSchools(
        query: query,
        regionId: regionId,
      );
}

// Sanitized Variables$Query$GetStudentClasses by ArgsClassBuilder
class GetStudentClassesArgs with EquatableMixin {
  GetStudentClassesArgs({required this.studentId});

  final String studentId;

  @override
  List<Object?> get props => [studentId];
  Variables$Query$GetStudentClasses toGen() =>
      Variables$Query$GetStudentClasses(studentId: studentId);
}

// Sanitized Variables$Query$GetStudentTeacherId by ArgsClassBuilder
class GetStudentTeacherIdArgs with EquatableMixin {
  GetStudentTeacherIdArgs({required this.studentId});

  final String studentId;

  @override
  List<Object?> get props => [studentId];
  Variables$Query$GetStudentTeacherId toGen() =>
      Variables$Query$GetStudentTeacherId(studentId: studentId);
}

// Sanitized Variables$Mutation$JoinClass by ArgsClassBuilder
class JoinClassArgs with EquatableMixin {
  JoinClassArgs({required this.input});

  final JoinClassInput input;

  @override
  List<Object?> get props => [input];
  Variables$Mutation$JoinClass toGen() =>
      Variables$Mutation$JoinClass(input: input.toGen());
}

// Sanitized Variables$Mutation$DeleteSchool by ArgsClassBuilder
class DeleteSchoolArgs with EquatableMixin {
  DeleteSchoolArgs({required this.id});

  final String id;

  @override
  List<Object?> get props => [id];
  Variables$Mutation$DeleteSchool toGen() =>
      Variables$Mutation$DeleteSchool(id: id);
}
