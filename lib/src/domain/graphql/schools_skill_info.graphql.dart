import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:schema/src/tutero_graph.graphql.dart';

class Variables$Fragment$Question {
  factory Variables$Fragment$Question({required String classId}) =>
      Variables$Fragment$Question._({
        r'classId': classId,
      });

  Variables$Fragment$Question._(this._$data);

  factory Variables$Fragment$Question.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    return Variables$Fragment$Question._(result$data);
  }

  Map<String, dynamic> _$data;

  String get classId => (_$data['classId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$classId = classId;
    result$data['classId'] = l$classId;
    return result$data;
  }

  CopyWith$Variables$Fragment$Question<Variables$Fragment$Question>
      get copyWith => CopyWith$Variables$Fragment$Question(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Fragment$Question) ||
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

abstract class CopyWith$Variables$Fragment$Question<TRes> {
  factory CopyWith$Variables$Fragment$Question(
    Variables$Fragment$Question instance,
    TRes Function(Variables$Fragment$Question) then,
  ) = _CopyWithImpl$Variables$Fragment$Question;

  factory CopyWith$Variables$Fragment$Question.stub(TRes res) =
      _CopyWithStubImpl$Variables$Fragment$Question;

  TRes call({String? classId});
}

class _CopyWithImpl$Variables$Fragment$Question<TRes>
    implements CopyWith$Variables$Fragment$Question<TRes> {
  _CopyWithImpl$Variables$Fragment$Question(
    this._instance,
    this._then,
  );

  final Variables$Fragment$Question _instance;

  final TRes Function(Variables$Fragment$Question) _then;

  static const _undefined = {};

  TRes call({Object? classId = _undefined}) =>
      _then(Variables$Fragment$Question._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
      }));
}

class _CopyWithStubImpl$Variables$Fragment$Question<TRes>
    implements CopyWith$Variables$Fragment$Question<TRes> {
  _CopyWithStubImpl$Variables$Fragment$Question(this._res);

  TRes _res;

  call({String? classId}) => _res;
}

class Fragment$Question {
  Fragment$Question({
    required this.$__typename,
    required this.id,
    required this.content,
    required this.answers,
    required this.active,
    this.figure,
    required this.calculator,
    this.hint,
    required this.needsRefactoring,
    this.practiceQuestionAnswerForClass,
  });

  factory Fragment$Question.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "MultiQuestion":
        return Fragment$Question$$MultiQuestion.fromJson(json);

