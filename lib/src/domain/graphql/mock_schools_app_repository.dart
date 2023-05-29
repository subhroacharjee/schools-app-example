import 'package:core/domain/errors/tutero_error.dart';
import 'package:core/domain/usecases/user_id/user_id.dart';
import 'package:oxidized/oxidized.dart';
import 'package:schema/schema.dart';
import 'package:schools_app/src/domain/graphql/schools_app.graphql.repository.dart';
import 'package:schools_app/src/domain/graphql/schools_app.graphql.sanitized.dart';

class MockSchoolsAppRepository implements SchoolsAppRepository {
  @override
  Future<TResult<GetClassNameAndYearResponse>> getClassNameAndYear(
    String classId, {
    UserId? authenticatedUserId,
  }) async =>
      Ok(
        GetClassNameAndYearResponse(
          $__typename: '',
          classNameAndYear: ClassNameAndYear(
            $__typename: '',
            name: 'Maths Class 1',
            nYear: NYear(
              $__typename: '',
              id: 'CQZqh7qWR0UGEe7iwV2A',
            ),
          ),
        ),
      );

  @override
  Future<TResult<GetYearTitlesResponse>> getYearTitles(
    GetAllOptions? options, {
    UserId? authenticatedUserId,
  }) async {
    return Ok(
      GetYearTitlesResponse(
        $__typename: '',
        allYears: [
          AllYears(
            $__typename: '',
            id: '1',
            title: '1',
          ),
          AllYears(
            $__typename: '',
            id: '2',
            title: '2',
          ),
          AllYears(
            $__typename: '',
            id: '3',
            title: '3',
          ),
          AllYears(
            $__typename: '',
            id: '4',
            title: '4',
          ),
          AllYears(
            $__typename: '',
            id: '5',
            title: '5',
          ),
          AllYears(
            $__typename: '',
            id: '6',
            title: '6',
          ),
          AllYears(
            $__typename: '',
            id: '7',
            title: '7',
          ),
          AllYears(
            $__typename: '',
            id: '8',
            title: '8',
          ),
        ],
      ),
    );
  }

  @override
  Future<TResult<RemoveStudentFromClassResponse>> removeStudentFromClass(
    String classId,
    String studentId, {
    UserId? authenticatedUserId,
  }) async {
    await _wait();
    return Ok(
      RemoveStudentFromClassResponse(
        $__typename: '',
        removeStudentFromClass: RemoveStudentFromClass(
          id: '1',
          name: 'Ma boi 1',
          year: Year(title: '', $__typename: ''),
          $__typename: '',
        ),
      ),
    );
  }

