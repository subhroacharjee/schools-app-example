import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:schema/schema.dart';
import 'package:schema/src/tutero_graph.graphql.dart';

class Fragment$Assessment {
  Fragment$Assessment({
    required this.tests,
    required this.duration,
    required this.startAt,
    this.startedAt,
    required this.dueAt,
    required this.expectedDueAt,
    required this.subtopics,
    required this.assessmentTopic,
    required this.id,
    required this.name,
    required this.status,
    required this.timeSaved,
    required this.allSubtopics,
    this.timeTaken,
    required this.$__typename,
  });

  factory Fragment$Assessment.fromJson(Map<String, dynamic> json) {
    final l$tests = json['tests'];
    final l$duration = json['duration'];
    final l$startAt = json['startAt'];
    final l$startedAt = json['startedAt'];
    final l$dueAt = json['dueAt'];
    final l$expectedDueAt = json['expectedDueAt'];
    final l$subtopics = json['subtopics'];
    final l$assessmentTopic = json['assessmentTopic'];
    final l$id = json['id'];
    final l$name = json['name'];
    final l$status = json['status'];
    final l$timeSaved = json['timeSaved'];
    final l$allSubtopics = json['allSubtopics'];
    final l$timeTaken = json['timeTaken'];
    final l$$__typename = json['__typename'];
    return Fragment$Assessment(
      tests: (l$tests as List<dynamic>)
          .map((e) =>
              Fragment$Assessment$tests.fromJson((e as Map<String, dynamic>)))
          .toList(),
      duration: durationFromNanoseconds(l$duration),
      startAt: dateTimeFromRFC3339Nano(l$startAt),
      startedAt:
          l$startedAt == null ? null : dateTimeFromRFC3339Nano(l$startedAt),
      dueAt: dateTimeFromRFC3339Nano(l$dueAt),
      expectedDueAt: dateTimeFromRFC3339Nano(l$expectedDueAt),
      subtopics: (l$subtopics as List<dynamic>)
          .map((e) => Fragment$Assessment$subtopics.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      assessmentTopic: Fragment$Assessment$assessmentTopic.fromJson(
          (l$assessmentTopic as Map<String, dynamic>)),
      id: (l$id as String),
      name: (l$name as String),
      status: fromJson$Enum$DiagnosticTestSessionStatus((l$status as String)),
      timeSaved: durationFromNanoseconds(l$timeSaved),
      allSubtopics: (l$allSubtopics as bool),
      timeTaken:
          l$timeTaken == null ? null : durationFromNanoseconds(l$timeTaken),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Assessment$tests> tests;

  final Duration duration;

  final DateTime startAt;

  final DateTime? startedAt;

  final DateTime dueAt;

  final DateTime expectedDueAt;

  final List<Fragment$Assessment$subtopics> subtopics;

  final Fragment$Assessment$assessmentTopic assessmentTopic;

  final String id;

  final String name;

  final Enum$DiagnosticTestSessionStatus status;

  final Duration timeSaved;

  final bool allSubtopics;

  final Duration? timeTaken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$tests = tests;
    _resultData['tests'] = l$tests.map((e) => e.toJson()).toList();
    final l$duration = duration;
    _resultData['duration'] = durationToNanoseconds(l$duration);
    final l$startAt = startAt;
    _resultData['startAt'] = dateTimeToUtcToIso8601(l$startAt);
    final l$startedAt = startedAt;
    _resultData['startedAt'] =
        l$startedAt == null ? null : dateTimeToUtcToIso8601(l$startedAt);
    final l$dueAt = dueAt;
    _resultData['dueAt'] = dateTimeToUtcToIso8601(l$dueAt);
    final l$expectedDueAt = expectedDueAt;
    _resultData['expectedDueAt'] = dateTimeToUtcToIso8601(l$expectedDueAt);
    final l$subtopics = subtopics;
    _resultData['subtopics'] = l$subtopics.map((e) => e.toJson()).toList();
    final l$assessmentTopic = assessmentTopic;
    _resultData['assessmentTopic'] = l$assessmentTopic.toJson();
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$status = status;
    _resultData['status'] = toJson$Enum$DiagnosticTestSessionStatus(l$status);
    final l$timeSaved = timeSaved;
    _resultData['timeSaved'] = durationToNanoseconds(l$timeSaved);
    final l$allSubtopics = allSubtopics;
    _resultData['allSubtopics'] = l$allSubtopics;
    final l$timeTaken = timeTaken;
    _resultData['timeTaken'] =
        l$timeTaken == null ? null : durationToNanoseconds(l$timeTaken);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$tests = tests;
    final l$duration = duration;
    final l$startAt = startAt;
    final l$startedAt = startedAt;
    final l$dueAt = dueAt;
    final l$expectedDueAt = expectedDueAt;
    final l$subtopics = subtopics;
    final l$assessmentTopic = assessmentTopic;
    final l$id = id;
    final l$name = name;
    final l$status = status;
    final l$timeSaved = timeSaved;
    final l$allSubtopics = allSubtopics;
    final l$timeTaken = timeTaken;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$tests.map((v) => v)),
      l$duration,
      l$startAt,
      l$startedAt,
      l$dueAt,
      l$expectedDueAt,
      Object.hashAll(l$subtopics.map((v) => v)),
      l$assessmentTopic,
      l$id,
      l$name,
      l$status,
      l$timeSaved,
      l$allSubtopics,
      l$timeTaken,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Assessment) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$tests = tests;
    final lOther$tests = other.tests;
    if (l$tests.length != lOther$tests.length) {
      return false;
    }
    for (int i = 0; i < l$tests.length; i++) {
      final l$tests$entry = l$tests[i];
      final lOther$tests$entry = lOther$tests[i];
      if (l$tests$entry != lOther$tests$entry) {
        return false;
      }
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$startAt = startAt;
    final lOther$startAt = other.startAt;
    if (l$startAt != lOther$startAt) {
      return false;
    }
    final l$startedAt = startedAt;
    final lOther$startedAt = other.startedAt;
    if (l$startedAt != lOther$startedAt) {
      return false;
    }
    final l$dueAt = dueAt;
    final lOther$dueAt = other.dueAt;
    if (l$dueAt != lOther$dueAt) {
      return false;
    }
    final l$expectedDueAt = expectedDueAt;
    final lOther$expectedDueAt = other.expectedDueAt;
    if (l$expectedDueAt != lOther$expectedDueAt) {
      return false;
    }
    final l$subtopics = subtopics;
    final lOther$subtopics = other.subtopics;
    if (l$subtopics.length != lOther$subtopics.length) {
      return false;
    }
    for (int i = 0; i < l$subtopics.length; i++) {
      final l$subtopics$entry = l$subtopics[i];
      final lOther$subtopics$entry = lOther$subtopics[i];
      if (l$subtopics$entry != lOther$subtopics$entry) {
        return false;
      }
    }
    final l$assessmentTopic = assessmentTopic;
    final lOther$assessmentTopic = other.assessmentTopic;
    if (l$assessmentTopic != lOther$assessmentTopic) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$timeSaved = timeSaved;
    final lOther$timeSaved = other.timeSaved;
    if (l$timeSaved != lOther$timeSaved) {
      return false;
    }
    final l$allSubtopics = allSubtopics;
    final lOther$allSubtopics = other.allSubtopics;
    if (l$allSubtopics != lOther$allSubtopics) {
      return false;
    }
    final l$timeTaken = timeTaken;
    final lOther$timeTaken = other.timeTaken;
    if (l$timeTaken != lOther$timeTaken) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$Assessment on Fragment$Assessment {
  CopyWith$Fragment$Assessment<Fragment$Assessment> get copyWith =>
      CopyWith$Fragment$Assessment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Assessment<TRes> {
  factory CopyWith$Fragment$Assessment(
    Fragment$Assessment instance,
    TRes Function(Fragment$Assessment) then,
  ) = _CopyWithImpl$Fragment$Assessment;

  factory CopyWith$Fragment$Assessment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Assessment;

  TRes call({
    List<Fragment$Assessment$tests>? tests,
    Duration? duration,
    DateTime? startAt,
    DateTime? startedAt,
    DateTime? dueAt,
    DateTime? expectedDueAt,
    List<Fragment$Assessment$subtopics>? subtopics,
    Fragment$Assessment$assessmentTopic? assessmentTopic,
    String? id,
    String? name,
    Enum$DiagnosticTestSessionStatus? status,
    Duration? timeSaved,
    bool? allSubtopics,
    Duration? timeTaken,
    String? $__typename,
  });
  TRes tests(
      Iterable<Fragment$Assessment$tests> Function(
              Iterable<
                  CopyWith$Fragment$Assessment$tests<
                      Fragment$Assessment$tests>>)
          _fn);
  TRes subtopics(
      Iterable<Fragment$Assessment$subtopics> Function(
              Iterable<
                  CopyWith$Fragment$Assessment$subtopics<
                      Fragment$Assessment$subtopics>>)
          _fn);
  CopyWith$Fragment$Assessment$assessmentTopic<TRes> get assessmentTopic;
}

class _CopyWithImpl$Fragment$Assessment<TRes>
    implements CopyWith$Fragment$Assessment<TRes> {
  _CopyWithImpl$Fragment$Assessment(
    this._instance,
    this._then,
  );

  final Fragment$Assessment _instance;

  final TRes Function(Fragment$Assessment) _then;

  static const _undefined = {};

  TRes call({
    Object? tests = _undefined,
    Object? duration = _undefined,
    Object? startAt = _undefined,
    Object? startedAt = _undefined,
    Object? dueAt = _undefined,
    Object? expectedDueAt = _undefined,
    Object? subtopics = _undefined,
    Object? assessmentTopic = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? status = _undefined,
    Object? timeSaved = _undefined,
    Object? allSubtopics = _undefined,
    Object? timeTaken = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Assessment(
        tests: tests == _undefined || tests == null
            ? _instance.tests
            : (tests as List<Fragment$Assessment$tests>),
        duration: duration == _undefined || duration == null
            ? _instance.duration
            : (duration as Duration),
        startAt: startAt == _undefined || startAt == null
            ? _instance.startAt
            : (startAt as DateTime),
        startedAt: startedAt == _undefined
            ? _instance.startedAt
            : (startedAt as DateTime?),
        dueAt: dueAt == _undefined || dueAt == null
            ? _instance.dueAt
            : (dueAt as DateTime),
        expectedDueAt: expectedDueAt == _undefined || expectedDueAt == null
            ? _instance.expectedDueAt
            : (expectedDueAt as DateTime),
        subtopics: subtopics == _undefined || subtopics == null
            ? _instance.subtopics
            : (subtopics as List<Fragment$Assessment$subtopics>),
        assessmentTopic:
            assessmentTopic == _undefined || assessmentTopic == null
                ? _instance.assessmentTopic
                : (assessmentTopic as Fragment$Assessment$assessmentTopic),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$DiagnosticTestSessionStatus),
        timeSaved: timeSaved == _undefined || timeSaved == null
            ? _instance.timeSaved
            : (timeSaved as Duration),
        allSubtopics: allSubtopics == _undefined || allSubtopics == null
            ? _instance.allSubtopics
            : (allSubtopics as bool),
        timeTaken: timeTaken == _undefined
            ? _instance.timeTaken
            : (timeTaken as Duration?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes tests(
          Iterable<Fragment$Assessment$tests> Function(
                  Iterable<
                      CopyWith$Fragment$Assessment$tests<
                          Fragment$Assessment$tests>>)
              _fn) =>
      call(
          tests:
              _fn(_instance.tests.map((e) => CopyWith$Fragment$Assessment$tests(
                    e,
                    (i) => i,
                  ))).toList());
  TRes subtopics(
          Iterable<Fragment$Assessment$subtopics> Function(
                  Iterable<
                      CopyWith$Fragment$Assessment$subtopics<
                          Fragment$Assessment$subtopics>>)
              _fn) =>
      call(
          subtopics: _fn(_instance.subtopics
              .map((e) => CopyWith$Fragment$Assessment$subtopics(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Fragment$Assessment$assessmentTopic<TRes> get assessmentTopic {
    final local$assessmentTopic = _instance.assessmentTopic;
    return CopyWith$Fragment$Assessment$assessmentTopic(
        local$assessmentTopic, (e) => call(assessmentTopic: e));
  }
}

class _CopyWithStubImpl$Fragment$Assessment<TRes>
    implements CopyWith$Fragment$Assessment<TRes> {
  _CopyWithStubImpl$Fragment$Assessment(this._res);

  TRes _res;

  call({
    List<Fragment$Assessment$tests>? tests,
    Duration? duration,
    DateTime? startAt,
    DateTime? startedAt,
    DateTime? dueAt,
    DateTime? expectedDueAt,
    List<Fragment$Assessment$subtopics>? subtopics,
    Fragment$Assessment$assessmentTopic? assessmentTopic,
    String? id,
    String? name,
    Enum$DiagnosticTestSessionStatus? status,
    Duration? timeSaved,
    bool? allSubtopics,
    Duration? timeTaken,
    String? $__typename,
  }) =>
      _res;
  tests(_fn) => _res;
  subtopics(_fn) => _res;
  CopyWith$Fragment$Assessment$assessmentTopic<TRes> get assessmentTopic =>
      CopyWith$Fragment$Assessment$assessmentTopic.stub(_res);
}

const fragmentDefinitionAssessment = FragmentDefinitionNode(
  name: NameNode(value: 'Assessment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'DiagnosticTestSession'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'tests'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'complete'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'user'),
          alias: NameNode(value: 'student'),
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ]),
        ),
        FieldNode(
          name: NameNode(value: 'startedAt'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'duration'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'startAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'startedAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'dueAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'expectedDueAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'subtopics'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'id'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'title'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'icon'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'topic'),
      alias: NameNode(value: 'assessmentTopic'),
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'id'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'title'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'status'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'timeSaved'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'allSubtopics'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'timeTaken'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentAssessment = DocumentNode(definitions: [
  fragmentDefinitionAssessment,
]);

extension ClientExtension$Fragment$Assessment on graphql.GraphQLClient {
  void writeFragment$Assessment({
    required Fragment$Assessment data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Assessment',
            document: documentNodeFragmentAssessment,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Assessment? readFragment$Assessment({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Assessment',
          document: documentNodeFragmentAssessment,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Assessment.fromJson(result);
  }
}

class Fragment$Assessment$tests {
  Fragment$Assessment$tests({
    required this.complete,
    required this.student,
    this.startedAt,
    required this.$__typename,
  });

  factory Fragment$Assessment$tests.fromJson(Map<String, dynamic> json) {
    final l$complete = json['complete'];
    final l$student = json['student'];
    final l$startedAt = json['startedAt'];
    final l$$__typename = json['__typename'];
    return Fragment$Assessment$tests(
      complete: (l$complete as bool),
      student: Fragment$Assessment$tests$student.fromJson(
          (l$student as Map<String, dynamic>)),
      startedAt:
          l$startedAt == null ? null : dateTimeFromRFC3339Nano(l$startedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final bool complete;

  final Fragment$Assessment$tests$student student;

  final DateTime? startedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$complete = complete;
    _resultData['complete'] = l$complete;
    final l$student = student;
    _resultData['student'] = l$student.toJson();
    final l$startedAt = startedAt;
    _resultData['startedAt'] =
        l$startedAt == null ? null : dateTimeToUtcToIso8601(l$startedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$complete = complete;
    final l$student = student;
    final l$startedAt = startedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$complete,
      l$student,
      l$startedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Assessment$tests) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$complete = complete;
    final lOther$complete = other.complete;
    if (l$complete != lOther$complete) {
      return false;
    }
    final l$student = student;
    final lOther$student = other.student;
    if (l$student != lOther$student) {
      return false;
    }
    final l$startedAt = startedAt;
    final lOther$startedAt = other.startedAt;
    if (l$startedAt != lOther$startedAt) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$Assessment$tests
    on Fragment$Assessment$tests {
  CopyWith$Fragment$Assessment$tests<Fragment$Assessment$tests> get copyWith =>
      CopyWith$Fragment$Assessment$tests(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Assessment$tests<TRes> {
  factory CopyWith$Fragment$Assessment$tests(
    Fragment$Assessment$tests instance,
    TRes Function(Fragment$Assessment$tests) then,
  ) = _CopyWithImpl$Fragment$Assessment$tests;

  factory CopyWith$Fragment$Assessment$tests.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Assessment$tests;

  TRes call({
    bool? complete,
    Fragment$Assessment$tests$student? student,
    DateTime? startedAt,
    String? $__typename,
  });
  CopyWith$Fragment$Assessment$tests$student<TRes> get student;
}

class _CopyWithImpl$Fragment$Assessment$tests<TRes>
    implements CopyWith$Fragment$Assessment$tests<TRes> {
  _CopyWithImpl$Fragment$Assessment$tests(
    this._instance,
    this._then,
  );

  final Fragment$Assessment$tests _instance;

  final TRes Function(Fragment$Assessment$tests) _then;

  static const _undefined = {};

  TRes call({
    Object? complete = _undefined,
    Object? student = _undefined,
    Object? startedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Assessment$tests(
        complete: complete == _undefined || complete == null
            ? _instance.complete
            : (complete as bool),
        student: student == _undefined || student == null
            ? _instance.student
            : (student as Fragment$Assessment$tests$student),
        startedAt: startedAt == _undefined
            ? _instance.startedAt
            : (startedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Assessment$tests$student<TRes> get student {
    final local$student = _instance.student;
    return CopyWith$Fragment$Assessment$tests$student(
        local$student, (e) => call(student: e));
  }
}

class _CopyWithStubImpl$Fragment$Assessment$tests<TRes>
    implements CopyWith$Fragment$Assessment$tests<TRes> {
  _CopyWithStubImpl$Fragment$Assessment$tests(this._res);

  TRes _res;

  call({
    bool? complete,
    Fragment$Assessment$tests$student? student,
    DateTime? startedAt,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Assessment$tests$student<TRes> get student =>
      CopyWith$Fragment$Assessment$tests$student.stub(_res);
}

class Fragment$Assessment$tests$student {
  Fragment$Assessment$tests$student({
    required this.id,
    required this.$__typename,
  });

  factory Fragment$Assessment$tests$student.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Fragment$Assessment$tests$student(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Assessment$tests$student) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$Assessment$tests$student
    on Fragment$Assessment$tests$student {
  CopyWith$Fragment$Assessment$tests$student<Fragment$Assessment$tests$student>
      get copyWith => CopyWith$Fragment$Assessment$tests$student(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Assessment$tests$student<TRes> {
  factory CopyWith$Fragment$Assessment$tests$student(
    Fragment$Assessment$tests$student instance,
    TRes Function(Fragment$Assessment$tests$student) then,
  ) = _CopyWithImpl$Fragment$Assessment$tests$student;

  factory CopyWith$Fragment$Assessment$tests$student.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Assessment$tests$student;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Assessment$tests$student<TRes>
    implements CopyWith$Fragment$Assessment$tests$student<TRes> {
  _CopyWithImpl$Fragment$Assessment$tests$student(
    this._instance,
    this._then,
  );

  final Fragment$Assessment$tests$student _instance;

  final TRes Function(Fragment$Assessment$tests$student) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Assessment$tests$student(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Assessment$tests$student<TRes>
    implements CopyWith$Fragment$Assessment$tests$student<TRes> {
  _CopyWithStubImpl$Fragment$Assessment$tests$student(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$Assessment$subtopics {
  Fragment$Assessment$subtopics({
    required this.id,
    required this.title,
    required this.icon,
    required this.$__typename,
  });

  factory Fragment$Assessment$subtopics.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$icon = json['icon'];
    final l$$__typename = json['__typename'];
    return Fragment$Assessment$subtopics(
      id: (l$id as String),
      title: (l$title as String),
      icon: (l$icon as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String icon;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$icon = icon;
    _resultData['icon'] = l$icon;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$icon = icon;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$icon,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Assessment$subtopics) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$icon = icon;
    final lOther$icon = other.icon;
    if (l$icon != lOther$icon) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$Assessment$subtopics
    on Fragment$Assessment$subtopics {
  CopyWith$Fragment$Assessment$subtopics<Fragment$Assessment$subtopics>
      get copyWith => CopyWith$Fragment$Assessment$subtopics(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Assessment$subtopics<TRes> {
  factory CopyWith$Fragment$Assessment$subtopics(
    Fragment$Assessment$subtopics instance,
    TRes Function(Fragment$Assessment$subtopics) then,
  ) = _CopyWithImpl$Fragment$Assessment$subtopics;

  factory CopyWith$Fragment$Assessment$subtopics.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Assessment$subtopics;

  TRes call({
    String? id,
    String? title,
    String? icon,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Assessment$subtopics<TRes>
    implements CopyWith$Fragment$Assessment$subtopics<TRes> {
  _CopyWithImpl$Fragment$Assessment$subtopics(
    this._instance,
    this._then,
  );

  final Fragment$Assessment$subtopics _instance;

  final TRes Function(Fragment$Assessment$subtopics) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? icon = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Assessment$subtopics(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        icon: icon == _undefined || icon == null
            ? _instance.icon
            : (icon as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Assessment$subtopics<TRes>
    implements CopyWith$Fragment$Assessment$subtopics<TRes> {
  _CopyWithStubImpl$Fragment$Assessment$subtopics(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? icon,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$Assessment$assessmentTopic {
  Fragment$Assessment$assessmentTopic({
    required this.id,
    required this.title,
    required this.$__typename,
  });

  factory Fragment$Assessment$assessmentTopic.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Fragment$Assessment$assessmentTopic(
      id: (l$id as String),
      title: (l$title as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Assessment$assessmentTopic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$Assessment$assessmentTopic
    on Fragment$Assessment$assessmentTopic {
  CopyWith$Fragment$Assessment$assessmentTopic<
          Fragment$Assessment$assessmentTopic>
      get copyWith => CopyWith$Fragment$Assessment$assessmentTopic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Assessment$assessmentTopic<TRes> {
  factory CopyWith$Fragment$Assessment$assessmentTopic(
    Fragment$Assessment$assessmentTopic instance,
    TRes Function(Fragment$Assessment$assessmentTopic) then,
  ) = _CopyWithImpl$Fragment$Assessment$assessmentTopic;

  factory CopyWith$Fragment$Assessment$assessmentTopic.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Assessment$assessmentTopic;

  TRes call({
    String? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Assessment$assessmentTopic<TRes>
    implements CopyWith$Fragment$Assessment$assessmentTopic<TRes> {
  _CopyWithImpl$Fragment$Assessment$assessmentTopic(
    this._instance,
    this._then,
  );

  final Fragment$Assessment$assessmentTopic _instance;

  final TRes Function(Fragment$Assessment$assessmentTopic) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Assessment$assessmentTopic(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Assessment$assessmentTopic<TRes>
    implements CopyWith$Fragment$Assessment$assessmentTopic<TRes> {
  _CopyWithStubImpl$Fragment$Assessment$assessmentTopic(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$DiagnosticTestSessionCounts {
  Fragment$DiagnosticTestSessionCounts({
    required this.active,
    required this.past,
    required this.upcoming,
    required this.$__typename,
  });

  factory Fragment$DiagnosticTestSessionCounts.fromJson(
      Map<String, dynamic> json) {
    final l$active = json['active'];
    final l$past = json['past'];
    final l$upcoming = json['upcoming'];
    final l$$__typename = json['__typename'];
    return Fragment$DiagnosticTestSessionCounts(
      active: (l$active as int),
      past: (l$past as int),
      upcoming: (l$upcoming as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int active;

  final int past;

  final int upcoming;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$active = active;
    _resultData['active'] = l$active;
    final l$past = past;
    _resultData['past'] = l$past;
    final l$upcoming = upcoming;
    _resultData['upcoming'] = l$upcoming;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$active = active;
    final l$past = past;
    final l$upcoming = upcoming;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$active,
      l$past,
      l$upcoming,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$DiagnosticTestSessionCounts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$past = past;
    final lOther$past = other.past;
    if (l$past != lOther$past) {
      return false;
    }
    final l$upcoming = upcoming;
    final lOther$upcoming = other.upcoming;
    if (l$upcoming != lOther$upcoming) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$DiagnosticTestSessionCounts
    on Fragment$DiagnosticTestSessionCounts {
  CopyWith$Fragment$DiagnosticTestSessionCounts<
          Fragment$DiagnosticTestSessionCounts>
      get copyWith => CopyWith$Fragment$DiagnosticTestSessionCounts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$DiagnosticTestSessionCounts<TRes> {
  factory CopyWith$Fragment$DiagnosticTestSessionCounts(
    Fragment$DiagnosticTestSessionCounts instance,
    TRes Function(Fragment$DiagnosticTestSessionCounts) then,
  ) = _CopyWithImpl$Fragment$DiagnosticTestSessionCounts;

  factory CopyWith$Fragment$DiagnosticTestSessionCounts.stub(TRes res) =
      _CopyWithStubImpl$Fragment$DiagnosticTestSessionCounts;

  TRes call({
    int? active,
    int? past,
    int? upcoming,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$DiagnosticTestSessionCounts<TRes>
    implements CopyWith$Fragment$DiagnosticTestSessionCounts<TRes> {
  _CopyWithImpl$Fragment$DiagnosticTestSessionCounts(
    this._instance,
    this._then,
  );

  final Fragment$DiagnosticTestSessionCounts _instance;

  final TRes Function(Fragment$DiagnosticTestSessionCounts) _then;

  static const _undefined = {};

  TRes call({
    Object? active = _undefined,
    Object? past = _undefined,
    Object? upcoming = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$DiagnosticTestSessionCounts(
        active: active == _undefined || active == null
            ? _instance.active
            : (active as int),
        past:
            past == _undefined || past == null ? _instance.past : (past as int),
        upcoming: upcoming == _undefined || upcoming == null
            ? _instance.upcoming
            : (upcoming as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$DiagnosticTestSessionCounts<TRes>
    implements CopyWith$Fragment$DiagnosticTestSessionCounts<TRes> {
  _CopyWithStubImpl$Fragment$DiagnosticTestSessionCounts(this._res);

  TRes _res;

  call({
    int? active,
    int? past,
    int? upcoming,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionDiagnosticTestSessionCounts = FragmentDefinitionNode(
  name: NameNode(value: 'DiagnosticTestSessionCounts'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'DiagnosticTestSessionCounts'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'active'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'past'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'upcoming'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentDiagnosticTestSessionCounts =
    DocumentNode(definitions: [
  fragmentDefinitionDiagnosticTestSessionCounts,
]);

extension ClientExtension$Fragment$DiagnosticTestSessionCounts
    on graphql.GraphQLClient {
  void writeFragment$DiagnosticTestSessionCounts({
    required Fragment$DiagnosticTestSessionCounts data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'DiagnosticTestSessionCounts',
            document: documentNodeFragmentDiagnosticTestSessionCounts,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$DiagnosticTestSessionCounts?
      readFragment$DiagnosticTestSessionCounts({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'DiagnosticTestSessionCounts',
          document: documentNodeFragmentDiagnosticTestSessionCounts,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Fragment$DiagnosticTestSessionCounts.fromJson(result);
  }
}

class Fragment$Topic {
  Fragment$Topic({
    required this.id,
    required this.title,
    required this.emoji,
    required this.color,
    required this.$__typename,
  });

  factory Fragment$Topic.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$emoji = json['emoji'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Fragment$Topic(
      id: (l$id as String),
      title: (l$title as String),
      emoji: (l$emoji as String),
      color: (l$color as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String emoji;

  final String color;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$emoji = emoji;
    _resultData['emoji'] = l$emoji;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$emoji = emoji;
    final l$color = color;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$emoji,
      l$color,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Topic) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$emoji = emoji;
    final lOther$emoji = other.emoji;
    if (l$emoji != lOther$emoji) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$Topic on Fragment$Topic {
  CopyWith$Fragment$Topic<Fragment$Topic> get copyWith =>
      CopyWith$Fragment$Topic(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Topic<TRes> {
  factory CopyWith$Fragment$Topic(
    Fragment$Topic instance,
    TRes Function(Fragment$Topic) then,
  ) = _CopyWithImpl$Fragment$Topic;

  factory CopyWith$Fragment$Topic.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Topic;

  TRes call({
    String? id,
    String? title,
    String? emoji,
    String? color,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Topic<TRes>
    implements CopyWith$Fragment$Topic<TRes> {
  _CopyWithImpl$Fragment$Topic(
    this._instance,
    this._then,
  );

  final Fragment$Topic _instance;

  final TRes Function(Fragment$Topic) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? emoji = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Topic(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        emoji: emoji == _undefined || emoji == null
            ? _instance.emoji
            : (emoji as String),
        color: color == _undefined || color == null
            ? _instance.color
            : (color as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Topic<TRes>
    implements CopyWith$Fragment$Topic<TRes> {
  _CopyWithStubImpl$Fragment$Topic(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? emoji,
    String? color,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionTopic = FragmentDefinitionNode(
  name: NameNode(value: 'Topic'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Topic'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'title'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'emoji'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'color'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentTopic = DocumentNode(definitions: [
  fragmentDefinitionTopic,
]);

extension ClientExtension$Fragment$Topic on graphql.GraphQLClient {
  void writeFragment$Topic({
    required Fragment$Topic data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Topic',
            document: documentNodeFragmentTopic,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Topic? readFragment$Topic({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Topic',
          document: documentNodeFragmentTopic,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Topic.fromJson(result);
  }
}

class Fragment$Subtopic {
  Fragment$Subtopic({
    required this.id,
    required this.title,
    required this.icon,
    required this.$__typename,
  });

  factory Fragment$Subtopic.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$icon = json['icon'];
    final l$$__typename = json['__typename'];
    return Fragment$Subtopic(
      id: (l$id as String),
      title: (l$title as String),
      icon: (l$icon as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String icon;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$icon = icon;
    _resultData['icon'] = l$icon;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$icon = icon;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$icon,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Subtopic) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$icon = icon;
    final lOther$icon = other.icon;
    if (l$icon != lOther$icon) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$Subtopic on Fragment$Subtopic {
  CopyWith$Fragment$Subtopic<Fragment$Subtopic> get copyWith =>
      CopyWith$Fragment$Subtopic(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Subtopic<TRes> {
  factory CopyWith$Fragment$Subtopic(
    Fragment$Subtopic instance,
    TRes Function(Fragment$Subtopic) then,
  ) = _CopyWithImpl$Fragment$Subtopic;

  factory CopyWith$Fragment$Subtopic.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Subtopic;

  TRes call({
    String? id,
    String? title,
    String? icon,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Subtopic<TRes>
    implements CopyWith$Fragment$Subtopic<TRes> {
  _CopyWithImpl$Fragment$Subtopic(
    this._instance,
    this._then,
  );

  final Fragment$Subtopic _instance;

  final TRes Function(Fragment$Subtopic) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? icon = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Subtopic(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        icon: icon == _undefined || icon == null
            ? _instance.icon
            : (icon as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Subtopic<TRes>
    implements CopyWith$Fragment$Subtopic<TRes> {
  _CopyWithStubImpl$Fragment$Subtopic(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? icon,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionSubtopic = FragmentDefinitionNode(
  name: NameNode(value: 'Subtopic'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Subtopic'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'title'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'icon'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentSubtopic = DocumentNode(definitions: [
  fragmentDefinitionSubtopic,
]);

extension ClientExtension$Fragment$Subtopic on graphql.GraphQLClient {
  void writeFragment$Subtopic({
    required Fragment$Subtopic data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Subtopic',
            document: documentNodeFragmentSubtopic,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Subtopic? readFragment$Subtopic({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Subtopic',
          document: documentNodeFragmentSubtopic,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Subtopic.fromJson(result);
  }
}

class Variables$Query$AllAssessments {
  factory Variables$Query$AllAssessments({
    required Enum$DiagnosticTestSessionInterval interval,
    required String classId,
  }) =>
      Variables$Query$AllAssessments._({
        r'interval': interval,
        r'classId': classId,
      });

  Variables$Query$AllAssessments._(this._$data);

  factory Variables$Query$AllAssessments.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$interval = data['interval'];
    result$data['interval'] =
        fromJson$Enum$DiagnosticTestSessionInterval((l$interval as String));
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    return Variables$Query$AllAssessments._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$DiagnosticTestSessionInterval get interval =>
      (_$data['interval'] as Enum$DiagnosticTestSessionInterval);
  String get classId => (_$data['classId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$interval = interval;
    result$data['interval'] =
        toJson$Enum$DiagnosticTestSessionInterval(l$interval);
    final l$classId = classId;
    result$data['classId'] = l$classId;
    return result$data;
  }

  CopyWith$Variables$Query$AllAssessments<Variables$Query$AllAssessments>
      get copyWith => CopyWith$Variables$Query$AllAssessments(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$AllAssessments) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$interval = interval;
    final lOther$interval = other.interval;
    if (l$interval != lOther$interval) {
      return false;
    }
    final l$classId = classId;
    final lOther$classId = other.classId;
    if (l$classId != lOther$classId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$interval = interval;
    final l$classId = classId;
    return Object.hashAll([
      l$interval,
      l$classId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$AllAssessments<TRes> {
  factory CopyWith$Variables$Query$AllAssessments(
    Variables$Query$AllAssessments instance,
    TRes Function(Variables$Query$AllAssessments) then,
  ) = _CopyWithImpl$Variables$Query$AllAssessments;

  factory CopyWith$Variables$Query$AllAssessments.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$AllAssessments;

  TRes call({
    Enum$DiagnosticTestSessionInterval? interval,
    String? classId,
  });
}

class _CopyWithImpl$Variables$Query$AllAssessments<TRes>
    implements CopyWith$Variables$Query$AllAssessments<TRes> {
  _CopyWithImpl$Variables$Query$AllAssessments(
    this._instance,
    this._then,
  );

  final Variables$Query$AllAssessments _instance;

  final TRes Function(Variables$Query$AllAssessments) _then;

  static const _undefined = {};

  TRes call({
    Object? interval = _undefined,
    Object? classId = _undefined,
  }) =>
      _then(Variables$Query$AllAssessments._({
        ..._instance._$data,
        if (interval != _undefined && interval != null)
          'interval': (interval as Enum$DiagnosticTestSessionInterval),
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$AllAssessments<TRes>
    implements CopyWith$Variables$Query$AllAssessments<TRes> {
  _CopyWithStubImpl$Variables$Query$AllAssessments(this._res);

  TRes _res;

  call({
    Enum$DiagnosticTestSessionInterval? interval,
    String? classId,
  }) =>
      _res;
}

class Query$AllAssessments {
  Query$AllAssessments({
    required this.allSessionsClass,
    required this.$__typename,
  });

  factory Query$AllAssessments.fromJson(Map<String, dynamic> json) {
    final l$allSessionsClass = json['allSessionsClass'];
    final l$$__typename = json['__typename'];
    return Query$AllAssessments(
      allSessionsClass: Query$AllAssessments$allSessionsClass.fromJson(
          (l$allSessionsClass as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$AllAssessments$allSessionsClass allSessionsClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allSessionsClass = allSessionsClass;
    _resultData['allSessionsClass'] = l$allSessionsClass.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allSessionsClass = allSessionsClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$allSessionsClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AllAssessments) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$allSessionsClass = allSessionsClass;
    final lOther$allSessionsClass = other.allSessionsClass;
    if (l$allSessionsClass != lOther$allSessionsClass) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$AllAssessments on Query$AllAssessments {
  CopyWith$Query$AllAssessments<Query$AllAssessments> get copyWith =>
      CopyWith$Query$AllAssessments(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AllAssessments<TRes> {
  factory CopyWith$Query$AllAssessments(
    Query$AllAssessments instance,
    TRes Function(Query$AllAssessments) then,
  ) = _CopyWithImpl$Query$AllAssessments;

  factory CopyWith$Query$AllAssessments.stub(TRes res) =
      _CopyWithStubImpl$Query$AllAssessments;

  TRes call({
    Query$AllAssessments$allSessionsClass? allSessionsClass,
    String? $__typename,
  });
  CopyWith$Query$AllAssessments$allSessionsClass<TRes> get allSessionsClass;
}

class _CopyWithImpl$Query$AllAssessments<TRes>
    implements CopyWith$Query$AllAssessments<TRes> {
  _CopyWithImpl$Query$AllAssessments(
    this._instance,
    this._then,
  );

  final Query$AllAssessments _instance;

  final TRes Function(Query$AllAssessments) _then;

  static const _undefined = {};

  TRes call({
    Object? allSessionsClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllAssessments(
        allSessionsClass:
            allSessionsClass == _undefined || allSessionsClass == null
                ? _instance.allSessionsClass
                : (allSessionsClass as Query$AllAssessments$allSessionsClass),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$AllAssessments$allSessionsClass<TRes> get allSessionsClass {
    final local$allSessionsClass = _instance.allSessionsClass;
    return CopyWith$Query$AllAssessments$allSessionsClass(
        local$allSessionsClass, (e) => call(allSessionsClass: e));
  }
}

class _CopyWithStubImpl$Query$AllAssessments<TRes>
    implements CopyWith$Query$AllAssessments<TRes> {
  _CopyWithStubImpl$Query$AllAssessments(this._res);

  TRes _res;

  call({
    Query$AllAssessments$allSessionsClass? allSessionsClass,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$AllAssessments$allSessionsClass<TRes> get allSessionsClass =>
      CopyWith$Query$AllAssessments$allSessionsClass.stub(_res);
}

const documentNodeQueryAllAssessments = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'AllAssessments'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'interval')),
        type: NamedTypeNode(
          name: NameNode(value: 'DiagnosticTestSessionInterval'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'classId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'class'),
        alias: NameNode(value: 'allSessionsClass'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'classId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'allDiagnosticTestSessions'),
            alias: NameNode(value: 'allAsssessmentsForClass'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'interval'),
                value: VariableNode(name: NameNode(value: 'interval')),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Assessment'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionAssessment,
]);
Query$AllAssessments _parserFn$Query$AllAssessments(
        Map<String, dynamic> data) =>
    Query$AllAssessments.fromJson(data);

class Options$Query$AllAssessments
    extends graphql.QueryOptions<Query$AllAssessments> {
  Options$Query$AllAssessments({
    String? operationName,
    required Variables$Query$AllAssessments variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryAllAssessments,
          parserFn: _parserFn$Query$AllAssessments,
        );
}

class WatchOptions$Query$AllAssessments
    extends graphql.WatchQueryOptions<Query$AllAssessments> {
  WatchOptions$Query$AllAssessments({
    String? operationName,
    required Variables$Query$AllAssessments variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryAllAssessments,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$AllAssessments,
        );
}

class FetchMoreOptions$Query$AllAssessments extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$AllAssessments({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$AllAssessments variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryAllAssessments,
        );
}

extension ClientExtension$Query$AllAssessments on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$AllAssessments>> query$AllAssessments(
          Options$Query$AllAssessments options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$AllAssessments> watchQuery$AllAssessments(
          WatchOptions$Query$AllAssessments options) =>
      this.watchQuery(options);
  void writeQuery$AllAssessments({
    required Query$AllAssessments data,
    required Variables$Query$AllAssessments variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryAllAssessments),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$AllAssessments? readQuery$AllAssessments({
    required Variables$Query$AllAssessments variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryAllAssessments),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$AllAssessments.fromJson(result);
  }
}

class Query$AllAssessments$allSessionsClass {
  Query$AllAssessments$allSessionsClass({
    required this.allAsssessmentsForClass,
    required this.$__typename,
  });

  factory Query$AllAssessments$allSessionsClass.fromJson(
      Map<String, dynamic> json) {
    final l$allAsssessmentsForClass = json['allAsssessmentsForClass'];
    final l$$__typename = json['__typename'];
    return Query$AllAssessments$allSessionsClass(
      allAsssessmentsForClass: (l$allAsssessmentsForClass as List<dynamic>)
          .map((e) => Fragment$Assessment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Assessment> allAsssessmentsForClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allAsssessmentsForClass = allAsssessmentsForClass;
    _resultData['allAsssessmentsForClass'] =
        l$allAsssessmentsForClass.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allAsssessmentsForClass = allAsssessmentsForClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$allAsssessmentsForClass.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AllAssessments$allSessionsClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allAsssessmentsForClass = allAsssessmentsForClass;
    final lOther$allAsssessmentsForClass = other.allAsssessmentsForClass;
    if (l$allAsssessmentsForClass.length !=
        lOther$allAsssessmentsForClass.length) {
      return false;
    }
    for (int i = 0; i < l$allAsssessmentsForClass.length; i++) {
      final l$allAsssessmentsForClass$entry = l$allAsssessmentsForClass[i];
      final lOther$allAsssessmentsForClass$entry =
          lOther$allAsssessmentsForClass[i];
      if (l$allAsssessmentsForClass$entry !=
          lOther$allAsssessmentsForClass$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$AllAssessments$allSessionsClass
    on Query$AllAssessments$allSessionsClass {
  CopyWith$Query$AllAssessments$allSessionsClass<
          Query$AllAssessments$allSessionsClass>
      get copyWith => CopyWith$Query$AllAssessments$allSessionsClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllAssessments$allSessionsClass<TRes> {
  factory CopyWith$Query$AllAssessments$allSessionsClass(
    Query$AllAssessments$allSessionsClass instance,
    TRes Function(Query$AllAssessments$allSessionsClass) then,
  ) = _CopyWithImpl$Query$AllAssessments$allSessionsClass;

  factory CopyWith$Query$AllAssessments$allSessionsClass.stub(TRes res) =
      _CopyWithStubImpl$Query$AllAssessments$allSessionsClass;

  TRes call({
    List<Fragment$Assessment>? allAsssessmentsForClass,
    String? $__typename,
  });
  TRes allAsssessmentsForClass(
      Iterable<Fragment$Assessment> Function(
              Iterable<CopyWith$Fragment$Assessment<Fragment$Assessment>>)
          _fn);
}

class _CopyWithImpl$Query$AllAssessments$allSessionsClass<TRes>
    implements CopyWith$Query$AllAssessments$allSessionsClass<TRes> {
  _CopyWithImpl$Query$AllAssessments$allSessionsClass(
    this._instance,
    this._then,
  );

  final Query$AllAssessments$allSessionsClass _instance;

  final TRes Function(Query$AllAssessments$allSessionsClass) _then;

  static const _undefined = {};

  TRes call({
    Object? allAsssessmentsForClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllAssessments$allSessionsClass(
        allAsssessmentsForClass: allAsssessmentsForClass == _undefined ||
                allAsssessmentsForClass == null
            ? _instance.allAsssessmentsForClass
            : (allAsssessmentsForClass as List<Fragment$Assessment>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes allAsssessmentsForClass(
          Iterable<Fragment$Assessment> Function(
                  Iterable<CopyWith$Fragment$Assessment<Fragment$Assessment>>)
              _fn) =>
      call(
          allAsssessmentsForClass: _fn(_instance.allAsssessmentsForClass
              .map((e) => CopyWith$Fragment$Assessment(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$AllAssessments$allSessionsClass<TRes>
    implements CopyWith$Query$AllAssessments$allSessionsClass<TRes> {
  _CopyWithStubImpl$Query$AllAssessments$allSessionsClass(this._res);

  TRes _res;

  call({
    List<Fragment$Assessment>? allAsssessmentsForClass,
    String? $__typename,
  }) =>
      _res;
  allAsssessmentsForClass(_fn) => _res;
}

class Variables$Query$GetAssessmentUpdates {
  factory Variables$Query$GetAssessmentUpdates(
          {required String diagnosticTestSessionId}) =>
      Variables$Query$GetAssessmentUpdates._({
        r'diagnosticTestSessionId': diagnosticTestSessionId,
      });

  Variables$Query$GetAssessmentUpdates._(this._$data);

  factory Variables$Query$GetAssessmentUpdates.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$diagnosticTestSessionId = data['diagnosticTestSessionId'];
    result$data['diagnosticTestSessionId'] =
        (l$diagnosticTestSessionId as String);
    return Variables$Query$GetAssessmentUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  String get diagnosticTestSessionId =>
      (_$data['diagnosticTestSessionId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$diagnosticTestSessionId = diagnosticTestSessionId;
    result$data['diagnosticTestSessionId'] = l$diagnosticTestSessionId;
    return result$data;
  }

  CopyWith$Variables$Query$GetAssessmentUpdates<
          Variables$Query$GetAssessmentUpdates>
      get copyWith => CopyWith$Variables$Query$GetAssessmentUpdates(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetAssessmentUpdates) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$diagnosticTestSessionId = diagnosticTestSessionId;
    final lOther$diagnosticTestSessionId = other.diagnosticTestSessionId;
    if (l$diagnosticTestSessionId != lOther$diagnosticTestSessionId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$diagnosticTestSessionId = diagnosticTestSessionId;
    return Object.hashAll([l$diagnosticTestSessionId]);
  }
}

abstract class CopyWith$Variables$Query$GetAssessmentUpdates<TRes> {
  factory CopyWith$Variables$Query$GetAssessmentUpdates(
    Variables$Query$GetAssessmentUpdates instance,
    TRes Function(Variables$Query$GetAssessmentUpdates) then,
  ) = _CopyWithImpl$Variables$Query$GetAssessmentUpdates;

  factory CopyWith$Variables$Query$GetAssessmentUpdates.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAssessmentUpdates;

  TRes call({String? diagnosticTestSessionId});
}

class _CopyWithImpl$Variables$Query$GetAssessmentUpdates<TRes>
    implements CopyWith$Variables$Query$GetAssessmentUpdates<TRes> {
  _CopyWithImpl$Variables$Query$GetAssessmentUpdates(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAssessmentUpdates _instance;

  final TRes Function(Variables$Query$GetAssessmentUpdates) _then;

  static const _undefined = {};

  TRes call({Object? diagnosticTestSessionId = _undefined}) =>
      _then(Variables$Query$GetAssessmentUpdates._({
        ..._instance._$data,
        if (diagnosticTestSessionId != _undefined &&
            diagnosticTestSessionId != null)
          'diagnosticTestSessionId': (diagnosticTestSessionId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAssessmentUpdates<TRes>
    implements CopyWith$Variables$Query$GetAssessmentUpdates<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAssessmentUpdates(this._res);

  TRes _res;

  call({String? diagnosticTestSessionId}) => _res;
}

class Query$GetAssessmentUpdates {
  Query$GetAssessmentUpdates({
    required this.assessmentUpdates,
    required this.$__typename,
  });

  factory Query$GetAssessmentUpdates.fromJson(Map<String, dynamic> json) {
    final l$assessmentUpdates = json['assessmentUpdates'];
    final l$$__typename = json['__typename'];
    return Query$GetAssessmentUpdates(
      assessmentUpdates: Query$GetAssessmentUpdates$assessmentUpdates.fromJson(
          (l$assessmentUpdates as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAssessmentUpdates$assessmentUpdates assessmentUpdates;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$assessmentUpdates = assessmentUpdates;
    _resultData['assessmentUpdates'] = l$assessmentUpdates.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$assessmentUpdates = assessmentUpdates;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$assessmentUpdates,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAssessmentUpdates) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$assessmentUpdates = assessmentUpdates;
    final lOther$assessmentUpdates = other.assessmentUpdates;
    if (l$assessmentUpdates != lOther$assessmentUpdates) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAssessmentUpdates
    on Query$GetAssessmentUpdates {
  CopyWith$Query$GetAssessmentUpdates<Query$GetAssessmentUpdates>
      get copyWith => CopyWith$Query$GetAssessmentUpdates(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAssessmentUpdates<TRes> {
  factory CopyWith$Query$GetAssessmentUpdates(
    Query$GetAssessmentUpdates instance,
    TRes Function(Query$GetAssessmentUpdates) then,
  ) = _CopyWithImpl$Query$GetAssessmentUpdates;

  factory CopyWith$Query$GetAssessmentUpdates.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAssessmentUpdates;

  TRes call({
    Query$GetAssessmentUpdates$assessmentUpdates? assessmentUpdates,
    String? $__typename,
  });
  CopyWith$Query$GetAssessmentUpdates$assessmentUpdates<TRes>
      get assessmentUpdates;
}

class _CopyWithImpl$Query$GetAssessmentUpdates<TRes>
    implements CopyWith$Query$GetAssessmentUpdates<TRes> {
  _CopyWithImpl$Query$GetAssessmentUpdates(
    this._instance,
    this._then,
  );

  final Query$GetAssessmentUpdates _instance;

  final TRes Function(Query$GetAssessmentUpdates) _then;

  static const _undefined = {};

  TRes call({
    Object? assessmentUpdates = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAssessmentUpdates(
        assessmentUpdates:
            assessmentUpdates == _undefined || assessmentUpdates == null
                ? _instance.assessmentUpdates
                : (assessmentUpdates
                    as Query$GetAssessmentUpdates$assessmentUpdates),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetAssessmentUpdates$assessmentUpdates<TRes>
      get assessmentUpdates {
    final local$assessmentUpdates = _instance.assessmentUpdates;
    return CopyWith$Query$GetAssessmentUpdates$assessmentUpdates(
        local$assessmentUpdates, (e) => call(assessmentUpdates: e));
  }
}

class _CopyWithStubImpl$Query$GetAssessmentUpdates<TRes>
    implements CopyWith$Query$GetAssessmentUpdates<TRes> {
  _CopyWithStubImpl$Query$GetAssessmentUpdates(this._res);

  TRes _res;

  call({
    Query$GetAssessmentUpdates$assessmentUpdates? assessmentUpdates,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetAssessmentUpdates$assessmentUpdates<TRes>
      get assessmentUpdates =>
          CopyWith$Query$GetAssessmentUpdates$assessmentUpdates.stub(_res);
}

const documentNodeQueryGetAssessmentUpdates = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAssessmentUpdates'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable:
            VariableNode(name: NameNode(value: 'diagnosticTestSessionId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'diagnosticTestSession'),
        alias: NameNode(value: 'assessmentUpdates'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value:
                VariableNode(name: NameNode(value: 'diagnosticTestSessionId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'tests'),
            alias: NameNode(value: 'statsTests'),
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'startedAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'user'),
                alias: NameNode(value: 'statsUser'),
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'expectedDueAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$GetAssessmentUpdates _parserFn$Query$GetAssessmentUpdates(
        Map<String, dynamic> data) =>
    Query$GetAssessmentUpdates.fromJson(data);

class Options$Query$GetAssessmentUpdates
    extends graphql.QueryOptions<Query$GetAssessmentUpdates> {
  Options$Query$GetAssessmentUpdates({
    String? operationName,
    required Variables$Query$GetAssessmentUpdates variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryGetAssessmentUpdates,
          parserFn: _parserFn$Query$GetAssessmentUpdates,
        );
}

class WatchOptions$Query$GetAssessmentUpdates
    extends graphql.WatchQueryOptions<Query$GetAssessmentUpdates> {
  WatchOptions$Query$GetAssessmentUpdates({
    String? operationName,
    required Variables$Query$GetAssessmentUpdates variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryGetAssessmentUpdates,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetAssessmentUpdates,
        );
}

class FetchMoreOptions$Query$GetAssessmentUpdates
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAssessmentUpdates({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetAssessmentUpdates variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetAssessmentUpdates,
        );
}

extension ClientExtension$Query$GetAssessmentUpdates on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAssessmentUpdates>>
      query$GetAssessmentUpdates(
              Options$Query$GetAssessmentUpdates options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetAssessmentUpdates>
      watchQuery$GetAssessmentUpdates(
              WatchOptions$Query$GetAssessmentUpdates options) =>
          this.watchQuery(options);
  void writeQuery$GetAssessmentUpdates({
    required Query$GetAssessmentUpdates data,
    required Variables$Query$GetAssessmentUpdates variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetAssessmentUpdates),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetAssessmentUpdates? readQuery$GetAssessmentUpdates({
    required Variables$Query$GetAssessmentUpdates variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetAssessmentUpdates),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetAssessmentUpdates.fromJson(result);
  }
}

class Query$GetAssessmentUpdates$assessmentUpdates {
  Query$GetAssessmentUpdates$assessmentUpdates({
    required this.id,
    required this.statsTests,
    required this.expectedDueAt,
    required this.$__typename,
  });

  factory Query$GetAssessmentUpdates$assessmentUpdates.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$statsTests = json['statsTests'];
    final l$expectedDueAt = json['expectedDueAt'];
    final l$$__typename = json['__typename'];
    return Query$GetAssessmentUpdates$assessmentUpdates(
      id: (l$id as String),
      statsTests: (l$statsTests as List<dynamic>)
          .map((e) =>
              Query$GetAssessmentUpdates$assessmentUpdates$statsTests.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      expectedDueAt: dateTimeFromRFC3339Nano(l$expectedDueAt),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final List<Query$GetAssessmentUpdates$assessmentUpdates$statsTests>
      statsTests;

  final DateTime expectedDueAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$statsTests = statsTests;
    _resultData['statsTests'] = l$statsTests.map((e) => e.toJson()).toList();
    final l$expectedDueAt = expectedDueAt;
    _resultData['expectedDueAt'] = dateTimeToUtcToIso8601(l$expectedDueAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$statsTests = statsTests;
    final l$expectedDueAt = expectedDueAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$statsTests.map((v) => v)),
      l$expectedDueAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAssessmentUpdates$assessmentUpdates) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$statsTests = statsTests;
    final lOther$statsTests = other.statsTests;
    if (l$statsTests.length != lOther$statsTests.length) {
      return false;
    }
    for (int i = 0; i < l$statsTests.length; i++) {
      final l$statsTests$entry = l$statsTests[i];
      final lOther$statsTests$entry = lOther$statsTests[i];
      if (l$statsTests$entry != lOther$statsTests$entry) {
        return false;
      }
    }
    final l$expectedDueAt = expectedDueAt;
    final lOther$expectedDueAt = other.expectedDueAt;
    if (l$expectedDueAt != lOther$expectedDueAt) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAssessmentUpdates$assessmentUpdates
    on Query$GetAssessmentUpdates$assessmentUpdates {
  CopyWith$Query$GetAssessmentUpdates$assessmentUpdates<
          Query$GetAssessmentUpdates$assessmentUpdates>
      get copyWith => CopyWith$Query$GetAssessmentUpdates$assessmentUpdates(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAssessmentUpdates$assessmentUpdates<TRes> {
  factory CopyWith$Query$GetAssessmentUpdates$assessmentUpdates(
    Query$GetAssessmentUpdates$assessmentUpdates instance,
    TRes Function(Query$GetAssessmentUpdates$assessmentUpdates) then,
  ) = _CopyWithImpl$Query$GetAssessmentUpdates$assessmentUpdates;

  factory CopyWith$Query$GetAssessmentUpdates$assessmentUpdates.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAssessmentUpdates$assessmentUpdates;

  TRes call({
    String? id,
    List<Query$GetAssessmentUpdates$assessmentUpdates$statsTests>? statsTests,
    DateTime? expectedDueAt,
    String? $__typename,
  });
  TRes statsTests(
      Iterable<Query$GetAssessmentUpdates$assessmentUpdates$statsTests> Function(
              Iterable<
                  CopyWith$Query$GetAssessmentUpdates$assessmentUpdates$statsTests<
                      Query$GetAssessmentUpdates$assessmentUpdates$statsTests>>)
          _fn);
}

class _CopyWithImpl$Query$GetAssessmentUpdates$assessmentUpdates<TRes>
    implements CopyWith$Query$GetAssessmentUpdates$assessmentUpdates<TRes> {
  _CopyWithImpl$Query$GetAssessmentUpdates$assessmentUpdates(
    this._instance,
    this._then,
  );

  final Query$GetAssessmentUpdates$assessmentUpdates _instance;

  final TRes Function(Query$GetAssessmentUpdates$assessmentUpdates) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? statsTests = _undefined,
    Object? expectedDueAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAssessmentUpdates$assessmentUpdates(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        statsTests: statsTests == _undefined || statsTests == null
            ? _instance.statsTests
            : (statsTests as List<
                Query$GetAssessmentUpdates$assessmentUpdates$statsTests>),
        expectedDueAt: expectedDueAt == _undefined || expectedDueAt == null
            ? _instance.expectedDueAt
            : (expectedDueAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes statsTests(
          Iterable<Query$GetAssessmentUpdates$assessmentUpdates$statsTests> Function(
                  Iterable<
                      CopyWith$Query$GetAssessmentUpdates$assessmentUpdates$statsTests<
                          Query$GetAssessmentUpdates$assessmentUpdates$statsTests>>)
              _fn) =>
      call(
          statsTests: _fn(_instance.statsTests.map((e) =>
              CopyWith$Query$GetAssessmentUpdates$assessmentUpdates$statsTests(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetAssessmentUpdates$assessmentUpdates<TRes>
    implements CopyWith$Query$GetAssessmentUpdates$assessmentUpdates<TRes> {
  _CopyWithStubImpl$Query$GetAssessmentUpdates$assessmentUpdates(this._res);

  TRes _res;

  call({
    String? id,
    List<Query$GetAssessmentUpdates$assessmentUpdates$statsTests>? statsTests,
    DateTime? expectedDueAt,
    String? $__typename,
  }) =>
      _res;
  statsTests(_fn) => _res;
}

class Query$GetAssessmentUpdates$assessmentUpdates$statsTests {
  Query$GetAssessmentUpdates$assessmentUpdates$statsTests({
    required this.id,
    this.startedAt,
    required this.statsUser,
    required this.$__typename,
  });

  factory Query$GetAssessmentUpdates$assessmentUpdates$statsTests.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$startedAt = json['startedAt'];
    final l$statsUser = json['statsUser'];
    final l$$__typename = json['__typename'];
    return Query$GetAssessmentUpdates$assessmentUpdates$statsTests(
      id: (l$id as String),
      startedAt:
          l$startedAt == null ? null : dateTimeFromRFC3339Nano(l$startedAt),
      statsUser:
          Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser
              .fromJson((l$statsUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime? startedAt;

  final Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser
      statsUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$startedAt = startedAt;
    _resultData['startedAt'] =
        l$startedAt == null ? null : dateTimeToUtcToIso8601(l$startedAt);
    final l$statsUser = statsUser;
    _resultData['statsUser'] = l$statsUser.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$startedAt = startedAt;
    final l$statsUser = statsUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$startedAt,
      l$statsUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAssessmentUpdates$assessmentUpdates$statsTests) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$startedAt = startedAt;
    final lOther$startedAt = other.startedAt;
    if (l$startedAt != lOther$startedAt) {
      return false;
    }
    final l$statsUser = statsUser;
    final lOther$statsUser = other.statsUser;
    if (l$statsUser != lOther$statsUser) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAssessmentUpdates$assessmentUpdates$statsTests
    on Query$GetAssessmentUpdates$assessmentUpdates$statsTests {
  CopyWith$Query$GetAssessmentUpdates$assessmentUpdates$statsTests<
          Query$GetAssessmentUpdates$assessmentUpdates$statsTests>
      get copyWith =>
          CopyWith$Query$GetAssessmentUpdates$assessmentUpdates$statsTests(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAssessmentUpdates$assessmentUpdates$statsTests<
    TRes> {
  factory CopyWith$Query$GetAssessmentUpdates$assessmentUpdates$statsTests(
    Query$GetAssessmentUpdates$assessmentUpdates$statsTests instance,
    TRes Function(Query$GetAssessmentUpdates$assessmentUpdates$statsTests) then,
  ) = _CopyWithImpl$Query$GetAssessmentUpdates$assessmentUpdates$statsTests;

  factory CopyWith$Query$GetAssessmentUpdates$assessmentUpdates$statsTests.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAssessmentUpdates$assessmentUpdates$statsTests;

  TRes call({
    String? id,
    DateTime? startedAt,
    Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser?
        statsUser,
    String? $__typename,
  });
  CopyWith$Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser<
      TRes> get statsUser;
}

class _CopyWithImpl$Query$GetAssessmentUpdates$assessmentUpdates$statsTests<
        TRes>
    implements
        CopyWith$Query$GetAssessmentUpdates$assessmentUpdates$statsTests<TRes> {
  _CopyWithImpl$Query$GetAssessmentUpdates$assessmentUpdates$statsTests(
    this._instance,
    this._then,
  );

  final Query$GetAssessmentUpdates$assessmentUpdates$statsTests _instance;

  final TRes Function(Query$GetAssessmentUpdates$assessmentUpdates$statsTests)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? startedAt = _undefined,
    Object? statsUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAssessmentUpdates$assessmentUpdates$statsTests(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        startedAt: startedAt == _undefined
            ? _instance.startedAt
            : (startedAt as DateTime?),
        statsUser: statsUser == _undefined || statsUser == null
            ? _instance.statsUser
            : (statsUser
                as Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser<
      TRes> get statsUser {
    final local$statsUser = _instance.statsUser;
    return CopyWith$Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser(
        local$statsUser, (e) => call(statsUser: e));
  }
}

class _CopyWithStubImpl$Query$GetAssessmentUpdates$assessmentUpdates$statsTests<
        TRes>
    implements
        CopyWith$Query$GetAssessmentUpdates$assessmentUpdates$statsTests<TRes> {
  _CopyWithStubImpl$Query$GetAssessmentUpdates$assessmentUpdates$statsTests(
      this._res);

  TRes _res;

  call({
    String? id,
    DateTime? startedAt,
    Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser?
        statsUser,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser<
          TRes>
      get statsUser =>
          CopyWith$Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser
              .stub(_res);
}

class Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser {
  Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser({
    required this.id,
    required this.$__typename,
  });

  factory Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser
    on Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser {
  CopyWith$Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser<
          Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser>
      get copyWith =>
          CopyWith$Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser<
    TRes> {
  factory CopyWith$Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser(
    Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser instance,
    TRes Function(
            Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser)
        then,
  ) = _CopyWithImpl$Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser;

  factory CopyWith$Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser<
        TRes>
    implements
        CopyWith$Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser<
            TRes> {
  _CopyWithImpl$Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser(
    this._instance,
    this._then,
  );

  final Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser
      _instance;

  final TRes Function(
      Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser<
        TRes>
    implements
        CopyWith$Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser<
            TRes> {
  _CopyWithStubImpl$Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$AllAssessmentsLinkedToTopic {
  factory Variables$Query$AllAssessmentsLinkedToTopic({
    required String classId,
    required String topicId,
    required Enum$DiagnosticTestSessionInterval interval,
  }) =>
      Variables$Query$AllAssessmentsLinkedToTopic._({
        r'classId': classId,
        r'topicId': topicId,
        r'interval': interval,
      });

  Variables$Query$AllAssessmentsLinkedToTopic._(this._$data);

  factory Variables$Query$AllAssessmentsLinkedToTopic.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    final l$topicId = data['topicId'];
    result$data['topicId'] = (l$topicId as String);
    final l$interval = data['interval'];
    result$data['interval'] =
        fromJson$Enum$DiagnosticTestSessionInterval((l$interval as String));
    return Variables$Query$AllAssessmentsLinkedToTopic._(result$data);
  }

  Map<String, dynamic> _$data;

  String get classId => (_$data['classId'] as String);
  String get topicId => (_$data['topicId'] as String);
  Enum$DiagnosticTestSessionInterval get interval =>
      (_$data['interval'] as Enum$DiagnosticTestSessionInterval);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$classId = classId;
    result$data['classId'] = l$classId;
    final l$topicId = topicId;
    result$data['topicId'] = l$topicId;
    final l$interval = interval;
    result$data['interval'] =
        toJson$Enum$DiagnosticTestSessionInterval(l$interval);
    return result$data;
  }

  CopyWith$Variables$Query$AllAssessmentsLinkedToTopic<
          Variables$Query$AllAssessmentsLinkedToTopic>
      get copyWith => CopyWith$Variables$Query$AllAssessmentsLinkedToTopic(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$AllAssessmentsLinkedToTopic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classId = classId;
    final lOther$classId = other.classId;
    if (l$classId != lOther$classId) {
      return false;
    }
    final l$topicId = topicId;
    final lOther$topicId = other.topicId;
    if (l$topicId != lOther$topicId) {
      return false;
    }
    final l$interval = interval;
    final lOther$interval = other.interval;
    if (l$interval != lOther$interval) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$classId = classId;
    final l$topicId = topicId;
    final l$interval = interval;
    return Object.hashAll([
      l$classId,
      l$topicId,
      l$interval,
    ]);
  }
}

abstract class CopyWith$Variables$Query$AllAssessmentsLinkedToTopic<TRes> {
  factory CopyWith$Variables$Query$AllAssessmentsLinkedToTopic(
    Variables$Query$AllAssessmentsLinkedToTopic instance,
    TRes Function(Variables$Query$AllAssessmentsLinkedToTopic) then,
  ) = _CopyWithImpl$Variables$Query$AllAssessmentsLinkedToTopic;

  factory CopyWith$Variables$Query$AllAssessmentsLinkedToTopic.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$AllAssessmentsLinkedToTopic;

  TRes call({
    String? classId,
    String? topicId,
    Enum$DiagnosticTestSessionInterval? interval,
  });
}

class _CopyWithImpl$Variables$Query$AllAssessmentsLinkedToTopic<TRes>
    implements CopyWith$Variables$Query$AllAssessmentsLinkedToTopic<TRes> {
  _CopyWithImpl$Variables$Query$AllAssessmentsLinkedToTopic(
    this._instance,
    this._then,
  );

  final Variables$Query$AllAssessmentsLinkedToTopic _instance;

  final TRes Function(Variables$Query$AllAssessmentsLinkedToTopic) _then;

  static const _undefined = {};

  TRes call({
    Object? classId = _undefined,
    Object? topicId = _undefined,
    Object? interval = _undefined,
  }) =>
      _then(Variables$Query$AllAssessmentsLinkedToTopic._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
        if (topicId != _undefined && topicId != null)
          'topicId': (topicId as String),
        if (interval != _undefined && interval != null)
          'interval': (interval as Enum$DiagnosticTestSessionInterval),
      }));
}

class _CopyWithStubImpl$Variables$Query$AllAssessmentsLinkedToTopic<TRes>
    implements CopyWith$Variables$Query$AllAssessmentsLinkedToTopic<TRes> {
  _CopyWithStubImpl$Variables$Query$AllAssessmentsLinkedToTopic(this._res);

  TRes _res;

  call({
    String? classId,
    String? topicId,
    Enum$DiagnosticTestSessionInterval? interval,
  }) =>
      _res;
}

class Query$AllAssessmentsLinkedToTopic {
  Query$AllAssessmentsLinkedToTopic({
    required this.targetTopic,
    required this.$__typename,
  });

  factory Query$AllAssessmentsLinkedToTopic.fromJson(
      Map<String, dynamic> json) {
    final l$targetTopic = json['targetTopic'];
    final l$$__typename = json['__typename'];
    return Query$AllAssessmentsLinkedToTopic(
      targetTopic: Query$AllAssessmentsLinkedToTopic$targetTopic.fromJson(
          (l$targetTopic as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$AllAssessmentsLinkedToTopic$targetTopic targetTopic;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$targetTopic = targetTopic;
    _resultData['targetTopic'] = l$targetTopic.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$targetTopic = targetTopic;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$targetTopic,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AllAssessmentsLinkedToTopic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$targetTopic = targetTopic;
    final lOther$targetTopic = other.targetTopic;
    if (l$targetTopic != lOther$targetTopic) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$AllAssessmentsLinkedToTopic
    on Query$AllAssessmentsLinkedToTopic {
  CopyWith$Query$AllAssessmentsLinkedToTopic<Query$AllAssessmentsLinkedToTopic>
      get copyWith => CopyWith$Query$AllAssessmentsLinkedToTopic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllAssessmentsLinkedToTopic<TRes> {
  factory CopyWith$Query$AllAssessmentsLinkedToTopic(
    Query$AllAssessmentsLinkedToTopic instance,
    TRes Function(Query$AllAssessmentsLinkedToTopic) then,
  ) = _CopyWithImpl$Query$AllAssessmentsLinkedToTopic;

  factory CopyWith$Query$AllAssessmentsLinkedToTopic.stub(TRes res) =
      _CopyWithStubImpl$Query$AllAssessmentsLinkedToTopic;

  TRes call({
    Query$AllAssessmentsLinkedToTopic$targetTopic? targetTopic,
    String? $__typename,
  });
  CopyWith$Query$AllAssessmentsLinkedToTopic$targetTopic<TRes> get targetTopic;
}

class _CopyWithImpl$Query$AllAssessmentsLinkedToTopic<TRes>
    implements CopyWith$Query$AllAssessmentsLinkedToTopic<TRes> {
  _CopyWithImpl$Query$AllAssessmentsLinkedToTopic(
    this._instance,
    this._then,
  );

  final Query$AllAssessmentsLinkedToTopic _instance;

  final TRes Function(Query$AllAssessmentsLinkedToTopic) _then;

  static const _undefined = {};

  TRes call({
    Object? targetTopic = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllAssessmentsLinkedToTopic(
        targetTopic: targetTopic == _undefined || targetTopic == null
            ? _instance.targetTopic
            : (targetTopic as Query$AllAssessmentsLinkedToTopic$targetTopic),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$AllAssessmentsLinkedToTopic$targetTopic<TRes> get targetTopic {
    final local$targetTopic = _instance.targetTopic;
    return CopyWith$Query$AllAssessmentsLinkedToTopic$targetTopic(
        local$targetTopic, (e) => call(targetTopic: e));
  }
}

class _CopyWithStubImpl$Query$AllAssessmentsLinkedToTopic<TRes>
    implements CopyWith$Query$AllAssessmentsLinkedToTopic<TRes> {
  _CopyWithStubImpl$Query$AllAssessmentsLinkedToTopic(this._res);

  TRes _res;

  call({
    Query$AllAssessmentsLinkedToTopic$targetTopic? targetTopic,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$AllAssessmentsLinkedToTopic$targetTopic<TRes>
      get targetTopic =>
          CopyWith$Query$AllAssessmentsLinkedToTopic$targetTopic.stub(_res);
}

const documentNodeQueryAllAssessmentsLinkedToTopic = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'AllAssessmentsLinkedToTopic'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'classId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'topicId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'interval')),
        type: NamedTypeNode(
          name: NameNode(value: 'DiagnosticTestSessionInterval'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'topic'),
        alias: NameNode(value: 'targetTopic'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'topicId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'allDiagnosticTestSessions'),
            alias: NameNode(value: 'allAssessmentsForTopic'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'classID'),
                value: VariableNode(name: NameNode(value: 'classId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'interval'),
                value: VariableNode(name: NameNode(value: 'interval')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Assessment'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionAssessment,
]);
Query$AllAssessmentsLinkedToTopic _parserFn$Query$AllAssessmentsLinkedToTopic(
        Map<String, dynamic> data) =>
    Query$AllAssessmentsLinkedToTopic.fromJson(data);

class Options$Query$AllAssessmentsLinkedToTopic
    extends graphql.QueryOptions<Query$AllAssessmentsLinkedToTopic> {
  Options$Query$AllAssessmentsLinkedToTopic({
    String? operationName,
    required Variables$Query$AllAssessmentsLinkedToTopic variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryAllAssessmentsLinkedToTopic,
          parserFn: _parserFn$Query$AllAssessmentsLinkedToTopic,
        );
}

class WatchOptions$Query$AllAssessmentsLinkedToTopic
    extends graphql.WatchQueryOptions<Query$AllAssessmentsLinkedToTopic> {
  WatchOptions$Query$AllAssessmentsLinkedToTopic({
    String? operationName,
    required Variables$Query$AllAssessmentsLinkedToTopic variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryAllAssessmentsLinkedToTopic,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$AllAssessmentsLinkedToTopic,
        );
}

class FetchMoreOptions$Query$AllAssessmentsLinkedToTopic
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$AllAssessmentsLinkedToTopic({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$AllAssessmentsLinkedToTopic variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryAllAssessmentsLinkedToTopic,
        );
}

extension ClientExtension$Query$AllAssessmentsLinkedToTopic
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$AllAssessmentsLinkedToTopic>>
      query$AllAssessmentsLinkedToTopic(
              Options$Query$AllAssessmentsLinkedToTopic options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$AllAssessmentsLinkedToTopic>
      watchQuery$AllAssessmentsLinkedToTopic(
              WatchOptions$Query$AllAssessmentsLinkedToTopic options) =>
          this.watchQuery(options);
  void writeQuery$AllAssessmentsLinkedToTopic({
    required Query$AllAssessmentsLinkedToTopic data,
    required Variables$Query$AllAssessmentsLinkedToTopic variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryAllAssessmentsLinkedToTopic),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$AllAssessmentsLinkedToTopic? readQuery$AllAssessmentsLinkedToTopic({
    required Variables$Query$AllAssessmentsLinkedToTopic variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryAllAssessmentsLinkedToTopic),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$AllAssessmentsLinkedToTopic.fromJson(result);
  }
}

class Query$AllAssessmentsLinkedToTopic$targetTopic {
  Query$AllAssessmentsLinkedToTopic$targetTopic({
    required this.allAssessmentsForTopic,
    required this.$__typename,
  });

  factory Query$AllAssessmentsLinkedToTopic$targetTopic.fromJson(
      Map<String, dynamic> json) {
    final l$allAssessmentsForTopic = json['allAssessmentsForTopic'];
    final l$$__typename = json['__typename'];
    return Query$AllAssessmentsLinkedToTopic$targetTopic(
      allAssessmentsForTopic: (l$allAssessmentsForTopic as List<dynamic>)
          .map((e) => Fragment$Assessment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Assessment> allAssessmentsForTopic;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allAssessmentsForTopic = allAssessmentsForTopic;
    _resultData['allAssessmentsForTopic'] =
        l$allAssessmentsForTopic.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allAssessmentsForTopic = allAssessmentsForTopic;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$allAssessmentsForTopic.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AllAssessmentsLinkedToTopic$targetTopic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allAssessmentsForTopic = allAssessmentsForTopic;
    final lOther$allAssessmentsForTopic = other.allAssessmentsForTopic;
    if (l$allAssessmentsForTopic.length !=
        lOther$allAssessmentsForTopic.length) {
      return false;
    }
    for (int i = 0; i < l$allAssessmentsForTopic.length; i++) {
      final l$allAssessmentsForTopic$entry = l$allAssessmentsForTopic[i];
      final lOther$allAssessmentsForTopic$entry =
          lOther$allAssessmentsForTopic[i];
      if (l$allAssessmentsForTopic$entry !=
          lOther$allAssessmentsForTopic$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$AllAssessmentsLinkedToTopic$targetTopic
    on Query$AllAssessmentsLinkedToTopic$targetTopic {
  CopyWith$Query$AllAssessmentsLinkedToTopic$targetTopic<
          Query$AllAssessmentsLinkedToTopic$targetTopic>
      get copyWith => CopyWith$Query$AllAssessmentsLinkedToTopic$targetTopic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllAssessmentsLinkedToTopic$targetTopic<TRes> {
  factory CopyWith$Query$AllAssessmentsLinkedToTopic$targetTopic(
    Query$AllAssessmentsLinkedToTopic$targetTopic instance,
    TRes Function(Query$AllAssessmentsLinkedToTopic$targetTopic) then,
  ) = _CopyWithImpl$Query$AllAssessmentsLinkedToTopic$targetTopic;

  factory CopyWith$Query$AllAssessmentsLinkedToTopic$targetTopic.stub(
          TRes res) =
      _CopyWithStubImpl$Query$AllAssessmentsLinkedToTopic$targetTopic;

  TRes call({
    List<Fragment$Assessment>? allAssessmentsForTopic,
    String? $__typename,
  });
  TRes allAssessmentsForTopic(
      Iterable<Fragment$Assessment> Function(
              Iterable<CopyWith$Fragment$Assessment<Fragment$Assessment>>)
          _fn);
}

class _CopyWithImpl$Query$AllAssessmentsLinkedToTopic$targetTopic<TRes>
    implements CopyWith$Query$AllAssessmentsLinkedToTopic$targetTopic<TRes> {
  _CopyWithImpl$Query$AllAssessmentsLinkedToTopic$targetTopic(
    this._instance,
    this._then,
  );

  final Query$AllAssessmentsLinkedToTopic$targetTopic _instance;

  final TRes Function(Query$AllAssessmentsLinkedToTopic$targetTopic) _then;

  static const _undefined = {};

  TRes call({
    Object? allAssessmentsForTopic = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllAssessmentsLinkedToTopic$targetTopic(
        allAssessmentsForTopic: allAssessmentsForTopic == _undefined ||
                allAssessmentsForTopic == null
            ? _instance.allAssessmentsForTopic
            : (allAssessmentsForTopic as List<Fragment$Assessment>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes allAssessmentsForTopic(
          Iterable<Fragment$Assessment> Function(
                  Iterable<CopyWith$Fragment$Assessment<Fragment$Assessment>>)
              _fn) =>
      call(
          allAssessmentsForTopic: _fn(_instance.allAssessmentsForTopic
              .map((e) => CopyWith$Fragment$Assessment(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$AllAssessmentsLinkedToTopic$targetTopic<TRes>
    implements CopyWith$Query$AllAssessmentsLinkedToTopic$targetTopic<TRes> {
  _CopyWithStubImpl$Query$AllAssessmentsLinkedToTopic$targetTopic(this._res);

  TRes _res;

  call({
    List<Fragment$Assessment>? allAssessmentsForTopic,
    String? $__typename,
  }) =>
      _res;
  allAssessmentsForTopic(_fn) => _res;
}

class Variables$Query$AllAssessmentsLinkedToSubtopic {
  factory Variables$Query$AllAssessmentsLinkedToSubtopic({
    required String classId,
    required Enum$DiagnosticTestSessionInterval interval,
    required String subtopicId,
  }) =>
      Variables$Query$AllAssessmentsLinkedToSubtopic._({
        r'classId': classId,
        r'interval': interval,
        r'subtopicId': subtopicId,
      });

  Variables$Query$AllAssessmentsLinkedToSubtopic._(this._$data);

  factory Variables$Query$AllAssessmentsLinkedToSubtopic.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    final l$interval = data['interval'];
    result$data['interval'] =
        fromJson$Enum$DiagnosticTestSessionInterval((l$interval as String));
    final l$subtopicId = data['subtopicId'];
    result$data['subtopicId'] = (l$subtopicId as String);
    return Variables$Query$AllAssessmentsLinkedToSubtopic._(result$data);
  }

  Map<String, dynamic> _$data;

  String get classId => (_$data['classId'] as String);
  Enum$DiagnosticTestSessionInterval get interval =>
      (_$data['interval'] as Enum$DiagnosticTestSessionInterval);
  String get subtopicId => (_$data['subtopicId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$classId = classId;
    result$data['classId'] = l$classId;
    final l$interval = interval;
    result$data['interval'] =
        toJson$Enum$DiagnosticTestSessionInterval(l$interval);
    final l$subtopicId = subtopicId;
    result$data['subtopicId'] = l$subtopicId;
    return result$data;
  }

  CopyWith$Variables$Query$AllAssessmentsLinkedToSubtopic<
          Variables$Query$AllAssessmentsLinkedToSubtopic>
      get copyWith => CopyWith$Variables$Query$AllAssessmentsLinkedToSubtopic(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$AllAssessmentsLinkedToSubtopic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classId = classId;
    final lOther$classId = other.classId;
    if (l$classId != lOther$classId) {
      return false;
    }
    final l$interval = interval;
    final lOther$interval = other.interval;
    if (l$interval != lOther$interval) {
      return false;
    }
    final l$subtopicId = subtopicId;
    final lOther$subtopicId = other.subtopicId;
    if (l$subtopicId != lOther$subtopicId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$classId = classId;
    final l$interval = interval;
    final l$subtopicId = subtopicId;
    return Object.hashAll([
      l$classId,
      l$interval,
      l$subtopicId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$AllAssessmentsLinkedToSubtopic<TRes> {
  factory CopyWith$Variables$Query$AllAssessmentsLinkedToSubtopic(
    Variables$Query$AllAssessmentsLinkedToSubtopic instance,
    TRes Function(Variables$Query$AllAssessmentsLinkedToSubtopic) then,
  ) = _CopyWithImpl$Variables$Query$AllAssessmentsLinkedToSubtopic;

  factory CopyWith$Variables$Query$AllAssessmentsLinkedToSubtopic.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Query$AllAssessmentsLinkedToSubtopic;

  TRes call({
    String? classId,
    Enum$DiagnosticTestSessionInterval? interval,
    String? subtopicId,
  });
}

class _CopyWithImpl$Variables$Query$AllAssessmentsLinkedToSubtopic<TRes>
    implements CopyWith$Variables$Query$AllAssessmentsLinkedToSubtopic<TRes> {
  _CopyWithImpl$Variables$Query$AllAssessmentsLinkedToSubtopic(
    this._instance,
    this._then,
  );

  final Variables$Query$AllAssessmentsLinkedToSubtopic _instance;

  final TRes Function(Variables$Query$AllAssessmentsLinkedToSubtopic) _then;

  static const _undefined = {};

  TRes call({
    Object? classId = _undefined,
    Object? interval = _undefined,
    Object? subtopicId = _undefined,
  }) =>
      _then(Variables$Query$AllAssessmentsLinkedToSubtopic._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
        if (interval != _undefined && interval != null)
          'interval': (interval as Enum$DiagnosticTestSessionInterval),
        if (subtopicId != _undefined && subtopicId != null)
          'subtopicId': (subtopicId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$AllAssessmentsLinkedToSubtopic<TRes>
    implements CopyWith$Variables$Query$AllAssessmentsLinkedToSubtopic<TRes> {
  _CopyWithStubImpl$Variables$Query$AllAssessmentsLinkedToSubtopic(this._res);

  TRes _res;

  call({
    String? classId,
    Enum$DiagnosticTestSessionInterval? interval,
    String? subtopicId,
  }) =>
      _res;
}

class Query$AllAssessmentsLinkedToSubtopic {
  Query$AllAssessmentsLinkedToSubtopic({
    required this.targetSubtopic,
    required this.$__typename,
  });

  factory Query$AllAssessmentsLinkedToSubtopic.fromJson(
      Map<String, dynamic> json) {
    final l$targetSubtopic = json['targetSubtopic'];
    final l$$__typename = json['__typename'];
    return Query$AllAssessmentsLinkedToSubtopic(
      targetSubtopic:
          Query$AllAssessmentsLinkedToSubtopic$targetSubtopic.fromJson(
              (l$targetSubtopic as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$AllAssessmentsLinkedToSubtopic$targetSubtopic targetSubtopic;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$targetSubtopic = targetSubtopic;
    _resultData['targetSubtopic'] = l$targetSubtopic.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$targetSubtopic = targetSubtopic;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$targetSubtopic,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AllAssessmentsLinkedToSubtopic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$targetSubtopic = targetSubtopic;
    final lOther$targetSubtopic = other.targetSubtopic;
    if (l$targetSubtopic != lOther$targetSubtopic) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$AllAssessmentsLinkedToSubtopic
    on Query$AllAssessmentsLinkedToSubtopic {
  CopyWith$Query$AllAssessmentsLinkedToSubtopic<
          Query$AllAssessmentsLinkedToSubtopic>
      get copyWith => CopyWith$Query$AllAssessmentsLinkedToSubtopic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllAssessmentsLinkedToSubtopic<TRes> {
  factory CopyWith$Query$AllAssessmentsLinkedToSubtopic(
    Query$AllAssessmentsLinkedToSubtopic instance,
    TRes Function(Query$AllAssessmentsLinkedToSubtopic) then,
  ) = _CopyWithImpl$Query$AllAssessmentsLinkedToSubtopic;

  factory CopyWith$Query$AllAssessmentsLinkedToSubtopic.stub(TRes res) =
      _CopyWithStubImpl$Query$AllAssessmentsLinkedToSubtopic;

  TRes call({
    Query$AllAssessmentsLinkedToSubtopic$targetSubtopic? targetSubtopic,
    String? $__typename,
  });
  CopyWith$Query$AllAssessmentsLinkedToSubtopic$targetSubtopic<TRes>
      get targetSubtopic;
}

class _CopyWithImpl$Query$AllAssessmentsLinkedToSubtopic<TRes>
    implements CopyWith$Query$AllAssessmentsLinkedToSubtopic<TRes> {
  _CopyWithImpl$Query$AllAssessmentsLinkedToSubtopic(
    this._instance,
    this._then,
  );

  final Query$AllAssessmentsLinkedToSubtopic _instance;

  final TRes Function(Query$AllAssessmentsLinkedToSubtopic) _then;

  static const _undefined = {};

  TRes call({
    Object? targetSubtopic = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllAssessmentsLinkedToSubtopic(
        targetSubtopic: targetSubtopic == _undefined || targetSubtopic == null
            ? _instance.targetSubtopic
            : (targetSubtopic
                as Query$AllAssessmentsLinkedToSubtopic$targetSubtopic),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$AllAssessmentsLinkedToSubtopic$targetSubtopic<TRes>
      get targetSubtopic {
    final local$targetSubtopic = _instance.targetSubtopic;
    return CopyWith$Query$AllAssessmentsLinkedToSubtopic$targetSubtopic(
        local$targetSubtopic, (e) => call(targetSubtopic: e));
  }
}

class _CopyWithStubImpl$Query$AllAssessmentsLinkedToSubtopic<TRes>
    implements CopyWith$Query$AllAssessmentsLinkedToSubtopic<TRes> {
  _CopyWithStubImpl$Query$AllAssessmentsLinkedToSubtopic(this._res);

  TRes _res;

  call({
    Query$AllAssessmentsLinkedToSubtopic$targetSubtopic? targetSubtopic,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$AllAssessmentsLinkedToSubtopic$targetSubtopic<TRes>
      get targetSubtopic =>
          CopyWith$Query$AllAssessmentsLinkedToSubtopic$targetSubtopic.stub(
              _res);
}

const documentNodeQueryAllAssessmentsLinkedToSubtopic =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'AllAssessmentsLinkedToSubtopic'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'classId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'interval')),
        type: NamedTypeNode(
          name: NameNode(value: 'DiagnosticTestSessionInterval'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'subtopicId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'subtopic'),
        alias: NameNode(value: 'targetSubtopic'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'subtopicId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'allDiagnosticTestSessions'),
            alias: NameNode(value: 'allAssessmentsForSubtopic'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'classID'),
                value: VariableNode(name: NameNode(value: 'classId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'interval'),
                value: VariableNode(name: NameNode(value: 'interval')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Assessment'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionAssessment,
]);
Query$AllAssessmentsLinkedToSubtopic
    _parserFn$Query$AllAssessmentsLinkedToSubtopic(Map<String, dynamic> data) =>
        Query$AllAssessmentsLinkedToSubtopic.fromJson(data);

class Options$Query$AllAssessmentsLinkedToSubtopic
    extends graphql.QueryOptions<Query$AllAssessmentsLinkedToSubtopic> {
  Options$Query$AllAssessmentsLinkedToSubtopic({
    String? operationName,
    required Variables$Query$AllAssessmentsLinkedToSubtopic variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryAllAssessmentsLinkedToSubtopic,
          parserFn: _parserFn$Query$AllAssessmentsLinkedToSubtopic,
        );
}

class WatchOptions$Query$AllAssessmentsLinkedToSubtopic
    extends graphql.WatchQueryOptions<Query$AllAssessmentsLinkedToSubtopic> {
  WatchOptions$Query$AllAssessmentsLinkedToSubtopic({
    String? operationName,
    required Variables$Query$AllAssessmentsLinkedToSubtopic variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryAllAssessmentsLinkedToSubtopic,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$AllAssessmentsLinkedToSubtopic,
        );
}

class FetchMoreOptions$Query$AllAssessmentsLinkedToSubtopic
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$AllAssessmentsLinkedToSubtopic({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$AllAssessmentsLinkedToSubtopic variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryAllAssessmentsLinkedToSubtopic,
        );
}

extension ClientExtension$Query$AllAssessmentsLinkedToSubtopic
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$AllAssessmentsLinkedToSubtopic>>
      query$AllAssessmentsLinkedToSubtopic(
              Options$Query$AllAssessmentsLinkedToSubtopic options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$AllAssessmentsLinkedToSubtopic>
      watchQuery$AllAssessmentsLinkedToSubtopic(
              WatchOptions$Query$AllAssessmentsLinkedToSubtopic options) =>
          this.watchQuery(options);
  void writeQuery$AllAssessmentsLinkedToSubtopic({
    required Query$AllAssessmentsLinkedToSubtopic data,
    required Variables$Query$AllAssessmentsLinkedToSubtopic variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryAllAssessmentsLinkedToSubtopic),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$AllAssessmentsLinkedToSubtopic?
      readQuery$AllAssessmentsLinkedToSubtopic({
    required Variables$Query$AllAssessmentsLinkedToSubtopic variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryAllAssessmentsLinkedToSubtopic),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$AllAssessmentsLinkedToSubtopic.fromJson(result);
  }
}

class Query$AllAssessmentsLinkedToSubtopic$targetSubtopic {
  Query$AllAssessmentsLinkedToSubtopic$targetSubtopic({
    required this.allAssessmentsForSubtopic,
    required this.$__typename,
  });

  factory Query$AllAssessmentsLinkedToSubtopic$targetSubtopic.fromJson(
      Map<String, dynamic> json) {
    final l$allAssessmentsForSubtopic = json['allAssessmentsForSubtopic'];
    final l$$__typename = json['__typename'];
    return Query$AllAssessmentsLinkedToSubtopic$targetSubtopic(
      allAssessmentsForSubtopic: (l$allAssessmentsForSubtopic as List<dynamic>)
          .map((e) => Fragment$Assessment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Assessment> allAssessmentsForSubtopic;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allAssessmentsForSubtopic = allAssessmentsForSubtopic;
    _resultData['allAssessmentsForSubtopic'] =
        l$allAssessmentsForSubtopic.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allAssessmentsForSubtopic = allAssessmentsForSubtopic;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$allAssessmentsForSubtopic.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AllAssessmentsLinkedToSubtopic$targetSubtopic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allAssessmentsForSubtopic = allAssessmentsForSubtopic;
    final lOther$allAssessmentsForSubtopic = other.allAssessmentsForSubtopic;
    if (l$allAssessmentsForSubtopic.length !=
        lOther$allAssessmentsForSubtopic.length) {
      return false;
    }
    for (int i = 0; i < l$allAssessmentsForSubtopic.length; i++) {
      final l$allAssessmentsForSubtopic$entry = l$allAssessmentsForSubtopic[i];
      final lOther$allAssessmentsForSubtopic$entry =
          lOther$allAssessmentsForSubtopic[i];
      if (l$allAssessmentsForSubtopic$entry !=
          lOther$allAssessmentsForSubtopic$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$AllAssessmentsLinkedToSubtopic$targetSubtopic
    on Query$AllAssessmentsLinkedToSubtopic$targetSubtopic {
  CopyWith$Query$AllAssessmentsLinkedToSubtopic$targetSubtopic<
          Query$AllAssessmentsLinkedToSubtopic$targetSubtopic>
      get copyWith =>
          CopyWith$Query$AllAssessmentsLinkedToSubtopic$targetSubtopic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllAssessmentsLinkedToSubtopic$targetSubtopic<
    TRes> {
  factory CopyWith$Query$AllAssessmentsLinkedToSubtopic$targetSubtopic(
    Query$AllAssessmentsLinkedToSubtopic$targetSubtopic instance,
    TRes Function(Query$AllAssessmentsLinkedToSubtopic$targetSubtopic) then,
  ) = _CopyWithImpl$Query$AllAssessmentsLinkedToSubtopic$targetSubtopic;

  factory CopyWith$Query$AllAssessmentsLinkedToSubtopic$targetSubtopic.stub(
          TRes res) =
      _CopyWithStubImpl$Query$AllAssessmentsLinkedToSubtopic$targetSubtopic;

  TRes call({
    List<Fragment$Assessment>? allAssessmentsForSubtopic,
    String? $__typename,
  });
  TRes allAssessmentsForSubtopic(
      Iterable<Fragment$Assessment> Function(
              Iterable<CopyWith$Fragment$Assessment<Fragment$Assessment>>)
          _fn);
}

class _CopyWithImpl$Query$AllAssessmentsLinkedToSubtopic$targetSubtopic<TRes>
    implements
        CopyWith$Query$AllAssessmentsLinkedToSubtopic$targetSubtopic<TRes> {
  _CopyWithImpl$Query$AllAssessmentsLinkedToSubtopic$targetSubtopic(
    this._instance,
    this._then,
  );

  final Query$AllAssessmentsLinkedToSubtopic$targetSubtopic _instance;

  final TRes Function(Query$AllAssessmentsLinkedToSubtopic$targetSubtopic)
      _then;

  static const _undefined = {};

  TRes call({
    Object? allAssessmentsForSubtopic = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllAssessmentsLinkedToSubtopic$targetSubtopic(
        allAssessmentsForSubtopic: allAssessmentsForSubtopic == _undefined ||
                allAssessmentsForSubtopic == null
            ? _instance.allAssessmentsForSubtopic
            : (allAssessmentsForSubtopic as List<Fragment$Assessment>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes allAssessmentsForSubtopic(
          Iterable<Fragment$Assessment> Function(
                  Iterable<CopyWith$Fragment$Assessment<Fragment$Assessment>>)
              _fn) =>
      call(
          allAssessmentsForSubtopic: _fn(_instance.allAssessmentsForSubtopic
              .map((e) => CopyWith$Fragment$Assessment(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$AllAssessmentsLinkedToSubtopic$targetSubtopic<
        TRes>
    implements
        CopyWith$Query$AllAssessmentsLinkedToSubtopic$targetSubtopic<TRes> {
  _CopyWithStubImpl$Query$AllAssessmentsLinkedToSubtopic$targetSubtopic(
      this._res);

  TRes _res;

  call({
    List<Fragment$Assessment>? allAssessmentsForSubtopic,
    String? $__typename,
  }) =>
      _res;
  allAssessmentsForSubtopic(_fn) => _res;
}

class Variables$Query$DiagnosticTestSessionCounts {
  factory Variables$Query$DiagnosticTestSessionCounts(
          {required String classId}) =>
      Variables$Query$DiagnosticTestSessionCounts._({
        r'classId': classId,
      });

  Variables$Query$DiagnosticTestSessionCounts._(this._$data);

  factory Variables$Query$DiagnosticTestSessionCounts.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    return Variables$Query$DiagnosticTestSessionCounts._(result$data);
  }

  Map<String, dynamic> _$data;

  String get classId => (_$data['classId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$classId = classId;
    result$data['classId'] = l$classId;
    return result$data;
  }

  CopyWith$Variables$Query$DiagnosticTestSessionCounts<
          Variables$Query$DiagnosticTestSessionCounts>
      get copyWith => CopyWith$Variables$Query$DiagnosticTestSessionCounts(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$DiagnosticTestSessionCounts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classId = classId;
    final lOther$classId = other.classId;
    if (l$classId != lOther$classId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$classId = classId;
    return Object.hashAll([l$classId]);
  }
}

abstract class CopyWith$Variables$Query$DiagnosticTestSessionCounts<TRes> {
  factory CopyWith$Variables$Query$DiagnosticTestSessionCounts(
    Variables$Query$DiagnosticTestSessionCounts instance,
    TRes Function(Variables$Query$DiagnosticTestSessionCounts) then,
  ) = _CopyWithImpl$Variables$Query$DiagnosticTestSessionCounts;

  factory CopyWith$Variables$Query$DiagnosticTestSessionCounts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$DiagnosticTestSessionCounts;

  TRes call({String? classId});
}

class _CopyWithImpl$Variables$Query$DiagnosticTestSessionCounts<TRes>
    implements CopyWith$Variables$Query$DiagnosticTestSessionCounts<TRes> {
  _CopyWithImpl$Variables$Query$DiagnosticTestSessionCounts(
    this._instance,
    this._then,
  );

  final Variables$Query$DiagnosticTestSessionCounts _instance;

  final TRes Function(Variables$Query$DiagnosticTestSessionCounts) _then;

  static const _undefined = {};

  TRes call({Object? classId = _undefined}) =>
      _then(Variables$Query$DiagnosticTestSessionCounts._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$DiagnosticTestSessionCounts<TRes>
    implements CopyWith$Variables$Query$DiagnosticTestSessionCounts<TRes> {
  _CopyWithStubImpl$Variables$Query$DiagnosticTestSessionCounts(this._res);

  TRes _res;

  call({String? classId}) => _res;
}

class Query$DiagnosticTestSessionCounts {
  Query$DiagnosticTestSessionCounts({
    required this.classCounts,
    required this.$__typename,
  });

  factory Query$DiagnosticTestSessionCounts.fromJson(
      Map<String, dynamic> json) {
    final l$classCounts = json['classCounts'];
    final l$$__typename = json['__typename'];
    return Query$DiagnosticTestSessionCounts(
      classCounts: Query$DiagnosticTestSessionCounts$classCounts.fromJson(
          (l$classCounts as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$DiagnosticTestSessionCounts$classCounts classCounts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$classCounts = classCounts;
    _resultData['classCounts'] = l$classCounts.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$classCounts = classCounts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$classCounts,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$DiagnosticTestSessionCounts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classCounts = classCounts;
    final lOther$classCounts = other.classCounts;
    if (l$classCounts != lOther$classCounts) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$DiagnosticTestSessionCounts
    on Query$DiagnosticTestSessionCounts {
  CopyWith$Query$DiagnosticTestSessionCounts<Query$DiagnosticTestSessionCounts>
      get copyWith => CopyWith$Query$DiagnosticTestSessionCounts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$DiagnosticTestSessionCounts<TRes> {
  factory CopyWith$Query$DiagnosticTestSessionCounts(
    Query$DiagnosticTestSessionCounts instance,
    TRes Function(Query$DiagnosticTestSessionCounts) then,
  ) = _CopyWithImpl$Query$DiagnosticTestSessionCounts;

  factory CopyWith$Query$DiagnosticTestSessionCounts.stub(TRes res) =
      _CopyWithStubImpl$Query$DiagnosticTestSessionCounts;

  TRes call({
    Query$DiagnosticTestSessionCounts$classCounts? classCounts,
    String? $__typename,
  });
  CopyWith$Query$DiagnosticTestSessionCounts$classCounts<TRes> get classCounts;
}

class _CopyWithImpl$Query$DiagnosticTestSessionCounts<TRes>
    implements CopyWith$Query$DiagnosticTestSessionCounts<TRes> {
  _CopyWithImpl$Query$DiagnosticTestSessionCounts(
    this._instance,
    this._then,
  );

  final Query$DiagnosticTestSessionCounts _instance;

  final TRes Function(Query$DiagnosticTestSessionCounts) _then;

  static const _undefined = {};

  TRes call({
    Object? classCounts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DiagnosticTestSessionCounts(
        classCounts: classCounts == _undefined || classCounts == null
            ? _instance.classCounts
            : (classCounts as Query$DiagnosticTestSessionCounts$classCounts),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$DiagnosticTestSessionCounts$classCounts<TRes> get classCounts {
    final local$classCounts = _instance.classCounts;
    return CopyWith$Query$DiagnosticTestSessionCounts$classCounts(
        local$classCounts, (e) => call(classCounts: e));
  }
}

class _CopyWithStubImpl$Query$DiagnosticTestSessionCounts<TRes>
    implements CopyWith$Query$DiagnosticTestSessionCounts<TRes> {
  _CopyWithStubImpl$Query$DiagnosticTestSessionCounts(this._res);

  TRes _res;

  call({
    Query$DiagnosticTestSessionCounts$classCounts? classCounts,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$DiagnosticTestSessionCounts$classCounts<TRes>
      get classCounts =>
          CopyWith$Query$DiagnosticTestSessionCounts$classCounts.stub(_res);
}

const documentNodeQueryDiagnosticTestSessionCounts = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'DiagnosticTestSessionCounts'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'classId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'class'),
        alias: NameNode(value: 'classCounts'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'classId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'diagnosticTestSessionCounts'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'DiagnosticTestSessionCounts'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionDiagnosticTestSessionCounts,
]);
Query$DiagnosticTestSessionCounts _parserFn$Query$DiagnosticTestSessionCounts(
        Map<String, dynamic> data) =>
    Query$DiagnosticTestSessionCounts.fromJson(data);

class Options$Query$DiagnosticTestSessionCounts
    extends graphql.QueryOptions<Query$DiagnosticTestSessionCounts> {
  Options$Query$DiagnosticTestSessionCounts({
    String? operationName,
    required Variables$Query$DiagnosticTestSessionCounts variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryDiagnosticTestSessionCounts,
          parserFn: _parserFn$Query$DiagnosticTestSessionCounts,
        );
}

class WatchOptions$Query$DiagnosticTestSessionCounts
    extends graphql.WatchQueryOptions<Query$DiagnosticTestSessionCounts> {
  WatchOptions$Query$DiagnosticTestSessionCounts({
    String? operationName,
    required Variables$Query$DiagnosticTestSessionCounts variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryDiagnosticTestSessionCounts,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$DiagnosticTestSessionCounts,
        );
}

class FetchMoreOptions$Query$DiagnosticTestSessionCounts
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$DiagnosticTestSessionCounts({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$DiagnosticTestSessionCounts variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryDiagnosticTestSessionCounts,
        );
}

extension ClientExtension$Query$DiagnosticTestSessionCounts
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$DiagnosticTestSessionCounts>>
      query$DiagnosticTestSessionCounts(
              Options$Query$DiagnosticTestSessionCounts options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$DiagnosticTestSessionCounts>
      watchQuery$DiagnosticTestSessionCounts(
              WatchOptions$Query$DiagnosticTestSessionCounts options) =>
          this.watchQuery(options);
  void writeQuery$DiagnosticTestSessionCounts({
    required Query$DiagnosticTestSessionCounts data,
    required Variables$Query$DiagnosticTestSessionCounts variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryDiagnosticTestSessionCounts),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$DiagnosticTestSessionCounts? readQuery$DiagnosticTestSessionCounts({
    required Variables$Query$DiagnosticTestSessionCounts variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryDiagnosticTestSessionCounts),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$DiagnosticTestSessionCounts.fromJson(result);
  }
}

class Query$DiagnosticTestSessionCounts$classCounts {
  Query$DiagnosticTestSessionCounts$classCounts({
    required this.diagnosticTestSessionCounts,
    required this.$__typename,
  });

  factory Query$DiagnosticTestSessionCounts$classCounts.fromJson(
      Map<String, dynamic> json) {
    final l$diagnosticTestSessionCounts = json['diagnosticTestSessionCounts'];
    final l$$__typename = json['__typename'];
    return Query$DiagnosticTestSessionCounts$classCounts(
      diagnosticTestSessionCounts:
          Fragment$DiagnosticTestSessionCounts.fromJson(
              (l$diagnosticTestSessionCounts as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$DiagnosticTestSessionCounts diagnosticTestSessionCounts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$diagnosticTestSessionCounts = diagnosticTestSessionCounts;
    _resultData['diagnosticTestSessionCounts'] =
        l$diagnosticTestSessionCounts.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$diagnosticTestSessionCounts = diagnosticTestSessionCounts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$diagnosticTestSessionCounts,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$DiagnosticTestSessionCounts$classCounts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$diagnosticTestSessionCounts = diagnosticTestSessionCounts;
    final lOther$diagnosticTestSessionCounts =
        other.diagnosticTestSessionCounts;
    if (l$diagnosticTestSessionCounts != lOther$diagnosticTestSessionCounts) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$DiagnosticTestSessionCounts$classCounts
    on Query$DiagnosticTestSessionCounts$classCounts {
  CopyWith$Query$DiagnosticTestSessionCounts$classCounts<
          Query$DiagnosticTestSessionCounts$classCounts>
      get copyWith => CopyWith$Query$DiagnosticTestSessionCounts$classCounts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$DiagnosticTestSessionCounts$classCounts<TRes> {
  factory CopyWith$Query$DiagnosticTestSessionCounts$classCounts(
    Query$DiagnosticTestSessionCounts$classCounts instance,
    TRes Function(Query$DiagnosticTestSessionCounts$classCounts) then,
  ) = _CopyWithImpl$Query$DiagnosticTestSessionCounts$classCounts;

  factory CopyWith$Query$DiagnosticTestSessionCounts$classCounts.stub(
          TRes res) =
      _CopyWithStubImpl$Query$DiagnosticTestSessionCounts$classCounts;

  TRes call({
    Fragment$DiagnosticTestSessionCounts? diagnosticTestSessionCounts,
    String? $__typename,
  });
  CopyWith$Fragment$DiagnosticTestSessionCounts<TRes>
      get diagnosticTestSessionCounts;
}

class _CopyWithImpl$Query$DiagnosticTestSessionCounts$classCounts<TRes>
    implements CopyWith$Query$DiagnosticTestSessionCounts$classCounts<TRes> {
  _CopyWithImpl$Query$DiagnosticTestSessionCounts$classCounts(
    this._instance,
    this._then,
  );

  final Query$DiagnosticTestSessionCounts$classCounts _instance;

  final TRes Function(Query$DiagnosticTestSessionCounts$classCounts) _then;

  static const _undefined = {};

  TRes call({
    Object? diagnosticTestSessionCounts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DiagnosticTestSessionCounts$classCounts(
        diagnosticTestSessionCounts:
            diagnosticTestSessionCounts == _undefined ||
                    diagnosticTestSessionCounts == null
                ? _instance.diagnosticTestSessionCounts
                : (diagnosticTestSessionCounts
                    as Fragment$DiagnosticTestSessionCounts),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$DiagnosticTestSessionCounts<TRes>
      get diagnosticTestSessionCounts {
    final local$diagnosticTestSessionCounts =
        _instance.diagnosticTestSessionCounts;
    return CopyWith$Fragment$DiagnosticTestSessionCounts(
        local$diagnosticTestSessionCounts,
        (e) => call(diagnosticTestSessionCounts: e));
  }
}

class _CopyWithStubImpl$Query$DiagnosticTestSessionCounts$classCounts<TRes>
    implements CopyWith$Query$DiagnosticTestSessionCounts$classCounts<TRes> {
  _CopyWithStubImpl$Query$DiagnosticTestSessionCounts$classCounts(this._res);

  TRes _res;

  call({
    Fragment$DiagnosticTestSessionCounts? diagnosticTestSessionCounts,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$DiagnosticTestSessionCounts<TRes>
      get diagnosticTestSessionCounts =>
          CopyWith$Fragment$DiagnosticTestSessionCounts.stub(_res);
}

class Variables$Query$DiagnosticTestSessionCountsForTopic {
  factory Variables$Query$DiagnosticTestSessionCountsForTopic({
    required String classId,
    required String topicId,
  }) =>
      Variables$Query$DiagnosticTestSessionCountsForTopic._({
        r'classId': classId,
        r'topicId': topicId,
      });

  Variables$Query$DiagnosticTestSessionCountsForTopic._(this._$data);

  factory Variables$Query$DiagnosticTestSessionCountsForTopic.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    final l$topicId = data['topicId'];
    result$data['topicId'] = (l$topicId as String);
    return Variables$Query$DiagnosticTestSessionCountsForTopic._(result$data);
  }

  Map<String, dynamic> _$data;

  String get classId => (_$data['classId'] as String);
  String get topicId => (_$data['topicId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$classId = classId;
    result$data['classId'] = l$classId;
    final l$topicId = topicId;
    result$data['topicId'] = l$topicId;
    return result$data;
  }

  CopyWith$Variables$Query$DiagnosticTestSessionCountsForTopic<
          Variables$Query$DiagnosticTestSessionCountsForTopic>
      get copyWith =>
          CopyWith$Variables$Query$DiagnosticTestSessionCountsForTopic(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$DiagnosticTestSessionCountsForTopic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classId = classId;
    final lOther$classId = other.classId;
    if (l$classId != lOther$classId) {
      return false;
    }
    final l$topicId = topicId;
    final lOther$topicId = other.topicId;
    if (l$topicId != lOther$topicId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$classId = classId;
    final l$topicId = topicId;
    return Object.hashAll([
      l$classId,
      l$topicId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$DiagnosticTestSessionCountsForTopic<
    TRes> {
  factory CopyWith$Variables$Query$DiagnosticTestSessionCountsForTopic(
    Variables$Query$DiagnosticTestSessionCountsForTopic instance,
    TRes Function(Variables$Query$DiagnosticTestSessionCountsForTopic) then,
  ) = _CopyWithImpl$Variables$Query$DiagnosticTestSessionCountsForTopic;

  factory CopyWith$Variables$Query$DiagnosticTestSessionCountsForTopic.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Query$DiagnosticTestSessionCountsForTopic;

  TRes call({
    String? classId,
    String? topicId,
  });
}

class _CopyWithImpl$Variables$Query$DiagnosticTestSessionCountsForTopic<TRes>
    implements
        CopyWith$Variables$Query$DiagnosticTestSessionCountsForTopic<TRes> {
  _CopyWithImpl$Variables$Query$DiagnosticTestSessionCountsForTopic(
    this._instance,
    this._then,
  );

  final Variables$Query$DiagnosticTestSessionCountsForTopic _instance;

  final TRes Function(Variables$Query$DiagnosticTestSessionCountsForTopic)
      _then;

  static const _undefined = {};

  TRes call({
    Object? classId = _undefined,
    Object? topicId = _undefined,
  }) =>
      _then(Variables$Query$DiagnosticTestSessionCountsForTopic._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
        if (topicId != _undefined && topicId != null)
          'topicId': (topicId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$DiagnosticTestSessionCountsForTopic<
        TRes>
    implements
        CopyWith$Variables$Query$DiagnosticTestSessionCountsForTopic<TRes> {
  _CopyWithStubImpl$Variables$Query$DiagnosticTestSessionCountsForTopic(
      this._res);

  TRes _res;

  call({
    String? classId,
    String? topicId,
  }) =>
      _res;
}

class Query$DiagnosticTestSessionCountsForTopic {
  Query$DiagnosticTestSessionCountsForTopic({
    required this.countTopic,
    required this.$__typename,
  });

  factory Query$DiagnosticTestSessionCountsForTopic.fromJson(
      Map<String, dynamic> json) {
    final l$countTopic = json['countTopic'];
    final l$$__typename = json['__typename'];
    return Query$DiagnosticTestSessionCountsForTopic(
      countTopic: Query$DiagnosticTestSessionCountsForTopic$countTopic.fromJson(
          (l$countTopic as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$DiagnosticTestSessionCountsForTopic$countTopic countTopic;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$countTopic = countTopic;
    _resultData['countTopic'] = l$countTopic.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$countTopic = countTopic;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$countTopic,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$DiagnosticTestSessionCountsForTopic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$countTopic = countTopic;
    final lOther$countTopic = other.countTopic;
    if (l$countTopic != lOther$countTopic) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$DiagnosticTestSessionCountsForTopic
    on Query$DiagnosticTestSessionCountsForTopic {
  CopyWith$Query$DiagnosticTestSessionCountsForTopic<
          Query$DiagnosticTestSessionCountsForTopic>
      get copyWith => CopyWith$Query$DiagnosticTestSessionCountsForTopic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$DiagnosticTestSessionCountsForTopic<TRes> {
  factory CopyWith$Query$DiagnosticTestSessionCountsForTopic(
    Query$DiagnosticTestSessionCountsForTopic instance,
    TRes Function(Query$DiagnosticTestSessionCountsForTopic) then,
  ) = _CopyWithImpl$Query$DiagnosticTestSessionCountsForTopic;

  factory CopyWith$Query$DiagnosticTestSessionCountsForTopic.stub(TRes res) =
      _CopyWithStubImpl$Query$DiagnosticTestSessionCountsForTopic;

  TRes call({
    Query$DiagnosticTestSessionCountsForTopic$countTopic? countTopic,
    String? $__typename,
  });
  CopyWith$Query$DiagnosticTestSessionCountsForTopic$countTopic<TRes>
      get countTopic;
}

class _CopyWithImpl$Query$DiagnosticTestSessionCountsForTopic<TRes>
    implements CopyWith$Query$DiagnosticTestSessionCountsForTopic<TRes> {
  _CopyWithImpl$Query$DiagnosticTestSessionCountsForTopic(
    this._instance,
    this._then,
  );

  final Query$DiagnosticTestSessionCountsForTopic _instance;

  final TRes Function(Query$DiagnosticTestSessionCountsForTopic) _then;

  static const _undefined = {};

  TRes call({
    Object? countTopic = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DiagnosticTestSessionCountsForTopic(
        countTopic: countTopic == _undefined || countTopic == null
            ? _instance.countTopic
            : (countTopic
                as Query$DiagnosticTestSessionCountsForTopic$countTopic),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$DiagnosticTestSessionCountsForTopic$countTopic<TRes>
      get countTopic {
    final local$countTopic = _instance.countTopic;
    return CopyWith$Query$DiagnosticTestSessionCountsForTopic$countTopic(
        local$countTopic, (e) => call(countTopic: e));
  }
}

class _CopyWithStubImpl$Query$DiagnosticTestSessionCountsForTopic<TRes>
    implements CopyWith$Query$DiagnosticTestSessionCountsForTopic<TRes> {
  _CopyWithStubImpl$Query$DiagnosticTestSessionCountsForTopic(this._res);

  TRes _res;

  call({
    Query$DiagnosticTestSessionCountsForTopic$countTopic? countTopic,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$DiagnosticTestSessionCountsForTopic$countTopic<TRes>
      get countTopic =>
          CopyWith$Query$DiagnosticTestSessionCountsForTopic$countTopic.stub(
              _res);
}

const documentNodeQueryDiagnosticTestSessionCountsForTopic =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'DiagnosticTestSessionCountsForTopic'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'classId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'topicId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'topic'),
        alias: NameNode(value: 'countTopic'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'topicId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'diagnosticTestSessionCounts'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'classID'),
                value: VariableNode(name: NameNode(value: 'classId')),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'DiagnosticTestSessionCounts'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionDiagnosticTestSessionCounts,
]);
Query$DiagnosticTestSessionCountsForTopic
    _parserFn$Query$DiagnosticTestSessionCountsForTopic(
            Map<String, dynamic> data) =>
        Query$DiagnosticTestSessionCountsForTopic.fromJson(data);

class Options$Query$DiagnosticTestSessionCountsForTopic
    extends graphql.QueryOptions<Query$DiagnosticTestSessionCountsForTopic> {
  Options$Query$DiagnosticTestSessionCountsForTopic({
    String? operationName,
    required Variables$Query$DiagnosticTestSessionCountsForTopic variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryDiagnosticTestSessionCountsForTopic,
          parserFn: _parserFn$Query$DiagnosticTestSessionCountsForTopic,
        );
}

class WatchOptions$Query$DiagnosticTestSessionCountsForTopic extends graphql
    .WatchQueryOptions<Query$DiagnosticTestSessionCountsForTopic> {
  WatchOptions$Query$DiagnosticTestSessionCountsForTopic({
    String? operationName,
    required Variables$Query$DiagnosticTestSessionCountsForTopic variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryDiagnosticTestSessionCountsForTopic,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$DiagnosticTestSessionCountsForTopic,
        );
}

class FetchMoreOptions$Query$DiagnosticTestSessionCountsForTopic
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$DiagnosticTestSessionCountsForTopic({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$DiagnosticTestSessionCountsForTopic variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryDiagnosticTestSessionCountsForTopic,
        );
}

extension ClientExtension$Query$DiagnosticTestSessionCountsForTopic
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$DiagnosticTestSessionCountsForTopic>>
      query$DiagnosticTestSessionCountsForTopic(
              Options$Query$DiagnosticTestSessionCountsForTopic
                  options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$DiagnosticTestSessionCountsForTopic>
      watchQuery$DiagnosticTestSessionCountsForTopic(
              WatchOptions$Query$DiagnosticTestSessionCountsForTopic options) =>
          this.watchQuery(options);
  void writeQuery$DiagnosticTestSessionCountsForTopic({
    required Query$DiagnosticTestSessionCountsForTopic data,
    required Variables$Query$DiagnosticTestSessionCountsForTopic variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryDiagnosticTestSessionCountsForTopic),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$DiagnosticTestSessionCountsForTopic?
      readQuery$DiagnosticTestSessionCountsForTopic({
    required Variables$Query$DiagnosticTestSessionCountsForTopic variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryDiagnosticTestSessionCountsForTopic),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$DiagnosticTestSessionCountsForTopic.fromJson(result);
  }
}

class Query$DiagnosticTestSessionCountsForTopic$countTopic {
  Query$DiagnosticTestSessionCountsForTopic$countTopic({
    required this.diagnosticTestSessionCounts,
    required this.$__typename,
  });

  factory Query$DiagnosticTestSessionCountsForTopic$countTopic.fromJson(
      Map<String, dynamic> json) {
    final l$diagnosticTestSessionCounts = json['diagnosticTestSessionCounts'];
    final l$$__typename = json['__typename'];
    return Query$DiagnosticTestSessionCountsForTopic$countTopic(
      diagnosticTestSessionCounts:
          Fragment$DiagnosticTestSessionCounts.fromJson(
              (l$diagnosticTestSessionCounts as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$DiagnosticTestSessionCounts diagnosticTestSessionCounts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$diagnosticTestSessionCounts = diagnosticTestSessionCounts;
    _resultData['diagnosticTestSessionCounts'] =
        l$diagnosticTestSessionCounts.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$diagnosticTestSessionCounts = diagnosticTestSessionCounts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$diagnosticTestSessionCounts,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$DiagnosticTestSessionCountsForTopic$countTopic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$diagnosticTestSessionCounts = diagnosticTestSessionCounts;
    final lOther$diagnosticTestSessionCounts =
        other.diagnosticTestSessionCounts;
    if (l$diagnosticTestSessionCounts != lOther$diagnosticTestSessionCounts) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$DiagnosticTestSessionCountsForTopic$countTopic
    on Query$DiagnosticTestSessionCountsForTopic$countTopic {
  CopyWith$Query$DiagnosticTestSessionCountsForTopic$countTopic<
          Query$DiagnosticTestSessionCountsForTopic$countTopic>
      get copyWith =>
          CopyWith$Query$DiagnosticTestSessionCountsForTopic$countTopic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$DiagnosticTestSessionCountsForTopic$countTopic<
    TRes> {
  factory CopyWith$Query$DiagnosticTestSessionCountsForTopic$countTopic(
    Query$DiagnosticTestSessionCountsForTopic$countTopic instance,
    TRes Function(Query$DiagnosticTestSessionCountsForTopic$countTopic) then,
  ) = _CopyWithImpl$Query$DiagnosticTestSessionCountsForTopic$countTopic;

  factory CopyWith$Query$DiagnosticTestSessionCountsForTopic$countTopic.stub(
          TRes res) =
      _CopyWithStubImpl$Query$DiagnosticTestSessionCountsForTopic$countTopic;

  TRes call({
    Fragment$DiagnosticTestSessionCounts? diagnosticTestSessionCounts,
    String? $__typename,
  });
  CopyWith$Fragment$DiagnosticTestSessionCounts<TRes>
      get diagnosticTestSessionCounts;
}

class _CopyWithImpl$Query$DiagnosticTestSessionCountsForTopic$countTopic<TRes>
    implements
        CopyWith$Query$DiagnosticTestSessionCountsForTopic$countTopic<TRes> {
  _CopyWithImpl$Query$DiagnosticTestSessionCountsForTopic$countTopic(
    this._instance,
    this._then,
  );

  final Query$DiagnosticTestSessionCountsForTopic$countTopic _instance;

  final TRes Function(Query$DiagnosticTestSessionCountsForTopic$countTopic)
      _then;

  static const _undefined = {};

  TRes call({
    Object? diagnosticTestSessionCounts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DiagnosticTestSessionCountsForTopic$countTopic(
        diagnosticTestSessionCounts:
            diagnosticTestSessionCounts == _undefined ||
                    diagnosticTestSessionCounts == null
                ? _instance.diagnosticTestSessionCounts
                : (diagnosticTestSessionCounts
                    as Fragment$DiagnosticTestSessionCounts),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$DiagnosticTestSessionCounts<TRes>
      get diagnosticTestSessionCounts {
    final local$diagnosticTestSessionCounts =
        _instance.diagnosticTestSessionCounts;
    return CopyWith$Fragment$DiagnosticTestSessionCounts(
        local$diagnosticTestSessionCounts,
        (e) => call(diagnosticTestSessionCounts: e));
  }
}

class _CopyWithStubImpl$Query$DiagnosticTestSessionCountsForTopic$countTopic<
        TRes>
    implements
        CopyWith$Query$DiagnosticTestSessionCountsForTopic$countTopic<TRes> {
  _CopyWithStubImpl$Query$DiagnosticTestSessionCountsForTopic$countTopic(
      this._res);

  TRes _res;

  call({
    Fragment$DiagnosticTestSessionCounts? diagnosticTestSessionCounts,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$DiagnosticTestSessionCounts<TRes>
      get diagnosticTestSessionCounts =>
          CopyWith$Fragment$DiagnosticTestSessionCounts.stub(_res);
}

class Variables$Query$DiagnosticTestSessionCountsForSubtopic {
  factory Variables$Query$DiagnosticTestSessionCountsForSubtopic({
    required String classId,
    required String subtopicId,
  }) =>
      Variables$Query$DiagnosticTestSessionCountsForSubtopic._({
        r'classId': classId,
        r'subtopicId': subtopicId,
      });

  Variables$Query$DiagnosticTestSessionCountsForSubtopic._(this._$data);

  factory Variables$Query$DiagnosticTestSessionCountsForSubtopic.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    final l$subtopicId = data['subtopicId'];
    result$data['subtopicId'] = (l$subtopicId as String);
    return Variables$Query$DiagnosticTestSessionCountsForSubtopic._(
        result$data);
  }

  Map<String, dynamic> _$data;

  String get classId => (_$data['classId'] as String);
  String get subtopicId => (_$data['subtopicId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$classId = classId;
    result$data['classId'] = l$classId;
    final l$subtopicId = subtopicId;
    result$data['subtopicId'] = l$subtopicId;
    return result$data;
  }

  CopyWith$Variables$Query$DiagnosticTestSessionCountsForSubtopic<
          Variables$Query$DiagnosticTestSessionCountsForSubtopic>
      get copyWith =>
          CopyWith$Variables$Query$DiagnosticTestSessionCountsForSubtopic(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$DiagnosticTestSessionCountsForSubtopic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classId = classId;
    final lOther$classId = other.classId;
    if (l$classId != lOther$classId) {
      return false;
    }
    final l$subtopicId = subtopicId;
    final lOther$subtopicId = other.subtopicId;
    if (l$subtopicId != lOther$subtopicId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$classId = classId;
    final l$subtopicId = subtopicId;
    return Object.hashAll([
      l$classId,
      l$subtopicId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$DiagnosticTestSessionCountsForSubtopic<
    TRes> {
  factory CopyWith$Variables$Query$DiagnosticTestSessionCountsForSubtopic(
    Variables$Query$DiagnosticTestSessionCountsForSubtopic instance,
    TRes Function(Variables$Query$DiagnosticTestSessionCountsForSubtopic) then,
  ) = _CopyWithImpl$Variables$Query$DiagnosticTestSessionCountsForSubtopic;

  factory CopyWith$Variables$Query$DiagnosticTestSessionCountsForSubtopic.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Query$DiagnosticTestSessionCountsForSubtopic;

  TRes call({
    String? classId,
    String? subtopicId,
  });
}

class _CopyWithImpl$Variables$Query$DiagnosticTestSessionCountsForSubtopic<TRes>
    implements
        CopyWith$Variables$Query$DiagnosticTestSessionCountsForSubtopic<TRes> {
  _CopyWithImpl$Variables$Query$DiagnosticTestSessionCountsForSubtopic(
    this._instance,
    this._then,
  );

  final Variables$Query$DiagnosticTestSessionCountsForSubtopic _instance;

  final TRes Function(Variables$Query$DiagnosticTestSessionCountsForSubtopic)
      _then;

  static const _undefined = {};

  TRes call({
    Object? classId = _undefined,
    Object? subtopicId = _undefined,
  }) =>
      _then(Variables$Query$DiagnosticTestSessionCountsForSubtopic._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
        if (subtopicId != _undefined && subtopicId != null)
          'subtopicId': (subtopicId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$DiagnosticTestSessionCountsForSubtopic<
        TRes>
    implements
        CopyWith$Variables$Query$DiagnosticTestSessionCountsForSubtopic<TRes> {
  _CopyWithStubImpl$Variables$Query$DiagnosticTestSessionCountsForSubtopic(
      this._res);

  TRes _res;

  call({
    String? classId,
    String? subtopicId,
  }) =>
      _res;
}

class Query$DiagnosticTestSessionCountsForSubtopic {
  Query$DiagnosticTestSessionCountsForSubtopic({
    required this.countSubtopic,
    required this.$__typename,
  });

  factory Query$DiagnosticTestSessionCountsForSubtopic.fromJson(
      Map<String, dynamic> json) {
    final l$countSubtopic = json['countSubtopic'];
    final l$$__typename = json['__typename'];
    return Query$DiagnosticTestSessionCountsForSubtopic(
      countSubtopic:
          Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic.fromJson(
              (l$countSubtopic as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic
      countSubtopic;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$countSubtopic = countSubtopic;
    _resultData['countSubtopic'] = l$countSubtopic.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$countSubtopic = countSubtopic;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$countSubtopic,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$DiagnosticTestSessionCountsForSubtopic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$countSubtopic = countSubtopic;
    final lOther$countSubtopic = other.countSubtopic;
    if (l$countSubtopic != lOther$countSubtopic) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$DiagnosticTestSessionCountsForSubtopic
    on Query$DiagnosticTestSessionCountsForSubtopic {
  CopyWith$Query$DiagnosticTestSessionCountsForSubtopic<
          Query$DiagnosticTestSessionCountsForSubtopic>
      get copyWith => CopyWith$Query$DiagnosticTestSessionCountsForSubtopic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$DiagnosticTestSessionCountsForSubtopic<TRes> {
  factory CopyWith$Query$DiagnosticTestSessionCountsForSubtopic(
    Query$DiagnosticTestSessionCountsForSubtopic instance,
    TRes Function(Query$DiagnosticTestSessionCountsForSubtopic) then,
  ) = _CopyWithImpl$Query$DiagnosticTestSessionCountsForSubtopic;

  factory CopyWith$Query$DiagnosticTestSessionCountsForSubtopic.stub(TRes res) =
      _CopyWithStubImpl$Query$DiagnosticTestSessionCountsForSubtopic;

  TRes call({
    Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic? countSubtopic,
    String? $__typename,
  });
  CopyWith$Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic<TRes>
      get countSubtopic;
}

class _CopyWithImpl$Query$DiagnosticTestSessionCountsForSubtopic<TRes>
    implements CopyWith$Query$DiagnosticTestSessionCountsForSubtopic<TRes> {
  _CopyWithImpl$Query$DiagnosticTestSessionCountsForSubtopic(
    this._instance,
    this._then,
  );

  final Query$DiagnosticTestSessionCountsForSubtopic _instance;

  final TRes Function(Query$DiagnosticTestSessionCountsForSubtopic) _then;

  static const _undefined = {};

  TRes call({
    Object? countSubtopic = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DiagnosticTestSessionCountsForSubtopic(
        countSubtopic: countSubtopic == _undefined || countSubtopic == null
            ? _instance.countSubtopic
            : (countSubtopic
                as Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic<TRes>
      get countSubtopic {
    final local$countSubtopic = _instance.countSubtopic;
    return CopyWith$Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic(
        local$countSubtopic, (e) => call(countSubtopic: e));
  }
}

class _CopyWithStubImpl$Query$DiagnosticTestSessionCountsForSubtopic<TRes>
    implements CopyWith$Query$DiagnosticTestSessionCountsForSubtopic<TRes> {
  _CopyWithStubImpl$Query$DiagnosticTestSessionCountsForSubtopic(this._res);

  TRes _res;

  call({
    Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic? countSubtopic,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic<TRes>
      get countSubtopic =>
          CopyWith$Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic
              .stub(_res);
}

const documentNodeQueryDiagnosticTestSessionCountsForSubtopic =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'DiagnosticTestSessionCountsForSubtopic'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'classId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'subtopicId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'subtopic'),
        alias: NameNode(value: 'countSubtopic'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'subtopicId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'diagnosticTestSessionCounts'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'classID'),
                value: VariableNode(name: NameNode(value: 'classId')),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'DiagnosticTestSessionCounts'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionDiagnosticTestSessionCounts,
]);
Query$DiagnosticTestSessionCountsForSubtopic
    _parserFn$Query$DiagnosticTestSessionCountsForSubtopic(
            Map<String, dynamic> data) =>
        Query$DiagnosticTestSessionCountsForSubtopic.fromJson(data);

class Options$Query$DiagnosticTestSessionCountsForSubtopic
    extends graphql.QueryOptions<Query$DiagnosticTestSessionCountsForSubtopic> {
  Options$Query$DiagnosticTestSessionCountsForSubtopic({
    String? operationName,
    required Variables$Query$DiagnosticTestSessionCountsForSubtopic variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryDiagnosticTestSessionCountsForSubtopic,
          parserFn: _parserFn$Query$DiagnosticTestSessionCountsForSubtopic,
        );
}

class WatchOptions$Query$DiagnosticTestSessionCountsForSubtopic extends graphql
    .WatchQueryOptions<Query$DiagnosticTestSessionCountsForSubtopic> {
  WatchOptions$Query$DiagnosticTestSessionCountsForSubtopic({
    String? operationName,
    required Variables$Query$DiagnosticTestSessionCountsForSubtopic variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryDiagnosticTestSessionCountsForSubtopic,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$DiagnosticTestSessionCountsForSubtopic,
        );
}

class FetchMoreOptions$Query$DiagnosticTestSessionCountsForSubtopic
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$DiagnosticTestSessionCountsForSubtopic({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$DiagnosticTestSessionCountsForSubtopic variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryDiagnosticTestSessionCountsForSubtopic,
        );
}

extension ClientExtension$Query$DiagnosticTestSessionCountsForSubtopic
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$DiagnosticTestSessionCountsForSubtopic>>
      query$DiagnosticTestSessionCountsForSubtopic(
              Options$Query$DiagnosticTestSessionCountsForSubtopic
                  options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$DiagnosticTestSessionCountsForSubtopic>
      watchQuery$DiagnosticTestSessionCountsForSubtopic(
              WatchOptions$Query$DiagnosticTestSessionCountsForSubtopic
                  options) =>
          this.watchQuery(options);
  void writeQuery$DiagnosticTestSessionCountsForSubtopic({
    required Query$DiagnosticTestSessionCountsForSubtopic data,
    required Variables$Query$DiagnosticTestSessionCountsForSubtopic variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document:
                  documentNodeQueryDiagnosticTestSessionCountsForSubtopic),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$DiagnosticTestSessionCountsForSubtopic?
      readQuery$DiagnosticTestSessionCountsForSubtopic({
    required Variables$Query$DiagnosticTestSessionCountsForSubtopic variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryDiagnosticTestSessionCountsForSubtopic),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$DiagnosticTestSessionCountsForSubtopic.fromJson(result);
  }
}

class Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic {
  Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic({
    required this.diagnosticTestSessionCounts,
    required this.$__typename,
  });

  factory Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic.fromJson(
      Map<String, dynamic> json) {
    final l$diagnosticTestSessionCounts = json['diagnosticTestSessionCounts'];
    final l$$__typename = json['__typename'];
    return Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic(
      diagnosticTestSessionCounts:
          Fragment$DiagnosticTestSessionCounts.fromJson(
              (l$diagnosticTestSessionCounts as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$DiagnosticTestSessionCounts diagnosticTestSessionCounts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$diagnosticTestSessionCounts = diagnosticTestSessionCounts;
    _resultData['diagnosticTestSessionCounts'] =
        l$diagnosticTestSessionCounts.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$diagnosticTestSessionCounts = diagnosticTestSessionCounts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$diagnosticTestSessionCounts,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$diagnosticTestSessionCounts = diagnosticTestSessionCounts;
    final lOther$diagnosticTestSessionCounts =
        other.diagnosticTestSessionCounts;
    if (l$diagnosticTestSessionCounts != lOther$diagnosticTestSessionCounts) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic
    on Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic {
  CopyWith$Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic<
          Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic>
      get copyWith =>
          CopyWith$Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic<
    TRes> {
  factory CopyWith$Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic(
    Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic instance,
    TRes Function(Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic)
        then,
  ) = _CopyWithImpl$Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic;

  factory CopyWith$Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic.stub(
          TRes res) =
      _CopyWithStubImpl$Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic;

  TRes call({
    Fragment$DiagnosticTestSessionCounts? diagnosticTestSessionCounts,
    String? $__typename,
  });
  CopyWith$Fragment$DiagnosticTestSessionCounts<TRes>
      get diagnosticTestSessionCounts;
}

class _CopyWithImpl$Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic<
        TRes>
    implements
        CopyWith$Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic<
            TRes> {
  _CopyWithImpl$Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic(
    this._instance,
    this._then,
  );

  final Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic _instance;

  final TRes Function(
      Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic) _then;

  static const _undefined = {};

  TRes call({
    Object? diagnosticTestSessionCounts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic(
        diagnosticTestSessionCounts:
            diagnosticTestSessionCounts == _undefined ||
                    diagnosticTestSessionCounts == null
                ? _instance.diagnosticTestSessionCounts
                : (diagnosticTestSessionCounts
                    as Fragment$DiagnosticTestSessionCounts),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$DiagnosticTestSessionCounts<TRes>
      get diagnosticTestSessionCounts {
    final local$diagnosticTestSessionCounts =
        _instance.diagnosticTestSessionCounts;
    return CopyWith$Fragment$DiagnosticTestSessionCounts(
        local$diagnosticTestSessionCounts,
        (e) => call(diagnosticTestSessionCounts: e));
  }
}

class _CopyWithStubImpl$Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic<
        TRes>
    implements
        CopyWith$Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic<
            TRes> {
  _CopyWithStubImpl$Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic(
      this._res);

  TRes _res;

  call({
    Fragment$DiagnosticTestSessionCounts? diagnosticTestSessionCounts,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$DiagnosticTestSessionCounts<TRes>
      get diagnosticTestSessionCounts =>
          CopyWith$Fragment$DiagnosticTestSessionCounts.stub(_res);
}

class Variables$Mutation$CreateDiagnosticTestSession {
  factory Variables$Mutation$CreateDiagnosticTestSession({
    required String classId,
    required Input$CreateDiagnosticTestSessionInput input,
  }) =>
      Variables$Mutation$CreateDiagnosticTestSession._({
        r'classId': classId,
        r'input': input,
      });

  Variables$Mutation$CreateDiagnosticTestSession._(this._$data);

  factory Variables$Mutation$CreateDiagnosticTestSession.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    final l$input = data['input'];
    result$data['input'] = Input$CreateDiagnosticTestSessionInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$CreateDiagnosticTestSession._(result$data);
  }

  Map<String, dynamic> _$data;

  String get classId => (_$data['classId'] as String);
  Input$CreateDiagnosticTestSessionInput get input =>
      (_$data['input'] as Input$CreateDiagnosticTestSessionInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$classId = classId;
    result$data['classId'] = l$classId;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateDiagnosticTestSession<
          Variables$Mutation$CreateDiagnosticTestSession>
      get copyWith => CopyWith$Variables$Mutation$CreateDiagnosticTestSession(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateDiagnosticTestSession) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classId = classId;
    final lOther$classId = other.classId;
    if (l$classId != lOther$classId) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$classId = classId;
    final l$input = input;
    return Object.hashAll([
      l$classId,
      l$input,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateDiagnosticTestSession<TRes> {
  factory CopyWith$Variables$Mutation$CreateDiagnosticTestSession(
    Variables$Mutation$CreateDiagnosticTestSession instance,
    TRes Function(Variables$Mutation$CreateDiagnosticTestSession) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateDiagnosticTestSession;

  factory CopyWith$Variables$Mutation$CreateDiagnosticTestSession.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateDiagnosticTestSession;

  TRes call({
    String? classId,
    Input$CreateDiagnosticTestSessionInput? input,
  });
}

class _CopyWithImpl$Variables$Mutation$CreateDiagnosticTestSession<TRes>
    implements CopyWith$Variables$Mutation$CreateDiagnosticTestSession<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateDiagnosticTestSession(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateDiagnosticTestSession _instance;

  final TRes Function(Variables$Mutation$CreateDiagnosticTestSession) _then;

  static const _undefined = {};

  TRes call({
    Object? classId = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Mutation$CreateDiagnosticTestSession._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
        if (input != _undefined && input != null)
          'input': (input as Input$CreateDiagnosticTestSessionInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateDiagnosticTestSession<TRes>
    implements CopyWith$Variables$Mutation$CreateDiagnosticTestSession<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateDiagnosticTestSession(this._res);

  TRes _res;

  call({
    String? classId,
    Input$CreateDiagnosticTestSessionInput? input,
  }) =>
      _res;
}

class Mutation$CreateDiagnosticTestSession {
  Mutation$CreateDiagnosticTestSession({
    required this.createDiagnosticTestSession,
    required this.$__typename,
  });

  factory Mutation$CreateDiagnosticTestSession.fromJson(
      Map<String, dynamic> json) {
    final l$createDiagnosticTestSession = json['createDiagnosticTestSession'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateDiagnosticTestSession(
      createDiagnosticTestSession:
          Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession
              .fromJson(
                  (l$createDiagnosticTestSession as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession
      createDiagnosticTestSession;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createDiagnosticTestSession = createDiagnosticTestSession;
    _resultData['createDiagnosticTestSession'] =
        l$createDiagnosticTestSession.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createDiagnosticTestSession = createDiagnosticTestSession;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createDiagnosticTestSession,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateDiagnosticTestSession) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createDiagnosticTestSession = createDiagnosticTestSession;
    final lOther$createDiagnosticTestSession =
        other.createDiagnosticTestSession;
    if (l$createDiagnosticTestSession != lOther$createDiagnosticTestSession) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateDiagnosticTestSession
    on Mutation$CreateDiagnosticTestSession {
  CopyWith$Mutation$CreateDiagnosticTestSession<
          Mutation$CreateDiagnosticTestSession>
      get copyWith => CopyWith$Mutation$CreateDiagnosticTestSession(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateDiagnosticTestSession<TRes> {
  factory CopyWith$Mutation$CreateDiagnosticTestSession(
    Mutation$CreateDiagnosticTestSession instance,
    TRes Function(Mutation$CreateDiagnosticTestSession) then,
  ) = _CopyWithImpl$Mutation$CreateDiagnosticTestSession;

  factory CopyWith$Mutation$CreateDiagnosticTestSession.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateDiagnosticTestSession;

  TRes call({
    Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession?
        createDiagnosticTestSession,
    String? $__typename,
  });
  CopyWith$Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession<
      TRes> get createDiagnosticTestSession;
}

class _CopyWithImpl$Mutation$CreateDiagnosticTestSession<TRes>
    implements CopyWith$Mutation$CreateDiagnosticTestSession<TRes> {
  _CopyWithImpl$Mutation$CreateDiagnosticTestSession(
    this._instance,
    this._then,
  );

  final Mutation$CreateDiagnosticTestSession _instance;

  final TRes Function(Mutation$CreateDiagnosticTestSession) _then;

  static const _undefined = {};

  TRes call({
    Object? createDiagnosticTestSession = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateDiagnosticTestSession(
        createDiagnosticTestSession: createDiagnosticTestSession ==
                    _undefined ||
                createDiagnosticTestSession == null
            ? _instance.createDiagnosticTestSession
            : (createDiagnosticTestSession
                as Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession<
      TRes> get createDiagnosticTestSession {
    final local$createDiagnosticTestSession =
        _instance.createDiagnosticTestSession;
    return CopyWith$Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession(
        local$createDiagnosticTestSession,
        (e) => call(createDiagnosticTestSession: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateDiagnosticTestSession<TRes>
    implements CopyWith$Mutation$CreateDiagnosticTestSession<TRes> {
  _CopyWithStubImpl$Mutation$CreateDiagnosticTestSession(this._res);

  TRes _res;

  call({
    Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession?
        createDiagnosticTestSession,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession<
          TRes>
      get createDiagnosticTestSession =>
          CopyWith$Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession
              .stub(_res);
}

const documentNodeMutationCreateDiagnosticTestSession =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateDiagnosticTestSession'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'classId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateDiagnosticTestSessionInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createDiagnosticTestSession'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'classID'),
            value: VariableNode(name: NameNode(value: 'classId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$CreateDiagnosticTestSession
    _parserFn$Mutation$CreateDiagnosticTestSession(Map<String, dynamic> data) =>
        Mutation$CreateDiagnosticTestSession.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateDiagnosticTestSession
    = FutureOr<void> Function(
  dynamic,
  Mutation$CreateDiagnosticTestSession?,
);

class Options$Mutation$CreateDiagnosticTestSession
    extends graphql.MutationOptions<Mutation$CreateDiagnosticTestSession> {
  Options$Mutation$CreateDiagnosticTestSession({
    String? operationName,
    required Variables$Mutation$CreateDiagnosticTestSession variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateDiagnosticTestSession? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateDiagnosticTestSession>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$CreateDiagnosticTestSession(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateDiagnosticTestSession,
          parserFn: _parserFn$Mutation$CreateDiagnosticTestSession,
        );

  final OnMutationCompleted$Mutation$CreateDiagnosticTestSession?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateDiagnosticTestSession
    extends graphql.WatchQueryOptions<Mutation$CreateDiagnosticTestSession> {
  WatchOptions$Mutation$CreateDiagnosticTestSession({
    String? operationName,
    required Variables$Mutation$CreateDiagnosticTestSession variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationCreateDiagnosticTestSession,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateDiagnosticTestSession,
        );
}

extension ClientExtension$Mutation$CreateDiagnosticTestSession
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateDiagnosticTestSession>>
      mutate$CreateDiagnosticTestSession(
              Options$Mutation$CreateDiagnosticTestSession options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateDiagnosticTestSession>
      watchMutation$CreateDiagnosticTestSession(
              WatchOptions$Mutation$CreateDiagnosticTestSession options) =>
          this.watchMutation(options);
}

class Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession {
  Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession({
    required this.id,
    required this.$__typename,
  });

  factory Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession
    on Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession {
  CopyWith$Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession<
          Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession>
      get copyWith =>
          CopyWith$Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession<
    TRes> {
  factory CopyWith$Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession(
    Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession instance,
    TRes Function(
            Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession)
        then,
  ) = _CopyWithImpl$Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession;

  factory CopyWith$Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession<
        TRes>
    implements
        CopyWith$Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession<
            TRes> {
  _CopyWithImpl$Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession(
    this._instance,
    this._then,
  );

  final Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession
      _instance;

  final TRes Function(
      Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession<
        TRes>
    implements
        CopyWith$Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession<
            TRes> {
  _CopyWithStubImpl$Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateDiagnosticTestSession {
  factory Variables$Mutation$UpdateDiagnosticTestSession({
    required String sessionId,
    required Input$UpdateDiagnosticTestSessionInput input,
  }) =>
      Variables$Mutation$UpdateDiagnosticTestSession._({
        r'sessionId': sessionId,
        r'input': input,
      });

  Variables$Mutation$UpdateDiagnosticTestSession._(this._$data);

  factory Variables$Mutation$UpdateDiagnosticTestSession.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$sessionId = data['sessionId'];
    result$data['sessionId'] = (l$sessionId as String);
    final l$input = data['input'];
    result$data['input'] = Input$UpdateDiagnosticTestSessionInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateDiagnosticTestSession._(result$data);
  }

  Map<String, dynamic> _$data;

  String get sessionId => (_$data['sessionId'] as String);
  Input$UpdateDiagnosticTestSessionInput get input =>
      (_$data['input'] as Input$UpdateDiagnosticTestSessionInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$sessionId = sessionId;
    result$data['sessionId'] = l$sessionId;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateDiagnosticTestSession<
          Variables$Mutation$UpdateDiagnosticTestSession>
      get copyWith => CopyWith$Variables$Mutation$UpdateDiagnosticTestSession(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateDiagnosticTestSession) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sessionId = sessionId;
    final lOther$sessionId = other.sessionId;
    if (l$sessionId != lOther$sessionId) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$sessionId = sessionId;
    final l$input = input;
    return Object.hashAll([
      l$sessionId,
      l$input,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateDiagnosticTestSession<TRes> {
  factory CopyWith$Variables$Mutation$UpdateDiagnosticTestSession(
    Variables$Mutation$UpdateDiagnosticTestSession instance,
    TRes Function(Variables$Mutation$UpdateDiagnosticTestSession) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateDiagnosticTestSession;

  factory CopyWith$Variables$Mutation$UpdateDiagnosticTestSession.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateDiagnosticTestSession;

  TRes call({
    String? sessionId,
    Input$UpdateDiagnosticTestSessionInput? input,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateDiagnosticTestSession<TRes>
    implements CopyWith$Variables$Mutation$UpdateDiagnosticTestSession<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateDiagnosticTestSession(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateDiagnosticTestSession _instance;

  final TRes Function(Variables$Mutation$UpdateDiagnosticTestSession) _then;

  static const _undefined = {};

  TRes call({
    Object? sessionId = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateDiagnosticTestSession._({
        ..._instance._$data,
        if (sessionId != _undefined && sessionId != null)
          'sessionId': (sessionId as String),
        if (input != _undefined && input != null)
          'input': (input as Input$UpdateDiagnosticTestSessionInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateDiagnosticTestSession<TRes>
    implements CopyWith$Variables$Mutation$UpdateDiagnosticTestSession<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateDiagnosticTestSession(this._res);

  TRes _res;

  call({
    String? sessionId,
    Input$UpdateDiagnosticTestSessionInput? input,
  }) =>
      _res;
}

class Mutation$UpdateDiagnosticTestSession {
  Mutation$UpdateDiagnosticTestSession({
    required this.updateDiagnosticTestSession,
    required this.$__typename,
  });

  factory Mutation$UpdateDiagnosticTestSession.fromJson(
      Map<String, dynamic> json) {
    final l$updateDiagnosticTestSession = json['updateDiagnosticTestSession'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDiagnosticTestSession(
      updateDiagnosticTestSession:
          Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession
              .fromJson(
                  (l$updateDiagnosticTestSession as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession
      updateDiagnosticTestSession;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateDiagnosticTestSession = updateDiagnosticTestSession;
    _resultData['updateDiagnosticTestSession'] =
        l$updateDiagnosticTestSession.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateDiagnosticTestSession = updateDiagnosticTestSession;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateDiagnosticTestSession,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateDiagnosticTestSession) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateDiagnosticTestSession = updateDiagnosticTestSession;
    final lOther$updateDiagnosticTestSession =
        other.updateDiagnosticTestSession;
    if (l$updateDiagnosticTestSession != lOther$updateDiagnosticTestSession) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateDiagnosticTestSession
    on Mutation$UpdateDiagnosticTestSession {
  CopyWith$Mutation$UpdateDiagnosticTestSession<
          Mutation$UpdateDiagnosticTestSession>
      get copyWith => CopyWith$Mutation$UpdateDiagnosticTestSession(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDiagnosticTestSession<TRes> {
  factory CopyWith$Mutation$UpdateDiagnosticTestSession(
    Mutation$UpdateDiagnosticTestSession instance,
    TRes Function(Mutation$UpdateDiagnosticTestSession) then,
  ) = _CopyWithImpl$Mutation$UpdateDiagnosticTestSession;

  factory CopyWith$Mutation$UpdateDiagnosticTestSession.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDiagnosticTestSession;

  TRes call({
    Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession?
        updateDiagnosticTestSession,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession<
      TRes> get updateDiagnosticTestSession;
}

class _CopyWithImpl$Mutation$UpdateDiagnosticTestSession<TRes>
    implements CopyWith$Mutation$UpdateDiagnosticTestSession<TRes> {
  _CopyWithImpl$Mutation$UpdateDiagnosticTestSession(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDiagnosticTestSession _instance;

  final TRes Function(Mutation$UpdateDiagnosticTestSession) _then;

  static const _undefined = {};

  TRes call({
    Object? updateDiagnosticTestSession = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateDiagnosticTestSession(
        updateDiagnosticTestSession: updateDiagnosticTestSession ==
                    _undefined ||
                updateDiagnosticTestSession == null
            ? _instance.updateDiagnosticTestSession
            : (updateDiagnosticTestSession
                as Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession<
      TRes> get updateDiagnosticTestSession {
    final local$updateDiagnosticTestSession =
        _instance.updateDiagnosticTestSession;
    return CopyWith$Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession(
        local$updateDiagnosticTestSession,
        (e) => call(updateDiagnosticTestSession: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateDiagnosticTestSession<TRes>
    implements CopyWith$Mutation$UpdateDiagnosticTestSession<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDiagnosticTestSession(this._res);

  TRes _res;

  call({
    Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession?
        updateDiagnosticTestSession,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession<
          TRes>
      get updateDiagnosticTestSession =>
          CopyWith$Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession
              .stub(_res);
}

const documentNodeMutationUpdateDiagnosticTestSession =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateDiagnosticTestSession'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'sessionId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'UpdateDiagnosticTestSessionInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateDiagnosticTestSession'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'sessionId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$UpdateDiagnosticTestSession
    _parserFn$Mutation$UpdateDiagnosticTestSession(Map<String, dynamic> data) =>
        Mutation$UpdateDiagnosticTestSession.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateDiagnosticTestSession
    = FutureOr<void> Function(
  dynamic,
  Mutation$UpdateDiagnosticTestSession?,
);

class Options$Mutation$UpdateDiagnosticTestSession
    extends graphql.MutationOptions<Mutation$UpdateDiagnosticTestSession> {
  Options$Mutation$UpdateDiagnosticTestSession({
    String? operationName,
    required Variables$Mutation$UpdateDiagnosticTestSession variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateDiagnosticTestSession? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateDiagnosticTestSession>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateDiagnosticTestSession(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateDiagnosticTestSession,
          parserFn: _parserFn$Mutation$UpdateDiagnosticTestSession,
        );

  final OnMutationCompleted$Mutation$UpdateDiagnosticTestSession?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateDiagnosticTestSession
    extends graphql.WatchQueryOptions<Mutation$UpdateDiagnosticTestSession> {
  WatchOptions$Mutation$UpdateDiagnosticTestSession({
    String? operationName,
    required Variables$Mutation$UpdateDiagnosticTestSession variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationUpdateDiagnosticTestSession,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateDiagnosticTestSession,
        );
}

extension ClientExtension$Mutation$UpdateDiagnosticTestSession
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateDiagnosticTestSession>>
      mutate$UpdateDiagnosticTestSession(
              Options$Mutation$UpdateDiagnosticTestSession options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateDiagnosticTestSession>
      watchMutation$UpdateDiagnosticTestSession(
              WatchOptions$Mutation$UpdateDiagnosticTestSession options) =>
          this.watchMutation(options);
}

class Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession {
  Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession({
    required this.id,
    required this.$__typename,
  });

  factory Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession
    on Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession {
  CopyWith$Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession<
          Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession>
      get copyWith =>
          CopyWith$Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession<
    TRes> {
  factory CopyWith$Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession(
    Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession instance,
    TRes Function(
            Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession)
        then,
  ) = _CopyWithImpl$Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession;

  factory CopyWith$Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession<
        TRes>
    implements
        CopyWith$Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession<
            TRes> {
  _CopyWithImpl$Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession
      _instance;

  final TRes Function(
      Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession<
        TRes>
    implements
        CopyWith$Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$StartDiagnosticTestSession {
  factory Variables$Mutation$StartDiagnosticTestSession(
          {required String testId}) =>
      Variables$Mutation$StartDiagnosticTestSession._({
        r'testId': testId,
      });

  Variables$Mutation$StartDiagnosticTestSession._(this._$data);

  factory Variables$Mutation$StartDiagnosticTestSession.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$testId = data['testId'];
    result$data['testId'] = (l$testId as String);
    return Variables$Mutation$StartDiagnosticTestSession._(result$data);
  }

  Map<String, dynamic> _$data;

  String get testId => (_$data['testId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$testId = testId;
    result$data['testId'] = l$testId;
    return result$data;
  }

  CopyWith$Variables$Mutation$StartDiagnosticTestSession<
          Variables$Mutation$StartDiagnosticTestSession>
      get copyWith => CopyWith$Variables$Mutation$StartDiagnosticTestSession(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$StartDiagnosticTestSession) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$testId = testId;
    final lOther$testId = other.testId;
    if (l$testId != lOther$testId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$testId = testId;
    return Object.hashAll([l$testId]);
  }
}

abstract class CopyWith$Variables$Mutation$StartDiagnosticTestSession<TRes> {
  factory CopyWith$Variables$Mutation$StartDiagnosticTestSession(
    Variables$Mutation$StartDiagnosticTestSession instance,
    TRes Function(Variables$Mutation$StartDiagnosticTestSession) then,
  ) = _CopyWithImpl$Variables$Mutation$StartDiagnosticTestSession;

  factory CopyWith$Variables$Mutation$StartDiagnosticTestSession.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$StartDiagnosticTestSession;

  TRes call({String? testId});
}

class _CopyWithImpl$Variables$Mutation$StartDiagnosticTestSession<TRes>
    implements CopyWith$Variables$Mutation$StartDiagnosticTestSession<TRes> {
  _CopyWithImpl$Variables$Mutation$StartDiagnosticTestSession(
    this._instance,
    this._then,
  );

  final Variables$Mutation$StartDiagnosticTestSession _instance;

  final TRes Function(Variables$Mutation$StartDiagnosticTestSession) _then;

  static const _undefined = {};

  TRes call({Object? testId = _undefined}) =>
      _then(Variables$Mutation$StartDiagnosticTestSession._({
        ..._instance._$data,
        if (testId != _undefined && testId != null)
          'testId': (testId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$StartDiagnosticTestSession<TRes>
    implements CopyWith$Variables$Mutation$StartDiagnosticTestSession<TRes> {
  _CopyWithStubImpl$Variables$Mutation$StartDiagnosticTestSession(this._res);

  TRes _res;

  call({String? testId}) => _res;
}

class Mutation$StartDiagnosticTestSession {
  Mutation$StartDiagnosticTestSession({
    required this.startDiagnosticTestSession,
    required this.$__typename,
  });

  factory Mutation$StartDiagnosticTestSession.fromJson(
      Map<String, dynamic> json) {
    final l$startDiagnosticTestSession = json['startDiagnosticTestSession'];
    final l$$__typename = json['__typename'];
    return Mutation$StartDiagnosticTestSession(
      startDiagnosticTestSession:
          Mutation$StartDiagnosticTestSession$startDiagnosticTestSession
              .fromJson((l$startDiagnosticTestSession as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$StartDiagnosticTestSession$startDiagnosticTestSession
      startDiagnosticTestSession;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$startDiagnosticTestSession = startDiagnosticTestSession;
    _resultData['startDiagnosticTestSession'] =
        l$startDiagnosticTestSession.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$startDiagnosticTestSession = startDiagnosticTestSession;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$startDiagnosticTestSession,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$StartDiagnosticTestSession) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$startDiagnosticTestSession = startDiagnosticTestSession;
    final lOther$startDiagnosticTestSession = other.startDiagnosticTestSession;
    if (l$startDiagnosticTestSession != lOther$startDiagnosticTestSession) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$StartDiagnosticTestSession
    on Mutation$StartDiagnosticTestSession {
  CopyWith$Mutation$StartDiagnosticTestSession<
          Mutation$StartDiagnosticTestSession>
      get copyWith => CopyWith$Mutation$StartDiagnosticTestSession(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$StartDiagnosticTestSession<TRes> {
  factory CopyWith$Mutation$StartDiagnosticTestSession(
    Mutation$StartDiagnosticTestSession instance,
    TRes Function(Mutation$StartDiagnosticTestSession) then,
  ) = _CopyWithImpl$Mutation$StartDiagnosticTestSession;

  factory CopyWith$Mutation$StartDiagnosticTestSession.stub(TRes res) =
      _CopyWithStubImpl$Mutation$StartDiagnosticTestSession;

  TRes call({
    Mutation$StartDiagnosticTestSession$startDiagnosticTestSession?
        startDiagnosticTestSession,
    String? $__typename,
  });
  CopyWith$Mutation$StartDiagnosticTestSession$startDiagnosticTestSession<TRes>
      get startDiagnosticTestSession;
}

class _CopyWithImpl$Mutation$StartDiagnosticTestSession<TRes>
    implements CopyWith$Mutation$StartDiagnosticTestSession<TRes> {
  _CopyWithImpl$Mutation$StartDiagnosticTestSession(
    this._instance,
    this._then,
  );

  final Mutation$StartDiagnosticTestSession _instance;

  final TRes Function(Mutation$StartDiagnosticTestSession) _then;

  static const _undefined = {};

  TRes call({
    Object? startDiagnosticTestSession = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$StartDiagnosticTestSession(
        startDiagnosticTestSession: startDiagnosticTestSession == _undefined ||
                startDiagnosticTestSession == null
            ? _instance.startDiagnosticTestSession
            : (startDiagnosticTestSession
                as Mutation$StartDiagnosticTestSession$startDiagnosticTestSession),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$StartDiagnosticTestSession$startDiagnosticTestSession<TRes>
      get startDiagnosticTestSession {
    final local$startDiagnosticTestSession =
        _instance.startDiagnosticTestSession;
    return CopyWith$Mutation$StartDiagnosticTestSession$startDiagnosticTestSession(
        local$startDiagnosticTestSession,
        (e) => call(startDiagnosticTestSession: e));
  }
}

class _CopyWithStubImpl$Mutation$StartDiagnosticTestSession<TRes>
    implements CopyWith$Mutation$StartDiagnosticTestSession<TRes> {
  _CopyWithStubImpl$Mutation$StartDiagnosticTestSession(this._res);

  TRes _res;

  call({
    Mutation$StartDiagnosticTestSession$startDiagnosticTestSession?
        startDiagnosticTestSession,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$StartDiagnosticTestSession$startDiagnosticTestSession<TRes>
      get startDiagnosticTestSession =>
          CopyWith$Mutation$StartDiagnosticTestSession$startDiagnosticTestSession
              .stub(_res);
}

const documentNodeMutationStartDiagnosticTestSession =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'StartDiagnosticTestSession'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'testId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'startDiagnosticTestSession'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'testId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$StartDiagnosticTestSession
    _parserFn$Mutation$StartDiagnosticTestSession(Map<String, dynamic> data) =>
        Mutation$StartDiagnosticTestSession.fromJson(data);
typedef OnMutationCompleted$Mutation$StartDiagnosticTestSession = FutureOr<void>
    Function(
  dynamic,
  Mutation$StartDiagnosticTestSession?,
);

class Options$Mutation$StartDiagnosticTestSession
    extends graphql.MutationOptions<Mutation$StartDiagnosticTestSession> {
  Options$Mutation$StartDiagnosticTestSession({
    String? operationName,
    required Variables$Mutation$StartDiagnosticTestSession variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$StartDiagnosticTestSession? onCompleted,
    graphql.OnMutationUpdate<Mutation$StartDiagnosticTestSession>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$StartDiagnosticTestSession(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationStartDiagnosticTestSession,
          parserFn: _parserFn$Mutation$StartDiagnosticTestSession,
        );

  final OnMutationCompleted$Mutation$StartDiagnosticTestSession?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$StartDiagnosticTestSession
    extends graphql.WatchQueryOptions<Mutation$StartDiagnosticTestSession> {
  WatchOptions$Mutation$StartDiagnosticTestSession({
    String? operationName,
    required Variables$Mutation$StartDiagnosticTestSession variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationStartDiagnosticTestSession,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$StartDiagnosticTestSession,
        );
}

extension ClientExtension$Mutation$StartDiagnosticTestSession
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$StartDiagnosticTestSession>>
      mutate$StartDiagnosticTestSession(
              Options$Mutation$StartDiagnosticTestSession options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$StartDiagnosticTestSession>
      watchMutation$StartDiagnosticTestSession(
              WatchOptions$Mutation$StartDiagnosticTestSession options) =>
          this.watchMutation(options);
}

class Mutation$StartDiagnosticTestSession$startDiagnosticTestSession {
  Mutation$StartDiagnosticTestSession$startDiagnosticTestSession({
    required this.id,
    required this.$__typename,
  });

  factory Mutation$StartDiagnosticTestSession$startDiagnosticTestSession.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$StartDiagnosticTestSession$startDiagnosticTestSession(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$StartDiagnosticTestSession$startDiagnosticTestSession) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$StartDiagnosticTestSession$startDiagnosticTestSession
    on Mutation$StartDiagnosticTestSession$startDiagnosticTestSession {
  CopyWith$Mutation$StartDiagnosticTestSession$startDiagnosticTestSession<
          Mutation$StartDiagnosticTestSession$startDiagnosticTestSession>
      get copyWith =>
          CopyWith$Mutation$StartDiagnosticTestSession$startDiagnosticTestSession(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$StartDiagnosticTestSession$startDiagnosticTestSession<
    TRes> {
  factory CopyWith$Mutation$StartDiagnosticTestSession$startDiagnosticTestSession(
    Mutation$StartDiagnosticTestSession$startDiagnosticTestSession instance,
    TRes Function(
            Mutation$StartDiagnosticTestSession$startDiagnosticTestSession)
        then,
  ) = _CopyWithImpl$Mutation$StartDiagnosticTestSession$startDiagnosticTestSession;

  factory CopyWith$Mutation$StartDiagnosticTestSession$startDiagnosticTestSession.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$StartDiagnosticTestSession$startDiagnosticTestSession;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$StartDiagnosticTestSession$startDiagnosticTestSession<
        TRes>
    implements
        CopyWith$Mutation$StartDiagnosticTestSession$startDiagnosticTestSession<
            TRes> {
  _CopyWithImpl$Mutation$StartDiagnosticTestSession$startDiagnosticTestSession(
    this._instance,
    this._then,
  );

  final Mutation$StartDiagnosticTestSession$startDiagnosticTestSession
      _instance;

  final TRes Function(
      Mutation$StartDiagnosticTestSession$startDiagnosticTestSession) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$StartDiagnosticTestSession$startDiagnosticTestSession(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$StartDiagnosticTestSession$startDiagnosticTestSession<
        TRes>
    implements
        CopyWith$Mutation$StartDiagnosticTestSession$startDiagnosticTestSession<
            TRes> {
  _CopyWithStubImpl$Mutation$StartDiagnosticTestSession$startDiagnosticTestSession(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$PauseDiagnosticTestSession {
  factory Variables$Mutation$PauseDiagnosticTestSession(
          {required String testId}) =>
      Variables$Mutation$PauseDiagnosticTestSession._({
        r'testId': testId,
      });

  Variables$Mutation$PauseDiagnosticTestSession._(this._$data);

  factory Variables$Mutation$PauseDiagnosticTestSession.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$testId = data['testId'];
    result$data['testId'] = (l$testId as String);
    return Variables$Mutation$PauseDiagnosticTestSession._(result$data);
  }

  Map<String, dynamic> _$data;

  String get testId => (_$data['testId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$testId = testId;
    result$data['testId'] = l$testId;
    return result$data;
  }

  CopyWith$Variables$Mutation$PauseDiagnosticTestSession<
          Variables$Mutation$PauseDiagnosticTestSession>
      get copyWith => CopyWith$Variables$Mutation$PauseDiagnosticTestSession(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$PauseDiagnosticTestSession) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$testId = testId;
    final lOther$testId = other.testId;
    if (l$testId != lOther$testId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$testId = testId;
    return Object.hashAll([l$testId]);
  }
}

abstract class CopyWith$Variables$Mutation$PauseDiagnosticTestSession<TRes> {
  factory CopyWith$Variables$Mutation$PauseDiagnosticTestSession(
    Variables$Mutation$PauseDiagnosticTestSession instance,
    TRes Function(Variables$Mutation$PauseDiagnosticTestSession) then,
  ) = _CopyWithImpl$Variables$Mutation$PauseDiagnosticTestSession;

  factory CopyWith$Variables$Mutation$PauseDiagnosticTestSession.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$PauseDiagnosticTestSession;

  TRes call({String? testId});
}

class _CopyWithImpl$Variables$Mutation$PauseDiagnosticTestSession<TRes>
    implements CopyWith$Variables$Mutation$PauseDiagnosticTestSession<TRes> {
  _CopyWithImpl$Variables$Mutation$PauseDiagnosticTestSession(
    this._instance,
    this._then,
  );

  final Variables$Mutation$PauseDiagnosticTestSession _instance;

  final TRes Function(Variables$Mutation$PauseDiagnosticTestSession) _then;

  static const _undefined = {};

  TRes call({Object? testId = _undefined}) =>
      _then(Variables$Mutation$PauseDiagnosticTestSession._({
        ..._instance._$data,
        if (testId != _undefined && testId != null)
          'testId': (testId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$PauseDiagnosticTestSession<TRes>
    implements CopyWith$Variables$Mutation$PauseDiagnosticTestSession<TRes> {
  _CopyWithStubImpl$Variables$Mutation$PauseDiagnosticTestSession(this._res);

  TRes _res;

  call({String? testId}) => _res;
}

class Mutation$PauseDiagnosticTestSession {
  Mutation$PauseDiagnosticTestSession({
    required this.pauseDiagnosticTestSession,
    required this.$__typename,
  });

  factory Mutation$PauseDiagnosticTestSession.fromJson(
      Map<String, dynamic> json) {
    final l$pauseDiagnosticTestSession = json['pauseDiagnosticTestSession'];
    final l$$__typename = json['__typename'];
    return Mutation$PauseDiagnosticTestSession(
      pauseDiagnosticTestSession:
          Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession
              .fromJson((l$pauseDiagnosticTestSession as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession
      pauseDiagnosticTestSession;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pauseDiagnosticTestSession = pauseDiagnosticTestSession;
    _resultData['pauseDiagnosticTestSession'] =
        l$pauseDiagnosticTestSession.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pauseDiagnosticTestSession = pauseDiagnosticTestSession;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pauseDiagnosticTestSession,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$PauseDiagnosticTestSession) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pauseDiagnosticTestSession = pauseDiagnosticTestSession;
    final lOther$pauseDiagnosticTestSession = other.pauseDiagnosticTestSession;
    if (l$pauseDiagnosticTestSession != lOther$pauseDiagnosticTestSession) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$PauseDiagnosticTestSession
    on Mutation$PauseDiagnosticTestSession {
  CopyWith$Mutation$PauseDiagnosticTestSession<
          Mutation$PauseDiagnosticTestSession>
      get copyWith => CopyWith$Mutation$PauseDiagnosticTestSession(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$PauseDiagnosticTestSession<TRes> {
  factory CopyWith$Mutation$PauseDiagnosticTestSession(
    Mutation$PauseDiagnosticTestSession instance,
    TRes Function(Mutation$PauseDiagnosticTestSession) then,
  ) = _CopyWithImpl$Mutation$PauseDiagnosticTestSession;

  factory CopyWith$Mutation$PauseDiagnosticTestSession.stub(TRes res) =
      _CopyWithStubImpl$Mutation$PauseDiagnosticTestSession;

  TRes call({
    Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession?
        pauseDiagnosticTestSession,
    String? $__typename,
  });
  CopyWith$Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession<TRes>
      get pauseDiagnosticTestSession;
}

class _CopyWithImpl$Mutation$PauseDiagnosticTestSession<TRes>
    implements CopyWith$Mutation$PauseDiagnosticTestSession<TRes> {
  _CopyWithImpl$Mutation$PauseDiagnosticTestSession(
    this._instance,
    this._then,
  );

  final Mutation$PauseDiagnosticTestSession _instance;

  final TRes Function(Mutation$PauseDiagnosticTestSession) _then;

  static const _undefined = {};

  TRes call({
    Object? pauseDiagnosticTestSession = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$PauseDiagnosticTestSession(
        pauseDiagnosticTestSession: pauseDiagnosticTestSession == _undefined ||
                pauseDiagnosticTestSession == null
            ? _instance.pauseDiagnosticTestSession
            : (pauseDiagnosticTestSession
                as Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession<TRes>
      get pauseDiagnosticTestSession {
    final local$pauseDiagnosticTestSession =
        _instance.pauseDiagnosticTestSession;
    return CopyWith$Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession(
        local$pauseDiagnosticTestSession,
        (e) => call(pauseDiagnosticTestSession: e));
  }
}

class _CopyWithStubImpl$Mutation$PauseDiagnosticTestSession<TRes>
    implements CopyWith$Mutation$PauseDiagnosticTestSession<TRes> {
  _CopyWithStubImpl$Mutation$PauseDiagnosticTestSession(this._res);

  TRes _res;

  call({
    Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession?
        pauseDiagnosticTestSession,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession<TRes>
      get pauseDiagnosticTestSession =>
          CopyWith$Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession
              .stub(_res);
}

const documentNodeMutationPauseDiagnosticTestSession =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'PauseDiagnosticTestSession'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'testId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'pauseDiagnosticTestSession'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'testId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$PauseDiagnosticTestSession
    _parserFn$Mutation$PauseDiagnosticTestSession(Map<String, dynamic> data) =>
        Mutation$PauseDiagnosticTestSession.fromJson(data);
typedef OnMutationCompleted$Mutation$PauseDiagnosticTestSession = FutureOr<void>
    Function(
  dynamic,
  Mutation$PauseDiagnosticTestSession?,
);

class Options$Mutation$PauseDiagnosticTestSession
    extends graphql.MutationOptions<Mutation$PauseDiagnosticTestSession> {
  Options$Mutation$PauseDiagnosticTestSession({
    String? operationName,
    required Variables$Mutation$PauseDiagnosticTestSession variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$PauseDiagnosticTestSession? onCompleted,
    graphql.OnMutationUpdate<Mutation$PauseDiagnosticTestSession>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$PauseDiagnosticTestSession(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationPauseDiagnosticTestSession,
          parserFn: _parserFn$Mutation$PauseDiagnosticTestSession,
        );

  final OnMutationCompleted$Mutation$PauseDiagnosticTestSession?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$PauseDiagnosticTestSession
    extends graphql.WatchQueryOptions<Mutation$PauseDiagnosticTestSession> {
  WatchOptions$Mutation$PauseDiagnosticTestSession({
    String? operationName,
    required Variables$Mutation$PauseDiagnosticTestSession variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationPauseDiagnosticTestSession,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$PauseDiagnosticTestSession,
        );
}

extension ClientExtension$Mutation$PauseDiagnosticTestSession
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$PauseDiagnosticTestSession>>
      mutate$PauseDiagnosticTestSession(
              Options$Mutation$PauseDiagnosticTestSession options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$PauseDiagnosticTestSession>
      watchMutation$PauseDiagnosticTestSession(
              WatchOptions$Mutation$PauseDiagnosticTestSession options) =>
          this.watchMutation(options);
}

class Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession {
  Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession({
    required this.id,
    required this.$__typename,
  });

  factory Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession
    on Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession {
  CopyWith$Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession<
          Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession>
      get copyWith =>
          CopyWith$Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession<
    TRes> {
  factory CopyWith$Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession(
    Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession instance,
    TRes Function(
            Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession)
        then,
  ) = _CopyWithImpl$Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession;

  factory CopyWith$Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession<
        TRes>
    implements
        CopyWith$Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession<
            TRes> {
  _CopyWithImpl$Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession(
    this._instance,
    this._then,
  );

  final Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession
      _instance;

  final TRes Function(
      Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession<
        TRes>
    implements
        CopyWith$Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession<
            TRes> {
  _CopyWithStubImpl$Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$ResumeDiagnosticTestSession {
  factory Variables$Mutation$ResumeDiagnosticTestSession(
          {required String testId}) =>
      Variables$Mutation$ResumeDiagnosticTestSession._({
        r'testId': testId,
      });

  Variables$Mutation$ResumeDiagnosticTestSession._(this._$data);

  factory Variables$Mutation$ResumeDiagnosticTestSession.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$testId = data['testId'];
    result$data['testId'] = (l$testId as String);
    return Variables$Mutation$ResumeDiagnosticTestSession._(result$data);
  }

  Map<String, dynamic> _$data;

  String get testId => (_$data['testId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$testId = testId;
    result$data['testId'] = l$testId;
    return result$data;
  }

  CopyWith$Variables$Mutation$ResumeDiagnosticTestSession<
          Variables$Mutation$ResumeDiagnosticTestSession>
      get copyWith => CopyWith$Variables$Mutation$ResumeDiagnosticTestSession(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$ResumeDiagnosticTestSession) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$testId = testId;
    final lOther$testId = other.testId;
    if (l$testId != lOther$testId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$testId = testId;
    return Object.hashAll([l$testId]);
  }
}

abstract class CopyWith$Variables$Mutation$ResumeDiagnosticTestSession<TRes> {
  factory CopyWith$Variables$Mutation$ResumeDiagnosticTestSession(
    Variables$Mutation$ResumeDiagnosticTestSession instance,
    TRes Function(Variables$Mutation$ResumeDiagnosticTestSession) then,
  ) = _CopyWithImpl$Variables$Mutation$ResumeDiagnosticTestSession;

  factory CopyWith$Variables$Mutation$ResumeDiagnosticTestSession.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ResumeDiagnosticTestSession;

  TRes call({String? testId});
}

class _CopyWithImpl$Variables$Mutation$ResumeDiagnosticTestSession<TRes>
    implements CopyWith$Variables$Mutation$ResumeDiagnosticTestSession<TRes> {
  _CopyWithImpl$Variables$Mutation$ResumeDiagnosticTestSession(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ResumeDiagnosticTestSession _instance;

  final TRes Function(Variables$Mutation$ResumeDiagnosticTestSession) _then;

  static const _undefined = {};

  TRes call({Object? testId = _undefined}) =>
      _then(Variables$Mutation$ResumeDiagnosticTestSession._({
        ..._instance._$data,
        if (testId != _undefined && testId != null)
          'testId': (testId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ResumeDiagnosticTestSession<TRes>
    implements CopyWith$Variables$Mutation$ResumeDiagnosticTestSession<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ResumeDiagnosticTestSession(this._res);

  TRes _res;

  call({String? testId}) => _res;
}

class Mutation$ResumeDiagnosticTestSession {
  Mutation$ResumeDiagnosticTestSession({
    required this.resumeDiagnosticTestSession,
    required this.$__typename,
  });

  factory Mutation$ResumeDiagnosticTestSession.fromJson(
      Map<String, dynamic> json) {
    final l$resumeDiagnosticTestSession = json['resumeDiagnosticTestSession'];
    final l$$__typename = json['__typename'];
    return Mutation$ResumeDiagnosticTestSession(
      resumeDiagnosticTestSession:
          Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession
              .fromJson(
                  (l$resumeDiagnosticTestSession as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession
      resumeDiagnosticTestSession;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$resumeDiagnosticTestSession = resumeDiagnosticTestSession;
    _resultData['resumeDiagnosticTestSession'] =
        l$resumeDiagnosticTestSession.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$resumeDiagnosticTestSession = resumeDiagnosticTestSession;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$resumeDiagnosticTestSession,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ResumeDiagnosticTestSession) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$resumeDiagnosticTestSession = resumeDiagnosticTestSession;
    final lOther$resumeDiagnosticTestSession =
        other.resumeDiagnosticTestSession;
    if (l$resumeDiagnosticTestSession != lOther$resumeDiagnosticTestSession) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$ResumeDiagnosticTestSession
    on Mutation$ResumeDiagnosticTestSession {
  CopyWith$Mutation$ResumeDiagnosticTestSession<
          Mutation$ResumeDiagnosticTestSession>
      get copyWith => CopyWith$Mutation$ResumeDiagnosticTestSession(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ResumeDiagnosticTestSession<TRes> {
  factory CopyWith$Mutation$ResumeDiagnosticTestSession(
    Mutation$ResumeDiagnosticTestSession instance,
    TRes Function(Mutation$ResumeDiagnosticTestSession) then,
  ) = _CopyWithImpl$Mutation$ResumeDiagnosticTestSession;

  factory CopyWith$Mutation$ResumeDiagnosticTestSession.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ResumeDiagnosticTestSession;

  TRes call({
    Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession?
        resumeDiagnosticTestSession,
    String? $__typename,
  });
  CopyWith$Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession<
      TRes> get resumeDiagnosticTestSession;
}

class _CopyWithImpl$Mutation$ResumeDiagnosticTestSession<TRes>
    implements CopyWith$Mutation$ResumeDiagnosticTestSession<TRes> {
  _CopyWithImpl$Mutation$ResumeDiagnosticTestSession(
    this._instance,
    this._then,
  );

  final Mutation$ResumeDiagnosticTestSession _instance;

  final TRes Function(Mutation$ResumeDiagnosticTestSession) _then;

  static const _undefined = {};

  TRes call({
    Object? resumeDiagnosticTestSession = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ResumeDiagnosticTestSession(
        resumeDiagnosticTestSession: resumeDiagnosticTestSession ==
                    _undefined ||
                resumeDiagnosticTestSession == null
            ? _instance.resumeDiagnosticTestSession
            : (resumeDiagnosticTestSession
                as Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession<
      TRes> get resumeDiagnosticTestSession {
    final local$resumeDiagnosticTestSession =
        _instance.resumeDiagnosticTestSession;
    return CopyWith$Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession(
        local$resumeDiagnosticTestSession,
        (e) => call(resumeDiagnosticTestSession: e));
  }
}

class _CopyWithStubImpl$Mutation$ResumeDiagnosticTestSession<TRes>
    implements CopyWith$Mutation$ResumeDiagnosticTestSession<TRes> {
  _CopyWithStubImpl$Mutation$ResumeDiagnosticTestSession(this._res);

  TRes _res;

  call({
    Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession?
        resumeDiagnosticTestSession,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession<
          TRes>
      get resumeDiagnosticTestSession =>
          CopyWith$Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession
              .stub(_res);
}

const documentNodeMutationResumeDiagnosticTestSession =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ResumeDiagnosticTestSession'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'testId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'resumeDiagnosticTestSession'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'testId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'expectedDueAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$ResumeDiagnosticTestSession
    _parserFn$Mutation$ResumeDiagnosticTestSession(Map<String, dynamic> data) =>
        Mutation$ResumeDiagnosticTestSession.fromJson(data);
typedef OnMutationCompleted$Mutation$ResumeDiagnosticTestSession
    = FutureOr<void> Function(
  dynamic,
  Mutation$ResumeDiagnosticTestSession?,
);

class Options$Mutation$ResumeDiagnosticTestSession
    extends graphql.MutationOptions<Mutation$ResumeDiagnosticTestSession> {
  Options$Mutation$ResumeDiagnosticTestSession({
    String? operationName,
    required Variables$Mutation$ResumeDiagnosticTestSession variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ResumeDiagnosticTestSession? onCompleted,
    graphql.OnMutationUpdate<Mutation$ResumeDiagnosticTestSession>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$ResumeDiagnosticTestSession(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationResumeDiagnosticTestSession,
          parserFn: _parserFn$Mutation$ResumeDiagnosticTestSession,
        );

  final OnMutationCompleted$Mutation$ResumeDiagnosticTestSession?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ResumeDiagnosticTestSession
    extends graphql.WatchQueryOptions<Mutation$ResumeDiagnosticTestSession> {
  WatchOptions$Mutation$ResumeDiagnosticTestSession({
    String? operationName,
    required Variables$Mutation$ResumeDiagnosticTestSession variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationResumeDiagnosticTestSession,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ResumeDiagnosticTestSession,
        );
}

extension ClientExtension$Mutation$ResumeDiagnosticTestSession
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ResumeDiagnosticTestSession>>
      mutate$ResumeDiagnosticTestSession(
              Options$Mutation$ResumeDiagnosticTestSession options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$ResumeDiagnosticTestSession>
      watchMutation$ResumeDiagnosticTestSession(
              WatchOptions$Mutation$ResumeDiagnosticTestSession options) =>
          this.watchMutation(options);
}

class Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession {
  Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession({
    required this.id,
    required this.expectedDueAt,
    required this.$__typename,
  });

  factory Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$expectedDueAt = json['expectedDueAt'];
    final l$$__typename = json['__typename'];
    return Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession(
      id: (l$id as String),
      expectedDueAt: dateTimeFromRFC3339Nano(l$expectedDueAt),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime expectedDueAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$expectedDueAt = expectedDueAt;
    _resultData['expectedDueAt'] = dateTimeToUtcToIso8601(l$expectedDueAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$expectedDueAt = expectedDueAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$expectedDueAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$expectedDueAt = expectedDueAt;
    final lOther$expectedDueAt = other.expectedDueAt;
    if (l$expectedDueAt != lOther$expectedDueAt) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession
    on Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession {
  CopyWith$Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession<
          Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession>
      get copyWith =>
          CopyWith$Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession<
    TRes> {
  factory CopyWith$Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession(
    Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession instance,
    TRes Function(
            Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession)
        then,
  ) = _CopyWithImpl$Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession;

  factory CopyWith$Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession;

  TRes call({
    String? id,
    DateTime? expectedDueAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession<
        TRes>
    implements
        CopyWith$Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession<
            TRes> {
  _CopyWithImpl$Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession(
    this._instance,
    this._then,
  );

  final Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession
      _instance;

  final TRes Function(
      Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? expectedDueAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        expectedDueAt: expectedDueAt == _undefined || expectedDueAt == null
            ? _instance.expectedDueAt
            : (expectedDueAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession<
        TRes>
    implements
        CopyWith$Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession<
            TRes> {
  _CopyWithStubImpl$Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession(
      this._res);

  TRes _res;

  call({
    String? id,
    DateTime? expectedDueAt,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$FinishDiagnosticTestSession {
  factory Variables$Mutation$FinishDiagnosticTestSession(
          {required String testId}) =>
      Variables$Mutation$FinishDiagnosticTestSession._({
        r'testId': testId,
      });

  Variables$Mutation$FinishDiagnosticTestSession._(this._$data);

  factory Variables$Mutation$FinishDiagnosticTestSession.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$testId = data['testId'];
    result$data['testId'] = (l$testId as String);
    return Variables$Mutation$FinishDiagnosticTestSession._(result$data);
  }

  Map<String, dynamic> _$data;

  String get testId => (_$data['testId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$testId = testId;
    result$data['testId'] = l$testId;
    return result$data;
  }

  CopyWith$Variables$Mutation$FinishDiagnosticTestSession<
          Variables$Mutation$FinishDiagnosticTestSession>
      get copyWith => CopyWith$Variables$Mutation$FinishDiagnosticTestSession(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$FinishDiagnosticTestSession) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$testId = testId;
    final lOther$testId = other.testId;
    if (l$testId != lOther$testId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$testId = testId;
    return Object.hashAll([l$testId]);
  }
}

abstract class CopyWith$Variables$Mutation$FinishDiagnosticTestSession<TRes> {
  factory CopyWith$Variables$Mutation$FinishDiagnosticTestSession(
    Variables$Mutation$FinishDiagnosticTestSession instance,
    TRes Function(Variables$Mutation$FinishDiagnosticTestSession) then,
  ) = _CopyWithImpl$Variables$Mutation$FinishDiagnosticTestSession;

  factory CopyWith$Variables$Mutation$FinishDiagnosticTestSession.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$FinishDiagnosticTestSession;

  TRes call({String? testId});
}

class _CopyWithImpl$Variables$Mutation$FinishDiagnosticTestSession<TRes>
    implements CopyWith$Variables$Mutation$FinishDiagnosticTestSession<TRes> {
  _CopyWithImpl$Variables$Mutation$FinishDiagnosticTestSession(
    this._instance,
    this._then,
  );

  final Variables$Mutation$FinishDiagnosticTestSession _instance;

  final TRes Function(Variables$Mutation$FinishDiagnosticTestSession) _then;

  static const _undefined = {};

  TRes call({Object? testId = _undefined}) =>
      _then(Variables$Mutation$FinishDiagnosticTestSession._({
        ..._instance._$data,
        if (testId != _undefined && testId != null)
          'testId': (testId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$FinishDiagnosticTestSession<TRes>
    implements CopyWith$Variables$Mutation$FinishDiagnosticTestSession<TRes> {
  _CopyWithStubImpl$Variables$Mutation$FinishDiagnosticTestSession(this._res);

  TRes _res;

  call({String? testId}) => _res;
}

class Mutation$FinishDiagnosticTestSession {
  Mutation$FinishDiagnosticTestSession({
    required this.finishDiagnosticTestSession,
    required this.$__typename,
  });

  factory Mutation$FinishDiagnosticTestSession.fromJson(
      Map<String, dynamic> json) {
    final l$finishDiagnosticTestSession = json['finishDiagnosticTestSession'];
    final l$$__typename = json['__typename'];
    return Mutation$FinishDiagnosticTestSession(
      finishDiagnosticTestSession:
          Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession
              .fromJson(
                  (l$finishDiagnosticTestSession as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession
      finishDiagnosticTestSession;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$finishDiagnosticTestSession = finishDiagnosticTestSession;
    _resultData['finishDiagnosticTestSession'] =
        l$finishDiagnosticTestSession.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$finishDiagnosticTestSession = finishDiagnosticTestSession;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$finishDiagnosticTestSession,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$FinishDiagnosticTestSession) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$finishDiagnosticTestSession = finishDiagnosticTestSession;
    final lOther$finishDiagnosticTestSession =
        other.finishDiagnosticTestSession;
    if (l$finishDiagnosticTestSession != lOther$finishDiagnosticTestSession) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$FinishDiagnosticTestSession
    on Mutation$FinishDiagnosticTestSession {
  CopyWith$Mutation$FinishDiagnosticTestSession<
          Mutation$FinishDiagnosticTestSession>
      get copyWith => CopyWith$Mutation$FinishDiagnosticTestSession(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$FinishDiagnosticTestSession<TRes> {
  factory CopyWith$Mutation$FinishDiagnosticTestSession(
    Mutation$FinishDiagnosticTestSession instance,
    TRes Function(Mutation$FinishDiagnosticTestSession) then,
  ) = _CopyWithImpl$Mutation$FinishDiagnosticTestSession;

  factory CopyWith$Mutation$FinishDiagnosticTestSession.stub(TRes res) =
      _CopyWithStubImpl$Mutation$FinishDiagnosticTestSession;

  TRes call({
    Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession?
        finishDiagnosticTestSession,
    String? $__typename,
  });
  CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession<
      TRes> get finishDiagnosticTestSession;
}

class _CopyWithImpl$Mutation$FinishDiagnosticTestSession<TRes>
    implements CopyWith$Mutation$FinishDiagnosticTestSession<TRes> {
  _CopyWithImpl$Mutation$FinishDiagnosticTestSession(
    this._instance,
    this._then,
  );

  final Mutation$FinishDiagnosticTestSession _instance;

  final TRes Function(Mutation$FinishDiagnosticTestSession) _then;

  static const _undefined = {};

  TRes call({
    Object? finishDiagnosticTestSession = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$FinishDiagnosticTestSession(
        finishDiagnosticTestSession: finishDiagnosticTestSession ==
                    _undefined ||
                finishDiagnosticTestSession == null
            ? _instance.finishDiagnosticTestSession
            : (finishDiagnosticTestSession
                as Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession<
      TRes> get finishDiagnosticTestSession {
    final local$finishDiagnosticTestSession =
        _instance.finishDiagnosticTestSession;
    return CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession(
        local$finishDiagnosticTestSession,
        (e) => call(finishDiagnosticTestSession: e));
  }
}

class _CopyWithStubImpl$Mutation$FinishDiagnosticTestSession<TRes>
    implements CopyWith$Mutation$FinishDiagnosticTestSession<TRes> {
  _CopyWithStubImpl$Mutation$FinishDiagnosticTestSession(this._res);

  TRes _res;

  call({
    Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession?
        finishDiagnosticTestSession,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession<
          TRes>
      get finishDiagnosticTestSession =>
          CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession
              .stub(_res);
}

const documentNodeMutationFinishDiagnosticTestSession =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'FinishDiagnosticTestSession'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'testId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'finishDiagnosticTestSession'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'testId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'initialProgress'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'wrong'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'correct'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'finalProgress'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'wrong'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'correct'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'timeSaved'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'topic'),
            alias: NameNode(value: 'finishedAssessmentTopic'),
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'title'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'emoji'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$FinishDiagnosticTestSession
    _parserFn$Mutation$FinishDiagnosticTestSession(Map<String, dynamic> data) =>
        Mutation$FinishDiagnosticTestSession.fromJson(data);
typedef OnMutationCompleted$Mutation$FinishDiagnosticTestSession
    = FutureOr<void> Function(
  dynamic,
  Mutation$FinishDiagnosticTestSession?,
);

class Options$Mutation$FinishDiagnosticTestSession
    extends graphql.MutationOptions<Mutation$FinishDiagnosticTestSession> {
  Options$Mutation$FinishDiagnosticTestSession({
    String? operationName,
    required Variables$Mutation$FinishDiagnosticTestSession variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$FinishDiagnosticTestSession? onCompleted,
    graphql.OnMutationUpdate<Mutation$FinishDiagnosticTestSession>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$FinishDiagnosticTestSession(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationFinishDiagnosticTestSession,
          parserFn: _parserFn$Mutation$FinishDiagnosticTestSession,
        );

  final OnMutationCompleted$Mutation$FinishDiagnosticTestSession?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$FinishDiagnosticTestSession
    extends graphql.WatchQueryOptions<Mutation$FinishDiagnosticTestSession> {
  WatchOptions$Mutation$FinishDiagnosticTestSession({
    String? operationName,
    required Variables$Mutation$FinishDiagnosticTestSession variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationFinishDiagnosticTestSession,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$FinishDiagnosticTestSession,
        );
}

extension ClientExtension$Mutation$FinishDiagnosticTestSession
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$FinishDiagnosticTestSession>>
      mutate$FinishDiagnosticTestSession(
              Options$Mutation$FinishDiagnosticTestSession options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$FinishDiagnosticTestSession>
      watchMutation$FinishDiagnosticTestSession(
              WatchOptions$Mutation$FinishDiagnosticTestSession options) =>
          this.watchMutation(options);
}

class Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession {
  Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession({
    required this.id,
    this.initialProgress,
    this.finalProgress,
    required this.timeSaved,
    required this.finishedAssessmentTopic,
    required this.$__typename,
  });

  factory Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$initialProgress = json['initialProgress'];
    final l$finalProgress = json['finalProgress'];
    final l$timeSaved = json['timeSaved'];
    final l$finishedAssessmentTopic = json['finishedAssessmentTopic'];
    final l$$__typename = json['__typename'];
    return Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession(
      id: (l$id as String),
      initialProgress: l$initialProgress == null
          ? null
          : Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress
              .fromJson((l$initialProgress as Map<String, dynamic>)),
      finalProgress: l$finalProgress == null
          ? null
          : Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress
              .fromJson((l$finalProgress as Map<String, dynamic>)),
      timeSaved: durationFromNanoseconds(l$timeSaved),
      finishedAssessmentTopic:
          Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic
              .fromJson((l$finishedAssessmentTopic as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress?
      initialProgress;

  final Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress?
      finalProgress;

  final Duration timeSaved;

  final Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic
      finishedAssessmentTopic;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$initialProgress = initialProgress;
    _resultData['initialProgress'] = l$initialProgress?.toJson();
    final l$finalProgress = finalProgress;
    _resultData['finalProgress'] = l$finalProgress?.toJson();
    final l$timeSaved = timeSaved;
    _resultData['timeSaved'] = durationToNanoseconds(l$timeSaved);
    final l$finishedAssessmentTopic = finishedAssessmentTopic;
    _resultData['finishedAssessmentTopic'] = l$finishedAssessmentTopic.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$initialProgress = initialProgress;
    final l$finalProgress = finalProgress;
    final l$timeSaved = timeSaved;
    final l$finishedAssessmentTopic = finishedAssessmentTopic;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$initialProgress,
      l$finalProgress,
      l$timeSaved,
      l$finishedAssessmentTopic,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$initialProgress = initialProgress;
    final lOther$initialProgress = other.initialProgress;
    if (l$initialProgress != lOther$initialProgress) {
      return false;
    }
    final l$finalProgress = finalProgress;
    final lOther$finalProgress = other.finalProgress;
    if (l$finalProgress != lOther$finalProgress) {
      return false;
    }
    final l$timeSaved = timeSaved;
    final lOther$timeSaved = other.timeSaved;
    if (l$timeSaved != lOther$timeSaved) {
      return false;
    }
    final l$finishedAssessmentTopic = finishedAssessmentTopic;
    final lOther$finishedAssessmentTopic = other.finishedAssessmentTopic;
    if (l$finishedAssessmentTopic != lOther$finishedAssessmentTopic) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession
    on Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession {
  CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession<
          Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession>
      get copyWith =>
          CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession<
    TRes> {
  factory CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession(
    Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession instance,
    TRes Function(
            Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession)
        then,
  ) = _CopyWithImpl$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession;

  factory CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession;

  TRes call({
    String? id,
    Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress?
        initialProgress,
    Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress?
        finalProgress,
    Duration? timeSaved,
    Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic?
        finishedAssessmentTopic,
    String? $__typename,
  });
  CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress<
      TRes> get initialProgress;
  CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress<
      TRes> get finalProgress;
  CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic<
      TRes> get finishedAssessmentTopic;
}

class _CopyWithImpl$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession<
        TRes>
    implements
        CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession<
            TRes> {
  _CopyWithImpl$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession(
    this._instance,
    this._then,
  );

  final Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession
      _instance;

  final TRes Function(
      Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? initialProgress = _undefined,
    Object? finalProgress = _undefined,
    Object? timeSaved = _undefined,
    Object? finishedAssessmentTopic = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        initialProgress: initialProgress == _undefined
            ? _instance.initialProgress
            : (initialProgress
                as Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress?),
        finalProgress: finalProgress == _undefined
            ? _instance.finalProgress
            : (finalProgress
                as Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress?),
        timeSaved: timeSaved == _undefined || timeSaved == null
            ? _instance.timeSaved
            : (timeSaved as Duration),
        finishedAssessmentTopic: finishedAssessmentTopic == _undefined ||
                finishedAssessmentTopic == null
            ? _instance.finishedAssessmentTopic
            : (finishedAssessmentTopic
                as Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress<
      TRes> get initialProgress {
    final local$initialProgress = _instance.initialProgress;
    return local$initialProgress == null
        ? CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress
            .stub(_then(_instance))
        : CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress(
            local$initialProgress, (e) => call(initialProgress: e));
  }

  CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress<
      TRes> get finalProgress {
    final local$finalProgress = _instance.finalProgress;
    return local$finalProgress == null
        ? CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress
            .stub(_then(_instance))
        : CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress(
            local$finalProgress, (e) => call(finalProgress: e));
  }

  CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic<
      TRes> get finishedAssessmentTopic {
    final local$finishedAssessmentTopic = _instance.finishedAssessmentTopic;
    return CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic(
        local$finishedAssessmentTopic, (e) => call(finishedAssessmentTopic: e));
  }
}

class _CopyWithStubImpl$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession<
        TRes>
    implements
        CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession<
            TRes> {
  _CopyWithStubImpl$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession(
      this._res);

  TRes _res;

  call({
    String? id,
    Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress?
        initialProgress,
    Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress?
        finalProgress,
    Duration? timeSaved,
    Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic?
        finishedAssessmentTopic,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress<
          TRes>
      get initialProgress =>
          CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress
              .stub(_res);
  CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress<
          TRes>
      get finalProgress =>
          CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress
              .stub(_res);
  CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic<
          TRes>
      get finishedAssessmentTopic =>
          CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic
              .stub(_res);
}

class Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress {
  Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress({
    required this.wrong,
    required this.correct,
    required this.$__typename,
  });

  factory Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress.fromJson(
      Map<String, dynamic> json) {
    final l$wrong = json['wrong'];
    final l$correct = json['correct'];
    final l$$__typename = json['__typename'];
    return Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress(
      wrong: (l$wrong as num).toDouble(),
      correct: (l$correct as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double wrong;

  final double correct;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$wrong = wrong;
    _resultData['wrong'] = l$wrong;
    final l$correct = correct;
    _resultData['correct'] = l$correct;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$wrong = wrong;
    final l$correct = correct;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$wrong,
      l$correct,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$wrong = wrong;
    final lOther$wrong = other.wrong;
    if (l$wrong != lOther$wrong) {
      return false;
    }
    final l$correct = correct;
    final lOther$correct = other.correct;
    if (l$correct != lOther$correct) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress
    on Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress {
  CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress<
          Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress>
      get copyWith =>
          CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress<
    TRes> {
  factory CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress(
    Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress
        instance,
    TRes Function(
            Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress)
        then,
  ) = _CopyWithImpl$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress;

  factory CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress;

  TRes call({
    double? wrong,
    double? correct,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress<
        TRes>
    implements
        CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress<
            TRes> {
  _CopyWithImpl$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress(
    this._instance,
    this._then,
  );

  final Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress
      _instance;

  final TRes Function(
          Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress)
      _then;

  static const _undefined = {};

  TRes call({
    Object? wrong = _undefined,
    Object? correct = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress(
        wrong: wrong == _undefined || wrong == null
            ? _instance.wrong
            : (wrong as double),
        correct: correct == _undefined || correct == null
            ? _instance.correct
            : (correct as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress<
        TRes>
    implements
        CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress<
            TRes> {
  _CopyWithStubImpl$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress(
      this._res);

  TRes _res;

  call({
    double? wrong,
    double? correct,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress {
  Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress({
    required this.wrong,
    required this.correct,
    required this.$__typename,
  });

  factory Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress.fromJson(
      Map<String, dynamic> json) {
    final l$wrong = json['wrong'];
    final l$correct = json['correct'];
    final l$$__typename = json['__typename'];
    return Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress(
      wrong: (l$wrong as num).toDouble(),
      correct: (l$correct as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double wrong;

  final double correct;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$wrong = wrong;
    _resultData['wrong'] = l$wrong;
    final l$correct = correct;
    _resultData['correct'] = l$correct;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$wrong = wrong;
    final l$correct = correct;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$wrong,
      l$correct,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$wrong = wrong;
    final lOther$wrong = other.wrong;
    if (l$wrong != lOther$wrong) {
      return false;
    }
    final l$correct = correct;
    final lOther$correct = other.correct;
    if (l$correct != lOther$correct) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress
    on Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress {
  CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress<
          Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress>
      get copyWith =>
          CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress<
    TRes> {
  factory CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress(
    Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress
        instance,
    TRes Function(
            Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress)
        then,
  ) = _CopyWithImpl$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress;

  factory CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress;

  TRes call({
    double? wrong,
    double? correct,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress<
        TRes>
    implements
        CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress<
            TRes> {
  _CopyWithImpl$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress(
    this._instance,
    this._then,
  );

  final Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress
      _instance;

  final TRes Function(
          Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress)
      _then;

  static const _undefined = {};

  TRes call({
    Object? wrong = _undefined,
    Object? correct = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress(
        wrong: wrong == _undefined || wrong == null
            ? _instance.wrong
            : (wrong as double),
        correct: correct == _undefined || correct == null
            ? _instance.correct
            : (correct as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress<
        TRes>
    implements
        CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress<
            TRes> {
  _CopyWithStubImpl$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress(
      this._res);

  TRes _res;

  call({
    double? wrong,
    double? correct,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic {
  Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic({
    required this.id,
    required this.title,
    required this.emoji,
    required this.$__typename,
  });

  factory Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$emoji = json['emoji'];
    final l$$__typename = json['__typename'];
    return Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic(
      id: (l$id as String),
      title: (l$title as String),
      emoji: (l$emoji as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String emoji;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$emoji = emoji;
    _resultData['emoji'] = l$emoji;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$emoji = emoji;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$emoji,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$emoji = emoji;
    final lOther$emoji = other.emoji;
    if (l$emoji != lOther$emoji) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic
    on Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic {
  CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic<
          Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic>
      get copyWith =>
          CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic<
    TRes> {
  factory CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic(
    Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic
        instance,
    TRes Function(
            Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic)
        then,
  ) = _CopyWithImpl$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic;

  factory CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic;

  TRes call({
    String? id,
    String? title,
    String? emoji,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic<
        TRes>
    implements
        CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic<
            TRes> {
  _CopyWithImpl$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic(
    this._instance,
    this._then,
  );

  final Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic
      _instance;

  final TRes Function(
          Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? emoji = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        emoji: emoji == _undefined || emoji == null
            ? _instance.emoji
            : (emoji as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic<
        TRes>
    implements
        CopyWith$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic<
            TRes> {
  _CopyWithStubImpl$Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic(
      this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? emoji,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$RemoveDiagnosticTestSession {
  factory Variables$Mutation$RemoveDiagnosticTestSession(
          {required String testId}) =>
      Variables$Mutation$RemoveDiagnosticTestSession._({
        r'testId': testId,
      });

  Variables$Mutation$RemoveDiagnosticTestSession._(this._$data);

  factory Variables$Mutation$RemoveDiagnosticTestSession.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$testId = data['testId'];
    result$data['testId'] = (l$testId as String);
    return Variables$Mutation$RemoveDiagnosticTestSession._(result$data);
  }

  Map<String, dynamic> _$data;

  String get testId => (_$data['testId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$testId = testId;
    result$data['testId'] = l$testId;
    return result$data;
  }

  CopyWith$Variables$Mutation$RemoveDiagnosticTestSession<
          Variables$Mutation$RemoveDiagnosticTestSession>
      get copyWith => CopyWith$Variables$Mutation$RemoveDiagnosticTestSession(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$RemoveDiagnosticTestSession) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$testId = testId;
    final lOther$testId = other.testId;
    if (l$testId != lOther$testId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$testId = testId;
    return Object.hashAll([l$testId]);
  }
}

abstract class CopyWith$Variables$Mutation$RemoveDiagnosticTestSession<TRes> {
  factory CopyWith$Variables$Mutation$RemoveDiagnosticTestSession(
    Variables$Mutation$RemoveDiagnosticTestSession instance,
    TRes Function(Variables$Mutation$RemoveDiagnosticTestSession) then,
  ) = _CopyWithImpl$Variables$Mutation$RemoveDiagnosticTestSession;

  factory CopyWith$Variables$Mutation$RemoveDiagnosticTestSession.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$RemoveDiagnosticTestSession;

  TRes call({String? testId});
}

class _CopyWithImpl$Variables$Mutation$RemoveDiagnosticTestSession<TRes>
    implements CopyWith$Variables$Mutation$RemoveDiagnosticTestSession<TRes> {
  _CopyWithImpl$Variables$Mutation$RemoveDiagnosticTestSession(
    this._instance,
    this._then,
  );

  final Variables$Mutation$RemoveDiagnosticTestSession _instance;

  final TRes Function(Variables$Mutation$RemoveDiagnosticTestSession) _then;

  static const _undefined = {};

  TRes call({Object? testId = _undefined}) =>
      _then(Variables$Mutation$RemoveDiagnosticTestSession._({
        ..._instance._$data,
        if (testId != _undefined && testId != null)
          'testId': (testId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$RemoveDiagnosticTestSession<TRes>
    implements CopyWith$Variables$Mutation$RemoveDiagnosticTestSession<TRes> {
  _CopyWithStubImpl$Variables$Mutation$RemoveDiagnosticTestSession(this._res);

  TRes _res;

  call({String? testId}) => _res;
}

class Mutation$RemoveDiagnosticTestSession {
  Mutation$RemoveDiagnosticTestSession({
    required this.removeDiagnosticTestSession,
    required this.$__typename,
  });

  factory Mutation$RemoveDiagnosticTestSession.fromJson(
      Map<String, dynamic> json) {
    final l$removeDiagnosticTestSession = json['removeDiagnosticTestSession'];
    final l$$__typename = json['__typename'];
    return Mutation$RemoveDiagnosticTestSession(
      removeDiagnosticTestSession:
          Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession
              .fromJson(
                  (l$removeDiagnosticTestSession as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession
      removeDiagnosticTestSession;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$removeDiagnosticTestSession = removeDiagnosticTestSession;
    _resultData['removeDiagnosticTestSession'] =
        l$removeDiagnosticTestSession.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$removeDiagnosticTestSession = removeDiagnosticTestSession;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$removeDiagnosticTestSession,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$RemoveDiagnosticTestSession) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$removeDiagnosticTestSession = removeDiagnosticTestSession;
    final lOther$removeDiagnosticTestSession =
        other.removeDiagnosticTestSession;
    if (l$removeDiagnosticTestSession != lOther$removeDiagnosticTestSession) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$RemoveDiagnosticTestSession
    on Mutation$RemoveDiagnosticTestSession {
  CopyWith$Mutation$RemoveDiagnosticTestSession<
          Mutation$RemoveDiagnosticTestSession>
      get copyWith => CopyWith$Mutation$RemoveDiagnosticTestSession(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RemoveDiagnosticTestSession<TRes> {
  factory CopyWith$Mutation$RemoveDiagnosticTestSession(
    Mutation$RemoveDiagnosticTestSession instance,
    TRes Function(Mutation$RemoveDiagnosticTestSession) then,
  ) = _CopyWithImpl$Mutation$RemoveDiagnosticTestSession;

  factory CopyWith$Mutation$RemoveDiagnosticTestSession.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RemoveDiagnosticTestSession;

  TRes call({
    Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession?
        removeDiagnosticTestSession,
    String? $__typename,
  });
  CopyWith$Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession<
      TRes> get removeDiagnosticTestSession;
}

class _CopyWithImpl$Mutation$RemoveDiagnosticTestSession<TRes>
    implements CopyWith$Mutation$RemoveDiagnosticTestSession<TRes> {
  _CopyWithImpl$Mutation$RemoveDiagnosticTestSession(
    this._instance,
    this._then,
  );

  final Mutation$RemoveDiagnosticTestSession _instance;

  final TRes Function(Mutation$RemoveDiagnosticTestSession) _then;

  static const _undefined = {};

  TRes call({
    Object? removeDiagnosticTestSession = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RemoveDiagnosticTestSession(
        removeDiagnosticTestSession: removeDiagnosticTestSession ==
                    _undefined ||
                removeDiagnosticTestSession == null
            ? _instance.removeDiagnosticTestSession
            : (removeDiagnosticTestSession
                as Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession<
      TRes> get removeDiagnosticTestSession {
    final local$removeDiagnosticTestSession =
        _instance.removeDiagnosticTestSession;
    return CopyWith$Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession(
        local$removeDiagnosticTestSession,
        (e) => call(removeDiagnosticTestSession: e));
  }
}

class _CopyWithStubImpl$Mutation$RemoveDiagnosticTestSession<TRes>
    implements CopyWith$Mutation$RemoveDiagnosticTestSession<TRes> {
  _CopyWithStubImpl$Mutation$RemoveDiagnosticTestSession(this._res);

  TRes _res;

  call({
    Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession?
        removeDiagnosticTestSession,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession<
          TRes>
      get removeDiagnosticTestSession =>
          CopyWith$Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession
              .stub(_res);
}

const documentNodeMutationRemoveDiagnosticTestSession =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'RemoveDiagnosticTestSession'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'testId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'removeDiagnosticTestSession'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'testId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$RemoveDiagnosticTestSession
    _parserFn$Mutation$RemoveDiagnosticTestSession(Map<String, dynamic> data) =>
        Mutation$RemoveDiagnosticTestSession.fromJson(data);
typedef OnMutationCompleted$Mutation$RemoveDiagnosticTestSession
    = FutureOr<void> Function(
  dynamic,
  Mutation$RemoveDiagnosticTestSession?,
);

class Options$Mutation$RemoveDiagnosticTestSession
    extends graphql.MutationOptions<Mutation$RemoveDiagnosticTestSession> {
  Options$Mutation$RemoveDiagnosticTestSession({
    String? operationName,
    required Variables$Mutation$RemoveDiagnosticTestSession variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$RemoveDiagnosticTestSession? onCompleted,
    graphql.OnMutationUpdate<Mutation$RemoveDiagnosticTestSession>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$RemoveDiagnosticTestSession(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationRemoveDiagnosticTestSession,
          parserFn: _parserFn$Mutation$RemoveDiagnosticTestSession,
        );

  final OnMutationCompleted$Mutation$RemoveDiagnosticTestSession?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$RemoveDiagnosticTestSession
    extends graphql.WatchQueryOptions<Mutation$RemoveDiagnosticTestSession> {
  WatchOptions$Mutation$RemoveDiagnosticTestSession({
    String? operationName,
    required Variables$Mutation$RemoveDiagnosticTestSession variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationRemoveDiagnosticTestSession,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$RemoveDiagnosticTestSession,
        );
}

extension ClientExtension$Mutation$RemoveDiagnosticTestSession
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$RemoveDiagnosticTestSession>>
      mutate$RemoveDiagnosticTestSession(
              Options$Mutation$RemoveDiagnosticTestSession options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$RemoveDiagnosticTestSession>
      watchMutation$RemoveDiagnosticTestSession(
              WatchOptions$Mutation$RemoveDiagnosticTestSession options) =>
          this.watchMutation(options);
}

class Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession {
  Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession({
    required this.id,
    required this.$__typename,
  });

  factory Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession
    on Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession {
  CopyWith$Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession<
          Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession>
      get copyWith =>
          CopyWith$Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession<
    TRes> {
  factory CopyWith$Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession(
    Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession instance,
    TRes Function(
            Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession)
        then,
  ) = _CopyWithImpl$Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession;

  factory CopyWith$Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession<
        TRes>
    implements
        CopyWith$Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession<
            TRes> {
  _CopyWithImpl$Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession(
    this._instance,
    this._then,
  );

  final Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession
      _instance;

  final TRes Function(
      Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession<
        TRes>
    implements
        CopyWith$Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession<
            TRes> {
  _CopyWithStubImpl$Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetTopicsForClass {
  factory Variables$Query$GetTopicsForClass({required String classId}) =>
      Variables$Query$GetTopicsForClass._({
        r'classId': classId,
      });

  Variables$Query$GetTopicsForClass._(this._$data);

  factory Variables$Query$GetTopicsForClass.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    return Variables$Query$GetTopicsForClass._(result$data);
  }

  Map<String, dynamic> _$data;

  String get classId => (_$data['classId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$classId = classId;
    result$data['classId'] = l$classId;
    return result$data;
  }

  CopyWith$Variables$Query$GetTopicsForClass<Variables$Query$GetTopicsForClass>
      get copyWith => CopyWith$Variables$Query$GetTopicsForClass(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetTopicsForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classId = classId;
    final lOther$classId = other.classId;
    if (l$classId != lOther$classId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$classId = classId;
    return Object.hashAll([l$classId]);
  }
}

abstract class CopyWith$Variables$Query$GetTopicsForClass<TRes> {
  factory CopyWith$Variables$Query$GetTopicsForClass(
    Variables$Query$GetTopicsForClass instance,
    TRes Function(Variables$Query$GetTopicsForClass) then,
  ) = _CopyWithImpl$Variables$Query$GetTopicsForClass;

  factory CopyWith$Variables$Query$GetTopicsForClass.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetTopicsForClass;

  TRes call({String? classId});
}

class _CopyWithImpl$Variables$Query$GetTopicsForClass<TRes>
    implements CopyWith$Variables$Query$GetTopicsForClass<TRes> {
  _CopyWithImpl$Variables$Query$GetTopicsForClass(
    this._instance,
    this._then,
  );

  final Variables$Query$GetTopicsForClass _instance;

  final TRes Function(Variables$Query$GetTopicsForClass) _then;

  static const _undefined = {};

  TRes call({Object? classId = _undefined}) =>
      _then(Variables$Query$GetTopicsForClass._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetTopicsForClass<TRes>
    implements CopyWith$Variables$Query$GetTopicsForClass<TRes> {
  _CopyWithStubImpl$Variables$Query$GetTopicsForClass(this._res);

  TRes _res;

  call({String? classId}) => _res;
}

class Query$GetTopicsForClass {
  Query$GetTopicsForClass({
    required this.$class,
    required this.$__typename,
  });

  factory Query$GetTopicsForClass.fromJson(Map<String, dynamic> json) {
    final l$$class = json['class'];
    final l$$__typename = json['__typename'];
    return Query$GetTopicsForClass(
      $class: Query$GetTopicsForClass$class.fromJson(
          (l$$class as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTopicsForClass$class $class;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$class = $class;
    _resultData['class'] = l$$class.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$class = $class;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$$class,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTopicsForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$class = $class;
    final lOther$$class = other.$class;
    if (l$$class != lOther$$class) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetTopicsForClass on Query$GetTopicsForClass {
  CopyWith$Query$GetTopicsForClass<Query$GetTopicsForClass> get copyWith =>
      CopyWith$Query$GetTopicsForClass(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTopicsForClass<TRes> {
  factory CopyWith$Query$GetTopicsForClass(
    Query$GetTopicsForClass instance,
    TRes Function(Query$GetTopicsForClass) then,
  ) = _CopyWithImpl$Query$GetTopicsForClass;

  factory CopyWith$Query$GetTopicsForClass.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTopicsForClass;

  TRes call({
    Query$GetTopicsForClass$class? $class,
    String? $__typename,
  });
  CopyWith$Query$GetTopicsForClass$class<TRes> get $class;
}

class _CopyWithImpl$Query$GetTopicsForClass<TRes>
    implements CopyWith$Query$GetTopicsForClass<TRes> {
  _CopyWithImpl$Query$GetTopicsForClass(
    this._instance,
    this._then,
  );

  final Query$GetTopicsForClass _instance;

  final TRes Function(Query$GetTopicsForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? $class = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTopicsForClass(
        $class: $class == _undefined || $class == null
            ? _instance.$class
            : ($class as Query$GetTopicsForClass$class),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetTopicsForClass$class<TRes> get $class {
    final local$$class = _instance.$class;
    return CopyWith$Query$GetTopicsForClass$class(
        local$$class, (e) => call($class: e));
  }
}

class _CopyWithStubImpl$Query$GetTopicsForClass<TRes>
    implements CopyWith$Query$GetTopicsForClass<TRes> {
  _CopyWithStubImpl$Query$GetTopicsForClass(this._res);

  TRes _res;

  call({
    Query$GetTopicsForClass$class? $class,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetTopicsForClass$class<TRes> get $class =>
      CopyWith$Query$GetTopicsForClass$class.stub(_res);
}

const documentNodeQueryGetTopicsForClass = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetTopicsForClass'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'classId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'class'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'classId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'topicsForClass'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Topic'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionTopic,
]);
Query$GetTopicsForClass _parserFn$Query$GetTopicsForClass(
        Map<String, dynamic> data) =>
    Query$GetTopicsForClass.fromJson(data);

class Options$Query$GetTopicsForClass
    extends graphql.QueryOptions<Query$GetTopicsForClass> {
  Options$Query$GetTopicsForClass({
    String? operationName,
    required Variables$Query$GetTopicsForClass variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryGetTopicsForClass,
          parserFn: _parserFn$Query$GetTopicsForClass,
        );
}

class WatchOptions$Query$GetTopicsForClass
    extends graphql.WatchQueryOptions<Query$GetTopicsForClass> {
  WatchOptions$Query$GetTopicsForClass({
    String? operationName,
    required Variables$Query$GetTopicsForClass variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryGetTopicsForClass,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetTopicsForClass,
        );
}

class FetchMoreOptions$Query$GetTopicsForClass
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetTopicsForClass({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetTopicsForClass variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetTopicsForClass,
        );
}

extension ClientExtension$Query$GetTopicsForClass on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetTopicsForClass>> query$GetTopicsForClass(
          Options$Query$GetTopicsForClass options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetTopicsForClass> watchQuery$GetTopicsForClass(
          WatchOptions$Query$GetTopicsForClass options) =>
      this.watchQuery(options);
  void writeQuery$GetTopicsForClass({
    required Query$GetTopicsForClass data,
    required Variables$Query$GetTopicsForClass variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetTopicsForClass),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetTopicsForClass? readQuery$GetTopicsForClass({
    required Variables$Query$GetTopicsForClass variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetTopicsForClass),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetTopicsForClass.fromJson(result);
  }
}

class Query$GetTopicsForClass$class {
  Query$GetTopicsForClass$class({
    required this.topicsForClass,
    required this.$__typename,
  });

  factory Query$GetTopicsForClass$class.fromJson(Map<String, dynamic> json) {
    final l$topicsForClass = json['topicsForClass'];
    final l$$__typename = json['__typename'];
    return Query$GetTopicsForClass$class(
      topicsForClass: (l$topicsForClass as List<dynamic>)
          .map((e) => Fragment$Topic.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Topic> topicsForClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$topicsForClass = topicsForClass;
    _resultData['topicsForClass'] =
        l$topicsForClass.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$topicsForClass = topicsForClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$topicsForClass.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTopicsForClass$class) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$topicsForClass = topicsForClass;
    final lOther$topicsForClass = other.topicsForClass;
    if (l$topicsForClass.length != lOther$topicsForClass.length) {
      return false;
    }
    for (int i = 0; i < l$topicsForClass.length; i++) {
      final l$topicsForClass$entry = l$topicsForClass[i];
      final lOther$topicsForClass$entry = lOther$topicsForClass[i];
      if (l$topicsForClass$entry != lOther$topicsForClass$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetTopicsForClass$class
    on Query$GetTopicsForClass$class {
  CopyWith$Query$GetTopicsForClass$class<Query$GetTopicsForClass$class>
      get copyWith => CopyWith$Query$GetTopicsForClass$class(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTopicsForClass$class<TRes> {
  factory CopyWith$Query$GetTopicsForClass$class(
    Query$GetTopicsForClass$class instance,
    TRes Function(Query$GetTopicsForClass$class) then,
  ) = _CopyWithImpl$Query$GetTopicsForClass$class;

  factory CopyWith$Query$GetTopicsForClass$class.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTopicsForClass$class;

  TRes call({
    List<Fragment$Topic>? topicsForClass,
    String? $__typename,
  });
  TRes topicsForClass(
      Iterable<Fragment$Topic> Function(
              Iterable<CopyWith$Fragment$Topic<Fragment$Topic>>)
          _fn);
}

class _CopyWithImpl$Query$GetTopicsForClass$class<TRes>
    implements CopyWith$Query$GetTopicsForClass$class<TRes> {
  _CopyWithImpl$Query$GetTopicsForClass$class(
    this._instance,
    this._then,
  );

  final Query$GetTopicsForClass$class _instance;

  final TRes Function(Query$GetTopicsForClass$class) _then;

  static const _undefined = {};

  TRes call({
    Object? topicsForClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTopicsForClass$class(
        topicsForClass: topicsForClass == _undefined || topicsForClass == null
            ? _instance.topicsForClass
            : (topicsForClass as List<Fragment$Topic>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes topicsForClass(
          Iterable<Fragment$Topic> Function(
                  Iterable<CopyWith$Fragment$Topic<Fragment$Topic>>)
              _fn) =>
      call(
          topicsForClass:
              _fn(_instance.topicsForClass.map((e) => CopyWith$Fragment$Topic(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetTopicsForClass$class<TRes>
    implements CopyWith$Query$GetTopicsForClass$class<TRes> {
  _CopyWithStubImpl$Query$GetTopicsForClass$class(this._res);

  TRes _res;

  call({
    List<Fragment$Topic>? topicsForClass,
    String? $__typename,
  }) =>
      _res;
  topicsForClass(_fn) => _res;
}

class Variables$Query$GetSubtopicsForClass {
  factory Variables$Query$GetSubtopicsForClass({
    required String classId,
    required String topicId,
  }) =>
      Variables$Query$GetSubtopicsForClass._({
        r'classId': classId,
        r'topicId': topicId,
      });

  Variables$Query$GetSubtopicsForClass._(this._$data);

  factory Variables$Query$GetSubtopicsForClass.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    final l$topicId = data['topicId'];
    result$data['topicId'] = (l$topicId as String);
    return Variables$Query$GetSubtopicsForClass._(result$data);
  }

  Map<String, dynamic> _$data;

  String get classId => (_$data['classId'] as String);
  String get topicId => (_$data['topicId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$classId = classId;
    result$data['classId'] = l$classId;
    final l$topicId = topicId;
    result$data['topicId'] = l$topicId;
    return result$data;
  }

  CopyWith$Variables$Query$GetSubtopicsForClass<
          Variables$Query$GetSubtopicsForClass>
      get copyWith => CopyWith$Variables$Query$GetSubtopicsForClass(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetSubtopicsForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classId = classId;
    final lOther$classId = other.classId;
    if (l$classId != lOther$classId) {
      return false;
    }
    final l$topicId = topicId;
    final lOther$topicId = other.topicId;
    if (l$topicId != lOther$topicId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$classId = classId;
    final l$topicId = topicId;
    return Object.hashAll([
      l$classId,
      l$topicId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetSubtopicsForClass<TRes> {
  factory CopyWith$Variables$Query$GetSubtopicsForClass(
    Variables$Query$GetSubtopicsForClass instance,
    TRes Function(Variables$Query$GetSubtopicsForClass) then,
  ) = _CopyWithImpl$Variables$Query$GetSubtopicsForClass;

  factory CopyWith$Variables$Query$GetSubtopicsForClass.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetSubtopicsForClass;

  TRes call({
    String? classId,
    String? topicId,
  });
}

class _CopyWithImpl$Variables$Query$GetSubtopicsForClass<TRes>
    implements CopyWith$Variables$Query$GetSubtopicsForClass<TRes> {
  _CopyWithImpl$Variables$Query$GetSubtopicsForClass(
    this._instance,
    this._then,
  );

  final Variables$Query$GetSubtopicsForClass _instance;

  final TRes Function(Variables$Query$GetSubtopicsForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? classId = _undefined,
    Object? topicId = _undefined,
  }) =>
      _then(Variables$Query$GetSubtopicsForClass._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
        if (topicId != _undefined && topicId != null)
          'topicId': (topicId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetSubtopicsForClass<TRes>
    implements CopyWith$Variables$Query$GetSubtopicsForClass<TRes> {
  _CopyWithStubImpl$Variables$Query$GetSubtopicsForClass(this._res);

  TRes _res;

  call({
    String? classId,
    String? topicId,
  }) =>
      _res;
}

class Query$GetSubtopicsForClass {
  Query$GetSubtopicsForClass({
    required this.topicForClass,
    required this.$__typename,
  });

  factory Query$GetSubtopicsForClass.fromJson(Map<String, dynamic> json) {
    final l$topicForClass = json['topicForClass'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopicsForClass(
      topicForClass: Query$GetSubtopicsForClass$topicForClass.fromJson(
          (l$topicForClass as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSubtopicsForClass$topicForClass topicForClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$topicForClass = topicForClass;
    _resultData['topicForClass'] = l$topicForClass.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$topicForClass = topicForClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$topicForClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSubtopicsForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$topicForClass = topicForClass;
    final lOther$topicForClass = other.topicForClass;
    if (l$topicForClass != lOther$topicForClass) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetSubtopicsForClass
    on Query$GetSubtopicsForClass {
  CopyWith$Query$GetSubtopicsForClass<Query$GetSubtopicsForClass>
      get copyWith => CopyWith$Query$GetSubtopicsForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSubtopicsForClass<TRes> {
  factory CopyWith$Query$GetSubtopicsForClass(
    Query$GetSubtopicsForClass instance,
    TRes Function(Query$GetSubtopicsForClass) then,
  ) = _CopyWithImpl$Query$GetSubtopicsForClass;

  factory CopyWith$Query$GetSubtopicsForClass.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSubtopicsForClass;

  TRes call({
    Query$GetSubtopicsForClass$topicForClass? topicForClass,
    String? $__typename,
  });
  CopyWith$Query$GetSubtopicsForClass$topicForClass<TRes> get topicForClass;
}

class _CopyWithImpl$Query$GetSubtopicsForClass<TRes>
    implements CopyWith$Query$GetSubtopicsForClass<TRes> {
  _CopyWithImpl$Query$GetSubtopicsForClass(
    this._instance,
    this._then,
  );

  final Query$GetSubtopicsForClass _instance;

  final TRes Function(Query$GetSubtopicsForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? topicForClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSubtopicsForClass(
        topicForClass: topicForClass == _undefined || topicForClass == null
            ? _instance.topicForClass
            : (topicForClass as Query$GetSubtopicsForClass$topicForClass),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetSubtopicsForClass$topicForClass<TRes> get topicForClass {
    final local$topicForClass = _instance.topicForClass;
    return CopyWith$Query$GetSubtopicsForClass$topicForClass(
        local$topicForClass, (e) => call(topicForClass: e));
  }
}

class _CopyWithStubImpl$Query$GetSubtopicsForClass<TRes>
    implements CopyWith$Query$GetSubtopicsForClass<TRes> {
  _CopyWithStubImpl$Query$GetSubtopicsForClass(this._res);

  TRes _res;

  call({
    Query$GetSubtopicsForClass$topicForClass? topicForClass,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetSubtopicsForClass$topicForClass<TRes> get topicForClass =>
      CopyWith$Query$GetSubtopicsForClass$topicForClass.stub(_res);
}

const documentNodeQueryGetSubtopicsForClass = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetSubtopicsForClass'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'classId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'topicId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'topic'),
        alias: NameNode(value: 'topicForClass'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'topicId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'subtopicsForClass'),
            alias: NameNode(value: 'classSubtopics'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'classId')),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Subtopic'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionSubtopic,
]);
Query$GetSubtopicsForClass _parserFn$Query$GetSubtopicsForClass(
        Map<String, dynamic> data) =>
    Query$GetSubtopicsForClass.fromJson(data);

class Options$Query$GetSubtopicsForClass
    extends graphql.QueryOptions<Query$GetSubtopicsForClass> {
  Options$Query$GetSubtopicsForClass({
    String? operationName,
    required Variables$Query$GetSubtopicsForClass variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryGetSubtopicsForClass,
          parserFn: _parserFn$Query$GetSubtopicsForClass,
        );
}

class WatchOptions$Query$GetSubtopicsForClass
    extends graphql.WatchQueryOptions<Query$GetSubtopicsForClass> {
  WatchOptions$Query$GetSubtopicsForClass({
    String? operationName,
    required Variables$Query$GetSubtopicsForClass variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryGetSubtopicsForClass,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetSubtopicsForClass,
        );
}

class FetchMoreOptions$Query$GetSubtopicsForClass
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetSubtopicsForClass({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetSubtopicsForClass variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetSubtopicsForClass,
        );
}

extension ClientExtension$Query$GetSubtopicsForClass on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetSubtopicsForClass>>
      query$GetSubtopicsForClass(
              Options$Query$GetSubtopicsForClass options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetSubtopicsForClass>
      watchQuery$GetSubtopicsForClass(
              WatchOptions$Query$GetSubtopicsForClass options) =>
          this.watchQuery(options);
  void writeQuery$GetSubtopicsForClass({
    required Query$GetSubtopicsForClass data,
    required Variables$Query$GetSubtopicsForClass variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetSubtopicsForClass),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetSubtopicsForClass? readQuery$GetSubtopicsForClass({
    required Variables$Query$GetSubtopicsForClass variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetSubtopicsForClass),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetSubtopicsForClass.fromJson(result);
  }
}

class Query$GetSubtopicsForClass$topicForClass {
  Query$GetSubtopicsForClass$topicForClass({
    required this.classSubtopics,
    required this.$__typename,
  });

  factory Query$GetSubtopicsForClass$topicForClass.fromJson(
      Map<String, dynamic> json) {
    final l$classSubtopics = json['classSubtopics'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopicsForClass$topicForClass(
      classSubtopics: (l$classSubtopics as List<dynamic>)
          .map((e) => Fragment$Subtopic.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Subtopic> classSubtopics;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$classSubtopics = classSubtopics;
    _resultData['classSubtopics'] =
        l$classSubtopics.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$classSubtopics = classSubtopics;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$classSubtopics.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSubtopicsForClass$topicForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classSubtopics = classSubtopics;
    final lOther$classSubtopics = other.classSubtopics;
    if (l$classSubtopics.length != lOther$classSubtopics.length) {
      return false;
    }
    for (int i = 0; i < l$classSubtopics.length; i++) {
      final l$classSubtopics$entry = l$classSubtopics[i];
      final lOther$classSubtopics$entry = lOther$classSubtopics[i];
      if (l$classSubtopics$entry != lOther$classSubtopics$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetSubtopicsForClass$topicForClass
    on Query$GetSubtopicsForClass$topicForClass {
  CopyWith$Query$GetSubtopicsForClass$topicForClass<
          Query$GetSubtopicsForClass$topicForClass>
      get copyWith => CopyWith$Query$GetSubtopicsForClass$topicForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSubtopicsForClass$topicForClass<TRes> {
  factory CopyWith$Query$GetSubtopicsForClass$topicForClass(
    Query$GetSubtopicsForClass$topicForClass instance,
    TRes Function(Query$GetSubtopicsForClass$topicForClass) then,
  ) = _CopyWithImpl$Query$GetSubtopicsForClass$topicForClass;

  factory CopyWith$Query$GetSubtopicsForClass$topicForClass.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSubtopicsForClass$topicForClass;

  TRes call({
    List<Fragment$Subtopic>? classSubtopics,
    String? $__typename,
  });
  TRes classSubtopics(
      Iterable<Fragment$Subtopic> Function(
              Iterable<CopyWith$Fragment$Subtopic<Fragment$Subtopic>>)
          _fn);
}

class _CopyWithImpl$Query$GetSubtopicsForClass$topicForClass<TRes>
    implements CopyWith$Query$GetSubtopicsForClass$topicForClass<TRes> {
  _CopyWithImpl$Query$GetSubtopicsForClass$topicForClass(
    this._instance,
    this._then,
  );

  final Query$GetSubtopicsForClass$topicForClass _instance;

  final TRes Function(Query$GetSubtopicsForClass$topicForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? classSubtopics = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSubtopicsForClass$topicForClass(
        classSubtopics: classSubtopics == _undefined || classSubtopics == null
            ? _instance.classSubtopics
            : (classSubtopics as List<Fragment$Subtopic>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes classSubtopics(
          Iterable<Fragment$Subtopic> Function(
                  Iterable<CopyWith$Fragment$Subtopic<Fragment$Subtopic>>)
              _fn) =>
      call(
          classSubtopics: _fn(
              _instance.classSubtopics.map((e) => CopyWith$Fragment$Subtopic(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetSubtopicsForClass$topicForClass<TRes>
    implements CopyWith$Query$GetSubtopicsForClass$topicForClass<TRes> {
  _CopyWithStubImpl$Query$GetSubtopicsForClass$topicForClass(this._res);

  TRes _res;

  call({
    List<Fragment$Subtopic>? classSubtopics,
    String? $__typename,
  }) =>
      _res;
  classSubtopics(_fn) => _res;
}

class Variables$Query$DiagnosticTestSessionState {
  factory Variables$Query$DiagnosticTestSessionState(
          {required String diagnosticTestSessionId}) =>
      Variables$Query$DiagnosticTestSessionState._({
        r'diagnosticTestSessionId': diagnosticTestSessionId,
      });

  Variables$Query$DiagnosticTestSessionState._(this._$data);

  factory Variables$Query$DiagnosticTestSessionState.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$diagnosticTestSessionId = data['diagnosticTestSessionId'];
    result$data['diagnosticTestSessionId'] =
        (l$diagnosticTestSessionId as String);
    return Variables$Query$DiagnosticTestSessionState._(result$data);
  }

  Map<String, dynamic> _$data;

  String get diagnosticTestSessionId =>
      (_$data['diagnosticTestSessionId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$diagnosticTestSessionId = diagnosticTestSessionId;
    result$data['diagnosticTestSessionId'] = l$diagnosticTestSessionId;
    return result$data;
  }

  CopyWith$Variables$Query$DiagnosticTestSessionState<
          Variables$Query$DiagnosticTestSessionState>
      get copyWith => CopyWith$Variables$Query$DiagnosticTestSessionState(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$DiagnosticTestSessionState) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$diagnosticTestSessionId = diagnosticTestSessionId;
    final lOther$diagnosticTestSessionId = other.diagnosticTestSessionId;
    if (l$diagnosticTestSessionId != lOther$diagnosticTestSessionId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$diagnosticTestSessionId = diagnosticTestSessionId;
    return Object.hashAll([l$diagnosticTestSessionId]);
  }
}

abstract class CopyWith$Variables$Query$DiagnosticTestSessionState<TRes> {
  factory CopyWith$Variables$Query$DiagnosticTestSessionState(
    Variables$Query$DiagnosticTestSessionState instance,
    TRes Function(Variables$Query$DiagnosticTestSessionState) then,
  ) = _CopyWithImpl$Variables$Query$DiagnosticTestSessionState;

  factory CopyWith$Variables$Query$DiagnosticTestSessionState.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$DiagnosticTestSessionState;

  TRes call({String? diagnosticTestSessionId});
}

class _CopyWithImpl$Variables$Query$DiagnosticTestSessionState<TRes>
    implements CopyWith$Variables$Query$DiagnosticTestSessionState<TRes> {
  _CopyWithImpl$Variables$Query$DiagnosticTestSessionState(
    this._instance,
    this._then,
  );

  final Variables$Query$DiagnosticTestSessionState _instance;

  final TRes Function(Variables$Query$DiagnosticTestSessionState) _then;

  static const _undefined = {};

  TRes call({Object? diagnosticTestSessionId = _undefined}) =>
      _then(Variables$Query$DiagnosticTestSessionState._({
        ..._instance._$data,
        if (diagnosticTestSessionId != _undefined &&
            diagnosticTestSessionId != null)
          'diagnosticTestSessionId': (diagnosticTestSessionId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$DiagnosticTestSessionState<TRes>
    implements CopyWith$Variables$Query$DiagnosticTestSessionState<TRes> {
  _CopyWithStubImpl$Variables$Query$DiagnosticTestSessionState(this._res);

  TRes _res;

  call({String? diagnosticTestSessionId}) => _res;
}

class Query$DiagnosticTestSessionState {
  Query$DiagnosticTestSessionState({
    required this.assessmentState,
    required this.$__typename,
  });

  factory Query$DiagnosticTestSessionState.fromJson(Map<String, dynamic> json) {
    final l$assessmentState = json['assessmentState'];
    final l$$__typename = json['__typename'];
    return Query$DiagnosticTestSessionState(
      assessmentState:
          Query$DiagnosticTestSessionState$assessmentState.fromJson(
              (l$assessmentState as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$DiagnosticTestSessionState$assessmentState assessmentState;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$assessmentState = assessmentState;
    _resultData['assessmentState'] = l$assessmentState.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$assessmentState = assessmentState;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$assessmentState,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$DiagnosticTestSessionState) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$assessmentState = assessmentState;
    final lOther$assessmentState = other.assessmentState;
    if (l$assessmentState != lOther$assessmentState) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$DiagnosticTestSessionState
    on Query$DiagnosticTestSessionState {
  CopyWith$Query$DiagnosticTestSessionState<Query$DiagnosticTestSessionState>
      get copyWith => CopyWith$Query$DiagnosticTestSessionState(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$DiagnosticTestSessionState<TRes> {
  factory CopyWith$Query$DiagnosticTestSessionState(
    Query$DiagnosticTestSessionState instance,
    TRes Function(Query$DiagnosticTestSessionState) then,
  ) = _CopyWithImpl$Query$DiagnosticTestSessionState;

  factory CopyWith$Query$DiagnosticTestSessionState.stub(TRes res) =
      _CopyWithStubImpl$Query$DiagnosticTestSessionState;

  TRes call({
    Query$DiagnosticTestSessionState$assessmentState? assessmentState,
    String? $__typename,
  });
  CopyWith$Query$DiagnosticTestSessionState$assessmentState<TRes>
      get assessmentState;
}

class _CopyWithImpl$Query$DiagnosticTestSessionState<TRes>
    implements CopyWith$Query$DiagnosticTestSessionState<TRes> {
  _CopyWithImpl$Query$DiagnosticTestSessionState(
    this._instance,
    this._then,
  );

  final Query$DiagnosticTestSessionState _instance;

  final TRes Function(Query$DiagnosticTestSessionState) _then;

  static const _undefined = {};

  TRes call({
    Object? assessmentState = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DiagnosticTestSessionState(
        assessmentState:
            assessmentState == _undefined || assessmentState == null
                ? _instance.assessmentState
                : (assessmentState
                    as Query$DiagnosticTestSessionState$assessmentState),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$DiagnosticTestSessionState$assessmentState<TRes>
      get assessmentState {
    final local$assessmentState = _instance.assessmentState;
    return CopyWith$Query$DiagnosticTestSessionState$assessmentState(
        local$assessmentState, (e) => call(assessmentState: e));
  }
}

class _CopyWithStubImpl$Query$DiagnosticTestSessionState<TRes>
    implements CopyWith$Query$DiagnosticTestSessionState<TRes> {
  _CopyWithStubImpl$Query$DiagnosticTestSessionState(this._res);

  TRes _res;

  call({
    Query$DiagnosticTestSessionState$assessmentState? assessmentState,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$DiagnosticTestSessionState$assessmentState<TRes>
      get assessmentState =>
          CopyWith$Query$DiagnosticTestSessionState$assessmentState.stub(_res);
}

const documentNodeQueryDiagnosticTestSessionState = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'DiagnosticTestSessionState'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable:
            VariableNode(name: NameNode(value: 'diagnosticTestSessionId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'diagnosticTestSession'),
        alias: NameNode(value: 'assessmentState'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value:
                VariableNode(name: NameNode(value: 'diagnosticTestSessionId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'status'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$DiagnosticTestSessionState _parserFn$Query$DiagnosticTestSessionState(
        Map<String, dynamic> data) =>
    Query$DiagnosticTestSessionState.fromJson(data);

class Options$Query$DiagnosticTestSessionState
    extends graphql.QueryOptions<Query$DiagnosticTestSessionState> {
  Options$Query$DiagnosticTestSessionState({
    String? operationName,
    required Variables$Query$DiagnosticTestSessionState variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryDiagnosticTestSessionState,
          parserFn: _parserFn$Query$DiagnosticTestSessionState,
        );
}

class WatchOptions$Query$DiagnosticTestSessionState
    extends graphql.WatchQueryOptions<Query$DiagnosticTestSessionState> {
  WatchOptions$Query$DiagnosticTestSessionState({
    String? operationName,
    required Variables$Query$DiagnosticTestSessionState variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryDiagnosticTestSessionState,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$DiagnosticTestSessionState,
        );
}

class FetchMoreOptions$Query$DiagnosticTestSessionState
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$DiagnosticTestSessionState({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$DiagnosticTestSessionState variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryDiagnosticTestSessionState,
        );
}

extension ClientExtension$Query$DiagnosticTestSessionState
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$DiagnosticTestSessionState>>
      query$DiagnosticTestSessionState(
              Options$Query$DiagnosticTestSessionState options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$DiagnosticTestSessionState>
      watchQuery$DiagnosticTestSessionState(
              WatchOptions$Query$DiagnosticTestSessionState options) =>
          this.watchQuery(options);
  void writeQuery$DiagnosticTestSessionState({
    required Query$DiagnosticTestSessionState data,
    required Variables$Query$DiagnosticTestSessionState variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryDiagnosticTestSessionState),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$DiagnosticTestSessionState? readQuery$DiagnosticTestSessionState({
    required Variables$Query$DiagnosticTestSessionState variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryDiagnosticTestSessionState),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$DiagnosticTestSessionState.fromJson(result);
  }
}

class Query$DiagnosticTestSessionState$assessmentState {
  Query$DiagnosticTestSessionState$assessmentState({
    required this.status,
    required this.$__typename,
  });

  factory Query$DiagnosticTestSessionState$assessmentState.fromJson(
      Map<String, dynamic> json) {
    final l$status = json['status'];
    final l$$__typename = json['__typename'];
    return Query$DiagnosticTestSessionState$assessmentState(
      status: fromJson$Enum$DiagnosticTestSessionStatus((l$status as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$DiagnosticTestSessionStatus status;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status = status;
    _resultData['status'] = toJson$Enum$DiagnosticTestSessionStatus(l$status);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$status,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$DiagnosticTestSessionState$assessmentState) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$DiagnosticTestSessionState$assessmentState
    on Query$DiagnosticTestSessionState$assessmentState {
  CopyWith$Query$DiagnosticTestSessionState$assessmentState<
          Query$DiagnosticTestSessionState$assessmentState>
      get copyWith => CopyWith$Query$DiagnosticTestSessionState$assessmentState(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$DiagnosticTestSessionState$assessmentState<TRes> {
  factory CopyWith$Query$DiagnosticTestSessionState$assessmentState(
    Query$DiagnosticTestSessionState$assessmentState instance,
    TRes Function(Query$DiagnosticTestSessionState$assessmentState) then,
  ) = _CopyWithImpl$Query$DiagnosticTestSessionState$assessmentState;

  factory CopyWith$Query$DiagnosticTestSessionState$assessmentState.stub(
          TRes res) =
      _CopyWithStubImpl$Query$DiagnosticTestSessionState$assessmentState;

  TRes call({
    Enum$DiagnosticTestSessionStatus? status,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$DiagnosticTestSessionState$assessmentState<TRes>
    implements CopyWith$Query$DiagnosticTestSessionState$assessmentState<TRes> {
  _CopyWithImpl$Query$DiagnosticTestSessionState$assessmentState(
    this._instance,
    this._then,
  );

  final Query$DiagnosticTestSessionState$assessmentState _instance;

  final TRes Function(Query$DiagnosticTestSessionState$assessmentState) _then;

  static const _undefined = {};

  TRes call({
    Object? status = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DiagnosticTestSessionState$assessmentState(
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$DiagnosticTestSessionStatus),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$DiagnosticTestSessionState$assessmentState<TRes>
    implements CopyWith$Query$DiagnosticTestSessionState$assessmentState<TRes> {
  _CopyWithStubImpl$Query$DiagnosticTestSessionState$assessmentState(this._res);

  TRes _res;

  call({
    Enum$DiagnosticTestSessionStatus? status,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetFinishedDiagnosticTestSession {
  factory Variables$Query$GetFinishedDiagnosticTestSession(
          {required String diagnosticTestSessionId}) =>
      Variables$Query$GetFinishedDiagnosticTestSession._({
        r'diagnosticTestSessionId': diagnosticTestSessionId,
      });

  Variables$Query$GetFinishedDiagnosticTestSession._(this._$data);

  factory Variables$Query$GetFinishedDiagnosticTestSession.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$diagnosticTestSessionId = data['diagnosticTestSessionId'];
    result$data['diagnosticTestSessionId'] =
        (l$diagnosticTestSessionId as String);
    return Variables$Query$GetFinishedDiagnosticTestSession._(result$data);
  }

  Map<String, dynamic> _$data;

  String get diagnosticTestSessionId =>
      (_$data['diagnosticTestSessionId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$diagnosticTestSessionId = diagnosticTestSessionId;
    result$data['diagnosticTestSessionId'] = l$diagnosticTestSessionId;
    return result$data;
  }

  CopyWith$Variables$Query$GetFinishedDiagnosticTestSession<
          Variables$Query$GetFinishedDiagnosticTestSession>
      get copyWith => CopyWith$Variables$Query$GetFinishedDiagnosticTestSession(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetFinishedDiagnosticTestSession) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$diagnosticTestSessionId = diagnosticTestSessionId;
    final lOther$diagnosticTestSessionId = other.diagnosticTestSessionId;
    if (l$diagnosticTestSessionId != lOther$diagnosticTestSessionId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$diagnosticTestSessionId = diagnosticTestSessionId;
    return Object.hashAll([l$diagnosticTestSessionId]);
  }
}

abstract class CopyWith$Variables$Query$GetFinishedDiagnosticTestSession<TRes> {
  factory CopyWith$Variables$Query$GetFinishedDiagnosticTestSession(
    Variables$Query$GetFinishedDiagnosticTestSession instance,
    TRes Function(Variables$Query$GetFinishedDiagnosticTestSession) then,
  ) = _CopyWithImpl$Variables$Query$GetFinishedDiagnosticTestSession;

  factory CopyWith$Variables$Query$GetFinishedDiagnosticTestSession.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Query$GetFinishedDiagnosticTestSession;

  TRes call({String? diagnosticTestSessionId});
}

class _CopyWithImpl$Variables$Query$GetFinishedDiagnosticTestSession<TRes>
    implements CopyWith$Variables$Query$GetFinishedDiagnosticTestSession<TRes> {
  _CopyWithImpl$Variables$Query$GetFinishedDiagnosticTestSession(
    this._instance,
    this._then,
  );

  final Variables$Query$GetFinishedDiagnosticTestSession _instance;

  final TRes Function(Variables$Query$GetFinishedDiagnosticTestSession) _then;

  static const _undefined = {};

  TRes call({Object? diagnosticTestSessionId = _undefined}) =>
      _then(Variables$Query$GetFinishedDiagnosticTestSession._({
        ..._instance._$data,
        if (diagnosticTestSessionId != _undefined &&
            diagnosticTestSessionId != null)
          'diagnosticTestSessionId': (diagnosticTestSessionId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetFinishedDiagnosticTestSession<TRes>
    implements CopyWith$Variables$Query$GetFinishedDiagnosticTestSession<TRes> {
  _CopyWithStubImpl$Variables$Query$GetFinishedDiagnosticTestSession(this._res);

  TRes _res;

  call({String? diagnosticTestSessionId}) => _res;
}

class Query$GetFinishedDiagnosticTestSession {
  Query$GetFinishedDiagnosticTestSession({
    required this.finishedSession,
    required this.$__typename,
  });

  factory Query$GetFinishedDiagnosticTestSession.fromJson(
      Map<String, dynamic> json) {
    final l$finishedSession = json['finishedSession'];
    final l$$__typename = json['__typename'];
    return Query$GetFinishedDiagnosticTestSession(
      finishedSession:
          Query$GetFinishedDiagnosticTestSession$finishedSession.fromJson(
              (l$finishedSession as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetFinishedDiagnosticTestSession$finishedSession finishedSession;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$finishedSession = finishedSession;
    _resultData['finishedSession'] = l$finishedSession.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$finishedSession = finishedSession;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$finishedSession,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetFinishedDiagnosticTestSession) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$finishedSession = finishedSession;
    final lOther$finishedSession = other.finishedSession;
    if (l$finishedSession != lOther$finishedSession) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetFinishedDiagnosticTestSession
    on Query$GetFinishedDiagnosticTestSession {
  CopyWith$Query$GetFinishedDiagnosticTestSession<
          Query$GetFinishedDiagnosticTestSession>
      get copyWith => CopyWith$Query$GetFinishedDiagnosticTestSession(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFinishedDiagnosticTestSession<TRes> {
  factory CopyWith$Query$GetFinishedDiagnosticTestSession(
    Query$GetFinishedDiagnosticTestSession instance,
    TRes Function(Query$GetFinishedDiagnosticTestSession) then,
  ) = _CopyWithImpl$Query$GetFinishedDiagnosticTestSession;

  factory CopyWith$Query$GetFinishedDiagnosticTestSession.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFinishedDiagnosticTestSession;

  TRes call({
    Query$GetFinishedDiagnosticTestSession$finishedSession? finishedSession,
    String? $__typename,
  });
  CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession<TRes>
      get finishedSession;
}

class _CopyWithImpl$Query$GetFinishedDiagnosticTestSession<TRes>
    implements CopyWith$Query$GetFinishedDiagnosticTestSession<TRes> {
  _CopyWithImpl$Query$GetFinishedDiagnosticTestSession(
    this._instance,
    this._then,
  );

  final Query$GetFinishedDiagnosticTestSession _instance;

  final TRes Function(Query$GetFinishedDiagnosticTestSession) _then;

  static const _undefined = {};

  TRes call({
    Object? finishedSession = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetFinishedDiagnosticTestSession(
        finishedSession:
            finishedSession == _undefined || finishedSession == null
                ? _instance.finishedSession
                : (finishedSession
                    as Query$GetFinishedDiagnosticTestSession$finishedSession),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession<TRes>
      get finishedSession {
    final local$finishedSession = _instance.finishedSession;
    return CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession(
        local$finishedSession, (e) => call(finishedSession: e));
  }
}

class _CopyWithStubImpl$Query$GetFinishedDiagnosticTestSession<TRes>
    implements CopyWith$Query$GetFinishedDiagnosticTestSession<TRes> {
  _CopyWithStubImpl$Query$GetFinishedDiagnosticTestSession(this._res);

  TRes _res;

  call({
    Query$GetFinishedDiagnosticTestSession$finishedSession? finishedSession,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession<TRes>
      get finishedSession =>
          CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession.stub(
              _res);
}

const documentNodeQueryGetFinishedDiagnosticTestSession =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetFinishedDiagnosticTestSession'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable:
            VariableNode(name: NameNode(value: 'diagnosticTestSessionId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'diagnosticTestSession'),
        alias: NameNode(value: 'finishedSession'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value:
                VariableNode(name: NameNode(value: 'diagnosticTestSessionId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'timeSaved'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'topic'),
            alias: NameNode(value: 'finishedSessionTopic'),
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'title'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'emoji'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'initialProgress'),
            alias: NameNode(value: 'finishedSessionInitialProgress'),
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'correct'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'wrong'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'finalProgress'),
            alias: NameNode(value: 'finishedSessionFinalProgress'),
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'correct'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'wrong'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$GetFinishedDiagnosticTestSession
    _parserFn$Query$GetFinishedDiagnosticTestSession(
            Map<String, dynamic> data) =>
        Query$GetFinishedDiagnosticTestSession.fromJson(data);

class Options$Query$GetFinishedDiagnosticTestSession
    extends graphql.QueryOptions<Query$GetFinishedDiagnosticTestSession> {
  Options$Query$GetFinishedDiagnosticTestSession({
    String? operationName,
    required Variables$Query$GetFinishedDiagnosticTestSession variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryGetFinishedDiagnosticTestSession,
          parserFn: _parserFn$Query$GetFinishedDiagnosticTestSession,
        );
}

class WatchOptions$Query$GetFinishedDiagnosticTestSession
    extends graphql.WatchQueryOptions<Query$GetFinishedDiagnosticTestSession> {
  WatchOptions$Query$GetFinishedDiagnosticTestSession({
    String? operationName,
    required Variables$Query$GetFinishedDiagnosticTestSession variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryGetFinishedDiagnosticTestSession,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetFinishedDiagnosticTestSession,
        );
}

class FetchMoreOptions$Query$GetFinishedDiagnosticTestSession
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetFinishedDiagnosticTestSession({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetFinishedDiagnosticTestSession variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetFinishedDiagnosticTestSession,
        );
}

extension ClientExtension$Query$GetFinishedDiagnosticTestSession
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetFinishedDiagnosticTestSession>>
      query$GetFinishedDiagnosticTestSession(
              Options$Query$GetFinishedDiagnosticTestSession options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetFinishedDiagnosticTestSession>
      watchQuery$GetFinishedDiagnosticTestSession(
              WatchOptions$Query$GetFinishedDiagnosticTestSession options) =>
          this.watchQuery(options);
  void writeQuery$GetFinishedDiagnosticTestSession({
    required Query$GetFinishedDiagnosticTestSession data,
    required Variables$Query$GetFinishedDiagnosticTestSession variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetFinishedDiagnosticTestSession),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetFinishedDiagnosticTestSession?
      readQuery$GetFinishedDiagnosticTestSession({
    required Variables$Query$GetFinishedDiagnosticTestSession variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetFinishedDiagnosticTestSession),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetFinishedDiagnosticTestSession.fromJson(result);
  }
}

class Query$GetFinishedDiagnosticTestSession$finishedSession {
  Query$GetFinishedDiagnosticTestSession$finishedSession({
    required this.id,
    required this.timeSaved,
    required this.finishedSessionTopic,
    this.finishedSessionInitialProgress,
    this.finishedSessionFinalProgress,
    required this.$__typename,
  });

  factory Query$GetFinishedDiagnosticTestSession$finishedSession.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$timeSaved = json['timeSaved'];
    final l$finishedSessionTopic = json['finishedSessionTopic'];
    final l$finishedSessionInitialProgress =
        json['finishedSessionInitialProgress'];
    final l$finishedSessionFinalProgress = json['finishedSessionFinalProgress'];
    final l$$__typename = json['__typename'];
    return Query$GetFinishedDiagnosticTestSession$finishedSession(
      id: (l$id as String),
      timeSaved: durationFromNanoseconds(l$timeSaved),
      finishedSessionTopic:
          Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic
              .fromJson((l$finishedSessionTopic as Map<String, dynamic>)),
      finishedSessionInitialProgress: l$finishedSessionInitialProgress == null
          ? null
          : Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress
              .fromJson(
                  (l$finishedSessionInitialProgress as Map<String, dynamic>)),
      finishedSessionFinalProgress: l$finishedSessionFinalProgress == null
          ? null
          : Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress
              .fromJson(
                  (l$finishedSessionFinalProgress as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Duration timeSaved;

  final Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic
      finishedSessionTopic;

  final Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress?
      finishedSessionInitialProgress;

  final Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress?
      finishedSessionFinalProgress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$timeSaved = timeSaved;
    _resultData['timeSaved'] = durationToNanoseconds(l$timeSaved);
    final l$finishedSessionTopic = finishedSessionTopic;
    _resultData['finishedSessionTopic'] = l$finishedSessionTopic.toJson();
    final l$finishedSessionInitialProgress = finishedSessionInitialProgress;
    _resultData['finishedSessionInitialProgress'] =
        l$finishedSessionInitialProgress?.toJson();
    final l$finishedSessionFinalProgress = finishedSessionFinalProgress;
    _resultData['finishedSessionFinalProgress'] =
        l$finishedSessionFinalProgress?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$timeSaved = timeSaved;
    final l$finishedSessionTopic = finishedSessionTopic;
    final l$finishedSessionInitialProgress = finishedSessionInitialProgress;
    final l$finishedSessionFinalProgress = finishedSessionFinalProgress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$timeSaved,
      l$finishedSessionTopic,
      l$finishedSessionInitialProgress,
      l$finishedSessionFinalProgress,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetFinishedDiagnosticTestSession$finishedSession) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$timeSaved = timeSaved;
    final lOther$timeSaved = other.timeSaved;
    if (l$timeSaved != lOther$timeSaved) {
      return false;
    }
    final l$finishedSessionTopic = finishedSessionTopic;
    final lOther$finishedSessionTopic = other.finishedSessionTopic;
    if (l$finishedSessionTopic != lOther$finishedSessionTopic) {
      return false;
    }
    final l$finishedSessionInitialProgress = finishedSessionInitialProgress;
    final lOther$finishedSessionInitialProgress =
        other.finishedSessionInitialProgress;
    if (l$finishedSessionInitialProgress !=
        lOther$finishedSessionInitialProgress) {
      return false;
    }
    final l$finishedSessionFinalProgress = finishedSessionFinalProgress;
    final lOther$finishedSessionFinalProgress =
        other.finishedSessionFinalProgress;
    if (l$finishedSessionFinalProgress != lOther$finishedSessionFinalProgress) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetFinishedDiagnosticTestSession$finishedSession
    on Query$GetFinishedDiagnosticTestSession$finishedSession {
  CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession<
          Query$GetFinishedDiagnosticTestSession$finishedSession>
      get copyWith =>
          CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession<
    TRes> {
  factory CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession(
    Query$GetFinishedDiagnosticTestSession$finishedSession instance,
    TRes Function(Query$GetFinishedDiagnosticTestSession$finishedSession) then,
  ) = _CopyWithImpl$Query$GetFinishedDiagnosticTestSession$finishedSession;

  factory CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetFinishedDiagnosticTestSession$finishedSession;

  TRes call({
    String? id,
    Duration? timeSaved,
    Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic?
        finishedSessionTopic,
    Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress?
        finishedSessionInitialProgress,
    Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress?
        finishedSessionFinalProgress,
    String? $__typename,
  });
  CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic<
      TRes> get finishedSessionTopic;
  CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress<
      TRes> get finishedSessionInitialProgress;
  CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress<
      TRes> get finishedSessionFinalProgress;
}

class _CopyWithImpl$Query$GetFinishedDiagnosticTestSession$finishedSession<TRes>
    implements
        CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession<TRes> {
  _CopyWithImpl$Query$GetFinishedDiagnosticTestSession$finishedSession(
    this._instance,
    this._then,
  );

  final Query$GetFinishedDiagnosticTestSession$finishedSession _instance;

  final TRes Function(Query$GetFinishedDiagnosticTestSession$finishedSession)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? timeSaved = _undefined,
    Object? finishedSessionTopic = _undefined,
    Object? finishedSessionInitialProgress = _undefined,
    Object? finishedSessionFinalProgress = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetFinishedDiagnosticTestSession$finishedSession(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        timeSaved: timeSaved == _undefined || timeSaved == null
            ? _instance.timeSaved
            : (timeSaved as Duration),
        finishedSessionTopic: finishedSessionTopic == _undefined ||
                finishedSessionTopic == null
            ? _instance.finishedSessionTopic
            : (finishedSessionTopic
                as Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic),
        finishedSessionInitialProgress: finishedSessionInitialProgress ==
                _undefined
            ? _instance.finishedSessionInitialProgress
            : (finishedSessionInitialProgress
                as Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress?),
        finishedSessionFinalProgress: finishedSessionFinalProgress == _undefined
            ? _instance.finishedSessionFinalProgress
            : (finishedSessionFinalProgress
                as Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic<
      TRes> get finishedSessionTopic {
    final local$finishedSessionTopic = _instance.finishedSessionTopic;
    return CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic(
        local$finishedSessionTopic, (e) => call(finishedSessionTopic: e));
  }

  CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress<
      TRes> get finishedSessionInitialProgress {
    final local$finishedSessionInitialProgress =
        _instance.finishedSessionInitialProgress;
    return local$finishedSessionInitialProgress == null
        ? CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress
            .stub(_then(_instance))
        : CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress(
            local$finishedSessionInitialProgress,
            (e) => call(finishedSessionInitialProgress: e));
  }

  CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress<
      TRes> get finishedSessionFinalProgress {
    final local$finishedSessionFinalProgress =
        _instance.finishedSessionFinalProgress;
    return local$finishedSessionFinalProgress == null
        ? CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress
            .stub(_then(_instance))
        : CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress(
            local$finishedSessionFinalProgress,
            (e) => call(finishedSessionFinalProgress: e));
  }
}

class _CopyWithStubImpl$Query$GetFinishedDiagnosticTestSession$finishedSession<
        TRes>
    implements
        CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession<TRes> {
  _CopyWithStubImpl$Query$GetFinishedDiagnosticTestSession$finishedSession(
      this._res);

  TRes _res;

  call({
    String? id,
    Duration? timeSaved,
    Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic?
        finishedSessionTopic,
    Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress?
        finishedSessionInitialProgress,
    Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress?
        finishedSessionFinalProgress,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic<
          TRes>
      get finishedSessionTopic =>
          CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic
              .stub(_res);
  CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress<
          TRes>
      get finishedSessionInitialProgress =>
          CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress
              .stub(_res);
  CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress<
          TRes>
      get finishedSessionFinalProgress =>
          CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress
              .stub(_res);
}

class Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic {
  Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic({
    required this.id,
    required this.title,
    required this.emoji,
    required this.$__typename,
  });

  factory Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$emoji = json['emoji'];
    final l$$__typename = json['__typename'];
    return Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic(
      id: (l$id as String),
      title: (l$title as String),
      emoji: (l$emoji as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String emoji;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$emoji = emoji;
    _resultData['emoji'] = l$emoji;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$emoji = emoji;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$emoji,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$emoji = emoji;
    final lOther$emoji = other.emoji;
    if (l$emoji != lOther$emoji) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic
    on Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic {
  CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic<
          Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic>
      get copyWith =>
          CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic<
    TRes> {
  factory CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic(
    Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic
        instance,
    TRes Function(
            Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic)
        then,
  ) = _CopyWithImpl$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic;

  factory CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic;

  TRes call({
    String? id,
    String? title,
    String? emoji,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic<
        TRes>
    implements
        CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic<
            TRes> {
  _CopyWithImpl$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic(
    this._instance,
    this._then,
  );

  final Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic
      _instance;

  final TRes Function(
          Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? emoji = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        emoji: emoji == _undefined || emoji == null
            ? _instance.emoji
            : (emoji as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic<
        TRes>
    implements
        CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic<
            TRes> {
  _CopyWithStubImpl$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic(
      this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? emoji,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress {
  Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress({
    required this.correct,
    required this.wrong,
    required this.$__typename,
  });

  factory Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress.fromJson(
      Map<String, dynamic> json) {
    final l$correct = json['correct'];
    final l$wrong = json['wrong'];
    final l$$__typename = json['__typename'];
    return Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress(
      correct: (l$correct as num).toDouble(),
      wrong: (l$wrong as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double correct;

  final double wrong;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$correct = correct;
    _resultData['correct'] = l$correct;
    final l$wrong = wrong;
    _resultData['wrong'] = l$wrong;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$correct = correct;
    final l$wrong = wrong;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$correct,
      l$wrong,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$correct = correct;
    final lOther$correct = other.correct;
    if (l$correct != lOther$correct) {
      return false;
    }
    final l$wrong = wrong;
    final lOther$wrong = other.wrong;
    if (l$wrong != lOther$wrong) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress
    on Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress {
  CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress<
          Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress>
      get copyWith =>
          CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress<
    TRes> {
  factory CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress(
    Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress
        instance,
    TRes Function(
            Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress)
        then,
  ) = _CopyWithImpl$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress;

  factory CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress;

  TRes call({
    double? correct,
    double? wrong,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress<
        TRes>
    implements
        CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress<
            TRes> {
  _CopyWithImpl$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress(
    this._instance,
    this._then,
  );

  final Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress
      _instance;

  final TRes Function(
          Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress)
      _then;

  static const _undefined = {};

  TRes call({
    Object? correct = _undefined,
    Object? wrong = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress(
        correct: correct == _undefined || correct == null
            ? _instance.correct
            : (correct as double),
        wrong: wrong == _undefined || wrong == null
            ? _instance.wrong
            : (wrong as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress<
        TRes>
    implements
        CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress<
            TRes> {
  _CopyWithStubImpl$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress(
      this._res);

  TRes _res;

  call({
    double? correct,
    double? wrong,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress {
  Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress({
    required this.correct,
    required this.wrong,
    required this.$__typename,
  });

  factory Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress.fromJson(
      Map<String, dynamic> json) {
    final l$correct = json['correct'];
    final l$wrong = json['wrong'];
    final l$$__typename = json['__typename'];
    return Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress(
      correct: (l$correct as num).toDouble(),
      wrong: (l$wrong as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double correct;

  final double wrong;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$correct = correct;
    _resultData['correct'] = l$correct;
    final l$wrong = wrong;
    _resultData['wrong'] = l$wrong;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$correct = correct;
    final l$wrong = wrong;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$correct,
      l$wrong,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$correct = correct;
    final lOther$correct = other.correct;
    if (l$correct != lOther$correct) {
      return false;
    }
    final l$wrong = wrong;
    final lOther$wrong = other.wrong;
    if (l$wrong != lOther$wrong) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress
    on Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress {
  CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress<
          Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress>
      get copyWith =>
          CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress<
    TRes> {
  factory CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress(
    Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress
        instance,
    TRes Function(
            Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress)
        then,
  ) = _CopyWithImpl$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress;

  factory CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress;

  TRes call({
    double? correct,
    double? wrong,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress<
        TRes>
    implements
        CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress<
            TRes> {
  _CopyWithImpl$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress(
    this._instance,
    this._then,
  );

  final Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress
      _instance;

  final TRes Function(
          Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress)
      _then;

  static const _undefined = {};

  TRes call({
    Object? correct = _undefined,
    Object? wrong = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress(
        correct: correct == _undefined || correct == null
            ? _instance.correct
            : (correct as double),
        wrong: wrong == _undefined || wrong == null
            ? _instance.wrong
            : (wrong as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress<
        TRes>
    implements
        CopyWith$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress<
            TRes> {
  _CopyWithStubImpl$Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress(
      this._res);

  TRes _res;

  call({
    double? correct,
    double? wrong,
    String? $__typename,
  }) =>
      _res;
}