      case "ShortQuestion":
        return Fragment$Question$$ShortQuestion.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        final l$id = json['id'];
        final l$content = json['content'];
        final l$answers = json['answers'];
        final l$active = json['active'];
        final l$figure = json['figure'];
        final l$calculator = json['calculator'];
        final l$hint = json['hint'];
        final l$needsRefactoring = json['needsRefactoring'];
        final l$practiceQuestionAnswerForClass =
            json['practiceQuestionAnswerForClass'];
        return Fragment$Question(
          $__typename: (l$$__typename as String),
          id: (l$id as String),
          content: (l$content as String),
          answers: (l$answers as List<dynamic>)
              .map((e) => Fragment$Answer.fromJson((e as Map<String, dynamic>)))
              .toList(),
          active: (l$active as bool),
          figure: (l$figure as String?),
          calculator: (l$calculator as bool),
          hint: (l$hint as String?),
          needsRefactoring: (l$needsRefactoring as bool),
          practiceQuestionAnswerForClass: l$practiceQuestionAnswerForClass ==
                  null
              ? null
              : Fragment$Question$practiceQuestionAnswerForClass.fromJson(
                  (l$practiceQuestionAnswerForClass as Map<String, dynamic>)),
        );
    }
  }

  final String $__typename;

  final String id;

  final String content;

  final List<Fragment$Answer> answers;

  final bool active;

  final String? figure;

  final bool calculator;

  final String? hint;

  final bool needsRefactoring;

  final Fragment$Question$practiceQuestionAnswerForClass?
      practiceQuestionAnswerForClass;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$content = content;
    _resultData['content'] = l$content;
    final l$answers = answers;
    _resultData['answers'] = l$answers.map((e) => e.toJson()).toList();
    final l$active = active;
    _resultData['active'] = l$active;
    final l$figure = figure;
    _resultData['figure'] = l$figure;
    final l$calculator = calculator;
    _resultData['calculator'] = l$calculator;
    final l$hint = hint;
    _resultData['hint'] = l$hint;
    final l$needsRefactoring = needsRefactoring;
    _resultData['needsRefactoring'] = l$needsRefactoring;
    final l$practiceQuestionAnswerForClass = practiceQuestionAnswerForClass;
    _resultData['practiceQuestionAnswerForClass'] =
        l$practiceQuestionAnswerForClass?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$id = id;
    final l$content = content;
    final l$answers = answers;
    final l$active = active;
    final l$figure = figure;
    final l$calculator = calculator;
    final l$hint = hint;
    final l$needsRefactoring = needsRefactoring;
    final l$practiceQuestionAnswerForClass = practiceQuestionAnswerForClass;
    return Object.hashAll([
      l$$__typename,
      l$id,
      l$content,
      Object.hashAll(l$answers.map((v) => v)),
      l$active,
      l$figure,
      l$calculator,
      l$hint,
      l$needsRefactoring,
      l$practiceQuestionAnswerForClass,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Question) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$answers = answers;
    final lOther$answers = other.answers;
    if (l$answers.length != lOther$answers.length) {
      return false;
    }
    for (int i = 0; i < l$answers.length; i++) {
      final l$answers$entry = l$answers[i];
      final lOther$answers$entry = lOther$answers[i];
      if (l$answers$entry != lOther$answers$entry) {
        return false;
      }
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$figure = figure;
    final lOther$figure = other.figure;
    if (l$figure != lOther$figure) {
      return false;
    }
    final l$calculator = calculator;
    final lOther$calculator = other.calculator;
    if (l$calculator != lOther$calculator) {
      return false;
    }
    final l$hint = hint;
    final lOther$hint = other.hint;
    if (l$hint != lOther$hint) {
      return false;
    }
    final l$needsRefactoring = needsRefactoring;
    final lOther$needsRefactoring = other.needsRefactoring;
    if (l$needsRefactoring != lOther$needsRefactoring) {
      return false;
    }
    final l$practiceQuestionAnswerForClass = practiceQuestionAnswerForClass;
    final lOther$practiceQuestionAnswerForClass =
        other.practiceQuestionAnswerForClass;
    if (l$practiceQuestionAnswerForClass !=
        lOther$practiceQuestionAnswerForClass) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$Question on Fragment$Question {
  CopyWith$Fragment$Question<Fragment$Question> get copyWith =>
      CopyWith$Fragment$Question(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Question<TRes> {
  factory CopyWith$Fragment$Question(
    Fragment$Question instance,
    TRes Function(Fragment$Question) then,
  ) = _CopyWithImpl$Fragment$Question;

  factory CopyWith$Fragment$Question.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Question;

  TRes call({
    String? $__typename,
    String? id,
    String? content,
    List<Fragment$Answer>? answers,
    bool? active,
    String? figure,
    bool? calculator,
    String? hint,
    bool? needsRefactoring,
    Fragment$Question$practiceQuestionAnswerForClass?
        practiceQuestionAnswerForClass,
  });
  TRes answers(
      Iterable<Fragment$Answer> Function(
              Iterable<CopyWith$Fragment$Answer<Fragment$Answer>>)
          _fn);
  CopyWith$Fragment$Question$practiceQuestionAnswerForClass<TRes>
      get practiceQuestionAnswerForClass;
}

class _CopyWithImpl$Fragment$Question<TRes>
    implements CopyWith$Fragment$Question<TRes> {
  _CopyWithImpl$Fragment$Question(
    this._instance,
    this._then,
  );

  final Fragment$Question _instance;

  final TRes Function(Fragment$Question) _then;

  static const _undefined = {};

  TRes call({
    Object? $__typename = _undefined,
    Object? id = _undefined,
    Object? content = _undefined,
    Object? answers = _undefined,
    Object? active = _undefined,
    Object? figure = _undefined,
    Object? calculator = _undefined,
    Object? hint = _undefined,
    Object? needsRefactoring = _undefined,
    Object? practiceQuestionAnswerForClass = _undefined,
  }) =>
      _then(Fragment$Question(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        content: content == _undefined || content == null
            ? _instance.content
            : (content as String),
        answers: answers == _undefined || answers == null
            ? _instance.answers
            : (answers as List<Fragment$Answer>),
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        figure: figure == _undefined ? _instance.figure : (figure as String?),
        calculator: calculator == _undefined || calculator == null
            ? _instance.calculator
            : (calculator as bool),
        hint: hint == _undefined ? _instance.hint : (hint as String?),
        needsRefactoring:
            needsRefactoring == _undefined || needsRefactoring == null
                ? _instance.needsRefactoring
                : (needsRefactoring as bool),
        practiceQuestionAnswerForClass:
            practiceQuestionAnswerForClass == _undefined
                ? _instance.practiceQuestionAnswerForClass
                : (practiceQuestionAnswerForClass
                    as Fragment$Question$practiceQuestionAnswerForClass?),
      ));
  TRes answers(
          Iterable<Fragment$Answer> Function(
                  Iterable<CopyWith$Fragment$Answer<Fragment$Answer>>)
              _fn) =>
      call(
          answers: _fn(_instance.answers.map((e) => CopyWith$Fragment$Answer(
                e,
                (i) => i,
              ))).toList());
  CopyWith$Fragment$Question$practiceQuestionAnswerForClass<TRes>
      get practiceQuestionAnswerForClass {
    final local$practiceQuestionAnswerForClass =
        _instance.practiceQuestionAnswerForClass;
    return local$practiceQuestionAnswerForClass == null
        ? CopyWith$Fragment$Question$practiceQuestionAnswerForClass.stub(
            _then(_instance))
        : CopyWith$Fragment$Question$practiceQuestionAnswerForClass(
            local$practiceQuestionAnswerForClass,
            (e) => call(practiceQuestionAnswerForClass: e));
  }
}

class _CopyWithStubImpl$Fragment$Question<TRes>
    implements CopyWith$Fragment$Question<TRes> {
  _CopyWithStubImpl$Fragment$Question(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? id,
    String? content,
    List<Fragment$Answer>? answers,
    bool? active,
    String? figure,
    bool? calculator,
    String? hint,
    bool? needsRefactoring,
    Fragment$Question$practiceQuestionAnswerForClass?
        practiceQuestionAnswerForClass,
  }) =>
      _res;
  answers(_fn) => _res;
  CopyWith$Fragment$Question$practiceQuestionAnswerForClass<TRes>
      get practiceQuestionAnswerForClass =>
          CopyWith$Fragment$Question$practiceQuestionAnswerForClass.stub(_res);
}

const fragmentDefinitionQuestion = FragmentDefinitionNode(
  name: NameNode(value: 'Question'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Question'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'content'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'answers'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Answer'),
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
      name: NameNode(value: 'active'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'figure'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'calculator'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'hint'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'needsRefactoring'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'practiceQuestionAnswerForClass'),
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
          name: NameNode(value: 'id'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'content'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'isCorrect'),
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
    InlineFragmentNode(
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
        name: NameNode(value: 'MultiQuestion'),
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
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    InlineFragmentNode(
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
        name: NameNode(value: 'ShortQuestion'),
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
          name: NameNode(value: 'decimals'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'exact'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'prefix'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'answerFormat'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'showHelper'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'suffix'),
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
  ]),
);
const documentNodeFragmentQuestion = DocumentNode(definitions: [
  fragmentDefinitionQuestion,
  fragmentDefinitionAnswer,
]);

extension ClientExtension$Fragment$Question on graphql.GraphQLClient {
  void writeFragment$Question({
    required Fragment$Question data,
    required Map<String, dynamic> idFields,
    required Variables$Fragment$Question variables,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Question',
            document: documentNodeFragmentQuestion,
          ),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Question? readFragment$Question({
    required Map<String, dynamic> idFields,
    required Variables$Fragment$Question variables,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Question',
          document: documentNodeFragmentQuestion,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Question.fromJson(result);
  }
}

class Fragment$Question$practiceQuestionAnswerForClass {
  Fragment$Question$practiceQuestionAnswerForClass({
    required this.id,
    required this.content,
    required this.isCorrect,
    required this.$__typename,
  });

  factory Fragment$Question$practiceQuestionAnswerForClass.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$content = json['content'];
    final l$isCorrect = json['isCorrect'];
    final l$$__typename = json['__typename'];
    return Fragment$Question$practiceQuestionAnswerForClass(
      id: (l$id as String),
      content: (l$content as String),
      isCorrect: (l$isCorrect as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String content;

  final bool isCorrect;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$content = content;
    _resultData['content'] = l$content;
    final l$isCorrect = isCorrect;
    _resultData['isCorrect'] = l$isCorrect;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$content = content;
    final l$isCorrect = isCorrect;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$content,
      l$isCorrect,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Question$practiceQuestionAnswerForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$isCorrect = isCorrect;
    final lOther$isCorrect = other.isCorrect;
    if (l$isCorrect != lOther$isCorrect) {
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

extension UtilityExtension$Fragment$Question$practiceQuestionAnswerForClass
    on Fragment$Question$practiceQuestionAnswerForClass {
  CopyWith$Fragment$Question$practiceQuestionAnswerForClass<
          Fragment$Question$practiceQuestionAnswerForClass>
      get copyWith => CopyWith$Fragment$Question$practiceQuestionAnswerForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Question$practiceQuestionAnswerForClass<TRes> {
  factory CopyWith$Fragment$Question$practiceQuestionAnswerForClass(
    Fragment$Question$practiceQuestionAnswerForClass instance,
    TRes Function(Fragment$Question$practiceQuestionAnswerForClass) then,
  ) = _CopyWithImpl$Fragment$Question$practiceQuestionAnswerForClass;

  factory CopyWith$Fragment$Question$practiceQuestionAnswerForClass.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$Question$practiceQuestionAnswerForClass;

  TRes call({
    String? id,
    String? content,
    bool? isCorrect,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Question$practiceQuestionAnswerForClass<TRes>
    implements CopyWith$Fragment$Question$practiceQuestionAnswerForClass<TRes> {
  _CopyWithImpl$Fragment$Question$practiceQuestionAnswerForClass(
    this._instance,
    this._then,
  );

  final Fragment$Question$practiceQuestionAnswerForClass _instance;

  final TRes Function(Fragment$Question$practiceQuestionAnswerForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? content = _undefined,
    Object? isCorrect = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Question$practiceQuestionAnswerForClass(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        content: content == _undefined || content == null
            ? _instance.content
            : (content as String),
        isCorrect: isCorrect == _undefined || isCorrect == null
            ? _instance.isCorrect
            : (isCorrect as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Question$practiceQuestionAnswerForClass<TRes>
    implements CopyWith$Fragment$Question$practiceQuestionAnswerForClass<TRes> {
  _CopyWithStubImpl$Fragment$Question$practiceQuestionAnswerForClass(this._res);

  TRes _res;

  call({
    String? id,
    String? content,
    bool? isCorrect,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$Question$$MultiQuestion implements Fragment$Question {
  Fragment$Question$$MultiQuestion({
    required this.$__typename,
    required this.id,
    required this.content,
    required this.answers,
    required this.active,
    this.figure,
    required this.calculator,
    this.hint,
    required this.needsRefactoring,
    this.practiceQuestionAnswerForClass,
  });

  factory Fragment$Question$$MultiQuestion.fromJson(Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$id = json['id'];
    final l$content = json['content'];
    final l$answers = json['answers'];
    final l$active = json['active'];
    final l$figure = json['figure'];
    final l$calculator = json['calculator'];
    final l$hint = json['hint'];
    final l$needsRefactoring = json['needsRefactoring'];
    final l$practiceQuestionAnswerForClass =
        json['practiceQuestionAnswerForClass'];
    return Fragment$Question$$MultiQuestion(
      $__typename: (l$$__typename as String),
      id: (l$id as String),
      content: (l$content as String),
      answers: (l$answers as List<dynamic>)
          .map((e) => Fragment$Answer.fromJson((e as Map<String, dynamic>)))
          .toList(),
      active: (l$active as bool),
      figure: (l$figure as String?),
      calculator: (l$calculator as bool),
      hint: (l$hint as String?),
      needsRefactoring: (l$needsRefactoring as bool),
      practiceQuestionAnswerForClass: l$practiceQuestionAnswerForClass == null
          ? null
          : Fragment$Question$practiceQuestionAnswerForClass.fromJson(
              (l$practiceQuestionAnswerForClass as Map<String, dynamic>)),
    );
  }

  final String $__typename;

  final String id;

  final String content;

  final List<Fragment$Answer> answers;

  final bool active;

  final String? figure;

  final bool calculator;

  final String? hint;

  final bool needsRefactoring;

  final Fragment$Question$practiceQuestionAnswerForClass?
      practiceQuestionAnswerForClass;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$content = content;
    _resultData['content'] = l$content;
    final l$answers = answers;
    _resultData['answers'] = l$answers.map((e) => e.toJson()).toList();
    final l$active = active;
    _resultData['active'] = l$active;
    final l$figure = figure;
    _resultData['figure'] = l$figure;
    final l$calculator = calculator;
    _resultData['calculator'] = l$calculator;
    final l$hint = hint;
    _resultData['hint'] = l$hint;
    final l$needsRefactoring = needsRefactoring;
    _resultData['needsRefactoring'] = l$needsRefactoring;
    final l$practiceQuestionAnswerForClass = practiceQuestionAnswerForClass;
    _resultData['practiceQuestionAnswerForClass'] =
        l$practiceQuestionAnswerForClass?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$id = id;
    final l$content = content;
    final l$answers = answers;
    final l$active = active;
    final l$figure = figure;
    final l$calculator = calculator;
    final l$hint = hint;
    final l$needsRefactoring = needsRefactoring;
    final l$practiceQuestionAnswerForClass = practiceQuestionAnswerForClass;
    return Object.hashAll([
      l$$__typename,
      l$id,
      l$content,
      Object.hashAll(l$answers.map((v) => v)),
      l$active,
      l$figure,
      l$calculator,
      l$hint,
      l$needsRefactoring,
      l$practiceQuestionAnswerForClass,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Question$$MultiQuestion) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$answers = answers;
    final lOther$answers = other.answers;
    if (l$answers.length != lOther$answers.length) {
      return false;
    }
    for (int i = 0; i < l$answers.length; i++) {
      final l$answers$entry = l$answers[i];
      final lOther$answers$entry = lOther$answers[i];
      if (l$answers$entry != lOther$answers$entry) {
        return false;
      }
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$figure = figure;
    final lOther$figure = other.figure;
    if (l$figure != lOther$figure) {
      return false;
    }
    final l$calculator = calculator;
    final lOther$calculator = other.calculator;
    if (l$calculator != lOther$calculator) {
      return false;
    }
    final l$hint = hint;
    final lOther$hint = other.hint;
    if (l$hint != lOther$hint) {
      return false;
    }
    final l$needsRefactoring = needsRefactoring;
    final lOther$needsRefactoring = other.needsRefactoring;
    if (l$needsRefactoring != lOther$needsRefactoring) {
      return false;
    }
    final l$practiceQuestionAnswerForClass = practiceQuestionAnswerForClass;
    final lOther$practiceQuestionAnswerForClass =
        other.practiceQuestionAnswerForClass;
    if (l$practiceQuestionAnswerForClass !=
        lOther$practiceQuestionAnswerForClass) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$Question$$MultiQuestion
    on Fragment$Question$$MultiQuestion {
  CopyWith$Fragment$Question$$MultiQuestion<Fragment$Question$$MultiQuestion>
      get copyWith => CopyWith$Fragment$Question$$MultiQuestion(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Question$$MultiQuestion<TRes> {
  factory CopyWith$Fragment$Question$$MultiQuestion(
    Fragment$Question$$MultiQuestion instance,
    TRes Function(Fragment$Question$$MultiQuestion) then,
  ) = _CopyWithImpl$Fragment$Question$$MultiQuestion;

  factory CopyWith$Fragment$Question$$MultiQuestion.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Question$$MultiQuestion;

  TRes call({
    String? $__typename,
    String? id,
    String? content,
    List<Fragment$Answer>? answers,
    bool? active,
    String? figure,
    bool? calculator,
    String? hint,
    bool? needsRefactoring,
    Fragment$Question$practiceQuestionAnswerForClass?
        practiceQuestionAnswerForClass,
  });
  TRes answers(
      Iterable<Fragment$Answer> Function(
              Iterable<CopyWith$Fragment$Answer<Fragment$Answer>>)
          _fn);
  CopyWith$Fragment$Question$practiceQuestionAnswerForClass<TRes>
      get practiceQuestionAnswerForClass;
}

class _CopyWithImpl$Fragment$Question$$MultiQuestion<TRes>
    implements CopyWith$Fragment$Question$$MultiQuestion<TRes> {
  _CopyWithImpl$Fragment$Question$$MultiQuestion(
    this._instance,
    this._then,
  );

  final Fragment$Question$$MultiQuestion _instance;

  final TRes Function(Fragment$Question$$MultiQuestion) _then;

  static const _undefined = {};

  TRes call({
    Object? $__typename = _undefined,
    Object? id = _undefined,
    Object? content = _undefined,
    Object? answers = _undefined,
    Object? active = _undefined,
    Object? figure = _undefined,
    Object? calculator = _undefined,
    Object? hint = _undefined,
    Object? needsRefactoring = _undefined,
    Object? practiceQuestionAnswerForClass = _undefined,
  }) =>
      _then(Fragment$Question$$MultiQuestion(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        content: content == _undefined || content == null
            ? _instance.content
            : (content as String),
        answers: answers == _undefined || answers == null
            ? _instance.answers
            : (answers as List<Fragment$Answer>),
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        figure: figure == _undefined ? _instance.figure : (figure as String?),
        calculator: calculator == _undefined || calculator == null
            ? _instance.calculator
            : (calculator as bool),
        hint: hint == _undefined ? _instance.hint : (hint as String?),
        needsRefactoring:
            needsRefactoring == _undefined || needsRefactoring == null
                ? _instance.needsRefactoring
                : (needsRefactoring as bool),
        practiceQuestionAnswerForClass:
            practiceQuestionAnswerForClass == _undefined
                ? _instance.practiceQuestionAnswerForClass
                : (practiceQuestionAnswerForClass
                    as Fragment$Question$practiceQuestionAnswerForClass?),
      ));
  TRes answers(
          Iterable<Fragment$Answer> Function(
                  Iterable<CopyWith$Fragment$Answer<Fragment$Answer>>)
              _fn) =>
      call(
          answers: _fn(_instance.answers.map((e) => CopyWith$Fragment$Answer(
                e,
                (i) => i,
              ))).toList());
  CopyWith$Fragment$Question$practiceQuestionAnswerForClass<TRes>
      get practiceQuestionAnswerForClass {
    final local$practiceQuestionAnswerForClass =
        _instance.practiceQuestionAnswerForClass;
    return local$practiceQuestionAnswerForClass == null
        ? CopyWith$Fragment$Question$practiceQuestionAnswerForClass.stub(
            _then(_instance))
        : CopyWith$Fragment$Question$practiceQuestionAnswerForClass(
            local$practiceQuestionAnswerForClass,
            (e) => call(practiceQuestionAnswerForClass: e));
  }
}

class _CopyWithStubImpl$Fragment$Question$$MultiQuestion<TRes>
    implements CopyWith$Fragment$Question$$MultiQuestion<TRes> {
  _CopyWithStubImpl$Fragment$Question$$MultiQuestion(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? id,
    String? content,
    List<Fragment$Answer>? answers,
    bool? active,
    String? figure,
    bool? calculator,
    String? hint,
    bool? needsRefactoring,
    Fragment$Question$practiceQuestionAnswerForClass?
        practiceQuestionAnswerForClass,
  }) =>
      _res;
  answers(_fn) => _res;
  CopyWith$Fragment$Question$practiceQuestionAnswerForClass<TRes>
      get practiceQuestionAnswerForClass =>
          CopyWith$Fragment$Question$practiceQuestionAnswerForClass.stub(_res);
}

class Fragment$Question$$ShortQuestion implements Fragment$Question {
  Fragment$Question$$ShortQuestion({
    required this.$__typename,
    required this.id,
    required this.content,
    required this.answers,
    required this.active,
    this.figure,
    required this.calculator,
    this.hint,
    required this.needsRefactoring,
    this.practiceQuestionAnswerForClass,
    this.decimals,
    required this.exact,
    this.prefix,
    required this.answerFormat,
    required this.showHelper,
    this.suffix,
  });

  factory Fragment$Question$$ShortQuestion.fromJson(Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$id = json['id'];
    final l$content = json['content'];
    final l$answers = json['answers'];
    final l$active = json['active'];
    final l$figure = json['figure'];
    final l$calculator = json['calculator'];
    final l$hint = json['hint'];
    final l$needsRefactoring = json['needsRefactoring'];
    final l$practiceQuestionAnswerForClass =
        json['practiceQuestionAnswerForClass'];
    final l$decimals = json['decimals'];
    final l$exact = json['exact'];
    final l$prefix = json['prefix'];
    final l$answerFormat = json['answerFormat'];
    final l$showHelper = json['showHelper'];
    final l$suffix = json['suffix'];
    return Fragment$Question$$ShortQuestion(
      $__typename: (l$$__typename as String),
      id: (l$id as String),
      content: (l$content as String),
      answers: (l$answers as List<dynamic>)
          .map((e) => Fragment$Answer.fromJson((e as Map<String, dynamic>)))
          .toList(),
      active: (l$active as bool),
      figure: (l$figure as String?),
      calculator: (l$calculator as bool),
      hint: (l$hint as String?),
      needsRefactoring: (l$needsRefactoring as bool),
      practiceQuestionAnswerForClass: l$practiceQuestionAnswerForClass == null
          ? null
          : Fragment$Question$practiceQuestionAnswerForClass.fromJson(
              (l$practiceQuestionAnswerForClass as Map<String, dynamic>)),
      decimals: (l$decimals as int?),
      exact: (l$exact as bool),
      prefix: (l$prefix as String?),
      answerFormat: fromJson$Enum$AnswerFormat((l$answerFormat as String)),
      showHelper: (l$showHelper as bool),
      suffix: (l$suffix as String?),
    );
  }

  final String $__typename;

  final String id;

  final String content;

  final List<Fragment$Answer> answers;

  final bool active;

  final String? figure;

  final bool calculator;

  final String? hint;

  final bool needsRefactoring;

  final Fragment$Question$practiceQuestionAnswerForClass?
      practiceQuestionAnswerForClass;

  final int? decimals;

  final bool exact;

  final String? prefix;

  final Enum$AnswerFormat answerFormat;

  final bool showHelper;

  final String? suffix;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$content = content;
    _resultData['content'] = l$content;
    final l$answers = answers;
    _resultData['answers'] = l$answers.map((e) => e.toJson()).toList();
    final l$active = active;
    _resultData['active'] = l$active;
    final l$figure = figure;
    _resultData['figure'] = l$figure;
    final l$calculator = calculator;
    _resultData['calculator'] = l$calculator;
    final l$hint = hint;
    _resultData['hint'] = l$hint;
    final l$needsRefactoring = needsRefactoring;
    _resultData['needsRefactoring'] = l$needsRefactoring;
    final l$practiceQuestionAnswerForClass = practiceQuestionAnswerForClass;
    _resultData['practiceQuestionAnswerForClass'] =
        l$practiceQuestionAnswerForClass?.toJson();
    final l$decimals = decimals;
    _resultData['decimals'] = l$decimals;
    final l$exact = exact;
    _resultData['exact'] = l$exact;
    final l$prefix = prefix;
    _resultData['prefix'] = l$prefix;
    final l$answerFormat = answerFormat;
    _resultData['answerFormat'] = toJson$Enum$AnswerFormat(l$answerFormat);
    final l$showHelper = showHelper;
    _resultData['showHelper'] = l$showHelper;
    final l$suffix = suffix;
    _resultData['suffix'] = l$suffix;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$id = id;
    final l$content = content;
    final l$answers = answers;
    final l$active = active;
    final l$figure = figure;
    final l$calculator = calculator;
    final l$hint = hint;
    final l$needsRefactoring = needsRefactoring;
    final l$practiceQuestionAnswerForClass = practiceQuestionAnswerForClass;
    final l$decimals = decimals;
    final l$exact = exact;
    final l$prefix = prefix;
    final l$answerFormat = answerFormat;
    final l$showHelper = showHelper;
    final l$suffix = suffix;
    return Object.hashAll([
      l$$__typename,
      l$id,
      l$content,
      Object.hashAll(l$answers.map((v) => v)),
      l$active,
      l$figure,
      l$calculator,
      l$hint,
      l$needsRefactoring,
      l$practiceQuestionAnswerForClass,
      l$decimals,
      l$exact,
      l$prefix,
      l$answerFormat,
      l$showHelper,
      l$suffix,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Question$$ShortQuestion) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$answers = answers;
    final lOther$answers = other.answers;
    if (l$answers.length != lOther$answers.length) {
      return false;
    }
    for (int i = 0; i < l$answers.length; i++) {
      final l$answers$entry = l$answers[i];
      final lOther$answers$entry = lOther$answers[i];
      if (l$answers$entry != lOther$answers$entry) {
        return false;
      }
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$figure = figure;
    final lOther$figure = other.figure;
    if (l$figure != lOther$figure) {
      return false;
    }
    final l$calculator = calculator;
    final lOther$calculator = other.calculator;
    if (l$calculator != lOther$calculator) {
      return false;
    }
    final l$hint = hint;
    final lOther$hint = other.hint;
    if (l$hint != lOther$hint) {
      return false;
    }
    final l$needsRefactoring = needsRefactoring;
    final lOther$needsRefactoring = other.needsRefactoring;
    if (l$needsRefactoring != lOther$needsRefactoring) {
      return false;
    }
    final l$practiceQuestionAnswerForClass = practiceQuestionAnswerForClass;
    final lOther$practiceQuestionAnswerForClass =
        other.practiceQuestionAnswerForClass;
    if (l$practiceQuestionAnswerForClass !=
        lOther$practiceQuestionAnswerForClass) {
      return false;
    }
    final l$decimals = decimals;
    final lOther$decimals = other.decimals;
    if (l$decimals != lOther$decimals) {
      return false;
    }
    final l$exact = exact;
    final lOther$exact = other.exact;
    if (l$exact != lOther$exact) {
      return false;
    }
    final l$prefix = prefix;
    final lOther$prefix = other.prefix;
    if (l$prefix != lOther$prefix) {
      return false;
    }
    final l$answerFormat = answerFormat;
    final lOther$answerFormat = other.answerFormat;
    if (l$answerFormat != lOther$answerFormat) {
      return false;
    }
    final l$showHelper = showHelper;
    final lOther$showHelper = other.showHelper;
    if (l$showHelper != lOther$showHelper) {
      return false;
    }
    final l$suffix = suffix;
    final lOther$suffix = other.suffix;
    if (l$suffix != lOther$suffix) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$Question$$ShortQuestion
    on Fragment$Question$$ShortQuestion {
  CopyWith$Fragment$Question$$ShortQuestion<Fragment$Question$$ShortQuestion>
      get copyWith => CopyWith$Fragment$Question$$ShortQuestion(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Question$$ShortQuestion<TRes> {
  factory CopyWith$Fragment$Question$$ShortQuestion(
    Fragment$Question$$ShortQuestion instance,
    TRes Function(Fragment$Question$$ShortQuestion) then,
  ) = _CopyWithImpl$Fragment$Question$$ShortQuestion;

  factory CopyWith$Fragment$Question$$ShortQuestion.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Question$$ShortQuestion;

  TRes call({
    String? $__typename,
    String? id,
    String? content,
    List<Fragment$Answer>? answers,
    bool? active,
    String? figure,
    bool? calculator,
    String? hint,
    bool? needsRefactoring,
    Fragment$Question$practiceQuestionAnswerForClass?
        practiceQuestionAnswerForClass,
    int? decimals,
    bool? exact,
    String? prefix,
    Enum$AnswerFormat? answerFormat,
    bool? showHelper,
    String? suffix,
  });
  TRes answers(
      Iterable<Fragment$Answer> Function(
              Iterable<CopyWith$Fragment$Answer<Fragment$Answer>>)
          _fn);
  CopyWith$Fragment$Question$practiceQuestionAnswerForClass<TRes>
      get practiceQuestionAnswerForClass;
}

class _CopyWithImpl$Fragment$Question$$ShortQuestion<TRes>
    implements CopyWith$Fragment$Question$$ShortQuestion<TRes> {
  _CopyWithImpl$Fragment$Question$$ShortQuestion(
    this._instance,
    this._then,
  );

  final Fragment$Question$$ShortQuestion _instance;

  final TRes Function(Fragment$Question$$ShortQuestion) _then;

  static const _undefined = {};

  TRes call({
    Object? $__typename = _undefined,
    Object? id = _undefined,
    Object? content = _undefined,
    Object? answers = _undefined,
    Object? active = _undefined,
    Object? figure = _undefined,
    Object? calculator = _undefined,
    Object? hint = _undefined,
    Object? needsRefactoring = _undefined,
    Object? practiceQuestionAnswerForClass = _undefined,
    Object? decimals = _undefined,
    Object? exact = _undefined,
    Object? prefix = _undefined,
    Object? answerFormat = _undefined,
    Object? showHelper = _undefined,
    Object? suffix = _undefined,
  }) =>
      _then(Fragment$Question$$ShortQuestion(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        content: content == _undefined || content == null
            ? _instance.content
            : (content as String),
        answers: answers == _undefined || answers == null
            ? _instance.answers
            : (answers as List<Fragment$Answer>),
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        figure: figure == _undefined ? _instance.figure : (figure as String?),
        calculator: calculator == _undefined || calculator == null
            ? _instance.calculator
            : (calculator as bool),
        hint: hint == _undefined ? _instance.hint : (hint as String?),
        needsRefactoring:
            needsRefactoring == _undefined || needsRefactoring == null
                ? _instance.needsRefactoring
                : (needsRefactoring as bool),
        practiceQuestionAnswerForClass:
            practiceQuestionAnswerForClass == _undefined
                ? _instance.practiceQuestionAnswerForClass
                : (practiceQuestionAnswerForClass
                    as Fragment$Question$practiceQuestionAnswerForClass?),
        decimals:
            decimals == _undefined ? _instance.decimals : (decimals as int?),
        exact: exact == _undefined || exact == null
            ? _instance.exact
            : (exact as bool),
        prefix: prefix == _undefined ? _instance.prefix : (prefix as String?),
        answerFormat: answerFormat == _undefined || answerFormat == null
            ? _instance.answerFormat
            : (answerFormat as Enum$AnswerFormat),
        showHelper: showHelper == _undefined || showHelper == null
            ? _instance.showHelper
            : (showHelper as bool),
        suffix: suffix == _undefined ? _instance.suffix : (suffix as String?),
      ));
  TRes answers(
          Iterable<Fragment$Answer> Function(
                  Iterable<CopyWith$Fragment$Answer<Fragment$Answer>>)
              _fn) =>
      call(
          answers: _fn(_instance.answers.map((e) => CopyWith$Fragment$Answer(
                e,
                (i) => i,
              ))).toList());
  CopyWith$Fragment$Question$practiceQuestionAnswerForClass<TRes>
      get practiceQuestionAnswerForClass {
    final local$practiceQuestionAnswerForClass =
        _instance.practiceQuestionAnswerForClass;
    return local$practiceQuestionAnswerForClass == null
        ? CopyWith$Fragment$Question$practiceQuestionAnswerForClass.stub(
            _then(_instance))
        : CopyWith$Fragment$Question$practiceQuestionAnswerForClass(
            local$practiceQuestionAnswerForClass,
            (e) => call(practiceQuestionAnswerForClass: e));
  }
}

class _CopyWithStubImpl$Fragment$Question$$ShortQuestion<TRes>
    implements CopyWith$Fragment$Question$$ShortQuestion<TRes> {
  _CopyWithStubImpl$Fragment$Question$$ShortQuestion(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? id,
    String? content,
    List<Fragment$Answer>? answers,
    bool? active,
    String? figure,
    bool? calculator,
    String? hint,
    bool? needsRefactoring,
    Fragment$Question$practiceQuestionAnswerForClass?
        practiceQuestionAnswerForClass,
    int? decimals,
    bool? exact,
    String? prefix,
    Enum$AnswerFormat? answerFormat,
    bool? showHelper,
    String? suffix,
  }) =>
      _res;
  answers(_fn) => _res;
  CopyWith$Fragment$Question$practiceQuestionAnswerForClass<TRes>
      get practiceQuestionAnswerForClass =>
          CopyWith$Fragment$Question$practiceQuestionAnswerForClass.stub(_res);
}

class Fragment$Answer {
  Fragment$Answer({
    required this.id,
    required this.content,
    required this.isCorrect,
    required this.$__typename,
  });

  factory Fragment$Answer.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$content = json['content'];
    final l$isCorrect = json['isCorrect'];
    final l$$__typename = json['__typename'];
    return Fragment$Answer(
      id: (l$id as String),
      content: (l$content as String),
      isCorrect: (l$isCorrect as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String content;

  final bool isCorrect;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$content = content;
    _resultData['content'] = l$content;
    final l$isCorrect = isCorrect;
    _resultData['isCorrect'] = l$isCorrect;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$content = content;
    final l$isCorrect = isCorrect;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$content,
      l$isCorrect,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Answer) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$isCorrect = isCorrect;
    final lOther$isCorrect = other.isCorrect;
    if (l$isCorrect != lOther$isCorrect) {
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

extension UtilityExtension$Fragment$Answer on Fragment$Answer {
  CopyWith$Fragment$Answer<Fragment$Answer> get copyWith =>
      CopyWith$Fragment$Answer(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Answer<TRes> {
  factory CopyWith$Fragment$Answer(
    Fragment$Answer instance,
    TRes Function(Fragment$Answer) then,
  ) = _CopyWithImpl$Fragment$Answer;

  factory CopyWith$Fragment$Answer.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Answer;

  TRes call({
    String? id,
    String? content,
    bool? isCorrect,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Answer<TRes>
    implements CopyWith$Fragment$Answer<TRes> {
  _CopyWithImpl$Fragment$Answer(
    this._instance,
    this._then,
  );

  final Fragment$Answer _instance;

  final TRes Function(Fragment$Answer) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? content = _undefined,
    Object? isCorrect = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Answer(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        content: content == _undefined || content == null
            ? _instance.content
            : (content as String),
        isCorrect: isCorrect == _undefined || isCorrect == null
            ? _instance.isCorrect
            : (isCorrect as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Answer<TRes>
    implements CopyWith$Fragment$Answer<TRes> {
  _CopyWithStubImpl$Fragment$Answer(this._res);

  TRes _res;

  call({
    String? id,
    String? content,
    bool? isCorrect,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionAnswer = FragmentDefinitionNode(
  name: NameNode(value: 'Answer'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Answer'),
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
      name: NameNode(value: 'content'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isCorrect'),
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
const documentNodeFragmentAnswer = DocumentNode(definitions: [
  fragmentDefinitionAnswer,
]);

extension ClientExtension$Fragment$Answer on graphql.GraphQLClient {
  void writeFragment$Answer({
    required Fragment$Answer data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Answer',
            document: documentNodeFragmentAnswer,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Answer? readFragment$Answer({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Answer',
          document: documentNodeFragmentAnswer,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Answer.fromJson(result);
  }
}

class Variables$Query$GetClassSkillInfo {
  factory Variables$Query$GetClassSkillInfo({
    Input$GetAllEdgeOptions? options,
    required String skillId,
    required String classId,
  }) =>
      Variables$Query$GetClassSkillInfo._({
        if (options != null) r'options': options,
        r'skillId': skillId,
        r'classId': classId,
      });

  Variables$Query$GetClassSkillInfo._(this._$data);

  factory Variables$Query$GetClassSkillInfo.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('options')) {
      final l$options = data['options'];
      result$data['options'] = l$options == null
          ? null
          : Input$GetAllEdgeOptions.fromJson(
              (l$options as Map<String, dynamic>));
    }
    final l$skillId = data['skillId'];
    result$data['skillId'] = (l$skillId as String);
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    return Variables$Query$GetClassSkillInfo._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GetAllEdgeOptions? get options =>
      (_$data['options'] as Input$GetAllEdgeOptions?);
  String get skillId => (_$data['skillId'] as String);
  String get classId => (_$data['classId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('options')) {
      final l$options = options;
      result$data['options'] = l$options?.toJson();
    }
    final l$skillId = skillId;
    result$data['skillId'] = l$skillId;
    final l$classId = classId;
    result$data['classId'] = l$classId;
    return result$data;
  }

  CopyWith$Variables$Query$GetClassSkillInfo<Variables$Query$GetClassSkillInfo>
      get copyWith => CopyWith$Variables$Query$GetClassSkillInfo(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetClassSkillInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$options = options;
    final lOther$options = other.options;
    if (_$data.containsKey('options') != other._$data.containsKey('options')) {
      return false;
    }
    if (l$options != lOther$options) {
      return false;
    }
    final l$skillId = skillId;
    final lOther$skillId = other.skillId;
    if (l$skillId != lOther$skillId) {
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
    final l$options = options;
    final l$skillId = skillId;
    final l$classId = classId;
    return Object.hashAll([
      _$data.containsKey('options') ? l$options : const {},
      l$skillId,
      l$classId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetClassSkillInfo<TRes> {
  factory CopyWith$Variables$Query$GetClassSkillInfo(
    Variables$Query$GetClassSkillInfo instance,
    TRes Function(Variables$Query$GetClassSkillInfo) then,
  ) = _CopyWithImpl$Variables$Query$GetClassSkillInfo;

  factory CopyWith$Variables$Query$GetClassSkillInfo.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetClassSkillInfo;

  TRes call({
    Input$GetAllEdgeOptions? options,
    String? skillId,
    String? classId,
  });
}

class _CopyWithImpl$Variables$Query$GetClassSkillInfo<TRes>
    implements CopyWith$Variables$Query$GetClassSkillInfo<TRes> {
  _CopyWithImpl$Variables$Query$GetClassSkillInfo(
    this._instance,
    this._then,
  );

  final Variables$Query$GetClassSkillInfo _instance;

  final TRes Function(Variables$Query$GetClassSkillInfo) _then;

  static const _undefined = {};

  TRes call({
    Object? options = _undefined,
    Object? skillId = _undefined,
    Object? classId = _undefined,
  }) =>
      _then(Variables$Query$GetClassSkillInfo._({
        ..._instance._$data,
        if (options != _undefined)
          'options': (options as Input$GetAllEdgeOptions?),
        if (skillId != _undefined && skillId != null)
          'skillId': (skillId as String),
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetClassSkillInfo<TRes>
    implements CopyWith$Variables$Query$GetClassSkillInfo<TRes> {
  _CopyWithStubImpl$Variables$Query$GetClassSkillInfo(this._res);

  TRes _res;

  call({
    Input$GetAllEdgeOptions? options,
    String? skillId,
    String? classId,
  }) =>
      _res;
}

class Query$GetClassSkillInfo {
  Query$GetClassSkillInfo({
    required this.getQuestionGroupsLinkedToSkill,
    required this.skillInfoSkill,
    required this.$__typename,
  });

  factory Query$GetClassSkillInfo.fromJson(Map<String, dynamic> json) {
    final l$getQuestionGroupsLinkedToSkill =
        json['getQuestionGroupsLinkedToSkill'];
    final l$skillInfoSkill = json['skillInfoSkill'];
    final l$$__typename = json['__typename'];
    return Query$GetClassSkillInfo(
      getQuestionGroupsLinkedToSkill:
          Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill.fromJson(
              (l$getQuestionGroupsLinkedToSkill as Map<String, dynamic>)),
      skillInfoSkill: Query$GetClassSkillInfo$skillInfoSkill.fromJson(
          (l$skillInfoSkill as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill
      getQuestionGroupsLinkedToSkill;

  final Query$GetClassSkillInfo$skillInfoSkill skillInfoSkill;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getQuestionGroupsLinkedToSkill = getQuestionGroupsLinkedToSkill;
    _resultData['getQuestionGroupsLinkedToSkill'] =
        l$getQuestionGroupsLinkedToSkill.toJson();
    final l$skillInfoSkill = skillInfoSkill;
    _resultData['skillInfoSkill'] = l$skillInfoSkill.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getQuestionGroupsLinkedToSkill = getQuestionGroupsLinkedToSkill;
    final l$skillInfoSkill = skillInfoSkill;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$getQuestionGroupsLinkedToSkill,
      l$skillInfoSkill,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetClassSkillInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$getQuestionGroupsLinkedToSkill = getQuestionGroupsLinkedToSkill;
    final lOther$getQuestionGroupsLinkedToSkill =
        other.getQuestionGroupsLinkedToSkill;
    if (l$getQuestionGroupsLinkedToSkill !=
        lOther$getQuestionGroupsLinkedToSkill) {
      return false;
    }
    final l$skillInfoSkill = skillInfoSkill;
    final lOther$skillInfoSkill = other.skillInfoSkill;
    if (l$skillInfoSkill != lOther$skillInfoSkill) {
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

extension UtilityExtension$Query$GetClassSkillInfo on Query$GetClassSkillInfo {
  CopyWith$Query$GetClassSkillInfo<Query$GetClassSkillInfo> get copyWith =>
      CopyWith$Query$GetClassSkillInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetClassSkillInfo<TRes> {
  factory CopyWith$Query$GetClassSkillInfo(
    Query$GetClassSkillInfo instance,
    TRes Function(Query$GetClassSkillInfo) then,
  ) = _CopyWithImpl$Query$GetClassSkillInfo;

  factory CopyWith$Query$GetClassSkillInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetClassSkillInfo;

  TRes call({
    Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill?
        getQuestionGroupsLinkedToSkill,
    Query$GetClassSkillInfo$skillInfoSkill? skillInfoSkill,
    String? $__typename,
  });
  CopyWith$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill<TRes>
      get getQuestionGroupsLinkedToSkill;
  CopyWith$Query$GetClassSkillInfo$skillInfoSkill<TRes> get skillInfoSkill;
}

class _CopyWithImpl$Query$GetClassSkillInfo<TRes>
    implements CopyWith$Query$GetClassSkillInfo<TRes> {
  _CopyWithImpl$Query$GetClassSkillInfo(
    this._instance,
    this._then,
  );

  final Query$GetClassSkillInfo _instance;

  final TRes Function(Query$GetClassSkillInfo) _then;

  static const _undefined = {};

  TRes call({
    Object? getQuestionGroupsLinkedToSkill = _undefined,
    Object? skillInfoSkill = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetClassSkillInfo(
        getQuestionGroupsLinkedToSkill:
            getQuestionGroupsLinkedToSkill == _undefined ||
                    getQuestionGroupsLinkedToSkill == null
                ? _instance.getQuestionGroupsLinkedToSkill
                : (getQuestionGroupsLinkedToSkill
                    as Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill),
        skillInfoSkill: skillInfoSkill == _undefined || skillInfoSkill == null
            ? _instance.skillInfoSkill
            : (skillInfoSkill as Query$GetClassSkillInfo$skillInfoSkill),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill<TRes>
      get getQuestionGroupsLinkedToSkill {
    final local$getQuestionGroupsLinkedToSkill =
        _instance.getQuestionGroupsLinkedToSkill;
    return CopyWith$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill(
        local$getQuestionGroupsLinkedToSkill,
        (e) => call(getQuestionGroupsLinkedToSkill: e));
  }

  CopyWith$Query$GetClassSkillInfo$skillInfoSkill<TRes> get skillInfoSkill {
    final local$skillInfoSkill = _instance.skillInfoSkill;
    return CopyWith$Query$GetClassSkillInfo$skillInfoSkill(
        local$skillInfoSkill, (e) => call(skillInfoSkill: e));
  }
}

class _CopyWithStubImpl$Query$GetClassSkillInfo<TRes>
    implements CopyWith$Query$GetClassSkillInfo<TRes> {
  _CopyWithStubImpl$Query$GetClassSkillInfo(this._res);

  TRes _res;

  call({
    Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill?
        getQuestionGroupsLinkedToSkill,
    Query$GetClassSkillInfo$skillInfoSkill? skillInfoSkill,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill<TRes>
      get getQuestionGroupsLinkedToSkill =>
          CopyWith$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill.stub(
              _res);
  CopyWith$Query$GetClassSkillInfo$skillInfoSkill<TRes> get skillInfoSkill =>
      CopyWith$Query$GetClassSkillInfo$skillInfoSkill.stub(_res);
}

const documentNodeQueryGetClassSkillInfo = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetClassSkillInfo'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'options')),
        type: NamedTypeNode(
          name: NameNode(value: 'GetAllEdgeOptions'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'skillId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
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
        name: NameNode(value: 'skill'),
        alias: NameNode(value: 'getQuestionGroupsLinkedToSkill'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'skillId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'allQuestionGroups'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'options'),
                value: VariableNode(name: NameNode(value: 'options')),
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
                name: NameNode(value: 'allQuestions'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'Question'),
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
      FieldNode(
        name: NameNode(value: 'skill'),
        alias: NameNode(value: 'skillInfoSkill'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'skillId')),
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionQuestion,
  fragmentDefinitionAnswer,
]);
Query$GetClassSkillInfo _parserFn$Query$GetClassSkillInfo(
        Map<String, dynamic> data) =>
    Query$GetClassSkillInfo.fromJson(data);

class Options$Query$GetClassSkillInfo
    extends graphql.QueryOptions<Query$GetClassSkillInfo> {
  Options$Query$GetClassSkillInfo({
    String? operationName,
    required Variables$Query$GetClassSkillInfo variables,
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
          document: documentNodeQueryGetClassSkillInfo,
          parserFn: _parserFn$Query$GetClassSkillInfo,
        );
}

class WatchOptions$Query$GetClassSkillInfo
    extends graphql.WatchQueryOptions<Query$GetClassSkillInfo> {
  WatchOptions$Query$GetClassSkillInfo({
    String? operationName,
    required Variables$Query$GetClassSkillInfo variables,
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
          document: documentNodeQueryGetClassSkillInfo,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetClassSkillInfo,
        );
}

class FetchMoreOptions$Query$GetClassSkillInfo
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetClassSkillInfo({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetClassSkillInfo variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetClassSkillInfo,
        );
}

extension ClientExtension$Query$GetClassSkillInfo on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetClassSkillInfo>> query$GetClassSkillInfo(
          Options$Query$GetClassSkillInfo options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetClassSkillInfo> watchQuery$GetClassSkillInfo(
          WatchOptions$Query$GetClassSkillInfo options) =>
      this.watchQuery(options);
  void writeQuery$GetClassSkillInfo({
    required Query$GetClassSkillInfo data,
    required Variables$Query$GetClassSkillInfo variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetClassSkillInfo),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetClassSkillInfo? readQuery$GetClassSkillInfo({
    required Variables$Query$GetClassSkillInfo variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetClassSkillInfo),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetClassSkillInfo.fromJson(result);
  }
}

class Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill {
  Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill({
    required this.allQuestionGroups,
    required this.$__typename,
  });

  factory Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill.fromJson(
      Map<String, dynamic> json) {
    final l$allQuestionGroups = json['allQuestionGroups'];
    final l$$__typename = json['__typename'];
    return Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill(
      allQuestionGroups: (l$allQuestionGroups as List<dynamic>)
          .map((e) =>
              Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
          Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups>
      allQuestionGroups;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allQuestionGroups = allQuestionGroups;
    _resultData['allQuestionGroups'] =
        l$allQuestionGroups.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allQuestionGroups = allQuestionGroups;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$allQuestionGroups.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allQuestionGroups = allQuestionGroups;
    final lOther$allQuestionGroups = other.allQuestionGroups;
    if (l$allQuestionGroups.length != lOther$allQuestionGroups.length) {
      return false;
    }
    for (int i = 0; i < l$allQuestionGroups.length; i++) {
      final l$allQuestionGroups$entry = l$allQuestionGroups[i];
      final lOther$allQuestionGroups$entry = lOther$allQuestionGroups[i];
      if (l$allQuestionGroups$entry != lOther$allQuestionGroups$entry) {
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

extension UtilityExtension$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill
    on Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill {
  CopyWith$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill<
          Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill>
      get copyWith =>
          CopyWith$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill<
    TRes> {
  factory CopyWith$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill(
    Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill instance,
    TRes Function(Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill) then,
  ) = _CopyWithImpl$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill;

  factory CopyWith$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill;

  TRes call({
    List<Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups>?
        allQuestionGroups,
    String? $__typename,
  });
  TRes allQuestionGroups(
      Iterable<Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups> Function(
              Iterable<
                  CopyWith$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups<
                      Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups>>)
          _fn);
}

class _CopyWithImpl$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill<TRes>
    implements
        CopyWith$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill<TRes> {
  _CopyWithImpl$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill(
    this._instance,
    this._then,
  );

  final Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill _instance;

  final TRes Function(Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill)
      _then;

  static const _undefined = {};

  TRes call({
    Object? allQuestionGroups = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill(
        allQuestionGroups: allQuestionGroups == _undefined ||
                allQuestionGroups == null
            ? _instance.allQuestionGroups
            : (allQuestionGroups as List<
                Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes allQuestionGroups(
          Iterable<Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups> Function(
                  Iterable<
                      CopyWith$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups<
                          Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups>>)
              _fn) =>
      call(
          allQuestionGroups: _fn(_instance.allQuestionGroups.map((e) =>
              CopyWith$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill<
        TRes>
    implements
        CopyWith$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill<TRes> {
  _CopyWithStubImpl$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill(
      this._res);

  TRes _res;

  call({
    List<Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups>?
        allQuestionGroups,
    String? $__typename,
  }) =>
      _res;
  allQuestionGroups(_fn) => _res;
}

class Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups {
  Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups({
    required this.id,
    required this.allQuestions,
    required this.$__typename,
  });

  factory Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$allQuestions = json['allQuestions'];
    final l$$__typename = json['__typename'];
    return Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups(
      id: (l$id as String),
      allQuestions: (l$allQuestions as List<dynamic>)
          .map((e) => Fragment$Question.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final List<Fragment$Question> allQuestions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$allQuestions = allQuestions;
    _resultData['allQuestions'] =
        l$allQuestions.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$allQuestions = allQuestions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$allQuestions.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$allQuestions = allQuestions;
    final lOther$allQuestions = other.allQuestions;
    if (l$allQuestions.length != lOther$allQuestions.length) {
      return false;
    }
    for (int i = 0; i < l$allQuestions.length; i++) {
      final l$allQuestions$entry = l$allQuestions[i];
      final lOther$allQuestions$entry = lOther$allQuestions[i];
      if (l$allQuestions$entry != lOther$allQuestions$entry) {
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

extension UtilityExtension$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups
    on Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups {
  CopyWith$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups<
          Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups>
      get copyWith =>
          CopyWith$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups<
    TRes> {
  factory CopyWith$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups(
    Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups
        instance,
    TRes Function(
            Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups)
        then,
  ) = _CopyWithImpl$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups;

  factory CopyWith$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups;

  TRes call({
    String? id,
    List<Fragment$Question>? allQuestions,
    String? $__typename,
  });
  TRes allQuestions(
      Iterable<Fragment$Question> Function(
              Iterable<CopyWith$Fragment$Question<Fragment$Question>>)
          _fn);
}

class _CopyWithImpl$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups<
        TRes>
    implements
        CopyWith$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups<
            TRes> {
  _CopyWithImpl$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups(
    this._instance,
    this._then,
  );

  final Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups
      _instance;

  final TRes Function(
          Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? allQuestions = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        allQuestions: allQuestions == _undefined || allQuestions == null
            ? _instance.allQuestions
            : (allQuestions as List<Fragment$Question>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes allQuestions(
          Iterable<Fragment$Question> Function(
                  Iterable<CopyWith$Fragment$Question<Fragment$Question>>)
              _fn) =>
      call(
          allQuestions:
              _fn(_instance.allQuestions.map((e) => CopyWith$Fragment$Question(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups<
        TRes>
    implements
        CopyWith$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups<
            TRes> {
  _CopyWithStubImpl$Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups(
      this._res);

  TRes _res;

  call({
    String? id,
    List<Fragment$Question>? allQuestions,
    String? $__typename,
  }) =>
      _res;
  allQuestions(_fn) => _res;
}

class Query$GetClassSkillInfo$skillInfoSkill {
  Query$GetClassSkillInfo$skillInfoSkill({
    required this.id,
    required this.title,
    required this.$__typename,
  });

  factory Query$GetClassSkillInfo$skillInfoSkill.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$GetClassSkillInfo$skillInfoSkill(
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
    if (!(other is Query$GetClassSkillInfo$skillInfoSkill) ||
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

extension UtilityExtension$Query$GetClassSkillInfo$skillInfoSkill
    on Query$GetClassSkillInfo$skillInfoSkill {
  CopyWith$Query$GetClassSkillInfo$skillInfoSkill<
          Query$GetClassSkillInfo$skillInfoSkill>
      get copyWith => CopyWith$Query$GetClassSkillInfo$skillInfoSkill(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetClassSkillInfo$skillInfoSkill<TRes> {
  factory CopyWith$Query$GetClassSkillInfo$skillInfoSkill(
    Query$GetClassSkillInfo$skillInfoSkill instance,
    TRes Function(Query$GetClassSkillInfo$skillInfoSkill) then,
  ) = _CopyWithImpl$Query$GetClassSkillInfo$skillInfoSkill;

  factory CopyWith$Query$GetClassSkillInfo$skillInfoSkill.stub(TRes res) =
      _CopyWithStubImpl$Query$GetClassSkillInfo$skillInfoSkill;

  TRes call({
    String? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetClassSkillInfo$skillInfoSkill<TRes>
    implements CopyWith$Query$GetClassSkillInfo$skillInfoSkill<TRes> {
  _CopyWithImpl$Query$GetClassSkillInfo$skillInfoSkill(
    this._instance,
    this._then,
  );

  final Query$GetClassSkillInfo$skillInfoSkill _instance;

  final TRes Function(Query$GetClassSkillInfo$skillInfoSkill) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetClassSkillInfo$skillInfoSkill(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetClassSkillInfo$skillInfoSkill<TRes>
    implements CopyWith$Query$GetClassSkillInfo$skillInfoSkill<TRes> {
  _CopyWithStubImpl$Query$GetClassSkillInfo$skillInfoSkill(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$TagQuestionGroupForClass {
  factory Variables$Mutation$TagQuestionGroupForClass({
    required String classId,
    required String questionGroupId,
    required Enum$QuestionGroupTag tag,
  }) =>
      Variables$Mutation$TagQuestionGroupForClass._({
        r'classId': classId,
        r'questionGroupId': questionGroupId,
        r'tag': tag,
      });

  Variables$Mutation$TagQuestionGroupForClass._(this._$data);

  factory Variables$Mutation$TagQuestionGroupForClass.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    final l$questionGroupId = data['questionGroupId'];
    result$data['questionGroupId'] = (l$questionGroupId as String);
    final l$tag = data['tag'];
    result$data['tag'] = fromJson$Enum$QuestionGroupTag((l$tag as String));
    return Variables$Mutation$TagQuestionGroupForClass._(result$data);
  }

  Map<String, dynamic> _$data;

  String get classId => (_$data['classId'] as String);
  String get questionGroupId => (_$data['questionGroupId'] as String);
  Enum$QuestionGroupTag get tag => (_$data['tag'] as Enum$QuestionGroupTag);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$classId = classId;
    result$data['classId'] = l$classId;
    final l$questionGroupId = questionGroupId;
    result$data['questionGroupId'] = l$questionGroupId;
    final l$tag = tag;
    result$data['tag'] = toJson$Enum$QuestionGroupTag(l$tag);
    return result$data;
  }

  CopyWith$Variables$Mutation$TagQuestionGroupForClass<
          Variables$Mutation$TagQuestionGroupForClass>
      get copyWith => CopyWith$Variables$Mutation$TagQuestionGroupForClass(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$TagQuestionGroupForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classId = classId;
    final lOther$classId = other.classId;
    if (l$classId != lOther$classId) {
      return false;
    }
    final l$questionGroupId = questionGroupId;
    final lOther$questionGroupId = other.questionGroupId;
    if (l$questionGroupId != lOther$questionGroupId) {
      return false;
    }
    final l$tag = tag;
    final lOther$tag = other.tag;
    if (l$tag != lOther$tag) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$classId = classId;
    final l$questionGroupId = questionGroupId;
    final l$tag = tag;
    return Object.hashAll([
      l$classId,
      l$questionGroupId,
      l$tag,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$TagQuestionGroupForClass<TRes> {
  factory CopyWith$Variables$Mutation$TagQuestionGroupForClass(
    Variables$Mutation$TagQuestionGroupForClass instance,
    TRes Function(Variables$Mutation$TagQuestionGroupForClass) then,
  ) = _CopyWithImpl$Variables$Mutation$TagQuestionGroupForClass;

  factory CopyWith$Variables$Mutation$TagQuestionGroupForClass.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$TagQuestionGroupForClass;

  TRes call({
    String? classId,
    String? questionGroupId,
    Enum$QuestionGroupTag? tag,
  });
}

class _CopyWithImpl$Variables$Mutation$TagQuestionGroupForClass<TRes>
    implements CopyWith$Variables$Mutation$TagQuestionGroupForClass<TRes> {
  _CopyWithImpl$Variables$Mutation$TagQuestionGroupForClass(
    this._instance,
    this._then,
  );

  final Variables$Mutation$TagQuestionGroupForClass _instance;

  final TRes Function(Variables$Mutation$TagQuestionGroupForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? classId = _undefined,
    Object? questionGroupId = _undefined,
    Object? tag = _undefined,
  }) =>
      _then(Variables$Mutation$TagQuestionGroupForClass._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
        if (questionGroupId != _undefined && questionGroupId != null)
          'questionGroupId': (questionGroupId as String),
        if (tag != _undefined && tag != null)
          'tag': (tag as Enum$QuestionGroupTag),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$TagQuestionGroupForClass<TRes>
    implements CopyWith$Variables$Mutation$TagQuestionGroupForClass<TRes> {
  _CopyWithStubImpl$Variables$Mutation$TagQuestionGroupForClass(this._res);

  TRes _res;

  call({
    String? classId,
    String? questionGroupId,
    Enum$QuestionGroupTag? tag,
  }) =>
      _res;
}

class Mutation$TagQuestionGroupForClass {
  Mutation$TagQuestionGroupForClass({
    required this.tagQuestionGroupForClass,
    required this.$__typename,
  });

  factory Mutation$TagQuestionGroupForClass.fromJson(
      Map<String, dynamic> json) {
    final l$tagQuestionGroupForClass = json['tagQuestionGroupForClass'];
    final l$$__typename = json['__typename'];
    return Mutation$TagQuestionGroupForClass(
      tagQuestionGroupForClass:
          Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass.fromJson(
              (l$tagQuestionGroupForClass as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass
      tagQuestionGroupForClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$tagQuestionGroupForClass = tagQuestionGroupForClass;
    _resultData['tagQuestionGroupForClass'] =
        l$tagQuestionGroupForClass.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$tagQuestionGroupForClass = tagQuestionGroupForClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$tagQuestionGroupForClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$TagQuestionGroupForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$tagQuestionGroupForClass = tagQuestionGroupForClass;
    final lOther$tagQuestionGroupForClass = other.tagQuestionGroupForClass;
    if (l$tagQuestionGroupForClass != lOther$tagQuestionGroupForClass) {
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

extension UtilityExtension$Mutation$TagQuestionGroupForClass
    on Mutation$TagQuestionGroupForClass {
  CopyWith$Mutation$TagQuestionGroupForClass<Mutation$TagQuestionGroupForClass>
      get copyWith => CopyWith$Mutation$TagQuestionGroupForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$TagQuestionGroupForClass<TRes> {
  factory CopyWith$Mutation$TagQuestionGroupForClass(
    Mutation$TagQuestionGroupForClass instance,
    TRes Function(Mutation$TagQuestionGroupForClass) then,
  ) = _CopyWithImpl$Mutation$TagQuestionGroupForClass;

  factory CopyWith$Mutation$TagQuestionGroupForClass.stub(TRes res) =
      _CopyWithStubImpl$Mutation$TagQuestionGroupForClass;

  TRes call({
    Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass?
        tagQuestionGroupForClass,
    String? $__typename,
  });
  CopyWith$Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass<TRes>
      get tagQuestionGroupForClass;
}

class _CopyWithImpl$Mutation$TagQuestionGroupForClass<TRes>
    implements CopyWith$Mutation$TagQuestionGroupForClass<TRes> {
  _CopyWithImpl$Mutation$TagQuestionGroupForClass(
    this._instance,
    this._then,
  );

  final Mutation$TagQuestionGroupForClass _instance;

  final TRes Function(Mutation$TagQuestionGroupForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? tagQuestionGroupForClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$TagQuestionGroupForClass(
        tagQuestionGroupForClass: tagQuestionGroupForClass == _undefined ||
                tagQuestionGroupForClass == null
            ? _instance.tagQuestionGroupForClass
            : (tagQuestionGroupForClass
                as Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass<TRes>
      get tagQuestionGroupForClass {
    final local$tagQuestionGroupForClass = _instance.tagQuestionGroupForClass;
    return CopyWith$Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass(
        local$tagQuestionGroupForClass,
        (e) => call(tagQuestionGroupForClass: e));
  }
}

class _CopyWithStubImpl$Mutation$TagQuestionGroupForClass<TRes>
    implements CopyWith$Mutation$TagQuestionGroupForClass<TRes> {
  _CopyWithStubImpl$Mutation$TagQuestionGroupForClass(this._res);

  TRes _res;

  call({
    Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass?
        tagQuestionGroupForClass,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass<TRes>
      get tagQuestionGroupForClass =>
          CopyWith$Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass
              .stub(_res);
}

const documentNodeMutationTagQuestionGroupForClass = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'TagQuestionGroupForClass'),
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
        variable: VariableNode(name: NameNode(value: 'questionGroupId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'tag')),
        type: NamedTypeNode(
          name: NameNode(value: 'QuestionGroupTag'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'tagQuestionGroupForClass'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'classId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'questionGroupID'),
            value: VariableNode(name: NameNode(value: 'questionGroupId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'tag'),
            value: VariableNode(name: NameNode(value: 'tag')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'questionGroupID'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'tag'),
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
Mutation$TagQuestionGroupForClass _parserFn$Mutation$TagQuestionGroupForClass(
        Map<String, dynamic> data) =>
    Mutation$TagQuestionGroupForClass.fromJson(data);
typedef OnMutationCompleted$Mutation$TagQuestionGroupForClass = FutureOr<void>
    Function(
  dynamic,
  Mutation$TagQuestionGroupForClass?,
);

class Options$Mutation$TagQuestionGroupForClass
    extends graphql.MutationOptions<Mutation$TagQuestionGroupForClass> {
  Options$Mutation$TagQuestionGroupForClass({
    String? operationName,
    required Variables$Mutation$TagQuestionGroupForClass variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$TagQuestionGroupForClass? onCompleted,
    graphql.OnMutationUpdate<Mutation$TagQuestionGroupForClass>? update,
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
                        : _parserFn$Mutation$TagQuestionGroupForClass(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationTagQuestionGroupForClass,
          parserFn: _parserFn$Mutation$TagQuestionGroupForClass,
        );

  final OnMutationCompleted$Mutation$TagQuestionGroupForClass?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$TagQuestionGroupForClass
    extends graphql.WatchQueryOptions<Mutation$TagQuestionGroupForClass> {
  WatchOptions$Mutation$TagQuestionGroupForClass({
    String? operationName,
    required Variables$Mutation$TagQuestionGroupForClass variables,
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
          document: documentNodeMutationTagQuestionGroupForClass,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$TagQuestionGroupForClass,
        );
}

extension ClientExtension$Mutation$TagQuestionGroupForClass
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$TagQuestionGroupForClass>>
      mutate$TagQuestionGroupForClass(
              Options$Mutation$TagQuestionGroupForClass options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$TagQuestionGroupForClass>
      watchMutation$TagQuestionGroupForClass(
              WatchOptions$Mutation$TagQuestionGroupForClass options) =>
          this.watchMutation(options);
}

class Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass {
  Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass({
    required this.questionGroupID,
    required this.tag,
    required this.$__typename,
  });

  factory Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass.fromJson(
      Map<String, dynamic> json) {
    final l$questionGroupID = json['questionGroupID'];
    final l$tag = json['tag'];
    final l$$__typename = json['__typename'];
    return Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass(
      questionGroupID: (l$questionGroupID as String),
      tag: fromJson$Enum$QuestionGroupTag((l$tag as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String questionGroupID;

  final Enum$QuestionGroupTag tag;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$questionGroupID = questionGroupID;
    _resultData['questionGroupID'] = l$questionGroupID;
    final l$tag = tag;
    _resultData['tag'] = toJson$Enum$QuestionGroupTag(l$tag);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$questionGroupID = questionGroupID;
    final l$tag = tag;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$questionGroupID,
      l$tag,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$questionGroupID = questionGroupID;
    final lOther$questionGroupID = other.questionGroupID;
    if (l$questionGroupID != lOther$questionGroupID) {
      return false;
    }
    final l$tag = tag;
    final lOther$tag = other.tag;
    if (l$tag != lOther$tag) {
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

extension UtilityExtension$Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass
    on Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass {
  CopyWith$Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass<
          Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass>
      get copyWith =>
          CopyWith$Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass<
    TRes> {
  factory CopyWith$Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass(
    Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass instance,
    TRes Function(Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass)
        then,
  ) = _CopyWithImpl$Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass;

  factory CopyWith$Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass;

  TRes call({
    String? questionGroupID,
    Enum$QuestionGroupTag? tag,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass<
        TRes>
    implements
        CopyWith$Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass<
            TRes> {
  _CopyWithImpl$Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass(
    this._instance,
    this._then,
  );

  final Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass _instance;

  final TRes Function(
      Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? questionGroupID = _undefined,
    Object? tag = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass(
        questionGroupID:
            questionGroupID == _undefined || questionGroupID == null
                ? _instance.questionGroupID
                : (questionGroupID as String),
        tag: tag == _undefined || tag == null
            ? _instance.tag
            : (tag as Enum$QuestionGroupTag),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass<
        TRes>
    implements
        CopyWith$Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass<
            TRes> {
  _CopyWithStubImpl$Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass(
      this._res);

  TRes _res;

  call({
    String? questionGroupID,
    Enum$QuestionGroupTag? tag,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$AnswerPracticeQuestionForClass {
  factory Variables$Mutation$AnswerPracticeQuestionForClass({
    required String classId,
    required String questionId,
    required String answer,
  }) =>
      Variables$Mutation$AnswerPracticeQuestionForClass._({
        r'classId': classId,
        r'questionId': questionId,
        r'answer': answer,
      });

  Variables$Mutation$AnswerPracticeQuestionForClass._(this._$data);

  factory Variables$Mutation$AnswerPracticeQuestionForClass.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    final l$questionId = data['questionId'];
    result$data['questionId'] = (l$questionId as String);
    final l$answer = data['answer'];
    result$data['answer'] = (l$answer as String);
    return Variables$Mutation$AnswerPracticeQuestionForClass._(result$data);
  }

  Map<String, dynamic> _$data;

  String get classId => (_$data['classId'] as String);
  String get questionId => (_$data['questionId'] as String);
  String get answer => (_$data['answer'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$classId = classId;
    result$data['classId'] = l$classId;
    final l$questionId = questionId;
    result$data['questionId'] = l$questionId;
    final l$answer = answer;
    result$data['answer'] = l$answer;
    return result$data;
  }

  CopyWith$Variables$Mutation$AnswerPracticeQuestionForClass<
          Variables$Mutation$AnswerPracticeQuestionForClass>
      get copyWith =>
          CopyWith$Variables$Mutation$AnswerPracticeQuestionForClass(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$AnswerPracticeQuestionForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classId = classId;
    final lOther$classId = other.classId;
    if (l$classId != lOther$classId) {
      return false;
    }
    final l$questionId = questionId;
    final lOther$questionId = other.questionId;
    if (l$questionId != lOther$questionId) {
      return false;
    }
    final l$answer = answer;
    final lOther$answer = other.answer;
    if (l$answer != lOther$answer) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$classId = classId;
    final l$questionId = questionId;
    final l$answer = answer;
    return Object.hashAll([
      l$classId,
      l$questionId,
      l$answer,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$AnswerPracticeQuestionForClass<
    TRes> {
  factory CopyWith$Variables$Mutation$AnswerPracticeQuestionForClass(
    Variables$Mutation$AnswerPracticeQuestionForClass instance,
    TRes Function(Variables$Mutation$AnswerPracticeQuestionForClass) then,
  ) = _CopyWithImpl$Variables$Mutation$AnswerPracticeQuestionForClass;

  factory CopyWith$Variables$Mutation$AnswerPracticeQuestionForClass.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AnswerPracticeQuestionForClass;

  TRes call({
    String? classId,
    String? questionId,
    String? answer,
  });
}

class _CopyWithImpl$Variables$Mutation$AnswerPracticeQuestionForClass<TRes>
    implements
        CopyWith$Variables$Mutation$AnswerPracticeQuestionForClass<TRes> {
  _CopyWithImpl$Variables$Mutation$AnswerPracticeQuestionForClass(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AnswerPracticeQuestionForClass _instance;

  final TRes Function(Variables$Mutation$AnswerPracticeQuestionForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? classId = _undefined,
    Object? questionId = _undefined,
    Object? answer = _undefined,
  }) =>
      _then(Variables$Mutation$AnswerPracticeQuestionForClass._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
        if (questionId != _undefined && questionId != null)
          'questionId': (questionId as String),
        if (answer != _undefined && answer != null)
          'answer': (answer as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$AnswerPracticeQuestionForClass<TRes>
    implements
        CopyWith$Variables$Mutation$AnswerPracticeQuestionForClass<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AnswerPracticeQuestionForClass(
      this._res);

  TRes _res;

  call({
    String? classId,
    String? questionId,
    String? answer,
  }) =>
      _res;
}

class Mutation$AnswerPracticeQuestionForClass {
  Mutation$AnswerPracticeQuestionForClass({
    required this.answerPracticeQuestionForClass,
    required this.$__typename,
  });

  factory Mutation$AnswerPracticeQuestionForClass.fromJson(
      Map<String, dynamic> json) {
    final l$answerPracticeQuestionForClass =
        json['answerPracticeQuestionForClass'];
    final l$$__typename = json['__typename'];
    return Mutation$AnswerPracticeQuestionForClass(
      answerPracticeQuestionForClass:
          Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass
              .fromJson(
                  (l$answerPracticeQuestionForClass as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass
      answerPracticeQuestionForClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$answerPracticeQuestionForClass = answerPracticeQuestionForClass;
    _resultData['answerPracticeQuestionForClass'] =
        l$answerPracticeQuestionForClass.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$answerPracticeQuestionForClass = answerPracticeQuestionForClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$answerPracticeQuestionForClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$AnswerPracticeQuestionForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$answerPracticeQuestionForClass = answerPracticeQuestionForClass;
    final lOther$answerPracticeQuestionForClass =
        other.answerPracticeQuestionForClass;
    if (l$answerPracticeQuestionForClass !=
        lOther$answerPracticeQuestionForClass) {
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

extension UtilityExtension$Mutation$AnswerPracticeQuestionForClass
    on Mutation$AnswerPracticeQuestionForClass {
  CopyWith$Mutation$AnswerPracticeQuestionForClass<
          Mutation$AnswerPracticeQuestionForClass>
      get copyWith => CopyWith$Mutation$AnswerPracticeQuestionForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$AnswerPracticeQuestionForClass<TRes> {
  factory CopyWith$Mutation$AnswerPracticeQuestionForClass(
    Mutation$AnswerPracticeQuestionForClass instance,
    TRes Function(Mutation$AnswerPracticeQuestionForClass) then,
  ) = _CopyWithImpl$Mutation$AnswerPracticeQuestionForClass;

  factory CopyWith$Mutation$AnswerPracticeQuestionForClass.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AnswerPracticeQuestionForClass;

  TRes call({
    Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass?
        answerPracticeQuestionForClass,
    String? $__typename,
  });
  CopyWith$Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass<
      TRes> get answerPracticeQuestionForClass;
}

class _CopyWithImpl$Mutation$AnswerPracticeQuestionForClass<TRes>
    implements CopyWith$Mutation$AnswerPracticeQuestionForClass<TRes> {
  _CopyWithImpl$Mutation$AnswerPracticeQuestionForClass(
    this._instance,
    this._then,
  );

  final Mutation$AnswerPracticeQuestionForClass _instance;

  final TRes Function(Mutation$AnswerPracticeQuestionForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? answerPracticeQuestionForClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$AnswerPracticeQuestionForClass(
        answerPracticeQuestionForClass: answerPracticeQuestionForClass ==
                    _undefined ||
                answerPracticeQuestionForClass == null
            ? _instance.answerPracticeQuestionForClass
            : (answerPracticeQuestionForClass
                as Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass<
      TRes> get answerPracticeQuestionForClass {
    final local$answerPracticeQuestionForClass =
        _instance.answerPracticeQuestionForClass;
    return CopyWith$Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass(
        local$answerPracticeQuestionForClass,
        (e) => call(answerPracticeQuestionForClass: e));
  }
}

class _CopyWithStubImpl$Mutation$AnswerPracticeQuestionForClass<TRes>
    implements CopyWith$Mutation$AnswerPracticeQuestionForClass<TRes> {
  _CopyWithStubImpl$Mutation$AnswerPracticeQuestionForClass(this._res);

  TRes _res;

  call({
    Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass?
        answerPracticeQuestionForClass,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass<
          TRes>
      get answerPracticeQuestionForClass =>
          CopyWith$Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass
              .stub(_res);
}

const documentNodeMutationAnswerPracticeQuestionForClass =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'AnswerPracticeQuestionForClass'),
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
        variable: VariableNode(name: NameNode(value: 'questionId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'answer')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'answerPracticeQuestionForClass'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'classId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'questionID'),
            value: VariableNode(name: NameNode(value: 'questionId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'answer'),
            value: VariableNode(name: NameNode(value: 'answer')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'content'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isCorrect'),
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
Mutation$AnswerPracticeQuestionForClass
    _parserFn$Mutation$AnswerPracticeQuestionForClass(
            Map<String, dynamic> data) =>
        Mutation$AnswerPracticeQuestionForClass.fromJson(data);
typedef OnMutationCompleted$Mutation$AnswerPracticeQuestionForClass
    = FutureOr<void> Function(
  dynamic,
  Mutation$AnswerPracticeQuestionForClass?,
);

class Options$Mutation$AnswerPracticeQuestionForClass
    extends graphql.MutationOptions<Mutation$AnswerPracticeQuestionForClass> {
  Options$Mutation$AnswerPracticeQuestionForClass({
    String? operationName,
    required Variables$Mutation$AnswerPracticeQuestionForClass variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$AnswerPracticeQuestionForClass? onCompleted,
    graphql.OnMutationUpdate<Mutation$AnswerPracticeQuestionForClass>? update,
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
                        : _parserFn$Mutation$AnswerPracticeQuestionForClass(
                            data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAnswerPracticeQuestionForClass,
          parserFn: _parserFn$Mutation$AnswerPracticeQuestionForClass,
        );

  final OnMutationCompleted$Mutation$AnswerPracticeQuestionForClass?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$AnswerPracticeQuestionForClass
    extends graphql.WatchQueryOptions<Mutation$AnswerPracticeQuestionForClass> {
  WatchOptions$Mutation$AnswerPracticeQuestionForClass({
    String? operationName,
    required Variables$Mutation$AnswerPracticeQuestionForClass variables,
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
          document: documentNodeMutationAnswerPracticeQuestionForClass,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$AnswerPracticeQuestionForClass,
        );
}

extension ClientExtension$Mutation$AnswerPracticeQuestionForClass
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$AnswerPracticeQuestionForClass>>
      mutate$AnswerPracticeQuestionForClass(
              Options$Mutation$AnswerPracticeQuestionForClass options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$AnswerPracticeQuestionForClass>
      watchMutation$AnswerPracticeQuestionForClass(
              WatchOptions$Mutation$AnswerPracticeQuestionForClass options) =>
          this.watchMutation(options);
}

class Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass {
  Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass({
    required this.content,
    required this.id,
    required this.isCorrect,
    required this.$__typename,
  });

  factory Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass.fromJson(
      Map<String, dynamic> json) {
    final l$content = json['content'];
    final l$id = json['id'];
    final l$isCorrect = json['isCorrect'];
    final l$$__typename = json['__typename'];
    return Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass(
      content: (l$content as String),
      id: (l$id as String),
      isCorrect: (l$isCorrect as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final String id;

  final bool isCorrect;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$content = content;
    _resultData['content'] = l$content;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$isCorrect = isCorrect;
    _resultData['isCorrect'] = l$isCorrect;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$content = content;
    final l$id = id;
    final l$isCorrect = isCorrect;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$content,
      l$id,
      l$isCorrect,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$isCorrect = isCorrect;
    final lOther$isCorrect = other.isCorrect;
    if (l$isCorrect != lOther$isCorrect) {
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

extension UtilityExtension$Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass
    on Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass {
  CopyWith$Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass<
          Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass>
      get copyWith =>
          CopyWith$Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass<
    TRes> {
  factory CopyWith$Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass(
    Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass
        instance,
    TRes Function(
            Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass)
        then,
  ) = _CopyWithImpl$Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass;

  factory CopyWith$Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass;

  TRes call({
    String? content,
    String? id,
    bool? isCorrect,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass<
        TRes>
    implements
        CopyWith$Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass<
            TRes> {
  _CopyWithImpl$Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass(
    this._instance,
    this._then,
  );

  final Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass
      _instance;

  final TRes Function(
          Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass)
      _then;

  static const _undefined = {};

  TRes call({
    Object? content = _undefined,
    Object? id = _undefined,
    Object? isCorrect = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass(
        content: content == _undefined || content == null
            ? _instance.content
            : (content as String),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        isCorrect: isCorrect == _undefined || isCorrect == null
            ? _instance.isCorrect
            : (isCorrect as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass<
        TRes>
    implements
        CopyWith$Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass<
            TRes> {
  _CopyWithStubImpl$Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass(
      this._res);

  TRes _res;

  call({
    String? content,
    String? id,
    bool? isCorrect,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$ResetQuestionGroupForClass {
  factory Variables$Mutation$ResetQuestionGroupForClass({
    required String classId,
    required String questionGroupId,
  }) =>
      Variables$Mutation$ResetQuestionGroupForClass._({
        r'classId': classId,
        r'questionGroupId': questionGroupId,
      });

  Variables$Mutation$ResetQuestionGroupForClass._(this._$data);

  factory Variables$Mutation$ResetQuestionGroupForClass.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    final l$questionGroupId = data['questionGroupId'];
    result$data['questionGroupId'] = (l$questionGroupId as String);
    return Variables$Mutation$ResetQuestionGroupForClass._(result$data);
  }

  Map<String, dynamic> _$data;

  String get classId => (_$data['classId'] as String);
  String get questionGroupId => (_$data['questionGroupId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$classId = classId;
    result$data['classId'] = l$classId;
    final l$questionGroupId = questionGroupId;
    result$data['questionGroupId'] = l$questionGroupId;
    return result$data;
  }

  CopyWith$Variables$Mutation$ResetQuestionGroupForClass<
          Variables$Mutation$ResetQuestionGroupForClass>
      get copyWith => CopyWith$Variables$Mutation$ResetQuestionGroupForClass(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$ResetQuestionGroupForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classId = classId;
    final lOther$classId = other.classId;
    if (l$classId != lOther$classId) {
      return false;
    }
    final l$questionGroupId = questionGroupId;
    final lOther$questionGroupId = other.questionGroupId;
    if (l$questionGroupId != lOther$questionGroupId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$classId = classId;
    final l$questionGroupId = questionGroupId;
    return Object.hashAll([
      l$classId,
      l$questionGroupId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$ResetQuestionGroupForClass<TRes> {
  factory CopyWith$Variables$Mutation$ResetQuestionGroupForClass(
    Variables$Mutation$ResetQuestionGroupForClass instance,
    TRes Function(Variables$Mutation$ResetQuestionGroupForClass) then,
  ) = _CopyWithImpl$Variables$Mutation$ResetQuestionGroupForClass;

  factory CopyWith$Variables$Mutation$ResetQuestionGroupForClass.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ResetQuestionGroupForClass;

  TRes call({
    String? classId,
    String? questionGroupId,
  });
}

class _CopyWithImpl$Variables$Mutation$ResetQuestionGroupForClass<TRes>
    implements CopyWith$Variables$Mutation$ResetQuestionGroupForClass<TRes> {
  _CopyWithImpl$Variables$Mutation$ResetQuestionGroupForClass(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ResetQuestionGroupForClass _instance;

  final TRes Function(Variables$Mutation$ResetQuestionGroupForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? classId = _undefined,
    Object? questionGroupId = _undefined,
  }) =>
      _then(Variables$Mutation$ResetQuestionGroupForClass._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
        if (questionGroupId != _undefined && questionGroupId != null)
          'questionGroupId': (questionGroupId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ResetQuestionGroupForClass<TRes>
    implements CopyWith$Variables$Mutation$ResetQuestionGroupForClass<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ResetQuestionGroupForClass(this._res);

  TRes _res;

  call({
    String? classId,
    String? questionGroupId,
  }) =>
      _res;
}

class Mutation$ResetQuestionGroupForClass {
  Mutation$ResetQuestionGroupForClass({
    required this.resetQuestionGroupForClass,
    required this.$__typename,
  });

  factory Mutation$ResetQuestionGroupForClass.fromJson(
      Map<String, dynamic> json) {
    final l$resetQuestionGroupForClass = json['resetQuestionGroupForClass'];
    final l$$__typename = json['__typename'];
    return Mutation$ResetQuestionGroupForClass(
      resetQuestionGroupForClass: (l$resetQuestionGroupForClass as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool resetQuestionGroupForClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$resetQuestionGroupForClass = resetQuestionGroupForClass;
    _resultData['resetQuestionGroupForClass'] = l$resetQuestionGroupForClass;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$resetQuestionGroupForClass = resetQuestionGroupForClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$resetQuestionGroupForClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ResetQuestionGroupForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$resetQuestionGroupForClass = resetQuestionGroupForClass;
    final lOther$resetQuestionGroupForClass = other.resetQuestionGroupForClass;
    if (l$resetQuestionGroupForClass != lOther$resetQuestionGroupForClass) {
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

extension UtilityExtension$Mutation$ResetQuestionGroupForClass
    on Mutation$ResetQuestionGroupForClass {
  CopyWith$Mutation$ResetQuestionGroupForClass<
          Mutation$ResetQuestionGroupForClass>
      get copyWith => CopyWith$Mutation$ResetQuestionGroupForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ResetQuestionGroupForClass<TRes> {
  factory CopyWith$Mutation$ResetQuestionGroupForClass(
    Mutation$ResetQuestionGroupForClass instance,
    TRes Function(Mutation$ResetQuestionGroupForClass) then,
  ) = _CopyWithImpl$Mutation$ResetQuestionGroupForClass;

  factory CopyWith$Mutation$ResetQuestionGroupForClass.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ResetQuestionGroupForClass;

  TRes call({
    bool? resetQuestionGroupForClass,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ResetQuestionGroupForClass<TRes>
    implements CopyWith$Mutation$ResetQuestionGroupForClass<TRes> {
  _CopyWithImpl$Mutation$ResetQuestionGroupForClass(
    this._instance,
    this._then,
  );

  final Mutation$ResetQuestionGroupForClass _instance;

  final TRes Function(Mutation$ResetQuestionGroupForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? resetQuestionGroupForClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ResetQuestionGroupForClass(
        resetQuestionGroupForClass: resetQuestionGroupForClass == _undefined ||
                resetQuestionGroupForClass == null
            ? _instance.resetQuestionGroupForClass
            : (resetQuestionGroupForClass as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ResetQuestionGroupForClass<TRes>
    implements CopyWith$Mutation$ResetQuestionGroupForClass<TRes> {
  _CopyWithStubImpl$Mutation$ResetQuestionGroupForClass(this._res);

  TRes _res;

  call({
    bool? resetQuestionGroupForClass,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationResetQuestionGroupForClass =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ResetQuestionGroupForClass'),
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
        variable: VariableNode(name: NameNode(value: 'questionGroupId')),
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
        name: NameNode(value: 'resetQuestionGroupForClass'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'classId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'questionGroupID'),
            value: VariableNode(name: NameNode(value: 'questionGroupId')),
          ),
        ],
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
]);
Mutation$ResetQuestionGroupForClass
    _parserFn$Mutation$ResetQuestionGroupForClass(Map<String, dynamic> data) =>
        Mutation$ResetQuestionGroupForClass.fromJson(data);
typedef OnMutationCompleted$Mutation$ResetQuestionGroupForClass = FutureOr<void>
    Function(
  dynamic,
  Mutation$ResetQuestionGroupForClass?,
);

class Options$Mutation$ResetQuestionGroupForClass
    extends graphql.MutationOptions<Mutation$ResetQuestionGroupForClass> {
  Options$Mutation$ResetQuestionGroupForClass({
    String? operationName,
    required Variables$Mutation$ResetQuestionGroupForClass variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ResetQuestionGroupForClass? onCompleted,
    graphql.OnMutationUpdate<Mutation$ResetQuestionGroupForClass>? update,
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
                        : _parserFn$Mutation$ResetQuestionGroupForClass(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationResetQuestionGroupForClass,
          parserFn: _parserFn$Mutation$ResetQuestionGroupForClass,
        );

  final OnMutationCompleted$Mutation$ResetQuestionGroupForClass?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ResetQuestionGroupForClass
    extends graphql.WatchQueryOptions<Mutation$ResetQuestionGroupForClass> {
  WatchOptions$Mutation$ResetQuestionGroupForClass({
    String? operationName,
    required Variables$Mutation$ResetQuestionGroupForClass variables,
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
          document: documentNodeMutationResetQuestionGroupForClass,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ResetQuestionGroupForClass,
        );
}

extension ClientExtension$Mutation$ResetQuestionGroupForClass
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ResetQuestionGroupForClass>>
      mutate$ResetQuestionGroupForClass(
              Options$Mutation$ResetQuestionGroupForClass options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$ResetQuestionGroupForClass>
      watchMutation$ResetQuestionGroupForClass(
              WatchOptions$Mutation$ResetQuestionGroupForClass options) =>
          this.watchMutation(options);
}

class Variables$Mutation$ResetPracticeQuestionForClass {
  factory Variables$Mutation$ResetPracticeQuestionForClass({
    required String classId,
    required String questionId,
  }) =>
      Variables$Mutation$ResetPracticeQuestionForClass._({
        r'classId': classId,
        r'questionId': questionId,
      });

  Variables$Mutation$ResetPracticeQuestionForClass._(this._$data);

  factory Variables$Mutation$ResetPracticeQuestionForClass.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    final l$questionId = data['questionId'];
    result$data['questionId'] = (l$questionId as String);
    return Variables$Mutation$ResetPracticeQuestionForClass._(result$data);
  }

  Map<String, dynamic> _$data;

  String get classId => (_$data['classId'] as String);
  String get questionId => (_$data['questionId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$classId = classId;
    result$data['classId'] = l$classId;
    final l$questionId = questionId;
    result$data['questionId'] = l$questionId;
    return result$data;
  }

  CopyWith$Variables$Mutation$ResetPracticeQuestionForClass<
          Variables$Mutation$ResetPracticeQuestionForClass>
      get copyWith => CopyWith$Variables$Mutation$ResetPracticeQuestionForClass(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$ResetPracticeQuestionForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classId = classId;
    final lOther$classId = other.classId;
    if (l$classId != lOther$classId) {
      return false;
    }
    final l$questionId = questionId;
    final lOther$questionId = other.questionId;
    if (l$questionId != lOther$questionId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$classId = classId;
    final l$questionId = questionId;
    return Object.hashAll([
      l$classId,
      l$questionId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$ResetPracticeQuestionForClass<TRes> {
  factory CopyWith$Variables$Mutation$ResetPracticeQuestionForClass(
    Variables$Mutation$ResetPracticeQuestionForClass instance,
    TRes Function(Variables$Mutation$ResetPracticeQuestionForClass) then,
  ) = _CopyWithImpl$Variables$Mutation$ResetPracticeQuestionForClass;

  factory CopyWith$Variables$Mutation$ResetPracticeQuestionForClass.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ResetPracticeQuestionForClass;

  TRes call({
    String? classId,
    String? questionId,
  });
}

class _CopyWithImpl$Variables$Mutation$ResetPracticeQuestionForClass<TRes>
    implements CopyWith$Variables$Mutation$ResetPracticeQuestionForClass<TRes> {
  _CopyWithImpl$Variables$Mutation$ResetPracticeQuestionForClass(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ResetPracticeQuestionForClass _instance;

  final TRes Function(Variables$Mutation$ResetPracticeQuestionForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? classId = _undefined,
    Object? questionId = _undefined,
  }) =>
      _then(Variables$Mutation$ResetPracticeQuestionForClass._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
        if (questionId != _undefined && questionId != null)
          'questionId': (questionId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ResetPracticeQuestionForClass<TRes>
    implements CopyWith$Variables$Mutation$ResetPracticeQuestionForClass<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ResetPracticeQuestionForClass(this._res);

  TRes _res;

  call({
    String? classId,
    String? questionId,
  }) =>
      _res;
}

class Mutation$ResetPracticeQuestionForClass {
  Mutation$ResetPracticeQuestionForClass({
    required this.resetPracticeQuestionForClass,
    required this.$__typename,
  });

  factory Mutation$ResetPracticeQuestionForClass.fromJson(
      Map<String, dynamic> json) {
    final l$resetPracticeQuestionForClass =
        json['resetPracticeQuestionForClass'];
    final l$$__typename = json['__typename'];
    return Mutation$ResetPracticeQuestionForClass(
      resetPracticeQuestionForClass: (l$resetPracticeQuestionForClass as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool resetPracticeQuestionForClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$resetPracticeQuestionForClass = resetPracticeQuestionForClass;
    _resultData['resetPracticeQuestionForClass'] =
        l$resetPracticeQuestionForClass;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$resetPracticeQuestionForClass = resetPracticeQuestionForClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$resetPracticeQuestionForClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ResetPracticeQuestionForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$resetPracticeQuestionForClass = resetPracticeQuestionForClass;
    final lOther$resetPracticeQuestionForClass =
        other.resetPracticeQuestionForClass;
    if (l$resetPracticeQuestionForClass !=
        lOther$resetPracticeQuestionForClass) {
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

extension UtilityExtension$Mutation$ResetPracticeQuestionForClass
    on Mutation$ResetPracticeQuestionForClass {
  CopyWith$Mutation$ResetPracticeQuestionForClass<
          Mutation$ResetPracticeQuestionForClass>
      get copyWith => CopyWith$Mutation$ResetPracticeQuestionForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ResetPracticeQuestionForClass<TRes> {
  factory CopyWith$Mutation$ResetPracticeQuestionForClass(
    Mutation$ResetPracticeQuestionForClass instance,
    TRes Function(Mutation$ResetPracticeQuestionForClass) then,
  ) = _CopyWithImpl$Mutation$ResetPracticeQuestionForClass;

  factory CopyWith$Mutation$ResetPracticeQuestionForClass.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ResetPracticeQuestionForClass;

  TRes call({
    bool? resetPracticeQuestionForClass,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ResetPracticeQuestionForClass<TRes>
    implements CopyWith$Mutation$ResetPracticeQuestionForClass<TRes> {
  _CopyWithImpl$Mutation$ResetPracticeQuestionForClass(
    this._instance,
    this._then,
  );

  final Mutation$ResetPracticeQuestionForClass _instance;

  final TRes Function(Mutation$ResetPracticeQuestionForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? resetPracticeQuestionForClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ResetPracticeQuestionForClass(
        resetPracticeQuestionForClass:
            resetPracticeQuestionForClass == _undefined ||
                    resetPracticeQuestionForClass == null
                ? _instance.resetPracticeQuestionForClass
                : (resetPracticeQuestionForClass as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ResetPracticeQuestionForClass<TRes>
    implements CopyWith$Mutation$ResetPracticeQuestionForClass<TRes> {
  _CopyWithStubImpl$Mutation$ResetPracticeQuestionForClass(this._res);

  TRes _res;

  call({
    bool? resetPracticeQuestionForClass,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationResetPracticeQuestionForClass =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ResetPracticeQuestionForClass'),
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
        variable: VariableNode(name: NameNode(value: 'questionId')),
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
        name: NameNode(value: 'resetPracticeQuestionForClass'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'classId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'questionID'),
            value: VariableNode(name: NameNode(value: 'questionId')),
          ),
        ],
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
]);
Mutation$ResetPracticeQuestionForClass
    _parserFn$Mutation$ResetPracticeQuestionForClass(
            Map<String, dynamic> data) =>
        Mutation$ResetPracticeQuestionForClass.fromJson(data);
typedef OnMutationCompleted$Mutation$ResetPracticeQuestionForClass
    = FutureOr<void> Function(
  dynamic,
  Mutation$ResetPracticeQuestionForClass?,
);

class Options$Mutation$ResetPracticeQuestionForClass
    extends graphql.MutationOptions<Mutation$ResetPracticeQuestionForClass> {
  Options$Mutation$ResetPracticeQuestionForClass({
    String? operationName,
    required Variables$Mutation$ResetPracticeQuestionForClass variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ResetPracticeQuestionForClass? onCompleted,
    graphql.OnMutationUpdate<Mutation$ResetPracticeQuestionForClass>? update,
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
                        : _parserFn$Mutation$ResetPracticeQuestionForClass(
                            data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationResetPracticeQuestionForClass,
          parserFn: _parserFn$Mutation$ResetPracticeQuestionForClass,
        );

  final OnMutationCompleted$Mutation$ResetPracticeQuestionForClass?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ResetPracticeQuestionForClass
    extends graphql.WatchQueryOptions<Mutation$ResetPracticeQuestionForClass> {
  WatchOptions$Mutation$ResetPracticeQuestionForClass({
    String? operationName,
    required Variables$Mutation$ResetPracticeQuestionForClass variables,
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
          document: documentNodeMutationResetPracticeQuestionForClass,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ResetPracticeQuestionForClass,
        );
}

extension ClientExtension$Mutation$ResetPracticeQuestionForClass
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ResetPracticeQuestionForClass>>
      mutate$ResetPracticeQuestionForClass(
              Options$Mutation$ResetPracticeQuestionForClass options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$ResetPracticeQuestionForClass>
      watchMutation$ResetPracticeQuestionForClass(
              WatchOptions$Mutation$ResetPracticeQuestionForClass options) =>
          this.watchMutation(options);
}

class Variables$Query$GetQuestionGroupTagsForClass {
  factory Variables$Query$GetQuestionGroupTagsForClass({
    required String classId,
    required String skillId,
  }) =>
      Variables$Query$GetQuestionGroupTagsForClass._({
        r'classId': classId,
        r'skillId': skillId,
      });

  Variables$Query$GetQuestionGroupTagsForClass._(this._$data);

  factory Variables$Query$GetQuestionGroupTagsForClass.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    final l$skillId = data['skillId'];
    result$data['skillId'] = (l$skillId as String);
    return Variables$Query$GetQuestionGroupTagsForClass._(result$data);
  }

  Map<String, dynamic> _$data;

  String get classId => (_$data['classId'] as String);
  String get skillId => (_$data['skillId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$classId = classId;
    result$data['classId'] = l$classId;
    final l$skillId = skillId;
    result$data['skillId'] = l$skillId;
    return result$data;
  }

  CopyWith$Variables$Query$GetQuestionGroupTagsForClass<
          Variables$Query$GetQuestionGroupTagsForClass>
      get copyWith => CopyWith$Variables$Query$GetQuestionGroupTagsForClass(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetQuestionGroupTagsForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classId = classId;
    final lOther$classId = other.classId;
    if (l$classId != lOther$classId) {
      return false;
    }
    final l$skillId = skillId;
    final lOther$skillId = other.skillId;
    if (l$skillId != lOther$skillId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$classId = classId;
    final l$skillId = skillId;
    return Object.hashAll([
      l$classId,
      l$skillId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetQuestionGroupTagsForClass<TRes> {
  factory CopyWith$Variables$Query$GetQuestionGroupTagsForClass(
    Variables$Query$GetQuestionGroupTagsForClass instance,
    TRes Function(Variables$Query$GetQuestionGroupTagsForClass) then,
  ) = _CopyWithImpl$Variables$Query$GetQuestionGroupTagsForClass;

  factory CopyWith$Variables$Query$GetQuestionGroupTagsForClass.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetQuestionGroupTagsForClass;

  TRes call({
    String? classId,
    String? skillId,
  });
}

class _CopyWithImpl$Variables$Query$GetQuestionGroupTagsForClass<TRes>
    implements CopyWith$Variables$Query$GetQuestionGroupTagsForClass<TRes> {
  _CopyWithImpl$Variables$Query$GetQuestionGroupTagsForClass(
    this._instance,
    this._then,
  );

  final Variables$Query$GetQuestionGroupTagsForClass _instance;

  final TRes Function(Variables$Query$GetQuestionGroupTagsForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? classId = _undefined,
    Object? skillId = _undefined,
  }) =>
      _then(Variables$Query$GetQuestionGroupTagsForClass._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
        if (skillId != _undefined && skillId != null)
          'skillId': (skillId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetQuestionGroupTagsForClass<TRes>
    implements CopyWith$Variables$Query$GetQuestionGroupTagsForClass<TRes> {
  _CopyWithStubImpl$Variables$Query$GetQuestionGroupTagsForClass(this._res);

  TRes _res;

  call({
    String? classId,
    String? skillId,
  }) =>
      _res;
}

class Query$GetQuestionGroupTagsForClass {
  Query$GetQuestionGroupTagsForClass({
    required this.skill,
    required this.$__typename,
  });

  factory Query$GetQuestionGroupTagsForClass.fromJson(
      Map<String, dynamic> json) {
    final l$skill = json['skill'];
    final l$$__typename = json['__typename'];
    return Query$GetQuestionGroupTagsForClass(
      skill: Query$GetQuestionGroupTagsForClass$skill.fromJson(
          (l$skill as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetQuestionGroupTagsForClass$skill skill;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$skill = skill;
    _resultData['skill'] = l$skill.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$skill = skill;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$skill,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetQuestionGroupTagsForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$skill = skill;
    final lOther$skill = other.skill;
    if (l$skill != lOther$skill) {
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

extension UtilityExtension$Query$GetQuestionGroupTagsForClass
    on Query$GetQuestionGroupTagsForClass {
  CopyWith$Query$GetQuestionGroupTagsForClass<
          Query$GetQuestionGroupTagsForClass>
      get copyWith => CopyWith$Query$GetQuestionGroupTagsForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetQuestionGroupTagsForClass<TRes> {
  factory CopyWith$Query$GetQuestionGroupTagsForClass(
    Query$GetQuestionGroupTagsForClass instance,
    TRes Function(Query$GetQuestionGroupTagsForClass) then,
  ) = _CopyWithImpl$Query$GetQuestionGroupTagsForClass;

  factory CopyWith$Query$GetQuestionGroupTagsForClass.stub(TRes res) =
      _CopyWithStubImpl$Query$GetQuestionGroupTagsForClass;

  TRes call({
    Query$GetQuestionGroupTagsForClass$skill? skill,
    String? $__typename,
  });
  CopyWith$Query$GetQuestionGroupTagsForClass$skill<TRes> get skill;
}

class _CopyWithImpl$Query$GetQuestionGroupTagsForClass<TRes>
    implements CopyWith$Query$GetQuestionGroupTagsForClass<TRes> {
  _CopyWithImpl$Query$GetQuestionGroupTagsForClass(
    this._instance,
    this._then,
  );

  final Query$GetQuestionGroupTagsForClass _instance;

  final TRes Function(Query$GetQuestionGroupTagsForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? skill = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetQuestionGroupTagsForClass(
        skill: skill == _undefined || skill == null
            ? _instance.skill
            : (skill as Query$GetQuestionGroupTagsForClass$skill),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetQuestionGroupTagsForClass$skill<TRes> get skill {
    final local$skill = _instance.skill;
    return CopyWith$Query$GetQuestionGroupTagsForClass$skill(
        local$skill, (e) => call(skill: e));
  }
}

class _CopyWithStubImpl$Query$GetQuestionGroupTagsForClass<TRes>
    implements CopyWith$Query$GetQuestionGroupTagsForClass<TRes> {
  _CopyWithStubImpl$Query$GetQuestionGroupTagsForClass(this._res);

  TRes _res;

  call({
    Query$GetQuestionGroupTagsForClass$skill? skill,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetQuestionGroupTagsForClass$skill<TRes> get skill =>
      CopyWith$Query$GetQuestionGroupTagsForClass$skill.stub(_res);
}

const documentNodeQueryGetQuestionGroupTagsForClass =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetQuestionGroupTagsForClass'),
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
        variable: VariableNode(name: NameNode(value: 'skillId')),
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
        name: NameNode(value: 'skill'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'skillId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'getQuestionGroupTagsForClass'),
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
                name: NameNode(value: 'questionGroupID'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'tag'),
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
Query$GetQuestionGroupTagsForClass _parserFn$Query$GetQuestionGroupTagsForClass(
        Map<String, dynamic> data) =>
    Query$GetQuestionGroupTagsForClass.fromJson(data);

class Options$Query$GetQuestionGroupTagsForClass
    extends graphql.QueryOptions<Query$GetQuestionGroupTagsForClass> {
  Options$Query$GetQuestionGroupTagsForClass({
    String? operationName,
    required Variables$Query$GetQuestionGroupTagsForClass variables,
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
          document: documentNodeQueryGetQuestionGroupTagsForClass,
          parserFn: _parserFn$Query$GetQuestionGroupTagsForClass,
        );
}

class WatchOptions$Query$GetQuestionGroupTagsForClass
    extends graphql.WatchQueryOptions<Query$GetQuestionGroupTagsForClass> {
  WatchOptions$Query$GetQuestionGroupTagsForClass({
    String? operationName,
    required Variables$Query$GetQuestionGroupTagsForClass variables,
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
          document: documentNodeQueryGetQuestionGroupTagsForClass,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetQuestionGroupTagsForClass,
        );
}

class FetchMoreOptions$Query$GetQuestionGroupTagsForClass
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetQuestionGroupTagsForClass({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetQuestionGroupTagsForClass variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetQuestionGroupTagsForClass,
        );
}

extension ClientExtension$Query$GetQuestionGroupTagsForClass
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetQuestionGroupTagsForClass>>
      query$GetQuestionGroupTagsForClass(
              Options$Query$GetQuestionGroupTagsForClass options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetQuestionGroupTagsForClass>
      watchQuery$GetQuestionGroupTagsForClass(
              WatchOptions$Query$GetQuestionGroupTagsForClass options) =>
          this.watchQuery(options);
  void writeQuery$GetQuestionGroupTagsForClass({
    required Query$GetQuestionGroupTagsForClass data,
    required Variables$Query$GetQuestionGroupTagsForClass variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetQuestionGroupTagsForClass),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetQuestionGroupTagsForClass? readQuery$GetQuestionGroupTagsForClass({
    required Variables$Query$GetQuestionGroupTagsForClass variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetQuestionGroupTagsForClass),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetQuestionGroupTagsForClass.fromJson(result);
  }
}

class Query$GetQuestionGroupTagsForClass$skill {
  Query$GetQuestionGroupTagsForClass$skill({
    required this.getQuestionGroupTagsForClass,
    required this.$__typename,
  });

  factory Query$GetQuestionGroupTagsForClass$skill.fromJson(
      Map<String, dynamic> json) {
    final l$getQuestionGroupTagsForClass = json['getQuestionGroupTagsForClass'];
    final l$$__typename = json['__typename'];
    return Query$GetQuestionGroupTagsForClass$skill(
      getQuestionGroupTagsForClass: (l$getQuestionGroupTagsForClass
              as List<dynamic>)
          .map((e) =>
              Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
          Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass>
      getQuestionGroupTagsForClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getQuestionGroupTagsForClass = getQuestionGroupTagsForClass;
    _resultData['getQuestionGroupTagsForClass'] =
        l$getQuestionGroupTagsForClass.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getQuestionGroupTagsForClass = getQuestionGroupTagsForClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$getQuestionGroupTagsForClass.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetQuestionGroupTagsForClass$skill) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$getQuestionGroupTagsForClass = getQuestionGroupTagsForClass;
    final lOther$getQuestionGroupTagsForClass =
        other.getQuestionGroupTagsForClass;
    if (l$getQuestionGroupTagsForClass.length !=
        lOther$getQuestionGroupTagsForClass.length) {
      return false;
    }
    for (int i = 0; i < l$getQuestionGroupTagsForClass.length; i++) {
      final l$getQuestionGroupTagsForClass$entry =
          l$getQuestionGroupTagsForClass[i];
      final lOther$getQuestionGroupTagsForClass$entry =
          lOther$getQuestionGroupTagsForClass[i];
      if (l$getQuestionGroupTagsForClass$entry !=
          lOther$getQuestionGroupTagsForClass$entry) {
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

extension UtilityExtension$Query$GetQuestionGroupTagsForClass$skill
    on Query$GetQuestionGroupTagsForClass$skill {
  CopyWith$Query$GetQuestionGroupTagsForClass$skill<
          Query$GetQuestionGroupTagsForClass$skill>
      get copyWith => CopyWith$Query$GetQuestionGroupTagsForClass$skill(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetQuestionGroupTagsForClass$skill<TRes> {
  factory CopyWith$Query$GetQuestionGroupTagsForClass$skill(
    Query$GetQuestionGroupTagsForClass$skill instance,
    TRes Function(Query$GetQuestionGroupTagsForClass$skill) then,
  ) = _CopyWithImpl$Query$GetQuestionGroupTagsForClass$skill;

  factory CopyWith$Query$GetQuestionGroupTagsForClass$skill.stub(TRes res) =
      _CopyWithStubImpl$Query$GetQuestionGroupTagsForClass$skill;

  TRes call({
    List<Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass>?
        getQuestionGroupTagsForClass,
    String? $__typename,
  });
  TRes getQuestionGroupTagsForClass(
      Iterable<Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass> Function(
              Iterable<
                  CopyWith$Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass<
                      Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass>>)
          _fn);
}

class _CopyWithImpl$Query$GetQuestionGroupTagsForClass$skill<TRes>
    implements CopyWith$Query$GetQuestionGroupTagsForClass$skill<TRes> {
  _CopyWithImpl$Query$GetQuestionGroupTagsForClass$skill(
    this._instance,
    this._then,
  );

  final Query$GetQuestionGroupTagsForClass$skill _instance;

  final TRes Function(Query$GetQuestionGroupTagsForClass$skill) _then;

  static const _undefined = {};

  TRes call({
    Object? getQuestionGroupTagsForClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetQuestionGroupTagsForClass$skill(
        getQuestionGroupTagsForClass: getQuestionGroupTagsForClass ==
                    _undefined ||
                getQuestionGroupTagsForClass == null
            ? _instance.getQuestionGroupTagsForClass
            : (getQuestionGroupTagsForClass as List<
                Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes getQuestionGroupTagsForClass(
          Iterable<Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass> Function(
                  Iterable<
                      CopyWith$Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass<
                          Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass>>)
              _fn) =>
      call(
          getQuestionGroupTagsForClass: _fn(
              _instance.getQuestionGroupTagsForClass.map((e) =>
                  CopyWith$Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetQuestionGroupTagsForClass$skill<TRes>
    implements CopyWith$Query$GetQuestionGroupTagsForClass$skill<TRes> {
  _CopyWithStubImpl$Query$GetQuestionGroupTagsForClass$skill(this._res);

  TRes _res;

  call({
    List<Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass>?
        getQuestionGroupTagsForClass,
    String? $__typename,
  }) =>
      _res;
  getQuestionGroupTagsForClass(_fn) => _res;
}

class Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass {
  Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass({
    required this.questionGroupID,
    required this.tag,
    required this.$__typename,
  });

  factory Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass.fromJson(
      Map<String, dynamic> json) {
    final l$questionGroupID = json['questionGroupID'];
    final l$tag = json['tag'];
    final l$$__typename = json['__typename'];
    return Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass(
      questionGroupID: (l$questionGroupID as String),
      tag: fromJson$Enum$QuestionGroupTag((l$tag as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String questionGroupID;

  final Enum$QuestionGroupTag tag;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$questionGroupID = questionGroupID;
    _resultData['questionGroupID'] = l$questionGroupID;
    final l$tag = tag;
    _resultData['tag'] = toJson$Enum$QuestionGroupTag(l$tag);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$questionGroupID = questionGroupID;
    final l$tag = tag;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$questionGroupID,
      l$tag,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$questionGroupID = questionGroupID;
    final lOther$questionGroupID = other.questionGroupID;
    if (l$questionGroupID != lOther$questionGroupID) {
      return false;
    }
    final l$tag = tag;
    final lOther$tag = other.tag;
    if (l$tag != lOther$tag) {
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

extension UtilityExtension$Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass
    on Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass {
  CopyWith$Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass<
          Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass>
      get copyWith =>
          CopyWith$Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass<
    TRes> {
  factory CopyWith$Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass(
    Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass
        instance,
    TRes Function(
            Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass)
        then,
  ) = _CopyWithImpl$Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass;

  factory CopyWith$Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass;

  TRes call({
    String? questionGroupID,
    Enum$QuestionGroupTag? tag,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass<
        TRes>
    implements
        CopyWith$Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass<
            TRes> {
  _CopyWithImpl$Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass(
    this._instance,
    this._then,
  );

  final Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass
      _instance;

  final TRes Function(
          Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass)
      _then;

  static const _undefined = {};

  TRes call({
    Object? questionGroupID = _undefined,
    Object? tag = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass(
        questionGroupID:
            questionGroupID == _undefined || questionGroupID == null
                ? _instance.questionGroupID
                : (questionGroupID as String),
        tag: tag == _undefined || tag == null
            ? _instance.tag
            : (tag as Enum$QuestionGroupTag),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass<
        TRes>
    implements
        CopyWith$Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass<
            TRes> {
  _CopyWithStubImpl$Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass(
      this._res);

  TRes _res;

  call({
    String? questionGroupID,
    Enum$QuestionGroupTag? tag,
    String? $__typename,
  }) =>
      _res;
}