  @override
  Future<TResult<GetClassStudentSettingsResponse>> getClassStudentSettings(
    String classId, {
    UserId? authenticatedUserId,
  }) async {
    return Ok(
      GetClassStudentSettingsResponse(
        $__typename: '',
        classStudentSettings: ClassStudentSettings(
          $__typename: '',
          code: 'XYZ456',
          students: [
            for (int i = 0; i < 10; i++)
              Students(
                $__typename: '',
                settingsUser: SettingsUser(
                  $__typename: '',
                  id: '${i + 1}',
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  Future<TResult<UpdateClassResponse>> updateClass(
    String updateClassId,
    UpdateClassInput input, {
    UserId? authenticatedUserId,
  }) async {
    await _wait();
    return Ok(
      UpdateClassResponse(
        $__typename: '',
        updateClass: UpdateClass(
          cYear: CYear($__typename: '', id: ''),
          $__typename: '',
          name: '',
        ),
      ),
    );
  }

  @override
  Future<TResult<DeleteClassResponse>> deleteClass(
    String deleteClassId, {
    UserId? authenticatedUserId,
  }) async {
    await _wait();
    return Ok(
      DeleteClassResponse(
        $__typename: '',
        deleteClass: '',
      ),
    );
  }

  @override
  Future<TResult<GetClassNameResponse>> getClassName(
    String classId, {
    UserId? authenticatedUserId,
  }) async {
    await _wait();
    return Ok(
      GetClassNameResponse(
        className: ClassName(name: 'Maths Class 1', $__typename: ''),
        $__typename: '',
      ),
    );
  }

  @override
  Future<TResult<AddClassResponse>> addClass(
    AddClassInput input, {
    UserId? authenticatedUserId,
  }) async =>
      Ok(AddClassResponse(
        addClass: AddClass($__typename: '', id: ''),
        $__typename: '',
      ));

  @override
  Future<TResult<GetRegionsResponse>> getRegions(
    GetAllOptions? options, {
    UserId? authenticatedUserId,
  }) async {
    return Ok(
      GetRegionsResponse(
        $__typename: '',
        allRegions: [
          AllRegions(id: '1', title: 'Region 1', $__typename: '', defaultTimeZone: ''),
          AllRegions(id: '2', title: 'Region 2', $__typename: '', defaultTimeZone: ''),
          AllRegions(id: '3', title: 'Region 3', $__typename: '', defaultTimeZone: ''),
          AllRegions(id: '4', title: 'Region 4', $__typename: '', defaultTimeZone: ''),
          AllRegions(id: '5', title: 'Region 5', $__typename: '', defaultTimeZone: ''),
        ],
      ),
    );
  }

  @override
  Future<TResult<CreateSchoolResponse>> createSchool(
    CreateSchoolInput input, {
    UserId? authenticatedUserId,
  }) async {
    return Ok(
      CreateSchoolResponse(
        $__typename: '',
        createSchool: CreateSchool(
          $__typename: '',
          id: '',
          name: '',
          regionID: '',
        ),
      ),
    );
  }

  @override
  Future<TResult<GetClassesResponse>> getClasses({
    UserId? authenticatedUserId,
  }) async {
    return Ok(
      GetClassesResponse(
        $__typename: '',
        getClassesTeacher: GetClassesTeacher(
          $__typename: '',
          getClassesSchool: GetClassesSchool(
            $__typename: '',
            teacherClasses: [
              TeacherClasses(
                $__typename: '',
                code: 'maboi1',
                id: '1',
                name: 'Ez 1',
                teacherStudents: [],
              ),
              TeacherClasses(
                $__typename: '',
                code: 'maboi2',
                id: '2',
                name: 'Ez 2',
                teacherStudents: [],
              ),
              TeacherClasses(
                $__typename: '',
                code: 'maboi3',
                id: '3',
                name: 'Ez 3',
                teacherStudents: [],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Future<TResult<GetUserRolesResponse>> getUserRoles({
    UserId? authenticatedUserId,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<TResult<GetStudentsResponse>> getStudents(
    String classId, {
    UserId? authenticatedUserId,
  }) async {
    return Ok(
      GetStudentsResponse(
        $__typename: '',
        $class: Class(
          $__typename: '',
          classStudents: [
            // ClassStudents(
            //   $__typename: '',
            //   clasUser: ClasUser(
            //     $__typename: '',
            //     id: '06Axa6QkCP7v8K3VvA49',
            //   ),
            // ),
            // ClassStudents(
            //   $__typename: '',
            //   clasUser: ClasUser(
            //     $__typename: '',
            //     id: '1V3FHgZOQ57Q8kJ7kr0R',
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  @override
  Future<TResult<GetUpcomingAssessmentsResponse>> getUpcomingAssessments(
    String studentId, {
    UserId? authenticatedUserId,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<TResult<StartStudentAssessmentResponse>> startStudentAssessment(
    String testId, {
    UserId? authenticatedUserId,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<TResult<GetClassItemInfoResponse>> getClassItemInfo(
    String classId, {
    UserId? authenticatedUserId,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<TResult<GetActiveTestForStudentResponse>> getActiveTestForStudent(
    String studentId, {
    UserId? authenticatedUserId,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<TResult<GetNewClassResponse>> getNewClass(String classId, {UserId? authenticatedUserId}) {
    // TODO: implement getNewClass
    throw UnimplementedError();
  }
}

Future<void> _wait([Duration d = const Duration(seconds: 2)]) => Future.delayed(d);
