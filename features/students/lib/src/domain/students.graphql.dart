import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$Progress {
  Fragment$Progress({
    required this.correct,
    required this.wrong,
    required this.$__typename,
  });

  factory Fragment$Progress.fromJson(Map<String, dynamic> json) {
    final l$correct = json['correct'];
    final l$wrong = json['wrong'];
    final l$$__typename = json['__typename'];
    return Fragment$Progress(
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
    if (!(other is Fragment$Progress) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$Progress on Fragment$Progress {
  CopyWith$Fragment$Progress<Fragment$Progress> get copyWith =>
      CopyWith$Fragment$Progress(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Progress<TRes> {
  factory CopyWith$Fragment$Progress(
    Fragment$Progress instance,
    TRes Function(Fragment$Progress) then,
  ) = _CopyWithImpl$Fragment$Progress;

  factory CopyWith$Fragment$Progress.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Progress;

  TRes call({
    double? correct,
    double? wrong,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Progress<TRes>
    implements CopyWith$Fragment$Progress<TRes> {
  _CopyWithImpl$Fragment$Progress(
    this._instance,
    this._then,
  );

  final Fragment$Progress _instance;

  final TRes Function(Fragment$Progress) _then;

  static const _undefined = {};

  TRes call({
    Object? correct = _undefined,
    Object? wrong = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Progress(
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

class _CopyWithStubImpl$Fragment$Progress<TRes>
    implements CopyWith$Fragment$Progress<TRes> {
  _CopyWithStubImpl$Fragment$Progress(this._res);

  TRes _res;

  call({
    double? correct,
    double? wrong,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionProgress = FragmentDefinitionNode(
  name: NameNode(value: 'Progress'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Progress'),
    isNonNull: false,
  )),
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
);
const documentNodeFragmentProgress = DocumentNode(definitions: [
  fragmentDefinitionProgress,
]);

extension ClientExtension$Fragment$Progress on graphql.GraphQLClient {
  void writeFragment$Progress({
    required Fragment$Progress data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Progress',
            document: documentNodeFragmentProgress,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Progress? readFragment$Progress({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Progress',
          document: documentNodeFragmentProgress,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Progress.fromJson(result);
  }
}

class Variables$Query$ComprehensionForTopic {
  factory Variables$Query$ComprehensionForTopic({
    required String classId,
    required String topicId,
  }) =>
      Variables$Query$ComprehensionForTopic._({
        r'classId': classId,
        r'topicId': topicId,
      });

  Variables$Query$ComprehensionForTopic._(this._$data);

  factory Variables$Query$ComprehensionForTopic.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    final l$topicId = data['topicId'];
    result$data['topicId'] = (l$topicId as String);
    return Variables$Query$ComprehensionForTopic._(result$data);
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

  CopyWith$Variables$Query$ComprehensionForTopic<
          Variables$Query$ComprehensionForTopic>
      get copyWith => CopyWith$Variables$Query$ComprehensionForTopic(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ComprehensionForTopic) ||
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

abstract class CopyWith$Variables$Query$ComprehensionForTopic<TRes> {
  factory CopyWith$Variables$Query$ComprehensionForTopic(
    Variables$Query$ComprehensionForTopic instance,
    TRes Function(Variables$Query$ComprehensionForTopic) then,
  ) = _CopyWithImpl$Variables$Query$ComprehensionForTopic;

  factory CopyWith$Variables$Query$ComprehensionForTopic.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ComprehensionForTopic;

  TRes call({
    String? classId,
    String? topicId,
  });
}

class _CopyWithImpl$Variables$Query$ComprehensionForTopic<TRes>
    implements CopyWith$Variables$Query$ComprehensionForTopic<TRes> {
  _CopyWithImpl$Variables$Query$ComprehensionForTopic(
    this._instance,
    this._then,
  );

  final Variables$Query$ComprehensionForTopic _instance;

  final TRes Function(Variables$Query$ComprehensionForTopic) _then;

  static const _undefined = {};

  TRes call({
    Object? classId = _undefined,
    Object? topicId = _undefined,
  }) =>
      _then(Variables$Query$ComprehensionForTopic._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
        if (topicId != _undefined && topicId != null)
          'topicId': (topicId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$ComprehensionForTopic<TRes>
    implements CopyWith$Variables$Query$ComprehensionForTopic<TRes> {
  _CopyWithStubImpl$Variables$Query$ComprehensionForTopic(this._res);

  TRes _res;

  call({
    String? classId,
    String? topicId,
  }) =>
      _res;
}

class Query$ComprehensionForTopic {
  Query$ComprehensionForTopic({
    required this.topic,
    required this.$__typename,
  });

  factory Query$ComprehensionForTopic.fromJson(Map<String, dynamic> json) {
    final l$topic = json['topic'];
    final l$$__typename = json['__typename'];
    return Query$ComprehensionForTopic(
      topic: Query$ComprehensionForTopic$topic.fromJson(
          (l$topic as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ComprehensionForTopic$topic topic;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$topic = topic;
    _resultData['topic'] = l$topic.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$topic = topic;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$topic,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ComprehensionForTopic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$topic = topic;
    final lOther$topic = other.topic;
    if (l$topic != lOther$topic) {
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

extension UtilityExtension$Query$ComprehensionForTopic
    on Query$ComprehensionForTopic {
  CopyWith$Query$ComprehensionForTopic<Query$ComprehensionForTopic>
      get copyWith => CopyWith$Query$ComprehensionForTopic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ComprehensionForTopic<TRes> {
  factory CopyWith$Query$ComprehensionForTopic(
    Query$ComprehensionForTopic instance,
    TRes Function(Query$ComprehensionForTopic) then,
  ) = _CopyWithImpl$Query$ComprehensionForTopic;

  factory CopyWith$Query$ComprehensionForTopic.stub(TRes res) =
      _CopyWithStubImpl$Query$ComprehensionForTopic;

  TRes call({
    Query$ComprehensionForTopic$topic? topic,
    String? $__typename,
  });
  CopyWith$Query$ComprehensionForTopic$topic<TRes> get topic;
}

class _CopyWithImpl$Query$ComprehensionForTopic<TRes>
    implements CopyWith$Query$ComprehensionForTopic<TRes> {
  _CopyWithImpl$Query$ComprehensionForTopic(
    this._instance,
    this._then,
  );

  final Query$ComprehensionForTopic _instance;

  final TRes Function(Query$ComprehensionForTopic) _then;

  static const _undefined = {};

  TRes call({
    Object? topic = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ComprehensionForTopic(
        topic: topic == _undefined || topic == null
            ? _instance.topic
            : (topic as Query$ComprehensionForTopic$topic),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$ComprehensionForTopic$topic<TRes> get topic {
    final local$topic = _instance.topic;
    return CopyWith$Query$ComprehensionForTopic$topic(
        local$topic, (e) => call(topic: e));
  }
}

class _CopyWithStubImpl$Query$ComprehensionForTopic<TRes>
    implements CopyWith$Query$ComprehensionForTopic<TRes> {
  _CopyWithStubImpl$Query$ComprehensionForTopic(this._res);

  TRes _res;

  call({
    Query$ComprehensionForTopic$topic? topic,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$ComprehensionForTopic$topic<TRes> get topic =>
      CopyWith$Query$ComprehensionForTopic$topic.stub(_res);
}

const documentNodeQueryComprehensionForTopic = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ComprehensionForTopic'),
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
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'topicId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'progressForClass'),
            alias: NameNode(value: 'topicProgress'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'classId')),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'usersProgress'),
                alias: NameNode(value: 'topicUsersProgress'),
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'progress'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'Progress'),
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
                    name: NameNode(value: 'userID'),
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
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionProgress,
]);
Query$ComprehensionForTopic _parserFn$Query$ComprehensionForTopic(
        Map<String, dynamic> data) =>
    Query$ComprehensionForTopic.fromJson(data);

class Options$Query$ComprehensionForTopic
    extends graphql.QueryOptions<Query$ComprehensionForTopic> {
  Options$Query$ComprehensionForTopic({
    String? operationName,
    required Variables$Query$ComprehensionForTopic variables,
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
          document: documentNodeQueryComprehensionForTopic,
          parserFn: _parserFn$Query$ComprehensionForTopic,
        );
}

class WatchOptions$Query$ComprehensionForTopic
    extends graphql.WatchQueryOptions<Query$ComprehensionForTopic> {
  WatchOptions$Query$ComprehensionForTopic({
    String? operationName,
    required Variables$Query$ComprehensionForTopic variables,
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
          document: documentNodeQueryComprehensionForTopic,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ComprehensionForTopic,
        );
}

class FetchMoreOptions$Query$ComprehensionForTopic
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ComprehensionForTopic({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ComprehensionForTopic variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryComprehensionForTopic,
        );
}

extension ClientExtension$Query$ComprehensionForTopic on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ComprehensionForTopic>>
      query$ComprehensionForTopic(
              Options$Query$ComprehensionForTopic options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$ComprehensionForTopic>
      watchQuery$ComprehensionForTopic(
              WatchOptions$Query$ComprehensionForTopic options) =>
          this.watchQuery(options);
  void writeQuery$ComprehensionForTopic({
    required Query$ComprehensionForTopic data,
    required Variables$Query$ComprehensionForTopic variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryComprehensionForTopic),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ComprehensionForTopic? readQuery$ComprehensionForTopic({
    required Variables$Query$ComprehensionForTopic variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryComprehensionForTopic),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ComprehensionForTopic.fromJson(result);
  }
}

class Query$ComprehensionForTopic$topic {
  Query$ComprehensionForTopic$topic({
    required this.topicProgress,
    required this.$__typename,
  });

  factory Query$ComprehensionForTopic$topic.fromJson(
      Map<String, dynamic> json) {
    final l$topicProgress = json['topicProgress'];
    final l$$__typename = json['__typename'];
    return Query$ComprehensionForTopic$topic(
      topicProgress: Query$ComprehensionForTopic$topic$topicProgress.fromJson(
          (l$topicProgress as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ComprehensionForTopic$topic$topicProgress topicProgress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$topicProgress = topicProgress;
    _resultData['topicProgress'] = l$topicProgress.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$topicProgress = topicProgress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$topicProgress,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ComprehensionForTopic$topic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$topicProgress = topicProgress;
    final lOther$topicProgress = other.topicProgress;
    if (l$topicProgress != lOther$topicProgress) {
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

extension UtilityExtension$Query$ComprehensionForTopic$topic
    on Query$ComprehensionForTopic$topic {
  CopyWith$Query$ComprehensionForTopic$topic<Query$ComprehensionForTopic$topic>
      get copyWith => CopyWith$Query$ComprehensionForTopic$topic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ComprehensionForTopic$topic<TRes> {
  factory CopyWith$Query$ComprehensionForTopic$topic(
    Query$ComprehensionForTopic$topic instance,
    TRes Function(Query$ComprehensionForTopic$topic) then,
  ) = _CopyWithImpl$Query$ComprehensionForTopic$topic;

  factory CopyWith$Query$ComprehensionForTopic$topic.stub(TRes res) =
      _CopyWithStubImpl$Query$ComprehensionForTopic$topic;

  TRes call({
    Query$ComprehensionForTopic$topic$topicProgress? topicProgress,
    String? $__typename,
  });
  CopyWith$Query$ComprehensionForTopic$topic$topicProgress<TRes>
      get topicProgress;
}

class _CopyWithImpl$Query$ComprehensionForTopic$topic<TRes>
    implements CopyWith$Query$ComprehensionForTopic$topic<TRes> {
  _CopyWithImpl$Query$ComprehensionForTopic$topic(
    this._instance,
    this._then,
  );

  final Query$ComprehensionForTopic$topic _instance;

  final TRes Function(Query$ComprehensionForTopic$topic) _then;

  static const _undefined = {};

  TRes call({
    Object? topicProgress = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ComprehensionForTopic$topic(
        topicProgress: topicProgress == _undefined || topicProgress == null
            ? _instance.topicProgress
            : (topicProgress
                as Query$ComprehensionForTopic$topic$topicProgress),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$ComprehensionForTopic$topic$topicProgress<TRes>
      get topicProgress {
    final local$topicProgress = _instance.topicProgress;
    return CopyWith$Query$ComprehensionForTopic$topic$topicProgress(
        local$topicProgress, (e) => call(topicProgress: e));
  }
}

class _CopyWithStubImpl$Query$ComprehensionForTopic$topic<TRes>
    implements CopyWith$Query$ComprehensionForTopic$topic<TRes> {
  _CopyWithStubImpl$Query$ComprehensionForTopic$topic(this._res);

  TRes _res;

  call({
    Query$ComprehensionForTopic$topic$topicProgress? topicProgress,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$ComprehensionForTopic$topic$topicProgress<TRes>
      get topicProgress =>
          CopyWith$Query$ComprehensionForTopic$topic$topicProgress.stub(_res);
}

class Query$ComprehensionForTopic$topic$topicProgress {
  Query$ComprehensionForTopic$topic$topicProgress({
    required this.topicUsersProgress,
    required this.$__typename,
  });

  factory Query$ComprehensionForTopic$topic$topicProgress.fromJson(
      Map<String, dynamic> json) {
    final l$topicUsersProgress = json['topicUsersProgress'];
    final l$$__typename = json['__typename'];
    return Query$ComprehensionForTopic$topic$topicProgress(
      topicUsersProgress: (l$topicUsersProgress as List<dynamic>)
          .map((e) =>
              Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress>
      topicUsersProgress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$topicUsersProgress = topicUsersProgress;
    _resultData['topicUsersProgress'] =
        l$topicUsersProgress.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$topicUsersProgress = topicUsersProgress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$topicUsersProgress.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ComprehensionForTopic$topic$topicProgress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$topicUsersProgress = topicUsersProgress;
    final lOther$topicUsersProgress = other.topicUsersProgress;
    if (l$topicUsersProgress.length != lOther$topicUsersProgress.length) {
      return false;
    }
    for (int i = 0; i < l$topicUsersProgress.length; i++) {
      final l$topicUsersProgress$entry = l$topicUsersProgress[i];
      final lOther$topicUsersProgress$entry = lOther$topicUsersProgress[i];
      if (l$topicUsersProgress$entry != lOther$topicUsersProgress$entry) {
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

extension UtilityExtension$Query$ComprehensionForTopic$topic$topicProgress
    on Query$ComprehensionForTopic$topic$topicProgress {
  CopyWith$Query$ComprehensionForTopic$topic$topicProgress<
          Query$ComprehensionForTopic$topic$topicProgress>
      get copyWith => CopyWith$Query$ComprehensionForTopic$topic$topicProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ComprehensionForTopic$topic$topicProgress<TRes> {
  factory CopyWith$Query$ComprehensionForTopic$topic$topicProgress(
    Query$ComprehensionForTopic$topic$topicProgress instance,
    TRes Function(Query$ComprehensionForTopic$topic$topicProgress) then,
  ) = _CopyWithImpl$Query$ComprehensionForTopic$topic$topicProgress;

  factory CopyWith$Query$ComprehensionForTopic$topic$topicProgress.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ComprehensionForTopic$topic$topicProgress;

  TRes call({
    List<Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress>?
        topicUsersProgress,
    String? $__typename,
  });
  TRes topicUsersProgress(
      Iterable<Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress> Function(
              Iterable<
                  CopyWith$Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress<
                      Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress>>)
          _fn);
}

class _CopyWithImpl$Query$ComprehensionForTopic$topic$topicProgress<TRes>
    implements CopyWith$Query$ComprehensionForTopic$topic$topicProgress<TRes> {
  _CopyWithImpl$Query$ComprehensionForTopic$topic$topicProgress(
    this._instance,
    this._then,
  );

  final Query$ComprehensionForTopic$topic$topicProgress _instance;

  final TRes Function(Query$ComprehensionForTopic$topic$topicProgress) _then;

  static const _undefined = {};

  TRes call({
    Object? topicUsersProgress = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ComprehensionForTopic$topic$topicProgress(
        topicUsersProgress: topicUsersProgress == _undefined ||
                topicUsersProgress == null
            ? _instance.topicUsersProgress
            : (topicUsersProgress as List<
                Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes topicUsersProgress(
          Iterable<Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress> Function(
                  Iterable<
                      CopyWith$Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress<
                          Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress>>)
              _fn) =>
      call(
          topicUsersProgress: _fn(_instance.topicUsersProgress.map((e) =>
              CopyWith$Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$ComprehensionForTopic$topic$topicProgress<TRes>
    implements CopyWith$Query$ComprehensionForTopic$topic$topicProgress<TRes> {
  _CopyWithStubImpl$Query$ComprehensionForTopic$topic$topicProgress(this._res);

  TRes _res;

  call({
    List<Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress>?
        topicUsersProgress,
    String? $__typename,
  }) =>
      _res;
  topicUsersProgress(_fn) => _res;
}

class Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress {
  Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress({
    required this.progress,
    required this.userID,
    required this.$__typename,
  });

  factory Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress.fromJson(
      Map<String, dynamic> json) {
    final l$progress = json['progress'];
    final l$userID = json['userID'];
    final l$$__typename = json['__typename'];
    return Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress(
      progress:
          Fragment$Progress.fromJson((l$progress as Map<String, dynamic>)),
      userID: (l$userID as String),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Progress progress;

  final String userID;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$progress = progress;
    _resultData['progress'] = l$progress.toJson();
    final l$userID = userID;
    _resultData['userID'] = l$userID;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$progress = progress;
    final l$userID = userID;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$progress,
      l$userID,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$userID = userID;
    final lOther$userID = other.userID;
    if (l$userID != lOther$userID) {
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

extension UtilityExtension$Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress
    on Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress {
  CopyWith$Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress<
          Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress>
      get copyWith =>
          CopyWith$Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress<
    TRes> {
  factory CopyWith$Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress(
    Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress instance,
    TRes Function(
            Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress)
        then,
  ) = _CopyWithImpl$Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress;

  factory CopyWith$Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress;

  TRes call({
    Fragment$Progress? progress,
    String? userID,
    String? $__typename,
  });
  CopyWith$Fragment$Progress<TRes> get progress;
}

class _CopyWithImpl$Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress<
        TRes>
    implements
        CopyWith$Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress<
            TRes> {
  _CopyWithImpl$Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress(
    this._instance,
    this._then,
  );

  final Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress
      _instance;

  final TRes Function(
      Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress) _then;

  static const _undefined = {};

  TRes call({
    Object? progress = _undefined,
    Object? userID = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress(
        progress: progress == _undefined || progress == null
            ? _instance.progress
            : (progress as Fragment$Progress),
        userID: userID == _undefined || userID == null
            ? _instance.userID
            : (userID as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Progress<TRes> get progress {
    final local$progress = _instance.progress;
    return CopyWith$Fragment$Progress(local$progress, (e) => call(progress: e));
  }
}

class _CopyWithStubImpl$Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress<
        TRes>
    implements
        CopyWith$Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress<
            TRes> {
  _CopyWithStubImpl$Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress(
      this._res);

  TRes _res;

  call({
    Fragment$Progress? progress,
    String? userID,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Progress<TRes> get progress =>
      CopyWith$Fragment$Progress.stub(_res);
}

class Variables$Query$ComprehensionForSubtopic {
  factory Variables$Query$ComprehensionForSubtopic({
    required String classId,
    required String subtopicId,
  }) =>
      Variables$Query$ComprehensionForSubtopic._({
        r'classId': classId,
        r'subtopicId': subtopicId,
      });

  Variables$Query$ComprehensionForSubtopic._(this._$data);

  factory Variables$Query$ComprehensionForSubtopic.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    final l$subtopicId = data['subtopicId'];
    result$data['subtopicId'] = (l$subtopicId as String);
    return Variables$Query$ComprehensionForSubtopic._(result$data);
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

  CopyWith$Variables$Query$ComprehensionForSubtopic<
          Variables$Query$ComprehensionForSubtopic>
      get copyWith => CopyWith$Variables$Query$ComprehensionForSubtopic(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ComprehensionForSubtopic) ||
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

abstract class CopyWith$Variables$Query$ComprehensionForSubtopic<TRes> {
  factory CopyWith$Variables$Query$ComprehensionForSubtopic(
    Variables$Query$ComprehensionForSubtopic instance,
    TRes Function(Variables$Query$ComprehensionForSubtopic) then,
  ) = _CopyWithImpl$Variables$Query$ComprehensionForSubtopic;

  factory CopyWith$Variables$Query$ComprehensionForSubtopic.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ComprehensionForSubtopic;

  TRes call({
    String? classId,
    String? subtopicId,
  });
}

class _CopyWithImpl$Variables$Query$ComprehensionForSubtopic<TRes>
    implements CopyWith$Variables$Query$ComprehensionForSubtopic<TRes> {
  _CopyWithImpl$Variables$Query$ComprehensionForSubtopic(
    this._instance,
    this._then,
  );

  final Variables$Query$ComprehensionForSubtopic _instance;

  final TRes Function(Variables$Query$ComprehensionForSubtopic) _then;

  static const _undefined = {};

  TRes call({
    Object? classId = _undefined,
    Object? subtopicId = _undefined,
  }) =>
      _then(Variables$Query$ComprehensionForSubtopic._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
        if (subtopicId != _undefined && subtopicId != null)
          'subtopicId': (subtopicId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$ComprehensionForSubtopic<TRes>
    implements CopyWith$Variables$Query$ComprehensionForSubtopic<TRes> {
  _CopyWithStubImpl$Variables$Query$ComprehensionForSubtopic(this._res);

  TRes _res;

  call({
    String? classId,
    String? subtopicId,
  }) =>
      _res;
}

class Query$ComprehensionForSubtopic {
  Query$ComprehensionForSubtopic({
    required this.subtopic,
    required this.$__typename,
  });

  factory Query$ComprehensionForSubtopic.fromJson(Map<String, dynamic> json) {
    final l$subtopic = json['subtopic'];
    final l$$__typename = json['__typename'];
    return Query$ComprehensionForSubtopic(
      subtopic: Query$ComprehensionForSubtopic$subtopic.fromJson(
          (l$subtopic as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ComprehensionForSubtopic$subtopic subtopic;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$subtopic = subtopic;
    _resultData['subtopic'] = l$subtopic.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$subtopic = subtopic;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$subtopic,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ComprehensionForSubtopic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$subtopic = subtopic;
    final lOther$subtopic = other.subtopic;
    if (l$subtopic != lOther$subtopic) {
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

extension UtilityExtension$Query$ComprehensionForSubtopic
    on Query$ComprehensionForSubtopic {
  CopyWith$Query$ComprehensionForSubtopic<Query$ComprehensionForSubtopic>
      get copyWith => CopyWith$Query$ComprehensionForSubtopic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ComprehensionForSubtopic<TRes> {
  factory CopyWith$Query$ComprehensionForSubtopic(
    Query$ComprehensionForSubtopic instance,
    TRes Function(Query$ComprehensionForSubtopic) then,
  ) = _CopyWithImpl$Query$ComprehensionForSubtopic;

  factory CopyWith$Query$ComprehensionForSubtopic.stub(TRes res) =
      _CopyWithStubImpl$Query$ComprehensionForSubtopic;

  TRes call({
    Query$ComprehensionForSubtopic$subtopic? subtopic,
    String? $__typename,
  });
  CopyWith$Query$ComprehensionForSubtopic$subtopic<TRes> get subtopic;
}

class _CopyWithImpl$Query$ComprehensionForSubtopic<TRes>
    implements CopyWith$Query$ComprehensionForSubtopic<TRes> {
  _CopyWithImpl$Query$ComprehensionForSubtopic(
    this._instance,
    this._then,
  );

  final Query$ComprehensionForSubtopic _instance;

  final TRes Function(Query$ComprehensionForSubtopic) _then;

  static const _undefined = {};

  TRes call({
    Object? subtopic = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ComprehensionForSubtopic(
        subtopic: subtopic == _undefined || subtopic == null
            ? _instance.subtopic
            : (subtopic as Query$ComprehensionForSubtopic$subtopic),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$ComprehensionForSubtopic$subtopic<TRes> get subtopic {
    final local$subtopic = _instance.subtopic;
    return CopyWith$Query$ComprehensionForSubtopic$subtopic(
        local$subtopic, (e) => call(subtopic: e));
  }
}

class _CopyWithStubImpl$Query$ComprehensionForSubtopic<TRes>
    implements CopyWith$Query$ComprehensionForSubtopic<TRes> {
  _CopyWithStubImpl$Query$ComprehensionForSubtopic(this._res);

  TRes _res;

  call({
    Query$ComprehensionForSubtopic$subtopic? subtopic,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$ComprehensionForSubtopic$subtopic<TRes> get subtopic =>
      CopyWith$Query$ComprehensionForSubtopic$subtopic.stub(_res);
}

const documentNodeQueryComprehensionForSubtopic = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ComprehensionForSubtopic'),
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
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'subtopicId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'progressForClass'),
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
                name: NameNode(value: 'usersProgress'),
                alias: NameNode(value: 'subtopicUsersProgress'),
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'progress'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'Progress'),
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
                    name: NameNode(value: 'userID'),
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
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionProgress,
]);
Query$ComprehensionForSubtopic _parserFn$Query$ComprehensionForSubtopic(
        Map<String, dynamic> data) =>
    Query$ComprehensionForSubtopic.fromJson(data);

class Options$Query$ComprehensionForSubtopic
    extends graphql.QueryOptions<Query$ComprehensionForSubtopic> {
  Options$Query$ComprehensionForSubtopic({
    String? operationName,
    required Variables$Query$ComprehensionForSubtopic variables,
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
          document: documentNodeQueryComprehensionForSubtopic,
          parserFn: _parserFn$Query$ComprehensionForSubtopic,
        );
}

class WatchOptions$Query$ComprehensionForSubtopic
    extends graphql.WatchQueryOptions<Query$ComprehensionForSubtopic> {
  WatchOptions$Query$ComprehensionForSubtopic({
    String? operationName,
    required Variables$Query$ComprehensionForSubtopic variables,
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
          document: documentNodeQueryComprehensionForSubtopic,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ComprehensionForSubtopic,
        );
}

class FetchMoreOptions$Query$ComprehensionForSubtopic
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ComprehensionForSubtopic({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ComprehensionForSubtopic variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryComprehensionForSubtopic,
        );
}

extension ClientExtension$Query$ComprehensionForSubtopic
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ComprehensionForSubtopic>>
      query$ComprehensionForSubtopic(
              Options$Query$ComprehensionForSubtopic options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$ComprehensionForSubtopic>
      watchQuery$ComprehensionForSubtopic(
              WatchOptions$Query$ComprehensionForSubtopic options) =>
          this.watchQuery(options);
  void writeQuery$ComprehensionForSubtopic({
    required Query$ComprehensionForSubtopic data,
    required Variables$Query$ComprehensionForSubtopic variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryComprehensionForSubtopic),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ComprehensionForSubtopic? readQuery$ComprehensionForSubtopic({
    required Variables$Query$ComprehensionForSubtopic variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryComprehensionForSubtopic),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$ComprehensionForSubtopic.fromJson(result);
  }
}

class Query$ComprehensionForSubtopic$subtopic {
  Query$ComprehensionForSubtopic$subtopic({
    required this.progressForClass,
    required this.$__typename,
  });

  factory Query$ComprehensionForSubtopic$subtopic.fromJson(
      Map<String, dynamic> json) {
    final l$progressForClass = json['progressForClass'];
    final l$$__typename = json['__typename'];
    return Query$ComprehensionForSubtopic$subtopic(
      progressForClass:
          Query$ComprehensionForSubtopic$subtopic$progressForClass.fromJson(
              (l$progressForClass as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ComprehensionForSubtopic$subtopic$progressForClass
      progressForClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$progressForClass = progressForClass;
    _resultData['progressForClass'] = l$progressForClass.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$progressForClass = progressForClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$progressForClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ComprehensionForSubtopic$subtopic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$progressForClass = progressForClass;
    final lOther$progressForClass = other.progressForClass;
    if (l$progressForClass != lOther$progressForClass) {
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

extension UtilityExtension$Query$ComprehensionForSubtopic$subtopic
    on Query$ComprehensionForSubtopic$subtopic {
  CopyWith$Query$ComprehensionForSubtopic$subtopic<
          Query$ComprehensionForSubtopic$subtopic>
      get copyWith => CopyWith$Query$ComprehensionForSubtopic$subtopic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ComprehensionForSubtopic$subtopic<TRes> {
  factory CopyWith$Query$ComprehensionForSubtopic$subtopic(
    Query$ComprehensionForSubtopic$subtopic instance,
    TRes Function(Query$ComprehensionForSubtopic$subtopic) then,
  ) = _CopyWithImpl$Query$ComprehensionForSubtopic$subtopic;

  factory CopyWith$Query$ComprehensionForSubtopic$subtopic.stub(TRes res) =
      _CopyWithStubImpl$Query$ComprehensionForSubtopic$subtopic;

  TRes call({
    Query$ComprehensionForSubtopic$subtopic$progressForClass? progressForClass,
    String? $__typename,
  });
  CopyWith$Query$ComprehensionForSubtopic$subtopic$progressForClass<TRes>
      get progressForClass;
}

class _CopyWithImpl$Query$ComprehensionForSubtopic$subtopic<TRes>
    implements CopyWith$Query$ComprehensionForSubtopic$subtopic<TRes> {
  _CopyWithImpl$Query$ComprehensionForSubtopic$subtopic(
    this._instance,
    this._then,
  );

  final Query$ComprehensionForSubtopic$subtopic _instance;

  final TRes Function(Query$ComprehensionForSubtopic$subtopic) _then;

  static const _undefined = {};

  TRes call({
    Object? progressForClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ComprehensionForSubtopic$subtopic(
        progressForClass: progressForClass == _undefined ||
                progressForClass == null
            ? _instance.progressForClass
            : (progressForClass
                as Query$ComprehensionForSubtopic$subtopic$progressForClass),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$ComprehensionForSubtopic$subtopic$progressForClass<TRes>
      get progressForClass {
    final local$progressForClass = _instance.progressForClass;
    return CopyWith$Query$ComprehensionForSubtopic$subtopic$progressForClass(
        local$progressForClass, (e) => call(progressForClass: e));
  }
}

class _CopyWithStubImpl$Query$ComprehensionForSubtopic$subtopic<TRes>
    implements CopyWith$Query$ComprehensionForSubtopic$subtopic<TRes> {
  _CopyWithStubImpl$Query$ComprehensionForSubtopic$subtopic(this._res);

  TRes _res;

  call({
    Query$ComprehensionForSubtopic$subtopic$progressForClass? progressForClass,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$ComprehensionForSubtopic$subtopic$progressForClass<TRes>
      get progressForClass =>
          CopyWith$Query$ComprehensionForSubtopic$subtopic$progressForClass
              .stub(_res);
}

class Query$ComprehensionForSubtopic$subtopic$progressForClass {
  Query$ComprehensionForSubtopic$subtopic$progressForClass({
    required this.subtopicUsersProgress,
    required this.$__typename,
  });

  factory Query$ComprehensionForSubtopic$subtopic$progressForClass.fromJson(
      Map<String, dynamic> json) {
    final l$subtopicUsersProgress = json['subtopicUsersProgress'];
    final l$$__typename = json['__typename'];
    return Query$ComprehensionForSubtopic$subtopic$progressForClass(
      subtopicUsersProgress: (l$subtopicUsersProgress as List<dynamic>)
          .map((e) =>
              Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
          Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress>
      subtopicUsersProgress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$subtopicUsersProgress = subtopicUsersProgress;
    _resultData['subtopicUsersProgress'] =
        l$subtopicUsersProgress.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$subtopicUsersProgress = subtopicUsersProgress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$subtopicUsersProgress.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ComprehensionForSubtopic$subtopic$progressForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$subtopicUsersProgress = subtopicUsersProgress;
    final lOther$subtopicUsersProgress = other.subtopicUsersProgress;
    if (l$subtopicUsersProgress.length != lOther$subtopicUsersProgress.length) {
      return false;
    }
    for (int i = 0; i < l$subtopicUsersProgress.length; i++) {
      final l$subtopicUsersProgress$entry = l$subtopicUsersProgress[i];
      final lOther$subtopicUsersProgress$entry =
          lOther$subtopicUsersProgress[i];
      if (l$subtopicUsersProgress$entry != lOther$subtopicUsersProgress$entry) {
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

extension UtilityExtension$Query$ComprehensionForSubtopic$subtopic$progressForClass
    on Query$ComprehensionForSubtopic$subtopic$progressForClass {
  CopyWith$Query$ComprehensionForSubtopic$subtopic$progressForClass<
          Query$ComprehensionForSubtopic$subtopic$progressForClass>
      get copyWith =>
          CopyWith$Query$ComprehensionForSubtopic$subtopic$progressForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ComprehensionForSubtopic$subtopic$progressForClass<
    TRes> {
  factory CopyWith$Query$ComprehensionForSubtopic$subtopic$progressForClass(
    Query$ComprehensionForSubtopic$subtopic$progressForClass instance,
    TRes Function(Query$ComprehensionForSubtopic$subtopic$progressForClass)
        then,
  ) = _CopyWithImpl$Query$ComprehensionForSubtopic$subtopic$progressForClass;

  factory CopyWith$Query$ComprehensionForSubtopic$subtopic$progressForClass.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ComprehensionForSubtopic$subtopic$progressForClass;

  TRes call({
    List<Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress>?
        subtopicUsersProgress,
    String? $__typename,
  });
  TRes subtopicUsersProgress(
      Iterable<Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress> Function(
              Iterable<
                  CopyWith$Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress<
                      Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress>>)
          _fn);
}

class _CopyWithImpl$Query$ComprehensionForSubtopic$subtopic$progressForClass<
        TRes>
    implements
        CopyWith$Query$ComprehensionForSubtopic$subtopic$progressForClass<
            TRes> {
  _CopyWithImpl$Query$ComprehensionForSubtopic$subtopic$progressForClass(
    this._instance,
    this._then,
  );

  final Query$ComprehensionForSubtopic$subtopic$progressForClass _instance;

  final TRes Function(Query$ComprehensionForSubtopic$subtopic$progressForClass)
      _then;

  static const _undefined = {};

  TRes call({
    Object? subtopicUsersProgress = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ComprehensionForSubtopic$subtopic$progressForClass(
        subtopicUsersProgress: subtopicUsersProgress == _undefined ||
                subtopicUsersProgress == null
            ? _instance.subtopicUsersProgress
            : (subtopicUsersProgress as List<
                Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes subtopicUsersProgress(
          Iterable<Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress> Function(
                  Iterable<
                      CopyWith$Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress<
                          Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress>>)
              _fn) =>
      call(
          subtopicUsersProgress: _fn(_instance.subtopicUsersProgress.map((e) =>
              CopyWith$Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$ComprehensionForSubtopic$subtopic$progressForClass<
        TRes>
    implements
        CopyWith$Query$ComprehensionForSubtopic$subtopic$progressForClass<
            TRes> {
  _CopyWithStubImpl$Query$ComprehensionForSubtopic$subtopic$progressForClass(
      this._res);

  TRes _res;

  call({
    List<Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress>?
        subtopicUsersProgress,
    String? $__typename,
  }) =>
      _res;
  subtopicUsersProgress(_fn) => _res;
}

class Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress {
  Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress({
    required this.progress,
    required this.userID,
    required this.$__typename,
  });

  factory Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress.fromJson(
      Map<String, dynamic> json) {
    final l$progress = json['progress'];
    final l$userID = json['userID'];
    final l$$__typename = json['__typename'];
    return Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress(
      progress:
          Fragment$Progress.fromJson((l$progress as Map<String, dynamic>)),
      userID: (l$userID as String),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Progress progress;

  final String userID;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$progress = progress;
    _resultData['progress'] = l$progress.toJson();
    final l$userID = userID;
    _resultData['userID'] = l$userID;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$progress = progress;
    final l$userID = userID;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$progress,
      l$userID,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$userID = userID;
    final lOther$userID = other.userID;
    if (l$userID != lOther$userID) {
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

extension UtilityExtension$Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress
    on Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress {
  CopyWith$Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress<
          Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress>
      get copyWith =>
          CopyWith$Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress<
    TRes> {
  factory CopyWith$Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress(
    Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress
        instance,
    TRes Function(
            Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress)
        then,
  ) = _CopyWithImpl$Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress;

  factory CopyWith$Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress;

  TRes call({
    Fragment$Progress? progress,
    String? userID,
    String? $__typename,
  });
  CopyWith$Fragment$Progress<TRes> get progress;
}

class _CopyWithImpl$Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress<
        TRes>
    implements
        CopyWith$Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress<
            TRes> {
  _CopyWithImpl$Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress(
    this._instance,
    this._then,
  );

  final Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress
      _instance;

  final TRes Function(
          Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress)
      _then;

  static const _undefined = {};

  TRes call({
    Object? progress = _undefined,
    Object? userID = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress(
        progress: progress == _undefined || progress == null
            ? _instance.progress
            : (progress as Fragment$Progress),
        userID: userID == _undefined || userID == null
            ? _instance.userID
            : (userID as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Progress<TRes> get progress {
    final local$progress = _instance.progress;
    return CopyWith$Fragment$Progress(local$progress, (e) => call(progress: e));
  }
}

class _CopyWithStubImpl$Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress<
        TRes>
    implements
        CopyWith$Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress<
            TRes> {
  _CopyWithStubImpl$Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress(
      this._res);

  TRes _res;

  call({
    Fragment$Progress? progress,
    String? userID,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Progress<TRes> get progress =>
      CopyWith$Fragment$Progress.stub(_res);
}

class Variables$Query$Comprehension {
  factory Variables$Query$Comprehension({required String classId}) =>
      Variables$Query$Comprehension._({
        r'classId': classId,
      });

  Variables$Query$Comprehension._(this._$data);

  factory Variables$Query$Comprehension.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    return Variables$Query$Comprehension._(result$data);
  }

  Map<String, dynamic> _$data;

  String get classId => (_$data['classId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$classId = classId;
    result$data['classId'] = l$classId;
    return result$data;
  }

  CopyWith$Variables$Query$Comprehension<Variables$Query$Comprehension>
      get copyWith => CopyWith$Variables$Query$Comprehension(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Comprehension) ||
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

abstract class CopyWith$Variables$Query$Comprehension<TRes> {
  factory CopyWith$Variables$Query$Comprehension(
    Variables$Query$Comprehension instance,
    TRes Function(Variables$Query$Comprehension) then,
  ) = _CopyWithImpl$Variables$Query$Comprehension;

  factory CopyWith$Variables$Query$Comprehension.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Comprehension;

  TRes call({String? classId});
}

class _CopyWithImpl$Variables$Query$Comprehension<TRes>
    implements CopyWith$Variables$Query$Comprehension<TRes> {
  _CopyWithImpl$Variables$Query$Comprehension(
    this._instance,
    this._then,
  );

  final Variables$Query$Comprehension _instance;

  final TRes Function(Variables$Query$Comprehension) _then;

  static const _undefined = {};

  TRes call({Object? classId = _undefined}) =>
      _then(Variables$Query$Comprehension._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$Comprehension<TRes>
    implements CopyWith$Variables$Query$Comprehension<TRes> {
  _CopyWithStubImpl$Variables$Query$Comprehension(this._res);

  TRes _res;

  call({String? classId}) => _res;
}

class Query$Comprehension {
  Query$Comprehension({
    required this.$class,
    required this.$__typename,
  });

  factory Query$Comprehension.fromJson(Map<String, dynamic> json) {
    final l$$class = json['class'];
    final l$$__typename = json['__typename'];
    return Query$Comprehension(
      $class: Query$Comprehension$class.fromJson(
          (l$$class as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Comprehension$class $class;

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
    if (!(other is Query$Comprehension) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Comprehension on Query$Comprehension {
  CopyWith$Query$Comprehension<Query$Comprehension> get copyWith =>
      CopyWith$Query$Comprehension(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Comprehension<TRes> {
  factory CopyWith$Query$Comprehension(
    Query$Comprehension instance,
    TRes Function(Query$Comprehension) then,
  ) = _CopyWithImpl$Query$Comprehension;

  factory CopyWith$Query$Comprehension.stub(TRes res) =
      _CopyWithStubImpl$Query$Comprehension;

  TRes call({
    Query$Comprehension$class? $class,
    String? $__typename,
  });
  CopyWith$Query$Comprehension$class<TRes> get $class;
}

class _CopyWithImpl$Query$Comprehension<TRes>
    implements CopyWith$Query$Comprehension<TRes> {
  _CopyWithImpl$Query$Comprehension(
    this._instance,
    this._then,
  );

  final Query$Comprehension _instance;

  final TRes Function(Query$Comprehension) _then;

  static const _undefined = {};

  TRes call({
    Object? $class = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Comprehension(
        $class: $class == _undefined || $class == null
            ? _instance.$class
            : ($class as Query$Comprehension$class),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Comprehension$class<TRes> get $class {
    final local$$class = _instance.$class;
    return CopyWith$Query$Comprehension$class(
        local$$class, (e) => call($class: e));
  }
}

class _CopyWithStubImpl$Query$Comprehension<TRes>
    implements CopyWith$Query$Comprehension<TRes> {
  _CopyWithStubImpl$Query$Comprehension(this._res);

  TRes _res;

  call({
    Query$Comprehension$class? $class,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Comprehension$class<TRes> get $class =>
      CopyWith$Query$Comprehension$class.stub(_res);
}

const documentNodeQueryComprehension = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Comprehension'),
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
            name: NameNode(value: 'comprehension'),
            alias: NameNode(value: 'overallComprehension'),
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'overall'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'Progress'),
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
                name: NameNode(value: 'students'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'comprehension'),
                    alias: NameNode(value: 'studentsComprehension'),
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'Progress'),
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
                    name: NameNode(value: 'studentID'),
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
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionProgress,
]);
Query$Comprehension _parserFn$Query$Comprehension(Map<String, dynamic> data) =>
    Query$Comprehension.fromJson(data);

class Options$Query$Comprehension
    extends graphql.QueryOptions<Query$Comprehension> {
  Options$Query$Comprehension({
    String? operationName,
    required Variables$Query$Comprehension variables,
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
          document: documentNodeQueryComprehension,
          parserFn: _parserFn$Query$Comprehension,
        );
}

class WatchOptions$Query$Comprehension
    extends graphql.WatchQueryOptions<Query$Comprehension> {
  WatchOptions$Query$Comprehension({
    String? operationName,
    required Variables$Query$Comprehension variables,
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
          document: documentNodeQueryComprehension,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Comprehension,
        );
}

class FetchMoreOptions$Query$Comprehension extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Comprehension({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Comprehension variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryComprehension,
        );
}

extension ClientExtension$Query$Comprehension on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Comprehension>> query$Comprehension(
          Options$Query$Comprehension options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Comprehension> watchQuery$Comprehension(
          WatchOptions$Query$Comprehension options) =>
      this.watchQuery(options);
  void writeQuery$Comprehension({
    required Query$Comprehension data,
    required Variables$Query$Comprehension variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryComprehension),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Comprehension? readQuery$Comprehension({
    required Variables$Query$Comprehension variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryComprehension),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Comprehension.fromJson(result);
  }
}

class Query$Comprehension$class {
  Query$Comprehension$class({
    required this.overallComprehension,
    required this.$__typename,
  });

  factory Query$Comprehension$class.fromJson(Map<String, dynamic> json) {
    final l$overallComprehension = json['overallComprehension'];
    final l$$__typename = json['__typename'];
    return Query$Comprehension$class(
      overallComprehension:
          Query$Comprehension$class$overallComprehension.fromJson(
              (l$overallComprehension as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Comprehension$class$overallComprehension overallComprehension;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$overallComprehension = overallComprehension;
    _resultData['overallComprehension'] = l$overallComprehension.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$overallComprehension = overallComprehension;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$overallComprehension,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Comprehension$class) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$overallComprehension = overallComprehension;
    final lOther$overallComprehension = other.overallComprehension;
    if (l$overallComprehension != lOther$overallComprehension) {
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

extension UtilityExtension$Query$Comprehension$class
    on Query$Comprehension$class {
  CopyWith$Query$Comprehension$class<Query$Comprehension$class> get copyWith =>
      CopyWith$Query$Comprehension$class(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Comprehension$class<TRes> {
  factory CopyWith$Query$Comprehension$class(
    Query$Comprehension$class instance,
    TRes Function(Query$Comprehension$class) then,
  ) = _CopyWithImpl$Query$Comprehension$class;

  factory CopyWith$Query$Comprehension$class.stub(TRes res) =
      _CopyWithStubImpl$Query$Comprehension$class;

  TRes call({
    Query$Comprehension$class$overallComprehension? overallComprehension,
    String? $__typename,
  });
  CopyWith$Query$Comprehension$class$overallComprehension<TRes>
      get overallComprehension;
}

class _CopyWithImpl$Query$Comprehension$class<TRes>
    implements CopyWith$Query$Comprehension$class<TRes> {
  _CopyWithImpl$Query$Comprehension$class(
    this._instance,
    this._then,
  );

  final Query$Comprehension$class _instance;

  final TRes Function(Query$Comprehension$class) _then;

  static const _undefined = {};

  TRes call({
    Object? overallComprehension = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Comprehension$class(
        overallComprehension:
            overallComprehension == _undefined || overallComprehension == null
                ? _instance.overallComprehension
                : (overallComprehension
                    as Query$Comprehension$class$overallComprehension),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Comprehension$class$overallComprehension<TRes>
      get overallComprehension {
    final local$overallComprehension = _instance.overallComprehension;
    return CopyWith$Query$Comprehension$class$overallComprehension(
        local$overallComprehension, (e) => call(overallComprehension: e));
  }
}

class _CopyWithStubImpl$Query$Comprehension$class<TRes>
    implements CopyWith$Query$Comprehension$class<TRes> {
  _CopyWithStubImpl$Query$Comprehension$class(this._res);

  TRes _res;

  call({
    Query$Comprehension$class$overallComprehension? overallComprehension,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Comprehension$class$overallComprehension<TRes>
      get overallComprehension =>
          CopyWith$Query$Comprehension$class$overallComprehension.stub(_res);
}

class Query$Comprehension$class$overallComprehension {
  Query$Comprehension$class$overallComprehension({
    required this.overall,
    this.students,
    required this.$__typename,
  });

  factory Query$Comprehension$class$overallComprehension.fromJson(
      Map<String, dynamic> json) {
    final l$overall = json['overall'];
    final l$students = json['students'];
    final l$$__typename = json['__typename'];
    return Query$Comprehension$class$overallComprehension(
      overall: Fragment$Progress.fromJson((l$overall as Map<String, dynamic>)),
      students: (l$students as List<dynamic>?)
          ?.map((e) =>
              Query$Comprehension$class$overallComprehension$students.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Progress overall;

  final List<Query$Comprehension$class$overallComprehension$students>? students;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$overall = overall;
    _resultData['overall'] = l$overall.toJson();
    final l$students = students;
    _resultData['students'] = l$students?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$overall = overall;
    final l$students = students;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$overall,
      l$students == null ? null : Object.hashAll(l$students.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Comprehension$class$overallComprehension) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$overall = overall;
    final lOther$overall = other.overall;
    if (l$overall != lOther$overall) {
      return false;
    }
    final l$students = students;
    final lOther$students = other.students;
    if (l$students != null && lOther$students != null) {
      if (l$students.length != lOther$students.length) {
        return false;
      }
      for (int i = 0; i < l$students.length; i++) {
        final l$students$entry = l$students[i];
        final lOther$students$entry = lOther$students[i];
        if (l$students$entry != lOther$students$entry) {
          return false;
        }
      }
    } else if (l$students != lOther$students) {
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

extension UtilityExtension$Query$Comprehension$class$overallComprehension
    on Query$Comprehension$class$overallComprehension {
  CopyWith$Query$Comprehension$class$overallComprehension<
          Query$Comprehension$class$overallComprehension>
      get copyWith => CopyWith$Query$Comprehension$class$overallComprehension(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Comprehension$class$overallComprehension<TRes> {
  factory CopyWith$Query$Comprehension$class$overallComprehension(
    Query$Comprehension$class$overallComprehension instance,
    TRes Function(Query$Comprehension$class$overallComprehension) then,
  ) = _CopyWithImpl$Query$Comprehension$class$overallComprehension;

  factory CopyWith$Query$Comprehension$class$overallComprehension.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Comprehension$class$overallComprehension;

  TRes call({
    Fragment$Progress? overall,
    List<Query$Comprehension$class$overallComprehension$students>? students,
    String? $__typename,
  });
  CopyWith$Fragment$Progress<TRes> get overall;
  TRes students(
      Iterable<Query$Comprehension$class$overallComprehension$students>? Function(
              Iterable<
                  CopyWith$Query$Comprehension$class$overallComprehension$students<
                      Query$Comprehension$class$overallComprehension$students>>?)
          _fn);
}

class _CopyWithImpl$Query$Comprehension$class$overallComprehension<TRes>
    implements CopyWith$Query$Comprehension$class$overallComprehension<TRes> {
  _CopyWithImpl$Query$Comprehension$class$overallComprehension(
    this._instance,
    this._then,
  );

  final Query$Comprehension$class$overallComprehension _instance;

  final TRes Function(Query$Comprehension$class$overallComprehension) _then;

  static const _undefined = {};

  TRes call({
    Object? overall = _undefined,
    Object? students = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Comprehension$class$overallComprehension(
        overall: overall == _undefined || overall == null
            ? _instance.overall
            : (overall as Fragment$Progress),
        students: students == _undefined
            ? _instance.students
            : (students as List<
                Query$Comprehension$class$overallComprehension$students>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Progress<TRes> get overall {
    final local$overall = _instance.overall;
    return CopyWith$Fragment$Progress(local$overall, (e) => call(overall: e));
  }

  TRes students(
          Iterable<Query$Comprehension$class$overallComprehension$students>? Function(
                  Iterable<
                      CopyWith$Query$Comprehension$class$overallComprehension$students<
                          Query$Comprehension$class$overallComprehension$students>>?)
              _fn) =>
      call(
          students: _fn(_instance.students?.map((e) =>
              CopyWith$Query$Comprehension$class$overallComprehension$students(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Query$Comprehension$class$overallComprehension<TRes>
    implements CopyWith$Query$Comprehension$class$overallComprehension<TRes> {
  _CopyWithStubImpl$Query$Comprehension$class$overallComprehension(this._res);

  TRes _res;

  call({
    Fragment$Progress? overall,
    List<Query$Comprehension$class$overallComprehension$students>? students,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Progress<TRes> get overall =>
      CopyWith$Fragment$Progress.stub(_res);
  students(_fn) => _res;
}

class Query$Comprehension$class$overallComprehension$students {
  Query$Comprehension$class$overallComprehension$students({
    required this.studentsComprehension,
    required this.studentID,
    required this.$__typename,
  });

  factory Query$Comprehension$class$overallComprehension$students.fromJson(
      Map<String, dynamic> json) {
    final l$studentsComprehension = json['studentsComprehension'];
    final l$studentID = json['studentID'];
    final l$$__typename = json['__typename'];
    return Query$Comprehension$class$overallComprehension$students(
      studentsComprehension: Fragment$Progress.fromJson(
          (l$studentsComprehension as Map<String, dynamic>)),
      studentID: (l$studentID as String),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Progress studentsComprehension;

  final String studentID;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$studentsComprehension = studentsComprehension;
    _resultData['studentsComprehension'] = l$studentsComprehension.toJson();
    final l$studentID = studentID;
    _resultData['studentID'] = l$studentID;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$studentsComprehension = studentsComprehension;
    final l$studentID = studentID;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$studentsComprehension,
      l$studentID,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Comprehension$class$overallComprehension$students) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$studentsComprehension = studentsComprehension;
    final lOther$studentsComprehension = other.studentsComprehension;
    if (l$studentsComprehension != lOther$studentsComprehension) {
      return false;
    }
    final l$studentID = studentID;
    final lOther$studentID = other.studentID;
    if (l$studentID != lOther$studentID) {
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

extension UtilityExtension$Query$Comprehension$class$overallComprehension$students
    on Query$Comprehension$class$overallComprehension$students {
  CopyWith$Query$Comprehension$class$overallComprehension$students<
          Query$Comprehension$class$overallComprehension$students>
      get copyWith =>
          CopyWith$Query$Comprehension$class$overallComprehension$students(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Comprehension$class$overallComprehension$students<
    TRes> {
  factory CopyWith$Query$Comprehension$class$overallComprehension$students(
    Query$Comprehension$class$overallComprehension$students instance,
    TRes Function(Query$Comprehension$class$overallComprehension$students) then,
  ) = _CopyWithImpl$Query$Comprehension$class$overallComprehension$students;

  factory CopyWith$Query$Comprehension$class$overallComprehension$students.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Comprehension$class$overallComprehension$students;

  TRes call({
    Fragment$Progress? studentsComprehension,
    String? studentID,
    String? $__typename,
  });
  CopyWith$Fragment$Progress<TRes> get studentsComprehension;
}

class _CopyWithImpl$Query$Comprehension$class$overallComprehension$students<
        TRes>
    implements
        CopyWith$Query$Comprehension$class$overallComprehension$students<TRes> {
  _CopyWithImpl$Query$Comprehension$class$overallComprehension$students(
    this._instance,
    this._then,
  );

  final Query$Comprehension$class$overallComprehension$students _instance;

  final TRes Function(Query$Comprehension$class$overallComprehension$students)
      _then;

  static const _undefined = {};

  TRes call({
    Object? studentsComprehension = _undefined,
    Object? studentID = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Comprehension$class$overallComprehension$students(
        studentsComprehension:
            studentsComprehension == _undefined || studentsComprehension == null
                ? _instance.studentsComprehension
                : (studentsComprehension as Fragment$Progress),
        studentID: studentID == _undefined || studentID == null
            ? _instance.studentID
            : (studentID as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Progress<TRes> get studentsComprehension {
    final local$studentsComprehension = _instance.studentsComprehension;
    return CopyWith$Fragment$Progress(
        local$studentsComprehension, (e) => call(studentsComprehension: e));
  }
}

class _CopyWithStubImpl$Query$Comprehension$class$overallComprehension$students<
        TRes>
    implements
        CopyWith$Query$Comprehension$class$overallComprehension$students<TRes> {
  _CopyWithStubImpl$Query$Comprehension$class$overallComprehension$students(
      this._res);

  TRes _res;

  call({
    Fragment$Progress? studentsComprehension,
    String? studentID,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Progress<TRes> get studentsComprehension =>
      CopyWith$Fragment$Progress.stub(_res);
}

class Variables$Query$ClassCode {
  factory Variables$Query$ClassCode({required String classId}) =>
      Variables$Query$ClassCode._({
        r'classId': classId,
      });

  Variables$Query$ClassCode._(this._$data);

  factory Variables$Query$ClassCode.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    return Variables$Query$ClassCode._(result$data);
  }

  Map<String, dynamic> _$data;

  String get classId => (_$data['classId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$classId = classId;
    result$data['classId'] = l$classId;
    return result$data;
  }

  CopyWith$Variables$Query$ClassCode<Variables$Query$ClassCode> get copyWith =>
      CopyWith$Variables$Query$ClassCode(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ClassCode) ||
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

abstract class CopyWith$Variables$Query$ClassCode<TRes> {
  factory CopyWith$Variables$Query$ClassCode(
    Variables$Query$ClassCode instance,
    TRes Function(Variables$Query$ClassCode) then,
  ) = _CopyWithImpl$Variables$Query$ClassCode;

  factory CopyWith$Variables$Query$ClassCode.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ClassCode;

  TRes call({String? classId});
}

class _CopyWithImpl$Variables$Query$ClassCode<TRes>
    implements CopyWith$Variables$Query$ClassCode<TRes> {
  _CopyWithImpl$Variables$Query$ClassCode(
    this._instance,
    this._then,
  );

  final Variables$Query$ClassCode _instance;

  final TRes Function(Variables$Query$ClassCode) _then;

  static const _undefined = {};

  TRes call({Object? classId = _undefined}) =>
      _then(Variables$Query$ClassCode._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$ClassCode<TRes>
    implements CopyWith$Variables$Query$ClassCode<TRes> {
  _CopyWithStubImpl$Variables$Query$ClassCode(this._res);

  TRes _res;

  call({String? classId}) => _res;
}

class Query$ClassCode {
  Query$ClassCode({
    required this.classWithCode,
    required this.$__typename,
  });

  factory Query$ClassCode.fromJson(Map<String, dynamic> json) {
    final l$classWithCode = json['classWithCode'];
    final l$$__typename = json['__typename'];
    return Query$ClassCode(
      classWithCode: Query$ClassCode$classWithCode.fromJson(
          (l$classWithCode as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ClassCode$classWithCode classWithCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$classWithCode = classWithCode;
    _resultData['classWithCode'] = l$classWithCode.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$classWithCode = classWithCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$classWithCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ClassCode) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$classWithCode = classWithCode;
    final lOther$classWithCode = other.classWithCode;
    if (l$classWithCode != lOther$classWithCode) {
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

extension UtilityExtension$Query$ClassCode on Query$ClassCode {
  CopyWith$Query$ClassCode<Query$ClassCode> get copyWith =>
      CopyWith$Query$ClassCode(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ClassCode<TRes> {
  factory CopyWith$Query$ClassCode(
    Query$ClassCode instance,
    TRes Function(Query$ClassCode) then,
  ) = _CopyWithImpl$Query$ClassCode;

  factory CopyWith$Query$ClassCode.stub(TRes res) =
      _CopyWithStubImpl$Query$ClassCode;

  TRes call({
    Query$ClassCode$classWithCode? classWithCode,
    String? $__typename,
  });
  CopyWith$Query$ClassCode$classWithCode<TRes> get classWithCode;
}

class _CopyWithImpl$Query$ClassCode<TRes>
    implements CopyWith$Query$ClassCode<TRes> {
  _CopyWithImpl$Query$ClassCode(
    this._instance,
    this._then,
  );

  final Query$ClassCode _instance;

  final TRes Function(Query$ClassCode) _then;

  static const _undefined = {};

  TRes call({
    Object? classWithCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ClassCode(
        classWithCode: classWithCode == _undefined || classWithCode == null
            ? _instance.classWithCode
            : (classWithCode as Query$ClassCode$classWithCode),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$ClassCode$classWithCode<TRes> get classWithCode {
    final local$classWithCode = _instance.classWithCode;
    return CopyWith$Query$ClassCode$classWithCode(
        local$classWithCode, (e) => call(classWithCode: e));
  }
}

class _CopyWithStubImpl$Query$ClassCode<TRes>
    implements CopyWith$Query$ClassCode<TRes> {
  _CopyWithStubImpl$Query$ClassCode(this._res);

  TRes _res;

  call({
    Query$ClassCode$classWithCode? classWithCode,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$ClassCode$classWithCode<TRes> get classWithCode =>
      CopyWith$Query$ClassCode$classWithCode.stub(_res);
}

const documentNodeQueryClassCode = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ClassCode'),
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
        alias: NameNode(value: 'classWithCode'),
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
            name: NameNode(value: 'code'),
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
Query$ClassCode _parserFn$Query$ClassCode(Map<String, dynamic> data) =>
    Query$ClassCode.fromJson(data);

class Options$Query$ClassCode extends graphql.QueryOptions<Query$ClassCode> {
  Options$Query$ClassCode({
    String? operationName,
    required Variables$Query$ClassCode variables,
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
          document: documentNodeQueryClassCode,
          parserFn: _parserFn$Query$ClassCode,
        );
}

class WatchOptions$Query$ClassCode
    extends graphql.WatchQueryOptions<Query$ClassCode> {
  WatchOptions$Query$ClassCode({
    String? operationName,
    required Variables$Query$ClassCode variables,
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
          document: documentNodeQueryClassCode,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ClassCode,
        );
}

class FetchMoreOptions$Query$ClassCode extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ClassCode({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ClassCode variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryClassCode,
        );
}

extension ClientExtension$Query$ClassCode on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ClassCode>> query$ClassCode(
          Options$Query$ClassCode options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$ClassCode> watchQuery$ClassCode(
          WatchOptions$Query$ClassCode options) =>
      this.watchQuery(options);
  void writeQuery$ClassCode({
    required Query$ClassCode data,
    required Variables$Query$ClassCode variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryClassCode),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ClassCode? readQuery$ClassCode({
    required Variables$Query$ClassCode variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryClassCode),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ClassCode.fromJson(result);
  }
}

class Query$ClassCode$classWithCode {
  Query$ClassCode$classWithCode({
    required this.id,
    required this.code,
    required this.$__typename,
  });

  factory Query$ClassCode$classWithCode.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Query$ClassCode$classWithCode(
      id: (l$id as String),
      code: (l$code as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$code,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ClassCode$classWithCode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Query$ClassCode$classWithCode
    on Query$ClassCode$classWithCode {
  CopyWith$Query$ClassCode$classWithCode<Query$ClassCode$classWithCode>
      get copyWith => CopyWith$Query$ClassCode$classWithCode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ClassCode$classWithCode<TRes> {
  factory CopyWith$Query$ClassCode$classWithCode(
    Query$ClassCode$classWithCode instance,
    TRes Function(Query$ClassCode$classWithCode) then,
  ) = _CopyWithImpl$Query$ClassCode$classWithCode;

  factory CopyWith$Query$ClassCode$classWithCode.stub(TRes res) =
      _CopyWithStubImpl$Query$ClassCode$classWithCode;

  TRes call({
    String? id,
    String? code,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ClassCode$classWithCode<TRes>
    implements CopyWith$Query$ClassCode$classWithCode<TRes> {
  _CopyWithImpl$Query$ClassCode$classWithCode(
    this._instance,
    this._then,
  );

  final Query$ClassCode$classWithCode _instance;

  final TRes Function(Query$ClassCode$classWithCode) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ClassCode$classWithCode(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ClassCode$classWithCode<TRes>
    implements CopyWith$Query$ClassCode$classWithCode<TRes> {
  _CopyWithStubImpl$Query$ClassCode$classWithCode(this._res);

  TRes _res;

  call({
    String? id,
    String? code,
    String? $__typename,
  }) =>
      _res;
}
