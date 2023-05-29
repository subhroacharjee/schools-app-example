import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:schema/src/tutero_graph.graphql.dart';

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

class Fragment$Years {
  Fragment$Years({
    required this.id,
    required this.title,
    required this.$__typename,
  });

  factory Fragment$Years.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Fragment$Years(
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
    if (!(other is Fragment$Years) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$Years on Fragment$Years {
  CopyWith$Fragment$Years<Fragment$Years> get copyWith =>
      CopyWith$Fragment$Years(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Years<TRes> {
  factory CopyWith$Fragment$Years(
    Fragment$Years instance,
    TRes Function(Fragment$Years) then,
  ) = _CopyWithImpl$Fragment$Years;

  factory CopyWith$Fragment$Years.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Years;

  TRes call({
    String? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Years<TRes>
    implements CopyWith$Fragment$Years<TRes> {
  _CopyWithImpl$Fragment$Years(
    this._instance,
    this._then,
  );

  final Fragment$Years _instance;

  final TRes Function(Fragment$Years) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Years(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Years<TRes>
    implements CopyWith$Fragment$Years<TRes> {
  _CopyWithStubImpl$Fragment$Years(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionYears = FragmentDefinitionNode(
  name: NameNode(value: 'Years'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Year'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentYears = DocumentNode(definitions: [
  fragmentDefinitionYears,
]);

extension ClientExtension$Fragment$Years on graphql.GraphQLClient {
  void writeFragment$Years({
    required Fragment$Years data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Years',
            document: documentNodeFragmentYears,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Years? readFragment$Years({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Years',
          document: documentNodeFragmentYears,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Years.fromJson(result);
  }
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
    required this.topicsClass,
    required this.$__typename,
  });

  factory Query$GetTopicsForClass.fromJson(Map<String, dynamic> json) {
    final l$topicsClass = json['topicsClass'];
    final l$$__typename = json['__typename'];
    return Query$GetTopicsForClass(
      topicsClass: Query$GetTopicsForClass$topicsClass.fromJson(
          (l$topicsClass as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTopicsForClass$topicsClass topicsClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$topicsClass = topicsClass;
    _resultData['topicsClass'] = l$topicsClass.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$topicsClass = topicsClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$topicsClass,
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
    final l$topicsClass = topicsClass;
    final lOther$topicsClass = other.topicsClass;
    if (l$topicsClass != lOther$topicsClass) {
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
    Query$GetTopicsForClass$topicsClass? topicsClass,
    String? $__typename,
  });
  CopyWith$Query$GetTopicsForClass$topicsClass<TRes> get topicsClass;
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
    Object? topicsClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTopicsForClass(
        topicsClass: topicsClass == _undefined || topicsClass == null
            ? _instance.topicsClass
            : (topicsClass as Query$GetTopicsForClass$topicsClass),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetTopicsForClass$topicsClass<TRes> get topicsClass {
    final local$topicsClass = _instance.topicsClass;
    return CopyWith$Query$GetTopicsForClass$topicsClass(
        local$topicsClass, (e) => call(topicsClass: e));
  }
}

class _CopyWithStubImpl$Query$GetTopicsForClass<TRes>
    implements CopyWith$Query$GetTopicsForClass<TRes> {
  _CopyWithStubImpl$Query$GetTopicsForClass(this._res);

  TRes _res;

  call({
    Query$GetTopicsForClass$topicsClass? topicsClass,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetTopicsForClass$topicsClass<TRes> get topicsClass =>
      CopyWith$Query$GetTopicsForClass$topicsClass.stub(_res);
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
        alias: NameNode(value: 'topicsClass'),
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
            name: NameNode(value: 'topicsForClass'),
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
                name: NameNode(value: 'color'),
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
                name: NameNode(value: 'progressForClass'),
                alias: NameNode(value: 'topicsProgressForClass'),
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'classId')),
                  )
                ],
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

class Query$GetTopicsForClass$topicsClass {
  Query$GetTopicsForClass$topicsClass({
    required this.id,
    required this.topicsForClass,
    required this.$__typename,
  });

  factory Query$GetTopicsForClass$topicsClass.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$topicsForClass = json['topicsForClass'];
    final l$$__typename = json['__typename'];
    return Query$GetTopicsForClass$topicsClass(
      id: (l$id as String),
      topicsForClass: (l$topicsForClass as List<dynamic>)
          .map((e) =>
              Query$GetTopicsForClass$topicsClass$topicsForClass.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final List<Query$GetTopicsForClass$topicsClass$topicsForClass> topicsForClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$topicsForClass = topicsForClass;
    _resultData['topicsForClass'] =
        l$topicsForClass.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$topicsForClass = topicsForClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$topicsForClass.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTopicsForClass$topicsClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetTopicsForClass$topicsClass
    on Query$GetTopicsForClass$topicsClass {
  CopyWith$Query$GetTopicsForClass$topicsClass<
          Query$GetTopicsForClass$topicsClass>
      get copyWith => CopyWith$Query$GetTopicsForClass$topicsClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTopicsForClass$topicsClass<TRes> {
  factory CopyWith$Query$GetTopicsForClass$topicsClass(
    Query$GetTopicsForClass$topicsClass instance,
    TRes Function(Query$GetTopicsForClass$topicsClass) then,
  ) = _CopyWithImpl$Query$GetTopicsForClass$topicsClass;

  factory CopyWith$Query$GetTopicsForClass$topicsClass.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTopicsForClass$topicsClass;

  TRes call({
    String? id,
    List<Query$GetTopicsForClass$topicsClass$topicsForClass>? topicsForClass,
    String? $__typename,
  });
  TRes topicsForClass(
      Iterable<Query$GetTopicsForClass$topicsClass$topicsForClass> Function(
              Iterable<
                  CopyWith$Query$GetTopicsForClass$topicsClass$topicsForClass<
                      Query$GetTopicsForClass$topicsClass$topicsForClass>>)
          _fn);
}

class _CopyWithImpl$Query$GetTopicsForClass$topicsClass<TRes>
    implements CopyWith$Query$GetTopicsForClass$topicsClass<TRes> {
  _CopyWithImpl$Query$GetTopicsForClass$topicsClass(
    this._instance,
    this._then,
  );

  final Query$GetTopicsForClass$topicsClass _instance;

  final TRes Function(Query$GetTopicsForClass$topicsClass) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? topicsForClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTopicsForClass$topicsClass(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        topicsForClass: topicsForClass == _undefined || topicsForClass == null
            ? _instance.topicsForClass
            : (topicsForClass
                as List<Query$GetTopicsForClass$topicsClass$topicsForClass>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes topicsForClass(
          Iterable<Query$GetTopicsForClass$topicsClass$topicsForClass> Function(
                  Iterable<
                      CopyWith$Query$GetTopicsForClass$topicsClass$topicsForClass<
                          Query$GetTopicsForClass$topicsClass$topicsForClass>>)
              _fn) =>
      call(
          topicsForClass: _fn(_instance.topicsForClass.map((e) =>
              CopyWith$Query$GetTopicsForClass$topicsClass$topicsForClass(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetTopicsForClass$topicsClass<TRes>
    implements CopyWith$Query$GetTopicsForClass$topicsClass<TRes> {
  _CopyWithStubImpl$Query$GetTopicsForClass$topicsClass(this._res);

  TRes _res;

  call({
    String? id,
    List<Query$GetTopicsForClass$topicsClass$topicsForClass>? topicsForClass,
    String? $__typename,
  }) =>
      _res;
  topicsForClass(_fn) => _res;
}

class Query$GetTopicsForClass$topicsClass$topicsForClass {
  Query$GetTopicsForClass$topicsClass$topicsForClass({
    required this.id,
    required this.title,
    required this.color,
    required this.emoji,
    required this.topicsProgressForClass,
    required this.$__typename,
  });

  factory Query$GetTopicsForClass$topicsClass$topicsForClass.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$color = json['color'];
    final l$emoji = json['emoji'];
    final l$topicsProgressForClass = json['topicsProgressForClass'];
    final l$$__typename = json['__typename'];
    return Query$GetTopicsForClass$topicsClass$topicsForClass(
      id: (l$id as String),
      title: (l$title as String),
      color: (l$color as String),
      emoji: (l$emoji as String),
      topicsProgressForClass:
          Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass
              .fromJson((l$topicsProgressForClass as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String color;

  final String emoji;

  final Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass
      topicsProgressForClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$emoji = emoji;
    _resultData['emoji'] = l$emoji;
    final l$topicsProgressForClass = topicsProgressForClass;
    _resultData['topicsProgressForClass'] = l$topicsProgressForClass.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$color = color;
    final l$emoji = emoji;
    final l$topicsProgressForClass = topicsProgressForClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$color,
      l$emoji,
      l$topicsProgressForClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTopicsForClass$topicsClass$topicsForClass) ||
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
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$emoji = emoji;
    final lOther$emoji = other.emoji;
    if (l$emoji != lOther$emoji) {
      return false;
    }
    final l$topicsProgressForClass = topicsProgressForClass;
    final lOther$topicsProgressForClass = other.topicsProgressForClass;
    if (l$topicsProgressForClass != lOther$topicsProgressForClass) {
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

extension UtilityExtension$Query$GetTopicsForClass$topicsClass$topicsForClass
    on Query$GetTopicsForClass$topicsClass$topicsForClass {
  CopyWith$Query$GetTopicsForClass$topicsClass$topicsForClass<
          Query$GetTopicsForClass$topicsClass$topicsForClass>
      get copyWith =>
          CopyWith$Query$GetTopicsForClass$topicsClass$topicsForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTopicsForClass$topicsClass$topicsForClass<
    TRes> {
  factory CopyWith$Query$GetTopicsForClass$topicsClass$topicsForClass(
    Query$GetTopicsForClass$topicsClass$topicsForClass instance,
    TRes Function(Query$GetTopicsForClass$topicsClass$topicsForClass) then,
  ) = _CopyWithImpl$Query$GetTopicsForClass$topicsClass$topicsForClass;

  factory CopyWith$Query$GetTopicsForClass$topicsClass$topicsForClass.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetTopicsForClass$topicsClass$topicsForClass;

  TRes call({
    String? id,
    String? title,
    String? color,
    String? emoji,
    Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass?
        topicsProgressForClass,
    String? $__typename,
  });
  CopyWith$Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass<
      TRes> get topicsProgressForClass;
}

class _CopyWithImpl$Query$GetTopicsForClass$topicsClass$topicsForClass<TRes>
    implements
        CopyWith$Query$GetTopicsForClass$topicsClass$topicsForClass<TRes> {
  _CopyWithImpl$Query$GetTopicsForClass$topicsClass$topicsForClass(
    this._instance,
    this._then,
  );

  final Query$GetTopicsForClass$topicsClass$topicsForClass _instance;

  final TRes Function(Query$GetTopicsForClass$topicsClass$topicsForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? color = _undefined,
    Object? emoji = _undefined,
    Object? topicsProgressForClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTopicsForClass$topicsClass$topicsForClass(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        color: color == _undefined || color == null
            ? _instance.color
            : (color as String),
        emoji: emoji == _undefined || emoji == null
            ? _instance.emoji
            : (emoji as String),
        topicsProgressForClass: topicsProgressForClass == _undefined ||
                topicsProgressForClass == null
            ? _instance.topicsProgressForClass
            : (topicsProgressForClass
                as Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass<
      TRes> get topicsProgressForClass {
    final local$topicsProgressForClass = _instance.topicsProgressForClass;
    return CopyWith$Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass(
        local$topicsProgressForClass, (e) => call(topicsProgressForClass: e));
  }
}

class _CopyWithStubImpl$Query$GetTopicsForClass$topicsClass$topicsForClass<TRes>
    implements
        CopyWith$Query$GetTopicsForClass$topicsClass$topicsForClass<TRes> {
  _CopyWithStubImpl$Query$GetTopicsForClass$topicsClass$topicsForClass(
      this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? color,
    String? emoji,
    Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass?
        topicsProgressForClass,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass<
          TRes>
      get topicsProgressForClass =>
          CopyWith$Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass
              .stub(_res);
}

class Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass {
  Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass({
    required this.progress,
    required this.$__typename,
  });

  factory Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass.fromJson(
      Map<String, dynamic> json) {
    final l$progress = json['progress'];
    final l$$__typename = json['__typename'];
    return Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass(
      progress:
          Fragment$Progress.fromJson((l$progress as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Progress progress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$progress = progress;
    _resultData['progress'] = l$progress.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$progress = progress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$progress,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
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

extension UtilityExtension$Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass
    on Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass {
  CopyWith$Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass<
          Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass>
      get copyWith =>
          CopyWith$Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass<
    TRes> {
  factory CopyWith$Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass(
    Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass
        instance,
    TRes Function(
            Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass)
        then,
  ) = _CopyWithImpl$Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass;

  factory CopyWith$Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass;

  TRes call({
    Fragment$Progress? progress,
    String? $__typename,
  });
  CopyWith$Fragment$Progress<TRes> get progress;
}

class _CopyWithImpl$Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass<
        TRes>
    implements
        CopyWith$Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass<
            TRes> {
  _CopyWithImpl$Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass(
    this._instance,
    this._then,
  );

  final Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass
      _instance;

  final TRes Function(
          Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass)
      _then;

  static const _undefined = {};

  TRes call({
    Object? progress = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass(
        progress: progress == _undefined || progress == null
            ? _instance.progress
            : (progress as Fragment$Progress),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Progress<TRes> get progress {
    final local$progress = _instance.progress;
    return CopyWith$Fragment$Progress(local$progress, (e) => call(progress: e));
  }
}

class _CopyWithStubImpl$Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass<
        TRes>
    implements
        CopyWith$Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass<
            TRes> {
  _CopyWithStubImpl$Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass(
      this._res);

  TRes _res;

  call({
    Fragment$Progress? progress,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Progress<TRes> get progress =>
      CopyWith$Fragment$Progress.stub(_res);
}

class Variables$Query$GetTopicsForClassStudent {
  factory Variables$Query$GetTopicsForClassStudent({required String classId}) =>
      Variables$Query$GetTopicsForClassStudent._({
        r'classId': classId,
      });

  Variables$Query$GetTopicsForClassStudent._(this._$data);

  factory Variables$Query$GetTopicsForClassStudent.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    return Variables$Query$GetTopicsForClassStudent._(result$data);
  }

  Map<String, dynamic> _$data;

  String get classId => (_$data['classId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$classId = classId;
    result$data['classId'] = l$classId;
    return result$data;
  }

  CopyWith$Variables$Query$GetTopicsForClassStudent<
          Variables$Query$GetTopicsForClassStudent>
      get copyWith => CopyWith$Variables$Query$GetTopicsForClassStudent(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetTopicsForClassStudent) ||
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

abstract class CopyWith$Variables$Query$GetTopicsForClassStudent<TRes> {
  factory CopyWith$Variables$Query$GetTopicsForClassStudent(
    Variables$Query$GetTopicsForClassStudent instance,
    TRes Function(Variables$Query$GetTopicsForClassStudent) then,
  ) = _CopyWithImpl$Variables$Query$GetTopicsForClassStudent;

  factory CopyWith$Variables$Query$GetTopicsForClassStudent.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetTopicsForClassStudent;

  TRes call({String? classId});
}

class _CopyWithImpl$Variables$Query$GetTopicsForClassStudent<TRes>
    implements CopyWith$Variables$Query$GetTopicsForClassStudent<TRes> {
  _CopyWithImpl$Variables$Query$GetTopicsForClassStudent(
    this._instance,
    this._then,
  );

  final Variables$Query$GetTopicsForClassStudent _instance;

  final TRes Function(Variables$Query$GetTopicsForClassStudent) _then;

  static const _undefined = {};

  TRes call({Object? classId = _undefined}) =>
      _then(Variables$Query$GetTopicsForClassStudent._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetTopicsForClassStudent<TRes>
    implements CopyWith$Variables$Query$GetTopicsForClassStudent<TRes> {
  _CopyWithStubImpl$Variables$Query$GetTopicsForClassStudent(this._res);

  TRes _res;

  call({String? classId}) => _res;
}

class Query$GetTopicsForClassStudent {
  Query$GetTopicsForClassStudent({
    required this.topicsStudent,
    required this.$__typename,
  });

  factory Query$GetTopicsForClassStudent.fromJson(Map<String, dynamic> json) {
    final l$topicsStudent = json['topicsStudent'];
    final l$$__typename = json['__typename'];
    return Query$GetTopicsForClassStudent(
      topicsStudent: Query$GetTopicsForClassStudent$topicsStudent.fromJson(
          (l$topicsStudent as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTopicsForClassStudent$topicsStudent topicsStudent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$topicsStudent = topicsStudent;
    _resultData['topicsStudent'] = l$topicsStudent.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$topicsStudent = topicsStudent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$topicsStudent,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTopicsForClassStudent) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$topicsStudent = topicsStudent;
    final lOther$topicsStudent = other.topicsStudent;
    if (l$topicsStudent != lOther$topicsStudent) {
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

extension UtilityExtension$Query$GetTopicsForClassStudent
    on Query$GetTopicsForClassStudent {
  CopyWith$Query$GetTopicsForClassStudent<Query$GetTopicsForClassStudent>
      get copyWith => CopyWith$Query$GetTopicsForClassStudent(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTopicsForClassStudent<TRes> {
  factory CopyWith$Query$GetTopicsForClassStudent(
    Query$GetTopicsForClassStudent instance,
    TRes Function(Query$GetTopicsForClassStudent) then,
  ) = _CopyWithImpl$Query$GetTopicsForClassStudent;

  factory CopyWith$Query$GetTopicsForClassStudent.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTopicsForClassStudent;

  TRes call({
    Query$GetTopicsForClassStudent$topicsStudent? topicsStudent,
    String? $__typename,
  });
  CopyWith$Query$GetTopicsForClassStudent$topicsStudent<TRes> get topicsStudent;
}

class _CopyWithImpl$Query$GetTopicsForClassStudent<TRes>
    implements CopyWith$Query$GetTopicsForClassStudent<TRes> {
  _CopyWithImpl$Query$GetTopicsForClassStudent(
    this._instance,
    this._then,
  );

  final Query$GetTopicsForClassStudent _instance;

  final TRes Function(Query$GetTopicsForClassStudent) _then;

  static const _undefined = {};

  TRes call({
    Object? topicsStudent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTopicsForClassStudent(
        topicsStudent: topicsStudent == _undefined || topicsStudent == null
            ? _instance.topicsStudent
            : (topicsStudent as Query$GetTopicsForClassStudent$topicsStudent),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetTopicsForClassStudent$topicsStudent<TRes>
      get topicsStudent {
    final local$topicsStudent = _instance.topicsStudent;
    return CopyWith$Query$GetTopicsForClassStudent$topicsStudent(
        local$topicsStudent, (e) => call(topicsStudent: e));
  }
}

class _CopyWithStubImpl$Query$GetTopicsForClassStudent<TRes>
    implements CopyWith$Query$GetTopicsForClassStudent<TRes> {
  _CopyWithStubImpl$Query$GetTopicsForClassStudent(this._res);

  TRes _res;

  call({
    Query$GetTopicsForClassStudent$topicsStudent? topicsStudent,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetTopicsForClassStudent$topicsStudent<TRes>
      get topicsStudent =>
          CopyWith$Query$GetTopicsForClassStudent$topicsStudent.stub(_res);
}

const documentNodeQueryGetTopicsForClassStudent = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetTopicsForClassStudent'),
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
        alias: NameNode(value: 'topicsStudent'),
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
            name: NameNode(value: 'topicsForClass'),
            alias: NameNode(value: 'topicsForStudent'),
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
                name: NameNode(value: 'color'),
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
Query$GetTopicsForClassStudent _parserFn$Query$GetTopicsForClassStudent(
        Map<String, dynamic> data) =>
    Query$GetTopicsForClassStudent.fromJson(data);

class Options$Query$GetTopicsForClassStudent
    extends graphql.QueryOptions<Query$GetTopicsForClassStudent> {
  Options$Query$GetTopicsForClassStudent({
    String? operationName,
    required Variables$Query$GetTopicsForClassStudent variables,
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
          document: documentNodeQueryGetTopicsForClassStudent,
          parserFn: _parserFn$Query$GetTopicsForClassStudent,
        );
}

class WatchOptions$Query$GetTopicsForClassStudent
    extends graphql.WatchQueryOptions<Query$GetTopicsForClassStudent> {
  WatchOptions$Query$GetTopicsForClassStudent({
    String? operationName,
    required Variables$Query$GetTopicsForClassStudent variables,
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
          document: documentNodeQueryGetTopicsForClassStudent,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetTopicsForClassStudent,
        );
}

class FetchMoreOptions$Query$GetTopicsForClassStudent
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetTopicsForClassStudent({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetTopicsForClassStudent variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetTopicsForClassStudent,
        );
}

extension ClientExtension$Query$GetTopicsForClassStudent
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetTopicsForClassStudent>>
      query$GetTopicsForClassStudent(
              Options$Query$GetTopicsForClassStudent options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetTopicsForClassStudent>
      watchQuery$GetTopicsForClassStudent(
              WatchOptions$Query$GetTopicsForClassStudent options) =>
          this.watchQuery(options);
  void writeQuery$GetTopicsForClassStudent({
    required Query$GetTopicsForClassStudent data,
    required Variables$Query$GetTopicsForClassStudent variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetTopicsForClassStudent),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetTopicsForClassStudent? readQuery$GetTopicsForClassStudent({
    required Variables$Query$GetTopicsForClassStudent variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetTopicsForClassStudent),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetTopicsForClassStudent.fromJson(result);
  }
}

class Query$GetTopicsForClassStudent$topicsStudent {
  Query$GetTopicsForClassStudent$topicsStudent({
    required this.id,
    required this.topicsForStudent,
    required this.$__typename,
  });

  factory Query$GetTopicsForClassStudent$topicsStudent.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$topicsForStudent = json['topicsForStudent'];
    final l$$__typename = json['__typename'];
    return Query$GetTopicsForClassStudent$topicsStudent(
      id: (l$id as String),
      topicsForStudent: (l$topicsForStudent as List<dynamic>)
          .map((e) =>
              Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final List<Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent>
      topicsForStudent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$topicsForStudent = topicsForStudent;
    _resultData['topicsForStudent'] =
        l$topicsForStudent.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$topicsForStudent = topicsForStudent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$topicsForStudent.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTopicsForClassStudent$topicsStudent) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$topicsForStudent = topicsForStudent;
    final lOther$topicsForStudent = other.topicsForStudent;
    if (l$topicsForStudent.length != lOther$topicsForStudent.length) {
      return false;
    }
    for (int i = 0; i < l$topicsForStudent.length; i++) {
      final l$topicsForStudent$entry = l$topicsForStudent[i];
      final lOther$topicsForStudent$entry = lOther$topicsForStudent[i];
      if (l$topicsForStudent$entry != lOther$topicsForStudent$entry) {
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

extension UtilityExtension$Query$GetTopicsForClassStudent$topicsStudent
    on Query$GetTopicsForClassStudent$topicsStudent {
  CopyWith$Query$GetTopicsForClassStudent$topicsStudent<
          Query$GetTopicsForClassStudent$topicsStudent>
      get copyWith => CopyWith$Query$GetTopicsForClassStudent$topicsStudent(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTopicsForClassStudent$topicsStudent<TRes> {
  factory CopyWith$Query$GetTopicsForClassStudent$topicsStudent(
    Query$GetTopicsForClassStudent$topicsStudent instance,
    TRes Function(Query$GetTopicsForClassStudent$topicsStudent) then,
  ) = _CopyWithImpl$Query$GetTopicsForClassStudent$topicsStudent;

  factory CopyWith$Query$GetTopicsForClassStudent$topicsStudent.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTopicsForClassStudent$topicsStudent;

  TRes call({
    String? id,
    List<Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent>?
        topicsForStudent,
    String? $__typename,
  });
  TRes topicsForStudent(
      Iterable<Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent> Function(
              Iterable<
                  CopyWith$Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent<
                      Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent>>)
          _fn);
}

class _CopyWithImpl$Query$GetTopicsForClassStudent$topicsStudent<TRes>
    implements CopyWith$Query$GetTopicsForClassStudent$topicsStudent<TRes> {
  _CopyWithImpl$Query$GetTopicsForClassStudent$topicsStudent(
    this._instance,
    this._then,
  );

  final Query$GetTopicsForClassStudent$topicsStudent _instance;

  final TRes Function(Query$GetTopicsForClassStudent$topicsStudent) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? topicsForStudent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTopicsForClassStudent$topicsStudent(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        topicsForStudent: topicsForStudent == _undefined ||
                topicsForStudent == null
            ? _instance.topicsForStudent
            : (topicsForStudent as List<
                Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes topicsForStudent(
          Iterable<Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent> Function(
                  Iterable<
                      CopyWith$Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent<
                          Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent>>)
              _fn) =>
      call(
          topicsForStudent: _fn(_instance.topicsForStudent.map((e) =>
              CopyWith$Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetTopicsForClassStudent$topicsStudent<TRes>
    implements CopyWith$Query$GetTopicsForClassStudent$topicsStudent<TRes> {
  _CopyWithStubImpl$Query$GetTopicsForClassStudent$topicsStudent(this._res);

  TRes _res;

  call({
    String? id,
    List<Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent>?
        topicsForStudent,
    String? $__typename,
  }) =>
      _res;
  topicsForStudent(_fn) => _res;
}

class Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent {
  Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent({
    required this.id,
    required this.title,
    required this.color,
    required this.emoji,
    required this.progress,
    required this.$__typename,
  });

  factory Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$color = json['color'];
    final l$emoji = json['emoji'];
    final l$progress = json['progress'];
    final l$$__typename = json['__typename'];
    return Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent(
      id: (l$id as String),
      title: (l$title as String),
      color: (l$color as String),
      emoji: (l$emoji as String),
      progress:
          Fragment$Progress.fromJson((l$progress as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String color;

  final String emoji;

  final Fragment$Progress progress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$emoji = emoji;
    _resultData['emoji'] = l$emoji;
    final l$progress = progress;
    _resultData['progress'] = l$progress.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$color = color;
    final l$emoji = emoji;
    final l$progress = progress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$color,
      l$emoji,
      l$progress,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent) ||
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
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$emoji = emoji;
    final lOther$emoji = other.emoji;
    if (l$emoji != lOther$emoji) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
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

extension UtilityExtension$Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent
    on Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent {
  CopyWith$Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent<
          Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent>
      get copyWith =>
          CopyWith$Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent<
    TRes> {
  factory CopyWith$Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent(
    Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent instance,
    TRes Function(Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent)
        then,
  ) = _CopyWithImpl$Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent;

  factory CopyWith$Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent;

  TRes call({
    String? id,
    String? title,
    String? color,
    String? emoji,
    Fragment$Progress? progress,
    String? $__typename,
  });
  CopyWith$Fragment$Progress<TRes> get progress;
}

class _CopyWithImpl$Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent<
        TRes>
    implements
        CopyWith$Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent<
            TRes> {
  _CopyWithImpl$Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent(
    this._instance,
    this._then,
  );

  final Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent _instance;

  final TRes Function(
      Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? color = _undefined,
    Object? emoji = _undefined,
    Object? progress = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        color: color == _undefined || color == null
            ? _instance.color
            : (color as String),
        emoji: emoji == _undefined || emoji == null
            ? _instance.emoji
            : (emoji as String),
        progress: progress == _undefined || progress == null
            ? _instance.progress
            : (progress as Fragment$Progress),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Progress<TRes> get progress {
    final local$progress = _instance.progress;
    return CopyWith$Fragment$Progress(local$progress, (e) => call(progress: e));
  }
}

class _CopyWithStubImpl$Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent<
        TRes>
    implements
        CopyWith$Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent<
            TRes> {
  _CopyWithStubImpl$Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent(
      this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? color,
    String? emoji,
    Fragment$Progress? progress,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Progress<TRes> get progress =>
      CopyWith$Fragment$Progress.stub(_res);
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
            name: NameNode(value: 'id'),
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
            name: NameNode(value: 'title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
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
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'progressForClass'),
                alias: NameNode(value: 'subtopicsProgressForClass'),
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'classId')),
                  )
                ],
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
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'title'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'stateForClass'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'classId')),
                  )
                ],
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
                name: NameNode(value: 'flaggedSkillsForClass'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'classId')),
                  )
                ],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'taughtSkillsForClass'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'classId')),
                  )
                ],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'totalSkillsForClass'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'classId')),
                  )
                ],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'years'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'Years'),
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionProgress,
  fragmentDefinitionYears,
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
    required this.id,
    required this.color,
    required this.title,
    required this.classSubtopics,
    required this.$__typename,
  });

  factory Query$GetSubtopicsForClass$topicForClass.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$color = json['color'];
    final l$title = json['title'];
    final l$classSubtopics = json['classSubtopics'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopicsForClass$topicForClass(
      id: (l$id as String),
      color: (l$color as String),
      title: (l$title as String),
      classSubtopics: (l$classSubtopics as List<dynamic>)
          .map((e) =>
              Query$GetSubtopicsForClass$topicForClass$classSubtopics.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String color;

  final String title;

  final List<Query$GetSubtopicsForClass$topicForClass$classSubtopics>
      classSubtopics;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$classSubtopics = classSubtopics;
    _resultData['classSubtopics'] =
        l$classSubtopics.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$color = color;
    final l$title = title;
    final l$classSubtopics = classSubtopics;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$color,
      l$title,
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
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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
    String? id,
    String? color,
    String? title,
    List<Query$GetSubtopicsForClass$topicForClass$classSubtopics>?
        classSubtopics,
    String? $__typename,
  });
  TRes classSubtopics(
      Iterable<Query$GetSubtopicsForClass$topicForClass$classSubtopics> Function(
              Iterable<
                  CopyWith$Query$GetSubtopicsForClass$topicForClass$classSubtopics<
                      Query$GetSubtopicsForClass$topicForClass$classSubtopics>>)
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
    Object? id = _undefined,
    Object? color = _undefined,
    Object? title = _undefined,
    Object? classSubtopics = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSubtopicsForClass$topicForClass(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        color: color == _undefined || color == null
            ? _instance.color
            : (color as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        classSubtopics: classSubtopics == _undefined || classSubtopics == null
            ? _instance.classSubtopics
            : (classSubtopics as List<
                Query$GetSubtopicsForClass$topicForClass$classSubtopics>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes classSubtopics(
          Iterable<Query$GetSubtopicsForClass$topicForClass$classSubtopics> Function(
                  Iterable<
                      CopyWith$Query$GetSubtopicsForClass$topicForClass$classSubtopics<
                          Query$GetSubtopicsForClass$topicForClass$classSubtopics>>)
              _fn) =>
      call(
          classSubtopics: _fn(_instance.classSubtopics.map((e) =>
              CopyWith$Query$GetSubtopicsForClass$topicForClass$classSubtopics(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetSubtopicsForClass$topicForClass<TRes>
    implements CopyWith$Query$GetSubtopicsForClass$topicForClass<TRes> {
  _CopyWithStubImpl$Query$GetSubtopicsForClass$topicForClass(this._res);

  TRes _res;

  call({
    String? id,
    String? color,
    String? title,
    List<Query$GetSubtopicsForClass$topicForClass$classSubtopics>?
        classSubtopics,
    String? $__typename,
  }) =>
      _res;
  classSubtopics(_fn) => _res;
}

class Query$GetSubtopicsForClass$topicForClass$classSubtopics {
  Query$GetSubtopicsForClass$topicForClass$classSubtopics({
    required this.id,
    required this.subtopicsProgressForClass,
    required this.title,
    required this.stateForClass,
    required this.icon,
    required this.flaggedSkillsForClass,
    required this.taughtSkillsForClass,
    required this.totalSkillsForClass,
    required this.years,
    required this.$__typename,
  });

  factory Query$GetSubtopicsForClass$topicForClass$classSubtopics.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$subtopicsProgressForClass = json['subtopicsProgressForClass'];
    final l$title = json['title'];
    final l$stateForClass = json['stateForClass'];
    final l$icon = json['icon'];
    final l$flaggedSkillsForClass = json['flaggedSkillsForClass'];
    final l$taughtSkillsForClass = json['taughtSkillsForClass'];
    final l$totalSkillsForClass = json['totalSkillsForClass'];
    final l$years = json['years'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopicsForClass$topicForClass$classSubtopics(
      id: (l$id as String),
      subtopicsProgressForClass:
          Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass
              .fromJson((l$subtopicsProgressForClass as Map<String, dynamic>)),
      title: (l$title as String),
      stateForClass: fromJson$Enum$SubtopicState((l$stateForClass as String)),
      icon: (l$icon as String),
      flaggedSkillsForClass: (l$flaggedSkillsForClass as int),
      taughtSkillsForClass: (l$taughtSkillsForClass as int),
      totalSkillsForClass: (l$totalSkillsForClass as int),
      years: (l$years as List<dynamic>)
          .map((e) => Fragment$Years.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass
      subtopicsProgressForClass;

  final String title;

  final Enum$SubtopicState stateForClass;

  final String icon;

  final int flaggedSkillsForClass;

  final int taughtSkillsForClass;

  final int totalSkillsForClass;

  final List<Fragment$Years> years;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$subtopicsProgressForClass = subtopicsProgressForClass;
    _resultData['subtopicsProgressForClass'] =
        l$subtopicsProgressForClass.toJson();
    final l$title = title;
    _resultData['title'] = l$title;
    final l$stateForClass = stateForClass;
    _resultData['stateForClass'] = toJson$Enum$SubtopicState(l$stateForClass);
    final l$icon = icon;
    _resultData['icon'] = l$icon;
    final l$flaggedSkillsForClass = flaggedSkillsForClass;
    _resultData['flaggedSkillsForClass'] = l$flaggedSkillsForClass;
    final l$taughtSkillsForClass = taughtSkillsForClass;
    _resultData['taughtSkillsForClass'] = l$taughtSkillsForClass;
    final l$totalSkillsForClass = totalSkillsForClass;
    _resultData['totalSkillsForClass'] = l$totalSkillsForClass;
    final l$years = years;
    _resultData['years'] = l$years.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$subtopicsProgressForClass = subtopicsProgressForClass;
    final l$title = title;
    final l$stateForClass = stateForClass;
    final l$icon = icon;
    final l$flaggedSkillsForClass = flaggedSkillsForClass;
    final l$taughtSkillsForClass = taughtSkillsForClass;
    final l$totalSkillsForClass = totalSkillsForClass;
    final l$years = years;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$subtopicsProgressForClass,
      l$title,
      l$stateForClass,
      l$icon,
      l$flaggedSkillsForClass,
      l$taughtSkillsForClass,
      l$totalSkillsForClass,
      Object.hashAll(l$years.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSubtopicsForClass$topicForClass$classSubtopics) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$subtopicsProgressForClass = subtopicsProgressForClass;
    final lOther$subtopicsProgressForClass = other.subtopicsProgressForClass;
    if (l$subtopicsProgressForClass != lOther$subtopicsProgressForClass) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$stateForClass = stateForClass;
    final lOther$stateForClass = other.stateForClass;
    if (l$stateForClass != lOther$stateForClass) {
      return false;
    }
    final l$icon = icon;
    final lOther$icon = other.icon;
    if (l$icon != lOther$icon) {
      return false;
    }
    final l$flaggedSkillsForClass = flaggedSkillsForClass;
    final lOther$flaggedSkillsForClass = other.flaggedSkillsForClass;
    if (l$flaggedSkillsForClass != lOther$flaggedSkillsForClass) {
      return false;
    }
    final l$taughtSkillsForClass = taughtSkillsForClass;
    final lOther$taughtSkillsForClass = other.taughtSkillsForClass;
    if (l$taughtSkillsForClass != lOther$taughtSkillsForClass) {
      return false;
    }
    final l$totalSkillsForClass = totalSkillsForClass;
    final lOther$totalSkillsForClass = other.totalSkillsForClass;
    if (l$totalSkillsForClass != lOther$totalSkillsForClass) {
      return false;
    }
    final l$years = years;
    final lOther$years = other.years;
    if (l$years.length != lOther$years.length) {
      return false;
    }
    for (int i = 0; i < l$years.length; i++) {
      final l$years$entry = l$years[i];
      final lOther$years$entry = lOther$years[i];
      if (l$years$entry != lOther$years$entry) {
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

extension UtilityExtension$Query$GetSubtopicsForClass$topicForClass$classSubtopics
    on Query$GetSubtopicsForClass$topicForClass$classSubtopics {
  CopyWith$Query$GetSubtopicsForClass$topicForClass$classSubtopics<
          Query$GetSubtopicsForClass$topicForClass$classSubtopics>
      get copyWith =>
          CopyWith$Query$GetSubtopicsForClass$topicForClass$classSubtopics(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSubtopicsForClass$topicForClass$classSubtopics<
    TRes> {
  factory CopyWith$Query$GetSubtopicsForClass$topicForClass$classSubtopics(
    Query$GetSubtopicsForClass$topicForClass$classSubtopics instance,
    TRes Function(Query$GetSubtopicsForClass$topicForClass$classSubtopics) then,
  ) = _CopyWithImpl$Query$GetSubtopicsForClass$topicForClass$classSubtopics;

  factory CopyWith$Query$GetSubtopicsForClass$topicForClass$classSubtopics.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetSubtopicsForClass$topicForClass$classSubtopics;

  TRes call({
    String? id,
    Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass?
        subtopicsProgressForClass,
    String? title,
    Enum$SubtopicState? stateForClass,
    String? icon,
    int? flaggedSkillsForClass,
    int? taughtSkillsForClass,
    int? totalSkillsForClass,
    List<Fragment$Years>? years,
    String? $__typename,
  });
  CopyWith$Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass<
      TRes> get subtopicsProgressForClass;
  TRes years(
      Iterable<Fragment$Years> Function(
              Iterable<CopyWith$Fragment$Years<Fragment$Years>>)
          _fn);
}

class _CopyWithImpl$Query$GetSubtopicsForClass$topicForClass$classSubtopics<
        TRes>
    implements
        CopyWith$Query$GetSubtopicsForClass$topicForClass$classSubtopics<TRes> {
  _CopyWithImpl$Query$GetSubtopicsForClass$topicForClass$classSubtopics(
    this._instance,
    this._then,
  );

  final Query$GetSubtopicsForClass$topicForClass$classSubtopics _instance;

  final TRes Function(Query$GetSubtopicsForClass$topicForClass$classSubtopics)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? subtopicsProgressForClass = _undefined,
    Object? title = _undefined,
    Object? stateForClass = _undefined,
    Object? icon = _undefined,
    Object? flaggedSkillsForClass = _undefined,
    Object? taughtSkillsForClass = _undefined,
    Object? totalSkillsForClass = _undefined,
    Object? years = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSubtopicsForClass$topicForClass$classSubtopics(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        subtopicsProgressForClass: subtopicsProgressForClass == _undefined ||
                subtopicsProgressForClass == null
            ? _instance.subtopicsProgressForClass
            : (subtopicsProgressForClass
                as Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        stateForClass: stateForClass == _undefined || stateForClass == null
            ? _instance.stateForClass
            : (stateForClass as Enum$SubtopicState),
        icon: icon == _undefined || icon == null
            ? _instance.icon
            : (icon as String),
        flaggedSkillsForClass:
            flaggedSkillsForClass == _undefined || flaggedSkillsForClass == null
                ? _instance.flaggedSkillsForClass
                : (flaggedSkillsForClass as int),
        taughtSkillsForClass:
            taughtSkillsForClass == _undefined || taughtSkillsForClass == null
                ? _instance.taughtSkillsForClass
                : (taughtSkillsForClass as int),
        totalSkillsForClass:
            totalSkillsForClass == _undefined || totalSkillsForClass == null
                ? _instance.totalSkillsForClass
                : (totalSkillsForClass as int),
        years: years == _undefined || years == null
            ? _instance.years
            : (years as List<Fragment$Years>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass<
      TRes> get subtopicsProgressForClass {
    final local$subtopicsProgressForClass = _instance.subtopicsProgressForClass;
    return CopyWith$Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass(
        local$subtopicsProgressForClass,
        (e) => call(subtopicsProgressForClass: e));
  }

  TRes years(
          Iterable<Fragment$Years> Function(
                  Iterable<CopyWith$Fragment$Years<Fragment$Years>>)
              _fn) =>
      call(
          years: _fn(_instance.years.map((e) => CopyWith$Fragment$Years(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetSubtopicsForClass$topicForClass$classSubtopics<
        TRes>
    implements
        CopyWith$Query$GetSubtopicsForClass$topicForClass$classSubtopics<TRes> {
  _CopyWithStubImpl$Query$GetSubtopicsForClass$topicForClass$classSubtopics(
      this._res);

  TRes _res;

  call({
    String? id,
    Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass?
        subtopicsProgressForClass,
    String? title,
    Enum$SubtopicState? stateForClass,
    String? icon,
    int? flaggedSkillsForClass,
    int? taughtSkillsForClass,
    int? totalSkillsForClass,
    List<Fragment$Years>? years,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass<
          TRes>
      get subtopicsProgressForClass =>
          CopyWith$Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass
              .stub(_res);
  years(_fn) => _res;
}

class Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass {
  Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass({
    required this.progress,
    required this.$__typename,
  });

  factory Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass.fromJson(
      Map<String, dynamic> json) {
    final l$progress = json['progress'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass(
      progress:
          Fragment$Progress.fromJson((l$progress as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Progress progress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$progress = progress;
    _resultData['progress'] = l$progress.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$progress = progress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$progress,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
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

extension UtilityExtension$Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass
    on Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass {
  CopyWith$Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass<
          Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass>
      get copyWith =>
          CopyWith$Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass<
    TRes> {
  factory CopyWith$Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass(
    Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass
        instance,
    TRes Function(
            Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass)
        then,
  ) = _CopyWithImpl$Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass;

  factory CopyWith$Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass;

  TRes call({
    Fragment$Progress? progress,
    String? $__typename,
  });
  CopyWith$Fragment$Progress<TRes> get progress;
}

class _CopyWithImpl$Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass<
        TRes>
    implements
        CopyWith$Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass<
            TRes> {
  _CopyWithImpl$Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass(
    this._instance,
    this._then,
  );

  final Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass
      _instance;

  final TRes Function(
          Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass)
      _then;

  static const _undefined = {};

  TRes call({
    Object? progress = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass(
        progress: progress == _undefined || progress == null
            ? _instance.progress
            : (progress as Fragment$Progress),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Progress<TRes> get progress {
    final local$progress = _instance.progress;
    return CopyWith$Fragment$Progress(local$progress, (e) => call(progress: e));
  }
}

class _CopyWithStubImpl$Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass<
        TRes>
    implements
        CopyWith$Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass<
            TRes> {
  _CopyWithStubImpl$Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass(
      this._res);

  TRes _res;

  call({
    Fragment$Progress? progress,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Progress<TRes> get progress =>
      CopyWith$Fragment$Progress.stub(_res);
}

class Variables$Query$GetSubtopicsForClassStudent {
  factory Variables$Query$GetSubtopicsForClassStudent({
    required String classId,
    required String topicId,
  }) =>
      Variables$Query$GetSubtopicsForClassStudent._({
        r'classId': classId,
        r'topicId': topicId,
      });

  Variables$Query$GetSubtopicsForClassStudent._(this._$data);

  factory Variables$Query$GetSubtopicsForClassStudent.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    final l$topicId = data['topicId'];
    result$data['topicId'] = (l$topicId as String);
    return Variables$Query$GetSubtopicsForClassStudent._(result$data);
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

  CopyWith$Variables$Query$GetSubtopicsForClassStudent<
          Variables$Query$GetSubtopicsForClassStudent>
      get copyWith => CopyWith$Variables$Query$GetSubtopicsForClassStudent(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetSubtopicsForClassStudent) ||
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

abstract class CopyWith$Variables$Query$GetSubtopicsForClassStudent<TRes> {
  factory CopyWith$Variables$Query$GetSubtopicsForClassStudent(
    Variables$Query$GetSubtopicsForClassStudent instance,
    TRes Function(Variables$Query$GetSubtopicsForClassStudent) then,
  ) = _CopyWithImpl$Variables$Query$GetSubtopicsForClassStudent;

  factory CopyWith$Variables$Query$GetSubtopicsForClassStudent.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetSubtopicsForClassStudent;

  TRes call({
    String? classId,
    String? topicId,
  });
}

class _CopyWithImpl$Variables$Query$GetSubtopicsForClassStudent<TRes>
    implements CopyWith$Variables$Query$GetSubtopicsForClassStudent<TRes> {
  _CopyWithImpl$Variables$Query$GetSubtopicsForClassStudent(
    this._instance,
    this._then,
  );

  final Variables$Query$GetSubtopicsForClassStudent _instance;

  final TRes Function(Variables$Query$GetSubtopicsForClassStudent) _then;

  static const _undefined = {};

  TRes call({
    Object? classId = _undefined,
    Object? topicId = _undefined,
  }) =>
      _then(Variables$Query$GetSubtopicsForClassStudent._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
        if (topicId != _undefined && topicId != null)
          'topicId': (topicId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetSubtopicsForClassStudent<TRes>
    implements CopyWith$Variables$Query$GetSubtopicsForClassStudent<TRes> {
  _CopyWithStubImpl$Variables$Query$GetSubtopicsForClassStudent(this._res);

  TRes _res;

  call({
    String? classId,
    String? topicId,
  }) =>
      _res;
}

class Query$GetSubtopicsForClassStudent {
  Query$GetSubtopicsForClassStudent({
    required this.topicForStudent,
    required this.$__typename,
  });

  factory Query$GetSubtopicsForClassStudent.fromJson(
      Map<String, dynamic> json) {
    final l$topicForStudent = json['topicForStudent'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopicsForClassStudent(
      topicForStudent:
          Query$GetSubtopicsForClassStudent$topicForStudent.fromJson(
              (l$topicForStudent as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSubtopicsForClassStudent$topicForStudent topicForStudent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$topicForStudent = topicForStudent;
    _resultData['topicForStudent'] = l$topicForStudent.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$topicForStudent = topicForStudent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$topicForStudent,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSubtopicsForClassStudent) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$topicForStudent = topicForStudent;
    final lOther$topicForStudent = other.topicForStudent;
    if (l$topicForStudent != lOther$topicForStudent) {
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

extension UtilityExtension$Query$GetSubtopicsForClassStudent
    on Query$GetSubtopicsForClassStudent {
  CopyWith$Query$GetSubtopicsForClassStudent<Query$GetSubtopicsForClassStudent>
      get copyWith => CopyWith$Query$GetSubtopicsForClassStudent(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSubtopicsForClassStudent<TRes> {
  factory CopyWith$Query$GetSubtopicsForClassStudent(
    Query$GetSubtopicsForClassStudent instance,
    TRes Function(Query$GetSubtopicsForClassStudent) then,
  ) = _CopyWithImpl$Query$GetSubtopicsForClassStudent;

  factory CopyWith$Query$GetSubtopicsForClassStudent.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSubtopicsForClassStudent;

  TRes call({
    Query$GetSubtopicsForClassStudent$topicForStudent? topicForStudent,
    String? $__typename,
  });
  CopyWith$Query$GetSubtopicsForClassStudent$topicForStudent<TRes>
      get topicForStudent;
}

class _CopyWithImpl$Query$GetSubtopicsForClassStudent<TRes>
    implements CopyWith$Query$GetSubtopicsForClassStudent<TRes> {
  _CopyWithImpl$Query$GetSubtopicsForClassStudent(
    this._instance,
    this._then,
  );

  final Query$GetSubtopicsForClassStudent _instance;

  final TRes Function(Query$GetSubtopicsForClassStudent) _then;

  static const _undefined = {};

  TRes call({
    Object? topicForStudent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSubtopicsForClassStudent(
        topicForStudent:
            topicForStudent == _undefined || topicForStudent == null
                ? _instance.topicForStudent
                : (topicForStudent
                    as Query$GetSubtopicsForClassStudent$topicForStudent),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetSubtopicsForClassStudent$topicForStudent<TRes>
      get topicForStudent {
    final local$topicForStudent = _instance.topicForStudent;
    return CopyWith$Query$GetSubtopicsForClassStudent$topicForStudent(
        local$topicForStudent, (e) => call(topicForStudent: e));
  }
}

class _CopyWithStubImpl$Query$GetSubtopicsForClassStudent<TRes>
    implements CopyWith$Query$GetSubtopicsForClassStudent<TRes> {
  _CopyWithStubImpl$Query$GetSubtopicsForClassStudent(this._res);

  TRes _res;

  call({
    Query$GetSubtopicsForClassStudent$topicForStudent? topicForStudent,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetSubtopicsForClassStudent$topicForStudent<TRes>
      get topicForStudent =>
          CopyWith$Query$GetSubtopicsForClassStudent$topicForStudent.stub(_res);
}

const documentNodeQueryGetSubtopicsForClassStudent = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetSubtopicsForClassStudent'),
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
        alias: NameNode(value: 'topicForStudent'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'topicId')),
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
            name: NameNode(value: 'color'),
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
            name: NameNode(value: 'subtopicsForClass'),
            alias: NameNode(value: 'studentSubtopics'),
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
                name: NameNode(value: 'title'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'stateForClass'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'classId')),
                  )
                ],
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
                name: NameNode(value: 'flaggedSkillsForClass'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'classId')),
                  )
                ],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'taughtSkillsForClass'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'classId')),
                  )
                ],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'totalSkillsForClass'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'classId')),
                  )
                ],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'years'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'Years'),
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionProgress,
  fragmentDefinitionYears,
]);
Query$GetSubtopicsForClassStudent _parserFn$Query$GetSubtopicsForClassStudent(
        Map<String, dynamic> data) =>
    Query$GetSubtopicsForClassStudent.fromJson(data);

class Options$Query$GetSubtopicsForClassStudent
    extends graphql.QueryOptions<Query$GetSubtopicsForClassStudent> {
  Options$Query$GetSubtopicsForClassStudent({
    String? operationName,
    required Variables$Query$GetSubtopicsForClassStudent variables,
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
          document: documentNodeQueryGetSubtopicsForClassStudent,
          parserFn: _parserFn$Query$GetSubtopicsForClassStudent,
        );
}

class WatchOptions$Query$GetSubtopicsForClassStudent
    extends graphql.WatchQueryOptions<Query$GetSubtopicsForClassStudent> {
  WatchOptions$Query$GetSubtopicsForClassStudent({
    String? operationName,
    required Variables$Query$GetSubtopicsForClassStudent variables,
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
          document: documentNodeQueryGetSubtopicsForClassStudent,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetSubtopicsForClassStudent,
        );
}

class FetchMoreOptions$Query$GetSubtopicsForClassStudent
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetSubtopicsForClassStudent({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetSubtopicsForClassStudent variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetSubtopicsForClassStudent,
        );
}

extension ClientExtension$Query$GetSubtopicsForClassStudent
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetSubtopicsForClassStudent>>
      query$GetSubtopicsForClassStudent(
              Options$Query$GetSubtopicsForClassStudent options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetSubtopicsForClassStudent>
      watchQuery$GetSubtopicsForClassStudent(
              WatchOptions$Query$GetSubtopicsForClassStudent options) =>
          this.watchQuery(options);
  void writeQuery$GetSubtopicsForClassStudent({
    required Query$GetSubtopicsForClassStudent data,
    required Variables$Query$GetSubtopicsForClassStudent variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetSubtopicsForClassStudent),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetSubtopicsForClassStudent? readQuery$GetSubtopicsForClassStudent({
    required Variables$Query$GetSubtopicsForClassStudent variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetSubtopicsForClassStudent),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetSubtopicsForClassStudent.fromJson(result);
  }
}

class Query$GetSubtopicsForClassStudent$topicForStudent {
  Query$GetSubtopicsForClassStudent$topicForStudent({
    required this.id,
    required this.color,
    required this.title,
    required this.studentSubtopics,
    required this.$__typename,
  });

  factory Query$GetSubtopicsForClassStudent$topicForStudent.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$color = json['color'];
    final l$title = json['title'];
    final l$studentSubtopics = json['studentSubtopics'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopicsForClassStudent$topicForStudent(
      id: (l$id as String),
      color: (l$color as String),
      title: (l$title as String),
      studentSubtopics: (l$studentSubtopics as List<dynamic>)
          .map((e) =>
              Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String color;

  final String title;

  final List<Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics>
      studentSubtopics;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$studentSubtopics = studentSubtopics;
    _resultData['studentSubtopics'] =
        l$studentSubtopics.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$color = color;
    final l$title = title;
    final l$studentSubtopics = studentSubtopics;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$color,
      l$title,
      Object.hashAll(l$studentSubtopics.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSubtopicsForClassStudent$topicForStudent) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$studentSubtopics = studentSubtopics;
    final lOther$studentSubtopics = other.studentSubtopics;
    if (l$studentSubtopics.length != lOther$studentSubtopics.length) {
      return false;
    }
    for (int i = 0; i < l$studentSubtopics.length; i++) {
      final l$studentSubtopics$entry = l$studentSubtopics[i];
      final lOther$studentSubtopics$entry = lOther$studentSubtopics[i];
      if (l$studentSubtopics$entry != lOther$studentSubtopics$entry) {
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

extension UtilityExtension$Query$GetSubtopicsForClassStudent$topicForStudent
    on Query$GetSubtopicsForClassStudent$topicForStudent {
  CopyWith$Query$GetSubtopicsForClassStudent$topicForStudent<
          Query$GetSubtopicsForClassStudent$topicForStudent>
      get copyWith =>
          CopyWith$Query$GetSubtopicsForClassStudent$topicForStudent(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSubtopicsForClassStudent$topicForStudent<
    TRes> {
  factory CopyWith$Query$GetSubtopicsForClassStudent$topicForStudent(
    Query$GetSubtopicsForClassStudent$topicForStudent instance,
    TRes Function(Query$GetSubtopicsForClassStudent$topicForStudent) then,
  ) = _CopyWithImpl$Query$GetSubtopicsForClassStudent$topicForStudent;

  factory CopyWith$Query$GetSubtopicsForClassStudent$topicForStudent.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetSubtopicsForClassStudent$topicForStudent;

  TRes call({
    String? id,
    String? color,
    String? title,
    List<Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics>?
        studentSubtopics,
    String? $__typename,
  });
  TRes studentSubtopics(
      Iterable<Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics> Function(
              Iterable<
                  CopyWith$Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics<
                      Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics>>)
          _fn);
}

class _CopyWithImpl$Query$GetSubtopicsForClassStudent$topicForStudent<TRes>
    implements
        CopyWith$Query$GetSubtopicsForClassStudent$topicForStudent<TRes> {
  _CopyWithImpl$Query$GetSubtopicsForClassStudent$topicForStudent(
    this._instance,
    this._then,
  );

  final Query$GetSubtopicsForClassStudent$topicForStudent _instance;

  final TRes Function(Query$GetSubtopicsForClassStudent$topicForStudent) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? color = _undefined,
    Object? title = _undefined,
    Object? studentSubtopics = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSubtopicsForClassStudent$topicForStudent(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        color: color == _undefined || color == null
            ? _instance.color
            : (color as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        studentSubtopics: studentSubtopics == _undefined ||
                studentSubtopics == null
            ? _instance.studentSubtopics
            : (studentSubtopics as List<
                Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes studentSubtopics(
          Iterable<Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics> Function(
                  Iterable<
                      CopyWith$Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics<
                          Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics>>)
              _fn) =>
      call(
          studentSubtopics: _fn(_instance.studentSubtopics.map((e) =>
              CopyWith$Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetSubtopicsForClassStudent$topicForStudent<TRes>
    implements
        CopyWith$Query$GetSubtopicsForClassStudent$topicForStudent<TRes> {
  _CopyWithStubImpl$Query$GetSubtopicsForClassStudent$topicForStudent(
      this._res);

  TRes _res;

  call({
    String? id,
    String? color,
    String? title,
    List<Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics>?
        studentSubtopics,
    String? $__typename,
  }) =>
      _res;
  studentSubtopics(_fn) => _res;
}

class Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics {
  Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics({
    required this.id,
    required this.progress,
    required this.title,
    required this.stateForClass,
    required this.icon,
    required this.flaggedSkillsForClass,
    required this.taughtSkillsForClass,
    required this.totalSkillsForClass,
    required this.years,
    required this.$__typename,
  });

  factory Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$progress = json['progress'];
    final l$title = json['title'];
    final l$stateForClass = json['stateForClass'];
    final l$icon = json['icon'];
    final l$flaggedSkillsForClass = json['flaggedSkillsForClass'];
    final l$taughtSkillsForClass = json['taughtSkillsForClass'];
    final l$totalSkillsForClass = json['totalSkillsForClass'];
    final l$years = json['years'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics(
      id: (l$id as String),
      progress:
          Fragment$Progress.fromJson((l$progress as Map<String, dynamic>)),
      title: (l$title as String),
      stateForClass: fromJson$Enum$SubtopicState((l$stateForClass as String)),
      icon: (l$icon as String),
      flaggedSkillsForClass: (l$flaggedSkillsForClass as int),
      taughtSkillsForClass: (l$taughtSkillsForClass as int),
      totalSkillsForClass: (l$totalSkillsForClass as int),
      years: (l$years as List<dynamic>)
          .map((e) => Fragment$Years.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Fragment$Progress progress;

  final String title;

  final Enum$SubtopicState stateForClass;

  final String icon;

  final int flaggedSkillsForClass;

  final int taughtSkillsForClass;

  final int totalSkillsForClass;

  final List<Fragment$Years> years;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$progress = progress;
    _resultData['progress'] = l$progress.toJson();
    final l$title = title;
    _resultData['title'] = l$title;
    final l$stateForClass = stateForClass;
    _resultData['stateForClass'] = toJson$Enum$SubtopicState(l$stateForClass);
    final l$icon = icon;
    _resultData['icon'] = l$icon;
    final l$flaggedSkillsForClass = flaggedSkillsForClass;
    _resultData['flaggedSkillsForClass'] = l$flaggedSkillsForClass;
    final l$taughtSkillsForClass = taughtSkillsForClass;
    _resultData['taughtSkillsForClass'] = l$taughtSkillsForClass;
    final l$totalSkillsForClass = totalSkillsForClass;
    _resultData['totalSkillsForClass'] = l$totalSkillsForClass;
    final l$years = years;
    _resultData['years'] = l$years.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$progress = progress;
    final l$title = title;
    final l$stateForClass = stateForClass;
    final l$icon = icon;
    final l$flaggedSkillsForClass = flaggedSkillsForClass;
    final l$taughtSkillsForClass = taughtSkillsForClass;
    final l$totalSkillsForClass = totalSkillsForClass;
    final l$years = years;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$progress,
      l$title,
      l$stateForClass,
      l$icon,
      l$flaggedSkillsForClass,
      l$taughtSkillsForClass,
      l$totalSkillsForClass,
      Object.hashAll(l$years.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$stateForClass = stateForClass;
    final lOther$stateForClass = other.stateForClass;
    if (l$stateForClass != lOther$stateForClass) {
      return false;
    }
    final l$icon = icon;
    final lOther$icon = other.icon;
    if (l$icon != lOther$icon) {
      return false;
    }
    final l$flaggedSkillsForClass = flaggedSkillsForClass;
    final lOther$flaggedSkillsForClass = other.flaggedSkillsForClass;
    if (l$flaggedSkillsForClass != lOther$flaggedSkillsForClass) {
      return false;
    }
    final l$taughtSkillsForClass = taughtSkillsForClass;
    final lOther$taughtSkillsForClass = other.taughtSkillsForClass;
    if (l$taughtSkillsForClass != lOther$taughtSkillsForClass) {
      return false;
    }
    final l$totalSkillsForClass = totalSkillsForClass;
    final lOther$totalSkillsForClass = other.totalSkillsForClass;
    if (l$totalSkillsForClass != lOther$totalSkillsForClass) {
      return false;
    }
    final l$years = years;
    final lOther$years = other.years;
    if (l$years.length != lOther$years.length) {
      return false;
    }
    for (int i = 0; i < l$years.length; i++) {
      final l$years$entry = l$years[i];
      final lOther$years$entry = lOther$years[i];
      if (l$years$entry != lOther$years$entry) {
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

extension UtilityExtension$Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics
    on Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics {
  CopyWith$Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics<
          Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics>
      get copyWith =>
          CopyWith$Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics<
    TRes> {
  factory CopyWith$Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics(
    Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics instance,
    TRes Function(
            Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics)
        then,
  ) = _CopyWithImpl$Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics;

  factory CopyWith$Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics;

  TRes call({
    String? id,
    Fragment$Progress? progress,
    String? title,
    Enum$SubtopicState? stateForClass,
    String? icon,
    int? flaggedSkillsForClass,
    int? taughtSkillsForClass,
    int? totalSkillsForClass,
    List<Fragment$Years>? years,
    String? $__typename,
  });
  CopyWith$Fragment$Progress<TRes> get progress;
  TRes years(
      Iterable<Fragment$Years> Function(
              Iterable<CopyWith$Fragment$Years<Fragment$Years>>)
          _fn);
}

class _CopyWithImpl$Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics<
        TRes>
    implements
        CopyWith$Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics<
            TRes> {
  _CopyWithImpl$Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics(
    this._instance,
    this._then,
  );

  final Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics
      _instance;

  final TRes Function(
      Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? progress = _undefined,
    Object? title = _undefined,
    Object? stateForClass = _undefined,
    Object? icon = _undefined,
    Object? flaggedSkillsForClass = _undefined,
    Object? taughtSkillsForClass = _undefined,
    Object? totalSkillsForClass = _undefined,
    Object? years = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        progress: progress == _undefined || progress == null
            ? _instance.progress
            : (progress as Fragment$Progress),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        stateForClass: stateForClass == _undefined || stateForClass == null
            ? _instance.stateForClass
            : (stateForClass as Enum$SubtopicState),
        icon: icon == _undefined || icon == null
            ? _instance.icon
            : (icon as String),
        flaggedSkillsForClass:
            flaggedSkillsForClass == _undefined || flaggedSkillsForClass == null
                ? _instance.flaggedSkillsForClass
                : (flaggedSkillsForClass as int),
        taughtSkillsForClass:
            taughtSkillsForClass == _undefined || taughtSkillsForClass == null
                ? _instance.taughtSkillsForClass
                : (taughtSkillsForClass as int),
        totalSkillsForClass:
            totalSkillsForClass == _undefined || totalSkillsForClass == null
                ? _instance.totalSkillsForClass
                : (totalSkillsForClass as int),
        years: years == _undefined || years == null
            ? _instance.years
            : (years as List<Fragment$Years>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Progress<TRes> get progress {
    final local$progress = _instance.progress;
    return CopyWith$Fragment$Progress(local$progress, (e) => call(progress: e));
  }

  TRes years(
          Iterable<Fragment$Years> Function(
                  Iterable<CopyWith$Fragment$Years<Fragment$Years>>)
              _fn) =>
      call(
          years: _fn(_instance.years.map((e) => CopyWith$Fragment$Years(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics<
        TRes>
    implements
        CopyWith$Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics<
            TRes> {
  _CopyWithStubImpl$Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics(
      this._res);

  TRes _res;

  call({
    String? id,
    Fragment$Progress? progress,
    String? title,
    Enum$SubtopicState? stateForClass,
    String? icon,
    int? flaggedSkillsForClass,
    int? taughtSkillsForClass,
    int? totalSkillsForClass,
    List<Fragment$Years>? years,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Progress<TRes> get progress =>
      CopyWith$Fragment$Progress.stub(_res);
  years(_fn) => _res;
}

class Variables$Query$GetSkillsForClass {
  factory Variables$Query$GetSkillsForClass({
    required String classId,
    required String subtopicId,
    required String topicId,
  }) =>
      Variables$Query$GetSkillsForClass._({
        r'classId': classId,
        r'subtopicId': subtopicId,
        r'topicId': topicId,
      });

  Variables$Query$GetSkillsForClass._(this._$data);

  factory Variables$Query$GetSkillsForClass.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    final l$subtopicId = data['subtopicId'];
    result$data['subtopicId'] = (l$subtopicId as String);
    final l$topicId = data['topicId'];
    result$data['topicId'] = (l$topicId as String);
    return Variables$Query$GetSkillsForClass._(result$data);
  }

  Map<String, dynamic> _$data;

  String get classId => (_$data['classId'] as String);
  String get subtopicId => (_$data['subtopicId'] as String);
  String get topicId => (_$data['topicId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$classId = classId;
    result$data['classId'] = l$classId;
    final l$subtopicId = subtopicId;
    result$data['subtopicId'] = l$subtopicId;
    final l$topicId = topicId;
    result$data['topicId'] = l$topicId;
    return result$data;
  }

  CopyWith$Variables$Query$GetSkillsForClass<Variables$Query$GetSkillsForClass>
      get copyWith => CopyWith$Variables$Query$GetSkillsForClass(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetSkillsForClass) ||
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
    final l$subtopicId = subtopicId;
    final l$topicId = topicId;
    return Object.hashAll([
      l$classId,
      l$subtopicId,
      l$topicId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetSkillsForClass<TRes> {
  factory CopyWith$Variables$Query$GetSkillsForClass(
    Variables$Query$GetSkillsForClass instance,
    TRes Function(Variables$Query$GetSkillsForClass) then,
  ) = _CopyWithImpl$Variables$Query$GetSkillsForClass;

  factory CopyWith$Variables$Query$GetSkillsForClass.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetSkillsForClass;

  TRes call({
    String? classId,
    String? subtopicId,
    String? topicId,
  });
}

class _CopyWithImpl$Variables$Query$GetSkillsForClass<TRes>
    implements CopyWith$Variables$Query$GetSkillsForClass<TRes> {
  _CopyWithImpl$Variables$Query$GetSkillsForClass(
    this._instance,
    this._then,
  );

  final Variables$Query$GetSkillsForClass _instance;

  final TRes Function(Variables$Query$GetSkillsForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? classId = _undefined,
    Object? subtopicId = _undefined,
    Object? topicId = _undefined,
  }) =>
      _then(Variables$Query$GetSkillsForClass._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
        if (subtopicId != _undefined && subtopicId != null)
          'subtopicId': (subtopicId as String),
        if (topicId != _undefined && topicId != null)
          'topicId': (topicId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetSkillsForClass<TRes>
    implements CopyWith$Variables$Query$GetSkillsForClass<TRes> {
  _CopyWithStubImpl$Variables$Query$GetSkillsForClass(this._res);

  TRes _res;

  call({
    String? classId,
    String? subtopicId,
    String? topicId,
  }) =>
      _res;
}

class Query$GetSkillsForClass {
  Query$GetSkillsForClass({
    required this.subtopicForClass,
    required this.classTopic,
    required this.$__typename,
  });

  factory Query$GetSkillsForClass.fromJson(Map<String, dynamic> json) {
    final l$subtopicForClass = json['subtopicForClass'];
    final l$classTopic = json['classTopic'];
    final l$$__typename = json['__typename'];
    return Query$GetSkillsForClass(
      subtopicForClass: Query$GetSkillsForClass$subtopicForClass.fromJson(
          (l$subtopicForClass as Map<String, dynamic>)),
      classTopic: Query$GetSkillsForClass$classTopic.fromJson(
          (l$classTopic as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSkillsForClass$subtopicForClass subtopicForClass;

  final Query$GetSkillsForClass$classTopic classTopic;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$subtopicForClass = subtopicForClass;
    _resultData['subtopicForClass'] = l$subtopicForClass.toJson();
    final l$classTopic = classTopic;
    _resultData['classTopic'] = l$classTopic.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$subtopicForClass = subtopicForClass;
    final l$classTopic = classTopic;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$subtopicForClass,
      l$classTopic,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSkillsForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$subtopicForClass = subtopicForClass;
    final lOther$subtopicForClass = other.subtopicForClass;
    if (l$subtopicForClass != lOther$subtopicForClass) {
      return false;
    }
    final l$classTopic = classTopic;
    final lOther$classTopic = other.classTopic;
    if (l$classTopic != lOther$classTopic) {
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

extension UtilityExtension$Query$GetSkillsForClass on Query$GetSkillsForClass {
  CopyWith$Query$GetSkillsForClass<Query$GetSkillsForClass> get copyWith =>
      CopyWith$Query$GetSkillsForClass(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSkillsForClass<TRes> {
  factory CopyWith$Query$GetSkillsForClass(
    Query$GetSkillsForClass instance,
    TRes Function(Query$GetSkillsForClass) then,
  ) = _CopyWithImpl$Query$GetSkillsForClass;

  factory CopyWith$Query$GetSkillsForClass.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSkillsForClass;

  TRes call({
    Query$GetSkillsForClass$subtopicForClass? subtopicForClass,
    Query$GetSkillsForClass$classTopic? classTopic,
    String? $__typename,
  });
  CopyWith$Query$GetSkillsForClass$subtopicForClass<TRes> get subtopicForClass;
  CopyWith$Query$GetSkillsForClass$classTopic<TRes> get classTopic;
}

class _CopyWithImpl$Query$GetSkillsForClass<TRes>
    implements CopyWith$Query$GetSkillsForClass<TRes> {
  _CopyWithImpl$Query$GetSkillsForClass(
    this._instance,
    this._then,
  );

  final Query$GetSkillsForClass _instance;

  final TRes Function(Query$GetSkillsForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? subtopicForClass = _undefined,
    Object? classTopic = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSkillsForClass(
        subtopicForClass: subtopicForClass == _undefined ||
                subtopicForClass == null
            ? _instance.subtopicForClass
            : (subtopicForClass as Query$GetSkillsForClass$subtopicForClass),
        classTopic: classTopic == _undefined || classTopic == null
            ? _instance.classTopic
            : (classTopic as Query$GetSkillsForClass$classTopic),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetSkillsForClass$subtopicForClass<TRes> get subtopicForClass {
    final local$subtopicForClass = _instance.subtopicForClass;
    return CopyWith$Query$GetSkillsForClass$subtopicForClass(
        local$subtopicForClass, (e) => call(subtopicForClass: e));
  }

  CopyWith$Query$GetSkillsForClass$classTopic<TRes> get classTopic {
    final local$classTopic = _instance.classTopic;
    return CopyWith$Query$GetSkillsForClass$classTopic(
        local$classTopic, (e) => call(classTopic: e));
  }
}

class _CopyWithStubImpl$Query$GetSkillsForClass<TRes>
    implements CopyWith$Query$GetSkillsForClass<TRes> {
  _CopyWithStubImpl$Query$GetSkillsForClass(this._res);

  TRes _res;

  call({
    Query$GetSkillsForClass$subtopicForClass? subtopicForClass,
    Query$GetSkillsForClass$classTopic? classTopic,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetSkillsForClass$subtopicForClass<TRes>
      get subtopicForClass =>
          CopyWith$Query$GetSkillsForClass$subtopicForClass.stub(_res);
  CopyWith$Query$GetSkillsForClass$classTopic<TRes> get classTopic =>
      CopyWith$Query$GetSkillsForClass$classTopic.stub(_res);
}

const documentNodeQueryGetSkillsForClass = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetSkillsForClass'),
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
        name: NameNode(value: 'subtopic'),
        alias: NameNode(value: 'subtopicForClass'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'subtopicId')),
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
            name: NameNode(value: 'skillsForClass'),
            alias: NameNode(value: 'classSkills'),
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
                name: NameNode(value: 'progressForClass'),
                alias: NameNode(value: 'skillsProgressForClass'),
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'classId')),
                  )
                ],
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
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'flaggedForClass'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'classId')),
                  )
                ],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'taughtForClass'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'classId')),
                  )
                ],
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
                name: NameNode(value: 'headerTextForClass'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'classId')),
                  ),
                  ArgumentNode(
                    name: NameNode(value: 'topicID'),
                    value: VariableNode(name: NameNode(value: 'topicId')),
                  ),
                  ArgumentNode(
                    name: NameNode(value: 'subtopicID'),
                    value: VariableNode(name: NameNode(value: 'subtopicId')),
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
        alias: NameNode(value: 'classTopic'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'topicId')),
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
Query$GetSkillsForClass _parserFn$Query$GetSkillsForClass(
        Map<String, dynamic> data) =>
    Query$GetSkillsForClass.fromJson(data);

class Options$Query$GetSkillsForClass
    extends graphql.QueryOptions<Query$GetSkillsForClass> {
  Options$Query$GetSkillsForClass({
    String? operationName,
    required Variables$Query$GetSkillsForClass variables,
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
          document: documentNodeQueryGetSkillsForClass,
          parserFn: _parserFn$Query$GetSkillsForClass,
        );
}

class WatchOptions$Query$GetSkillsForClass
    extends graphql.WatchQueryOptions<Query$GetSkillsForClass> {
  WatchOptions$Query$GetSkillsForClass({
    String? operationName,
    required Variables$Query$GetSkillsForClass variables,
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
          document: documentNodeQueryGetSkillsForClass,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetSkillsForClass,
        );
}

class FetchMoreOptions$Query$GetSkillsForClass
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetSkillsForClass({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetSkillsForClass variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetSkillsForClass,
        );
}

extension ClientExtension$Query$GetSkillsForClass on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetSkillsForClass>> query$GetSkillsForClass(
          Options$Query$GetSkillsForClass options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetSkillsForClass> watchQuery$GetSkillsForClass(
          WatchOptions$Query$GetSkillsForClass options) =>
      this.watchQuery(options);
  void writeQuery$GetSkillsForClass({
    required Query$GetSkillsForClass data,
    required Variables$Query$GetSkillsForClass variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetSkillsForClass),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetSkillsForClass? readQuery$GetSkillsForClass({
    required Variables$Query$GetSkillsForClass variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetSkillsForClass),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetSkillsForClass.fromJson(result);
  }
}

class Query$GetSkillsForClass$subtopicForClass {
  Query$GetSkillsForClass$subtopicForClass({
    required this.id,
    required this.classSkills,
    required this.$__typename,
  });

  factory Query$GetSkillsForClass$subtopicForClass.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$classSkills = json['classSkills'];
    final l$$__typename = json['__typename'];
    return Query$GetSkillsForClass$subtopicForClass(
      id: (l$id as String),
      classSkills: (l$classSkills as List<dynamic>)
          .map((e) =>
              Query$GetSkillsForClass$subtopicForClass$classSkills.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final List<Query$GetSkillsForClass$subtopicForClass$classSkills> classSkills;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$classSkills = classSkills;
    _resultData['classSkills'] = l$classSkills.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$classSkills = classSkills;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$classSkills.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSkillsForClass$subtopicForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$classSkills = classSkills;
    final lOther$classSkills = other.classSkills;
    if (l$classSkills.length != lOther$classSkills.length) {
      return false;
    }
    for (int i = 0; i < l$classSkills.length; i++) {
      final l$classSkills$entry = l$classSkills[i];
      final lOther$classSkills$entry = lOther$classSkills[i];
      if (l$classSkills$entry != lOther$classSkills$entry) {
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

extension UtilityExtension$Query$GetSkillsForClass$subtopicForClass
    on Query$GetSkillsForClass$subtopicForClass {
  CopyWith$Query$GetSkillsForClass$subtopicForClass<
          Query$GetSkillsForClass$subtopicForClass>
      get copyWith => CopyWith$Query$GetSkillsForClass$subtopicForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSkillsForClass$subtopicForClass<TRes> {
  factory CopyWith$Query$GetSkillsForClass$subtopicForClass(
    Query$GetSkillsForClass$subtopicForClass instance,
    TRes Function(Query$GetSkillsForClass$subtopicForClass) then,
  ) = _CopyWithImpl$Query$GetSkillsForClass$subtopicForClass;

  factory CopyWith$Query$GetSkillsForClass$subtopicForClass.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSkillsForClass$subtopicForClass;

  TRes call({
    String? id,
    List<Query$GetSkillsForClass$subtopicForClass$classSkills>? classSkills,
    String? $__typename,
  });
  TRes classSkills(
      Iterable<Query$GetSkillsForClass$subtopicForClass$classSkills> Function(
              Iterable<
                  CopyWith$Query$GetSkillsForClass$subtopicForClass$classSkills<
                      Query$GetSkillsForClass$subtopicForClass$classSkills>>)
          _fn);
}

class _CopyWithImpl$Query$GetSkillsForClass$subtopicForClass<TRes>
    implements CopyWith$Query$GetSkillsForClass$subtopicForClass<TRes> {
  _CopyWithImpl$Query$GetSkillsForClass$subtopicForClass(
    this._instance,
    this._then,
  );

  final Query$GetSkillsForClass$subtopicForClass _instance;

  final TRes Function(Query$GetSkillsForClass$subtopicForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? classSkills = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSkillsForClass$subtopicForClass(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        classSkills: classSkills == _undefined || classSkills == null
            ? _instance.classSkills
            : (classSkills
                as List<Query$GetSkillsForClass$subtopicForClass$classSkills>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes classSkills(
          Iterable<Query$GetSkillsForClass$subtopicForClass$classSkills> Function(
                  Iterable<
                      CopyWith$Query$GetSkillsForClass$subtopicForClass$classSkills<
                          Query$GetSkillsForClass$subtopicForClass$classSkills>>)
              _fn) =>
      call(
          classSkills: _fn(_instance.classSkills.map((e) =>
              CopyWith$Query$GetSkillsForClass$subtopicForClass$classSkills(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetSkillsForClass$subtopicForClass<TRes>
    implements CopyWith$Query$GetSkillsForClass$subtopicForClass<TRes> {
  _CopyWithStubImpl$Query$GetSkillsForClass$subtopicForClass(this._res);

  TRes _res;

  call({
    String? id,
    List<Query$GetSkillsForClass$subtopicForClass$classSkills>? classSkills,
    String? $__typename,
  }) =>
      _res;
  classSkills(_fn) => _res;
}

class Query$GetSkillsForClass$subtopicForClass$classSkills {
  Query$GetSkillsForClass$subtopicForClass$classSkills({
    required this.id,
    required this.skillsProgressForClass,
    required this.flaggedForClass,
    required this.taughtForClass,
    required this.title,
    required this.headerTextForClass,
    required this.$__typename,
  });

  factory Query$GetSkillsForClass$subtopicForClass$classSkills.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$skillsProgressForClass = json['skillsProgressForClass'];
    final l$flaggedForClass = json['flaggedForClass'];
    final l$taughtForClass = json['taughtForClass'];
    final l$title = json['title'];
    final l$headerTextForClass = json['headerTextForClass'];
    final l$$__typename = json['__typename'];
    return Query$GetSkillsForClass$subtopicForClass$classSkills(
      id: (l$id as String),
      skillsProgressForClass:
          Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass
              .fromJson((l$skillsProgressForClass as Map<String, dynamic>)),
      flaggedForClass: (l$flaggedForClass as bool),
      taughtForClass: (l$taughtForClass as bool),
      title: (l$title as String),
      headerTextForClass: (l$headerTextForClass as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass
      skillsProgressForClass;

  final bool flaggedForClass;

  final bool taughtForClass;

  final String title;

  final List<String> headerTextForClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$skillsProgressForClass = skillsProgressForClass;
    _resultData['skillsProgressForClass'] = l$skillsProgressForClass.toJson();
    final l$flaggedForClass = flaggedForClass;
    _resultData['flaggedForClass'] = l$flaggedForClass;
    final l$taughtForClass = taughtForClass;
    _resultData['taughtForClass'] = l$taughtForClass;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$headerTextForClass = headerTextForClass;
    _resultData['headerTextForClass'] =
        l$headerTextForClass.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$skillsProgressForClass = skillsProgressForClass;
    final l$flaggedForClass = flaggedForClass;
    final l$taughtForClass = taughtForClass;
    final l$title = title;
    final l$headerTextForClass = headerTextForClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$skillsProgressForClass,
      l$flaggedForClass,
      l$taughtForClass,
      l$title,
      Object.hashAll(l$headerTextForClass.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSkillsForClass$subtopicForClass$classSkills) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$skillsProgressForClass = skillsProgressForClass;
    final lOther$skillsProgressForClass = other.skillsProgressForClass;
    if (l$skillsProgressForClass != lOther$skillsProgressForClass) {
      return false;
    }
    final l$flaggedForClass = flaggedForClass;
    final lOther$flaggedForClass = other.flaggedForClass;
    if (l$flaggedForClass != lOther$flaggedForClass) {
      return false;
    }
    final l$taughtForClass = taughtForClass;
    final lOther$taughtForClass = other.taughtForClass;
    if (l$taughtForClass != lOther$taughtForClass) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$headerTextForClass = headerTextForClass;
    final lOther$headerTextForClass = other.headerTextForClass;
    if (l$headerTextForClass.length != lOther$headerTextForClass.length) {
      return false;
    }
    for (int i = 0; i < l$headerTextForClass.length; i++) {
      final l$headerTextForClass$entry = l$headerTextForClass[i];
      final lOther$headerTextForClass$entry = lOther$headerTextForClass[i];
      if (l$headerTextForClass$entry != lOther$headerTextForClass$entry) {
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

extension UtilityExtension$Query$GetSkillsForClass$subtopicForClass$classSkills
    on Query$GetSkillsForClass$subtopicForClass$classSkills {
  CopyWith$Query$GetSkillsForClass$subtopicForClass$classSkills<
          Query$GetSkillsForClass$subtopicForClass$classSkills>
      get copyWith =>
          CopyWith$Query$GetSkillsForClass$subtopicForClass$classSkills(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSkillsForClass$subtopicForClass$classSkills<
    TRes> {
  factory CopyWith$Query$GetSkillsForClass$subtopicForClass$classSkills(
    Query$GetSkillsForClass$subtopicForClass$classSkills instance,
    TRes Function(Query$GetSkillsForClass$subtopicForClass$classSkills) then,
  ) = _CopyWithImpl$Query$GetSkillsForClass$subtopicForClass$classSkills;

  factory CopyWith$Query$GetSkillsForClass$subtopicForClass$classSkills.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetSkillsForClass$subtopicForClass$classSkills;

  TRes call({
    String? id,
    Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass?
        skillsProgressForClass,
    bool? flaggedForClass,
    bool? taughtForClass,
    String? title,
    List<String>? headerTextForClass,
    String? $__typename,
  });
  CopyWith$Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass<
      TRes> get skillsProgressForClass;
}

class _CopyWithImpl$Query$GetSkillsForClass$subtopicForClass$classSkills<TRes>
    implements
        CopyWith$Query$GetSkillsForClass$subtopicForClass$classSkills<TRes> {
  _CopyWithImpl$Query$GetSkillsForClass$subtopicForClass$classSkills(
    this._instance,
    this._then,
  );

  final Query$GetSkillsForClass$subtopicForClass$classSkills _instance;

  final TRes Function(Query$GetSkillsForClass$subtopicForClass$classSkills)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? skillsProgressForClass = _undefined,
    Object? flaggedForClass = _undefined,
    Object? taughtForClass = _undefined,
    Object? title = _undefined,
    Object? headerTextForClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSkillsForClass$subtopicForClass$classSkills(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        skillsProgressForClass: skillsProgressForClass == _undefined ||
                skillsProgressForClass == null
            ? _instance.skillsProgressForClass
            : (skillsProgressForClass
                as Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass),
        flaggedForClass:
            flaggedForClass == _undefined || flaggedForClass == null
                ? _instance.flaggedForClass
                : (flaggedForClass as bool),
        taughtForClass: taughtForClass == _undefined || taughtForClass == null
            ? _instance.taughtForClass
            : (taughtForClass as bool),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        headerTextForClass:
            headerTextForClass == _undefined || headerTextForClass == null
                ? _instance.headerTextForClass
                : (headerTextForClass as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass<
      TRes> get skillsProgressForClass {
    final local$skillsProgressForClass = _instance.skillsProgressForClass;
    return CopyWith$Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass(
        local$skillsProgressForClass, (e) => call(skillsProgressForClass: e));
  }
}

class _CopyWithStubImpl$Query$GetSkillsForClass$subtopicForClass$classSkills<
        TRes>
    implements
        CopyWith$Query$GetSkillsForClass$subtopicForClass$classSkills<TRes> {
  _CopyWithStubImpl$Query$GetSkillsForClass$subtopicForClass$classSkills(
      this._res);

  TRes _res;

  call({
    String? id,
    Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass?
        skillsProgressForClass,
    bool? flaggedForClass,
    bool? taughtForClass,
    String? title,
    List<String>? headerTextForClass,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass<
          TRes>
      get skillsProgressForClass =>
          CopyWith$Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass
              .stub(_res);
}

class Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass {
  Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass({
    required this.progress,
    required this.$__typename,
  });

  factory Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass.fromJson(
      Map<String, dynamic> json) {
    final l$progress = json['progress'];
    final l$$__typename = json['__typename'];
    return Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass(
      progress:
          Fragment$Progress.fromJson((l$progress as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Progress progress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$progress = progress;
    _resultData['progress'] = l$progress.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$progress = progress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$progress,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
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

extension UtilityExtension$Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass
    on Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass {
  CopyWith$Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass<
          Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass>
      get copyWith =>
          CopyWith$Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass<
    TRes> {
  factory CopyWith$Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass(
    Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass
        instance,
    TRes Function(
            Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass)
        then,
  ) = _CopyWithImpl$Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass;

  factory CopyWith$Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass;

  TRes call({
    Fragment$Progress? progress,
    String? $__typename,
  });
  CopyWith$Fragment$Progress<TRes> get progress;
}

class _CopyWithImpl$Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass<
        TRes>
    implements
        CopyWith$Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass<
            TRes> {
  _CopyWithImpl$Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass(
    this._instance,
    this._then,
  );

  final Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass
      _instance;

  final TRes Function(
          Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass)
      _then;

  static const _undefined = {};

  TRes call({
    Object? progress = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass(
        progress: progress == _undefined || progress == null
            ? _instance.progress
            : (progress as Fragment$Progress),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Progress<TRes> get progress {
    final local$progress = _instance.progress;
    return CopyWith$Fragment$Progress(local$progress, (e) => call(progress: e));
  }
}

class _CopyWithStubImpl$Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass<
        TRes>
    implements
        CopyWith$Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass<
            TRes> {
  _CopyWithStubImpl$Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass(
      this._res);

  TRes _res;

  call({
    Fragment$Progress? progress,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Progress<TRes> get progress =>
      CopyWith$Fragment$Progress.stub(_res);
}

class Query$GetSkillsForClass$classTopic {
  Query$GetSkillsForClass$classTopic({
    required this.id,
    required this.color,
    required this.$__typename,
  });

  factory Query$GetSkillsForClass$classTopic.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Query$GetSkillsForClass$classTopic(
      id: (l$id as String),
      color: (l$color as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String color;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$color = color;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$color,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSkillsForClass$classTopic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetSkillsForClass$classTopic
    on Query$GetSkillsForClass$classTopic {
  CopyWith$Query$GetSkillsForClass$classTopic<
          Query$GetSkillsForClass$classTopic>
      get copyWith => CopyWith$Query$GetSkillsForClass$classTopic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSkillsForClass$classTopic<TRes> {
  factory CopyWith$Query$GetSkillsForClass$classTopic(
    Query$GetSkillsForClass$classTopic instance,
    TRes Function(Query$GetSkillsForClass$classTopic) then,
  ) = _CopyWithImpl$Query$GetSkillsForClass$classTopic;

  factory CopyWith$Query$GetSkillsForClass$classTopic.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSkillsForClass$classTopic;

  TRes call({
    String? id,
    String? color,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetSkillsForClass$classTopic<TRes>
    implements CopyWith$Query$GetSkillsForClass$classTopic<TRes> {
  _CopyWithImpl$Query$GetSkillsForClass$classTopic(
    this._instance,
    this._then,
  );

  final Query$GetSkillsForClass$classTopic _instance;

  final TRes Function(Query$GetSkillsForClass$classTopic) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSkillsForClass$classTopic(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        color: color == _undefined || color == null
            ? _instance.color
            : (color as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetSkillsForClass$classTopic<TRes>
    implements CopyWith$Query$GetSkillsForClass$classTopic<TRes> {
  _CopyWithStubImpl$Query$GetSkillsForClass$classTopic(this._res);

  TRes _res;

  call({
    String? id,
    String? color,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetSkillsForClassStudent {
  factory Variables$Query$GetSkillsForClassStudent({
    required String classId,
    required String subtopicId,
    required String topicId,
  }) =>
      Variables$Query$GetSkillsForClassStudent._({
        r'classId': classId,
        r'subtopicId': subtopicId,
        r'topicId': topicId,
      });

  Variables$Query$GetSkillsForClassStudent._(this._$data);

  factory Variables$Query$GetSkillsForClassStudent.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    final l$subtopicId = data['subtopicId'];
    result$data['subtopicId'] = (l$subtopicId as String);
    final l$topicId = data['topicId'];
    result$data['topicId'] = (l$topicId as String);
    return Variables$Query$GetSkillsForClassStudent._(result$data);
  }

  Map<String, dynamic> _$data;

  String get classId => (_$data['classId'] as String);
  String get subtopicId => (_$data['subtopicId'] as String);
  String get topicId => (_$data['topicId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$classId = classId;
    result$data['classId'] = l$classId;
    final l$subtopicId = subtopicId;
    result$data['subtopicId'] = l$subtopicId;
    final l$topicId = topicId;
    result$data['topicId'] = l$topicId;
    return result$data;
  }

  CopyWith$Variables$Query$GetSkillsForClassStudent<
          Variables$Query$GetSkillsForClassStudent>
      get copyWith => CopyWith$Variables$Query$GetSkillsForClassStudent(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetSkillsForClassStudent) ||
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
    final l$subtopicId = subtopicId;
    final l$topicId = topicId;
    return Object.hashAll([
      l$classId,
      l$subtopicId,
      l$topicId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetSkillsForClassStudent<TRes> {
  factory CopyWith$Variables$Query$GetSkillsForClassStudent(
    Variables$Query$GetSkillsForClassStudent instance,
    TRes Function(Variables$Query$GetSkillsForClassStudent) then,
  ) = _CopyWithImpl$Variables$Query$GetSkillsForClassStudent;

  factory CopyWith$Variables$Query$GetSkillsForClassStudent.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetSkillsForClassStudent;

  TRes call({
    String? classId,
    String? subtopicId,
    String? topicId,
  });
}

class _CopyWithImpl$Variables$Query$GetSkillsForClassStudent<TRes>
    implements CopyWith$Variables$Query$GetSkillsForClassStudent<TRes> {
  _CopyWithImpl$Variables$Query$GetSkillsForClassStudent(
    this._instance,
    this._then,
  );

  final Variables$Query$GetSkillsForClassStudent _instance;

  final TRes Function(Variables$Query$GetSkillsForClassStudent) _then;

  static const _undefined = {};

  TRes call({
    Object? classId = _undefined,
    Object? subtopicId = _undefined,
    Object? topicId = _undefined,
  }) =>
      _then(Variables$Query$GetSkillsForClassStudent._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
        if (subtopicId != _undefined && subtopicId != null)
          'subtopicId': (subtopicId as String),
        if (topicId != _undefined && topicId != null)
          'topicId': (topicId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetSkillsForClassStudent<TRes>
    implements CopyWith$Variables$Query$GetSkillsForClassStudent<TRes> {
  _CopyWithStubImpl$Variables$Query$GetSkillsForClassStudent(this._res);

  TRes _res;

  call({
    String? classId,
    String? subtopicId,
    String? topicId,
  }) =>
      _res;
}

class Query$GetSkillsForClassStudent {
  Query$GetSkillsForClassStudent({
    required this.subtopicForStudent,
    required this.studentTopic,
    required this.$__typename,
  });

  factory Query$GetSkillsForClassStudent.fromJson(Map<String, dynamic> json) {
    final l$subtopicForStudent = json['subtopicForStudent'];
    final l$studentTopic = json['studentTopic'];
    final l$$__typename = json['__typename'];
    return Query$GetSkillsForClassStudent(
      subtopicForStudent:
          Query$GetSkillsForClassStudent$subtopicForStudent.fromJson(
              (l$subtopicForStudent as Map<String, dynamic>)),
      studentTopic: Query$GetSkillsForClassStudent$studentTopic.fromJson(
          (l$studentTopic as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSkillsForClassStudent$subtopicForStudent subtopicForStudent;

  final Query$GetSkillsForClassStudent$studentTopic studentTopic;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$subtopicForStudent = subtopicForStudent;
    _resultData['subtopicForStudent'] = l$subtopicForStudent.toJson();
    final l$studentTopic = studentTopic;
    _resultData['studentTopic'] = l$studentTopic.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$subtopicForStudent = subtopicForStudent;
    final l$studentTopic = studentTopic;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$subtopicForStudent,
      l$studentTopic,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSkillsForClassStudent) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$subtopicForStudent = subtopicForStudent;
    final lOther$subtopicForStudent = other.subtopicForStudent;
    if (l$subtopicForStudent != lOther$subtopicForStudent) {
      return false;
    }
    final l$studentTopic = studentTopic;
    final lOther$studentTopic = other.studentTopic;
    if (l$studentTopic != lOther$studentTopic) {
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

extension UtilityExtension$Query$GetSkillsForClassStudent
    on Query$GetSkillsForClassStudent {
  CopyWith$Query$GetSkillsForClassStudent<Query$GetSkillsForClassStudent>
      get copyWith => CopyWith$Query$GetSkillsForClassStudent(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSkillsForClassStudent<TRes> {
  factory CopyWith$Query$GetSkillsForClassStudent(
    Query$GetSkillsForClassStudent instance,
    TRes Function(Query$GetSkillsForClassStudent) then,
  ) = _CopyWithImpl$Query$GetSkillsForClassStudent;

  factory CopyWith$Query$GetSkillsForClassStudent.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSkillsForClassStudent;

  TRes call({
    Query$GetSkillsForClassStudent$subtopicForStudent? subtopicForStudent,
    Query$GetSkillsForClassStudent$studentTopic? studentTopic,
    String? $__typename,
  });
  CopyWith$Query$GetSkillsForClassStudent$subtopicForStudent<TRes>
      get subtopicForStudent;
  CopyWith$Query$GetSkillsForClassStudent$studentTopic<TRes> get studentTopic;
}

class _CopyWithImpl$Query$GetSkillsForClassStudent<TRes>
    implements CopyWith$Query$GetSkillsForClassStudent<TRes> {
  _CopyWithImpl$Query$GetSkillsForClassStudent(
    this._instance,
    this._then,
  );

  final Query$GetSkillsForClassStudent _instance;

  final TRes Function(Query$GetSkillsForClassStudent) _then;

  static const _undefined = {};

  TRes call({
    Object? subtopicForStudent = _undefined,
    Object? studentTopic = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSkillsForClassStudent(
        subtopicForStudent:
            subtopicForStudent == _undefined || subtopicForStudent == null
                ? _instance.subtopicForStudent
                : (subtopicForStudent
                    as Query$GetSkillsForClassStudent$subtopicForStudent),
        studentTopic: studentTopic == _undefined || studentTopic == null
            ? _instance.studentTopic
            : (studentTopic as Query$GetSkillsForClassStudent$studentTopic),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetSkillsForClassStudent$subtopicForStudent<TRes>
      get subtopicForStudent {
    final local$subtopicForStudent = _instance.subtopicForStudent;
    return CopyWith$Query$GetSkillsForClassStudent$subtopicForStudent(
        local$subtopicForStudent, (e) => call(subtopicForStudent: e));
  }

  CopyWith$Query$GetSkillsForClassStudent$studentTopic<TRes> get studentTopic {
    final local$studentTopic = _instance.studentTopic;
    return CopyWith$Query$GetSkillsForClassStudent$studentTopic(
        local$studentTopic, (e) => call(studentTopic: e));
  }
}

class _CopyWithStubImpl$Query$GetSkillsForClassStudent<TRes>
    implements CopyWith$Query$GetSkillsForClassStudent<TRes> {
  _CopyWithStubImpl$Query$GetSkillsForClassStudent(this._res);

  TRes _res;

  call({
    Query$GetSkillsForClassStudent$subtopicForStudent? subtopicForStudent,
    Query$GetSkillsForClassStudent$studentTopic? studentTopic,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetSkillsForClassStudent$subtopicForStudent<TRes>
      get subtopicForStudent =>
          CopyWith$Query$GetSkillsForClassStudent$subtopicForStudent.stub(_res);
  CopyWith$Query$GetSkillsForClassStudent$studentTopic<TRes> get studentTopic =>
      CopyWith$Query$GetSkillsForClassStudent$studentTopic.stub(_res);
}

const documentNodeQueryGetSkillsForClassStudent = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetSkillsForClassStudent'),
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
        name: NameNode(value: 'subtopic'),
        alias: NameNode(value: 'subtopicForStudent'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'subtopicId')),
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
            name: NameNode(value: 'skillsForClass'),
            alias: NameNode(value: 'studentSkills'),
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
                name: NameNode(value: 'flaggedForClass'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'classId')),
                  )
                ],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'taughtForClass'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'classId')),
                  )
                ],
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
                name: NameNode(value: 'headerTextForClass'),
                alias: NameNode(value: 'headerTextForStudent'),
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'classId')),
                  ),
                  ArgumentNode(
                    name: NameNode(value: 'topicID'),
                    value: VariableNode(name: NameNode(value: 'topicId')),
                  ),
                  ArgumentNode(
                    name: NameNode(value: 'subtopicID'),
                    value: VariableNode(name: NameNode(value: 'subtopicId')),
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
        alias: NameNode(value: 'studentTopic'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'topicId')),
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
Query$GetSkillsForClassStudent _parserFn$Query$GetSkillsForClassStudent(
        Map<String, dynamic> data) =>
    Query$GetSkillsForClassStudent.fromJson(data);

class Options$Query$GetSkillsForClassStudent
    extends graphql.QueryOptions<Query$GetSkillsForClassStudent> {
  Options$Query$GetSkillsForClassStudent({
    String? operationName,
    required Variables$Query$GetSkillsForClassStudent variables,
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
          document: documentNodeQueryGetSkillsForClassStudent,
          parserFn: _parserFn$Query$GetSkillsForClassStudent,
        );
}

class WatchOptions$Query$GetSkillsForClassStudent
    extends graphql.WatchQueryOptions<Query$GetSkillsForClassStudent> {
  WatchOptions$Query$GetSkillsForClassStudent({
    String? operationName,
    required Variables$Query$GetSkillsForClassStudent variables,
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
          document: documentNodeQueryGetSkillsForClassStudent,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetSkillsForClassStudent,
        );
}

class FetchMoreOptions$Query$GetSkillsForClassStudent
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetSkillsForClassStudent({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetSkillsForClassStudent variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetSkillsForClassStudent,
        );
}

extension ClientExtension$Query$GetSkillsForClassStudent
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetSkillsForClassStudent>>
      query$GetSkillsForClassStudent(
              Options$Query$GetSkillsForClassStudent options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetSkillsForClassStudent>
      watchQuery$GetSkillsForClassStudent(
              WatchOptions$Query$GetSkillsForClassStudent options) =>
          this.watchQuery(options);
  void writeQuery$GetSkillsForClassStudent({
    required Query$GetSkillsForClassStudent data,
    required Variables$Query$GetSkillsForClassStudent variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetSkillsForClassStudent),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetSkillsForClassStudent? readQuery$GetSkillsForClassStudent({
    required Variables$Query$GetSkillsForClassStudent variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetSkillsForClassStudent),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetSkillsForClassStudent.fromJson(result);
  }
}

class Query$GetSkillsForClassStudent$subtopicForStudent {
  Query$GetSkillsForClassStudent$subtopicForStudent({
    required this.id,
    required this.studentSkills,
    required this.$__typename,
  });

  factory Query$GetSkillsForClassStudent$subtopicForStudent.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$studentSkills = json['studentSkills'];
    final l$$__typename = json['__typename'];
    return Query$GetSkillsForClassStudent$subtopicForStudent(
      id: (l$id as String),
      studentSkills: (l$studentSkills as List<dynamic>)
          .map((e) =>
              Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final List<Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills>
      studentSkills;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$studentSkills = studentSkills;
    _resultData['studentSkills'] =
        l$studentSkills.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$studentSkills = studentSkills;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$studentSkills.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSkillsForClassStudent$subtopicForStudent) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$studentSkills = studentSkills;
    final lOther$studentSkills = other.studentSkills;
    if (l$studentSkills.length != lOther$studentSkills.length) {
      return false;
    }
    for (int i = 0; i < l$studentSkills.length; i++) {
      final l$studentSkills$entry = l$studentSkills[i];
      final lOther$studentSkills$entry = lOther$studentSkills[i];
      if (l$studentSkills$entry != lOther$studentSkills$entry) {
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

extension UtilityExtension$Query$GetSkillsForClassStudent$subtopicForStudent
    on Query$GetSkillsForClassStudent$subtopicForStudent {
  CopyWith$Query$GetSkillsForClassStudent$subtopicForStudent<
          Query$GetSkillsForClassStudent$subtopicForStudent>
      get copyWith =>
          CopyWith$Query$GetSkillsForClassStudent$subtopicForStudent(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSkillsForClassStudent$subtopicForStudent<
    TRes> {
  factory CopyWith$Query$GetSkillsForClassStudent$subtopicForStudent(
    Query$GetSkillsForClassStudent$subtopicForStudent instance,
    TRes Function(Query$GetSkillsForClassStudent$subtopicForStudent) then,
  ) = _CopyWithImpl$Query$GetSkillsForClassStudent$subtopicForStudent;

  factory CopyWith$Query$GetSkillsForClassStudent$subtopicForStudent.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetSkillsForClassStudent$subtopicForStudent;

  TRes call({
    String? id,
    List<Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills>?
        studentSkills,
    String? $__typename,
  });
  TRes studentSkills(
      Iterable<Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills> Function(
              Iterable<
                  CopyWith$Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills<
                      Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills>>)
          _fn);
}

class _CopyWithImpl$Query$GetSkillsForClassStudent$subtopicForStudent<TRes>
    implements
        CopyWith$Query$GetSkillsForClassStudent$subtopicForStudent<TRes> {
  _CopyWithImpl$Query$GetSkillsForClassStudent$subtopicForStudent(
    this._instance,
    this._then,
  );

  final Query$GetSkillsForClassStudent$subtopicForStudent _instance;

  final TRes Function(Query$GetSkillsForClassStudent$subtopicForStudent) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? studentSkills = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSkillsForClassStudent$subtopicForStudent(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        studentSkills: studentSkills == _undefined || studentSkills == null
            ? _instance.studentSkills
            : (studentSkills as List<
                Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes studentSkills(
          Iterable<Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills> Function(
                  Iterable<
                      CopyWith$Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills<
                          Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills>>)
              _fn) =>
      call(
          studentSkills: _fn(_instance.studentSkills.map((e) =>
              CopyWith$Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetSkillsForClassStudent$subtopicForStudent<TRes>
    implements
        CopyWith$Query$GetSkillsForClassStudent$subtopicForStudent<TRes> {
  _CopyWithStubImpl$Query$GetSkillsForClassStudent$subtopicForStudent(
      this._res);

  TRes _res;

  call({
    String? id,
    List<Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills>?
        studentSkills,
    String? $__typename,
  }) =>
      _res;
  studentSkills(_fn) => _res;
}

class Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills {
  Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills({
    required this.id,
    required this.progress,
    required this.flaggedForClass,
    required this.taughtForClass,
    required this.title,
    required this.headerTextForStudent,
    required this.$__typename,
  });

  factory Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$progress = json['progress'];
    final l$flaggedForClass = json['flaggedForClass'];
    final l$taughtForClass = json['taughtForClass'];
    final l$title = json['title'];
    final l$headerTextForStudent = json['headerTextForStudent'];
    final l$$__typename = json['__typename'];
    return Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills(
      id: (l$id as String),
      progress:
          Fragment$Progress.fromJson((l$progress as Map<String, dynamic>)),
      flaggedForClass: (l$flaggedForClass as bool),
      taughtForClass: (l$taughtForClass as bool),
      title: (l$title as String),
      headerTextForStudent: (l$headerTextForStudent as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Fragment$Progress progress;

  final bool flaggedForClass;

  final bool taughtForClass;

  final String title;

  final List<String> headerTextForStudent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$progress = progress;
    _resultData['progress'] = l$progress.toJson();
    final l$flaggedForClass = flaggedForClass;
    _resultData['flaggedForClass'] = l$flaggedForClass;
    final l$taughtForClass = taughtForClass;
    _resultData['taughtForClass'] = l$taughtForClass;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$headerTextForStudent = headerTextForStudent;
    _resultData['headerTextForStudent'] =
        l$headerTextForStudent.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$progress = progress;
    final l$flaggedForClass = flaggedForClass;
    final l$taughtForClass = taughtForClass;
    final l$title = title;
    final l$headerTextForStudent = headerTextForStudent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$progress,
      l$flaggedForClass,
      l$taughtForClass,
      l$title,
      Object.hashAll(l$headerTextForStudent.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$flaggedForClass = flaggedForClass;
    final lOther$flaggedForClass = other.flaggedForClass;
    if (l$flaggedForClass != lOther$flaggedForClass) {
      return false;
    }
    final l$taughtForClass = taughtForClass;
    final lOther$taughtForClass = other.taughtForClass;
    if (l$taughtForClass != lOther$taughtForClass) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$headerTextForStudent = headerTextForStudent;
    final lOther$headerTextForStudent = other.headerTextForStudent;
    if (l$headerTextForStudent.length != lOther$headerTextForStudent.length) {
      return false;
    }
    for (int i = 0; i < l$headerTextForStudent.length; i++) {
      final l$headerTextForStudent$entry = l$headerTextForStudent[i];
      final lOther$headerTextForStudent$entry = lOther$headerTextForStudent[i];
      if (l$headerTextForStudent$entry != lOther$headerTextForStudent$entry) {
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

extension UtilityExtension$Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills
    on Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills {
  CopyWith$Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills<
          Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills>
      get copyWith =>
          CopyWith$Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills<
    TRes> {
  factory CopyWith$Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills(
    Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills instance,
    TRes Function(
            Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills)
        then,
  ) = _CopyWithImpl$Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills;

  factory CopyWith$Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills;

  TRes call({
    String? id,
    Fragment$Progress? progress,
    bool? flaggedForClass,
    bool? taughtForClass,
    String? title,
    List<String>? headerTextForStudent,
    String? $__typename,
  });
  CopyWith$Fragment$Progress<TRes> get progress;
}

class _CopyWithImpl$Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills<
        TRes>
    implements
        CopyWith$Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills<
            TRes> {
  _CopyWithImpl$Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills(
    this._instance,
    this._then,
  );

  final Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills
      _instance;

  final TRes Function(
      Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? progress = _undefined,
    Object? flaggedForClass = _undefined,
    Object? taughtForClass = _undefined,
    Object? title = _undefined,
    Object? headerTextForStudent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        progress: progress == _undefined || progress == null
            ? _instance.progress
            : (progress as Fragment$Progress),
        flaggedForClass:
            flaggedForClass == _undefined || flaggedForClass == null
                ? _instance.flaggedForClass
                : (flaggedForClass as bool),
        taughtForClass: taughtForClass == _undefined || taughtForClass == null
            ? _instance.taughtForClass
            : (taughtForClass as bool),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        headerTextForStudent:
            headerTextForStudent == _undefined || headerTextForStudent == null
                ? _instance.headerTextForStudent
                : (headerTextForStudent as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Progress<TRes> get progress {
    final local$progress = _instance.progress;
    return CopyWith$Fragment$Progress(local$progress, (e) => call(progress: e));
  }
}

class _CopyWithStubImpl$Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills<
        TRes>
    implements
        CopyWith$Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills<
            TRes> {
  _CopyWithStubImpl$Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills(
      this._res);

  TRes _res;

  call({
    String? id,
    Fragment$Progress? progress,
    bool? flaggedForClass,
    bool? taughtForClass,
    String? title,
    List<String>? headerTextForStudent,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Progress<TRes> get progress =>
      CopyWith$Fragment$Progress.stub(_res);
}

class Query$GetSkillsForClassStudent$studentTopic {
  Query$GetSkillsForClassStudent$studentTopic({
    required this.id,
    required this.color,
    required this.$__typename,
  });

  factory Query$GetSkillsForClassStudent$studentTopic.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Query$GetSkillsForClassStudent$studentTopic(
      id: (l$id as String),
      color: (l$color as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String color;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$color = color;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$color,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSkillsForClassStudent$studentTopic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetSkillsForClassStudent$studentTopic
    on Query$GetSkillsForClassStudent$studentTopic {
  CopyWith$Query$GetSkillsForClassStudent$studentTopic<
          Query$GetSkillsForClassStudent$studentTopic>
      get copyWith => CopyWith$Query$GetSkillsForClassStudent$studentTopic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSkillsForClassStudent$studentTopic<TRes> {
  factory CopyWith$Query$GetSkillsForClassStudent$studentTopic(
    Query$GetSkillsForClassStudent$studentTopic instance,
    TRes Function(Query$GetSkillsForClassStudent$studentTopic) then,
  ) = _CopyWithImpl$Query$GetSkillsForClassStudent$studentTopic;

  factory CopyWith$Query$GetSkillsForClassStudent$studentTopic.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSkillsForClassStudent$studentTopic;

  TRes call({
    String? id,
    String? color,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetSkillsForClassStudent$studentTopic<TRes>
    implements CopyWith$Query$GetSkillsForClassStudent$studentTopic<TRes> {
  _CopyWithImpl$Query$GetSkillsForClassStudent$studentTopic(
    this._instance,
    this._then,
  );

  final Query$GetSkillsForClassStudent$studentTopic _instance;

  final TRes Function(Query$GetSkillsForClassStudent$studentTopic) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSkillsForClassStudent$studentTopic(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        color: color == _undefined || color == null
            ? _instance.color
            : (color as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetSkillsForClassStudent$studentTopic<TRes>
    implements CopyWith$Query$GetSkillsForClassStudent$studentTopic<TRes> {
  _CopyWithStubImpl$Query$GetSkillsForClassStudent$studentTopic(this._res);

  TRes _res;

  call({
    String? id,
    String? color,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetSubtopicsIconAndTitleForClass {
  factory Variables$Query$GetSubtopicsIconAndTitleForClass({
    required String classId,
    required String topicId,
  }) =>
      Variables$Query$GetSubtopicsIconAndTitleForClass._({
        r'classId': classId,
        r'topicId': topicId,
      });

  Variables$Query$GetSubtopicsIconAndTitleForClass._(this._$data);

  factory Variables$Query$GetSubtopicsIconAndTitleForClass.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    final l$topicId = data['topicId'];
    result$data['topicId'] = (l$topicId as String);
    return Variables$Query$GetSubtopicsIconAndTitleForClass._(result$data);
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

  CopyWith$Variables$Query$GetSubtopicsIconAndTitleForClass<
          Variables$Query$GetSubtopicsIconAndTitleForClass>
      get copyWith => CopyWith$Variables$Query$GetSubtopicsIconAndTitleForClass(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetSubtopicsIconAndTitleForClass) ||
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

abstract class CopyWith$Variables$Query$GetSubtopicsIconAndTitleForClass<TRes> {
  factory CopyWith$Variables$Query$GetSubtopicsIconAndTitleForClass(
    Variables$Query$GetSubtopicsIconAndTitleForClass instance,
    TRes Function(Variables$Query$GetSubtopicsIconAndTitleForClass) then,
  ) = _CopyWithImpl$Variables$Query$GetSubtopicsIconAndTitleForClass;

  factory CopyWith$Variables$Query$GetSubtopicsIconAndTitleForClass.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Query$GetSubtopicsIconAndTitleForClass;

  TRes call({
    String? classId,
    String? topicId,
  });
}

class _CopyWithImpl$Variables$Query$GetSubtopicsIconAndTitleForClass<TRes>
    implements CopyWith$Variables$Query$GetSubtopicsIconAndTitleForClass<TRes> {
  _CopyWithImpl$Variables$Query$GetSubtopicsIconAndTitleForClass(
    this._instance,
    this._then,
  );

  final Variables$Query$GetSubtopicsIconAndTitleForClass _instance;

  final TRes Function(Variables$Query$GetSubtopicsIconAndTitleForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? classId = _undefined,
    Object? topicId = _undefined,
  }) =>
      _then(Variables$Query$GetSubtopicsIconAndTitleForClass._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
        if (topicId != _undefined && topicId != null)
          'topicId': (topicId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetSubtopicsIconAndTitleForClass<TRes>
    implements CopyWith$Variables$Query$GetSubtopicsIconAndTitleForClass<TRes> {
  _CopyWithStubImpl$Variables$Query$GetSubtopicsIconAndTitleForClass(this._res);

  TRes _res;

  call({
    String? classId,
    String? topicId,
  }) =>
      _res;
}

class Query$GetSubtopicsIconAndTitleForClass {
  Query$GetSubtopicsIconAndTitleForClass({
    required this.mTopic,
    required this.$__typename,
  });

  factory Query$GetSubtopicsIconAndTitleForClass.fromJson(
      Map<String, dynamic> json) {
    final l$mTopic = json['mTopic'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopicsIconAndTitleForClass(
      mTopic: Query$GetSubtopicsIconAndTitleForClass$mTopic.fromJson(
          (l$mTopic as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSubtopicsIconAndTitleForClass$mTopic mTopic;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mTopic = mTopic;
    _resultData['mTopic'] = l$mTopic.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mTopic = mTopic;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mTopic,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSubtopicsIconAndTitleForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mTopic = mTopic;
    final lOther$mTopic = other.mTopic;
    if (l$mTopic != lOther$mTopic) {
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

extension UtilityExtension$Query$GetSubtopicsIconAndTitleForClass
    on Query$GetSubtopicsIconAndTitleForClass {
  CopyWith$Query$GetSubtopicsIconAndTitleForClass<
          Query$GetSubtopicsIconAndTitleForClass>
      get copyWith => CopyWith$Query$GetSubtopicsIconAndTitleForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSubtopicsIconAndTitleForClass<TRes> {
  factory CopyWith$Query$GetSubtopicsIconAndTitleForClass(
    Query$GetSubtopicsIconAndTitleForClass instance,
    TRes Function(Query$GetSubtopicsIconAndTitleForClass) then,
  ) = _CopyWithImpl$Query$GetSubtopicsIconAndTitleForClass;

  factory CopyWith$Query$GetSubtopicsIconAndTitleForClass.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSubtopicsIconAndTitleForClass;

  TRes call({
    Query$GetSubtopicsIconAndTitleForClass$mTopic? mTopic,
    String? $__typename,
  });
  CopyWith$Query$GetSubtopicsIconAndTitleForClass$mTopic<TRes> get mTopic;
}

class _CopyWithImpl$Query$GetSubtopicsIconAndTitleForClass<TRes>
    implements CopyWith$Query$GetSubtopicsIconAndTitleForClass<TRes> {
  _CopyWithImpl$Query$GetSubtopicsIconAndTitleForClass(
    this._instance,
    this._then,
  );

  final Query$GetSubtopicsIconAndTitleForClass _instance;

  final TRes Function(Query$GetSubtopicsIconAndTitleForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? mTopic = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSubtopicsIconAndTitleForClass(
        mTopic: mTopic == _undefined || mTopic == null
            ? _instance.mTopic
            : (mTopic as Query$GetSubtopicsIconAndTitleForClass$mTopic),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetSubtopicsIconAndTitleForClass$mTopic<TRes> get mTopic {
    final local$mTopic = _instance.mTopic;
    return CopyWith$Query$GetSubtopicsIconAndTitleForClass$mTopic(
        local$mTopic, (e) => call(mTopic: e));
  }
}

class _CopyWithStubImpl$Query$GetSubtopicsIconAndTitleForClass<TRes>
    implements CopyWith$Query$GetSubtopicsIconAndTitleForClass<TRes> {
  _CopyWithStubImpl$Query$GetSubtopicsIconAndTitleForClass(this._res);

  TRes _res;

  call({
    Query$GetSubtopicsIconAndTitleForClass$mTopic? mTopic,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetSubtopicsIconAndTitleForClass$mTopic<TRes> get mTopic =>
      CopyWith$Query$GetSubtopicsIconAndTitleForClass$mTopic.stub(_res);
}

const documentNodeQueryGetSubtopicsIconAndTitleForClass =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetSubtopicsIconAndTitleForClass'),
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
        alias: NameNode(value: 'mTopic'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'topicId')),
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
            name: NameNode(value: 'subtopicsForClass'),
            alias: NameNode(value: 'mSubtopics'),
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
Query$GetSubtopicsIconAndTitleForClass
    _parserFn$Query$GetSubtopicsIconAndTitleForClass(
            Map<String, dynamic> data) =>
        Query$GetSubtopicsIconAndTitleForClass.fromJson(data);

class Options$Query$GetSubtopicsIconAndTitleForClass
    extends graphql.QueryOptions<Query$GetSubtopicsIconAndTitleForClass> {
  Options$Query$GetSubtopicsIconAndTitleForClass({
    String? operationName,
    required Variables$Query$GetSubtopicsIconAndTitleForClass variables,
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
          document: documentNodeQueryGetSubtopicsIconAndTitleForClass,
          parserFn: _parserFn$Query$GetSubtopicsIconAndTitleForClass,
        );
}

class WatchOptions$Query$GetSubtopicsIconAndTitleForClass
    extends graphql.WatchQueryOptions<Query$GetSubtopicsIconAndTitleForClass> {
  WatchOptions$Query$GetSubtopicsIconAndTitleForClass({
    String? operationName,
    required Variables$Query$GetSubtopicsIconAndTitleForClass variables,
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
          document: documentNodeQueryGetSubtopicsIconAndTitleForClass,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetSubtopicsIconAndTitleForClass,
        );
}

class FetchMoreOptions$Query$GetSubtopicsIconAndTitleForClass
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetSubtopicsIconAndTitleForClass({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetSubtopicsIconAndTitleForClass variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetSubtopicsIconAndTitleForClass,
        );
}

extension ClientExtension$Query$GetSubtopicsIconAndTitleForClass
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetSubtopicsIconAndTitleForClass>>
      query$GetSubtopicsIconAndTitleForClass(
              Options$Query$GetSubtopicsIconAndTitleForClass options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetSubtopicsIconAndTitleForClass>
      watchQuery$GetSubtopicsIconAndTitleForClass(
              WatchOptions$Query$GetSubtopicsIconAndTitleForClass options) =>
          this.watchQuery(options);
  void writeQuery$GetSubtopicsIconAndTitleForClass({
    required Query$GetSubtopicsIconAndTitleForClass data,
    required Variables$Query$GetSubtopicsIconAndTitleForClass variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetSubtopicsIconAndTitleForClass),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetSubtopicsIconAndTitleForClass?
      readQuery$GetSubtopicsIconAndTitleForClass({
    required Variables$Query$GetSubtopicsIconAndTitleForClass variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetSubtopicsIconAndTitleForClass),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetSubtopicsIconAndTitleForClass.fromJson(result);
  }
}

class Query$GetSubtopicsIconAndTitleForClass$mTopic {
  Query$GetSubtopicsIconAndTitleForClass$mTopic({
    required this.id,
    required this.mSubtopics,
    required this.$__typename,
  });

  factory Query$GetSubtopicsIconAndTitleForClass$mTopic.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$mSubtopics = json['mSubtopics'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopicsIconAndTitleForClass$mTopic(
      id: (l$id as String),
      mSubtopics: (l$mSubtopics as List<dynamic>)
          .map((e) =>
              Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final List<Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics>
      mSubtopics;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$mSubtopics = mSubtopics;
    _resultData['mSubtopics'] = l$mSubtopics.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$mSubtopics = mSubtopics;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$mSubtopics.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSubtopicsIconAndTitleForClass$mTopic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$mSubtopics = mSubtopics;
    final lOther$mSubtopics = other.mSubtopics;
    if (l$mSubtopics.length != lOther$mSubtopics.length) {
      return false;
    }
    for (int i = 0; i < l$mSubtopics.length; i++) {
      final l$mSubtopics$entry = l$mSubtopics[i];
      final lOther$mSubtopics$entry = lOther$mSubtopics[i];
      if (l$mSubtopics$entry != lOther$mSubtopics$entry) {
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

extension UtilityExtension$Query$GetSubtopicsIconAndTitleForClass$mTopic
    on Query$GetSubtopicsIconAndTitleForClass$mTopic {
  CopyWith$Query$GetSubtopicsIconAndTitleForClass$mTopic<
          Query$GetSubtopicsIconAndTitleForClass$mTopic>
      get copyWith => CopyWith$Query$GetSubtopicsIconAndTitleForClass$mTopic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSubtopicsIconAndTitleForClass$mTopic<TRes> {
  factory CopyWith$Query$GetSubtopicsIconAndTitleForClass$mTopic(
    Query$GetSubtopicsIconAndTitleForClass$mTopic instance,
    TRes Function(Query$GetSubtopicsIconAndTitleForClass$mTopic) then,
  ) = _CopyWithImpl$Query$GetSubtopicsIconAndTitleForClass$mTopic;

  factory CopyWith$Query$GetSubtopicsIconAndTitleForClass$mTopic.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetSubtopicsIconAndTitleForClass$mTopic;

  TRes call({
    String? id,
    List<Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics>? mSubtopics,
    String? $__typename,
  });
  TRes mSubtopics(
      Iterable<Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics> Function(
              Iterable<
                  CopyWith$Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics<
                      Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics>>)
          _fn);
}

class _CopyWithImpl$Query$GetSubtopicsIconAndTitleForClass$mTopic<TRes>
    implements CopyWith$Query$GetSubtopicsIconAndTitleForClass$mTopic<TRes> {
  _CopyWithImpl$Query$GetSubtopicsIconAndTitleForClass$mTopic(
    this._instance,
    this._then,
  );

  final Query$GetSubtopicsIconAndTitleForClass$mTopic _instance;

  final TRes Function(Query$GetSubtopicsIconAndTitleForClass$mTopic) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? mSubtopics = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSubtopicsIconAndTitleForClass$mTopic(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        mSubtopics: mSubtopics == _undefined || mSubtopics == null
            ? _instance.mSubtopics
            : (mSubtopics as List<
                Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes mSubtopics(
          Iterable<Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics> Function(
                  Iterable<
                      CopyWith$Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics<
                          Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics>>)
              _fn) =>
      call(
          mSubtopics: _fn(_instance.mSubtopics.map((e) =>
              CopyWith$Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetSubtopicsIconAndTitleForClass$mTopic<TRes>
    implements CopyWith$Query$GetSubtopicsIconAndTitleForClass$mTopic<TRes> {
  _CopyWithStubImpl$Query$GetSubtopicsIconAndTitleForClass$mTopic(this._res);

  TRes _res;

  call({
    String? id,
    List<Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics>? mSubtopics,
    String? $__typename,
  }) =>
      _res;
  mSubtopics(_fn) => _res;
}

class Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics {
  Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics({
    required this.id,
    required this.title,
    required this.icon,
    required this.$__typename,
  });

  factory Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$icon = json['icon'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics(
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
    if (!(other is Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics) ||
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

extension UtilityExtension$Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics
    on Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics {
  CopyWith$Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics<
          Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics>
      get copyWith =>
          CopyWith$Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics<
    TRes> {
  factory CopyWith$Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics(
    Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics instance,
    TRes Function(Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics)
        then,
  ) = _CopyWithImpl$Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics;

  factory CopyWith$Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics;

  TRes call({
    String? id,
    String? title,
    String? icon,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics<
        TRes>
    implements
        CopyWith$Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics<
            TRes> {
  _CopyWithImpl$Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics(
    this._instance,
    this._then,
  );

  final Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics _instance;

  final TRes Function(Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? icon = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics(
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

class _CopyWithStubImpl$Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics<
        TRes>
    implements
        CopyWith$Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics<
            TRes> {
  _CopyWithStubImpl$Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics(
      this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? icon,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetSubtopicsForStudent {
  factory Variables$Query$GetSubtopicsForStudent({required String topicId}) =>
      Variables$Query$GetSubtopicsForStudent._({
        r'topicId': topicId,
      });

  Variables$Query$GetSubtopicsForStudent._(this._$data);

  factory Variables$Query$GetSubtopicsForStudent.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$topicId = data['topicId'];
    result$data['topicId'] = (l$topicId as String);
    return Variables$Query$GetSubtopicsForStudent._(result$data);
  }

  Map<String, dynamic> _$data;

  String get topicId => (_$data['topicId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$topicId = topicId;
    result$data['topicId'] = l$topicId;
    return result$data;
  }

  CopyWith$Variables$Query$GetSubtopicsForStudent<
          Variables$Query$GetSubtopicsForStudent>
      get copyWith => CopyWith$Variables$Query$GetSubtopicsForStudent(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetSubtopicsForStudent) ||
        runtimeType != other.runtimeType) {
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
    final l$topicId = topicId;
    return Object.hashAll([l$topicId]);
  }
}

abstract class CopyWith$Variables$Query$GetSubtopicsForStudent<TRes> {
  factory CopyWith$Variables$Query$GetSubtopicsForStudent(
    Variables$Query$GetSubtopicsForStudent instance,
    TRes Function(Variables$Query$GetSubtopicsForStudent) then,
  ) = _CopyWithImpl$Variables$Query$GetSubtopicsForStudent;

  factory CopyWith$Variables$Query$GetSubtopicsForStudent.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetSubtopicsForStudent;

  TRes call({String? topicId});
}

class _CopyWithImpl$Variables$Query$GetSubtopicsForStudent<TRes>
    implements CopyWith$Variables$Query$GetSubtopicsForStudent<TRes> {
  _CopyWithImpl$Variables$Query$GetSubtopicsForStudent(
    this._instance,
    this._then,
  );

  final Variables$Query$GetSubtopicsForStudent _instance;

  final TRes Function(Variables$Query$GetSubtopicsForStudent) _then;

  static const _undefined = {};

  TRes call({Object? topicId = _undefined}) =>
      _then(Variables$Query$GetSubtopicsForStudent._({
        ..._instance._$data,
        if (topicId != _undefined && topicId != null)
          'topicId': (topicId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetSubtopicsForStudent<TRes>
    implements CopyWith$Variables$Query$GetSubtopicsForStudent<TRes> {
  _CopyWithStubImpl$Variables$Query$GetSubtopicsForStudent(this._res);

  TRes _res;

  call({String? topicId}) => _res;
}

class Query$GetSubtopicsForStudent {
  Query$GetSubtopicsForStudent({
    required this.getSubtopicForStudent,
    required this.$__typename,
  });

  factory Query$GetSubtopicsForStudent.fromJson(Map<String, dynamic> json) {
    final l$getSubtopicForStudent = json['getSubtopicForStudent'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopicsForStudent(
      getSubtopicForStudent:
          Query$GetSubtopicsForStudent$getSubtopicForStudent.fromJson(
              (l$getSubtopicForStudent as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSubtopicsForStudent$getSubtopicForStudent
      getSubtopicForStudent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getSubtopicForStudent = getSubtopicForStudent;
    _resultData['getSubtopicForStudent'] = l$getSubtopicForStudent.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getSubtopicForStudent = getSubtopicForStudent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$getSubtopicForStudent,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSubtopicsForStudent) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$getSubtopicForStudent = getSubtopicForStudent;
    final lOther$getSubtopicForStudent = other.getSubtopicForStudent;
    if (l$getSubtopicForStudent != lOther$getSubtopicForStudent) {
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

extension UtilityExtension$Query$GetSubtopicsForStudent
    on Query$GetSubtopicsForStudent {
  CopyWith$Query$GetSubtopicsForStudent<Query$GetSubtopicsForStudent>
      get copyWith => CopyWith$Query$GetSubtopicsForStudent(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSubtopicsForStudent<TRes> {
  factory CopyWith$Query$GetSubtopicsForStudent(
    Query$GetSubtopicsForStudent instance,
    TRes Function(Query$GetSubtopicsForStudent) then,
  ) = _CopyWithImpl$Query$GetSubtopicsForStudent;

  factory CopyWith$Query$GetSubtopicsForStudent.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSubtopicsForStudent;

  TRes call({
    Query$GetSubtopicsForStudent$getSubtopicForStudent? getSubtopicForStudent,
    String? $__typename,
  });
  CopyWith$Query$GetSubtopicsForStudent$getSubtopicForStudent<TRes>
      get getSubtopicForStudent;
}

class _CopyWithImpl$Query$GetSubtopicsForStudent<TRes>
    implements CopyWith$Query$GetSubtopicsForStudent<TRes> {
  _CopyWithImpl$Query$GetSubtopicsForStudent(
    this._instance,
    this._then,
  );

  final Query$GetSubtopicsForStudent _instance;

  final TRes Function(Query$GetSubtopicsForStudent) _then;

  static const _undefined = {};

  TRes call({
    Object? getSubtopicForStudent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSubtopicsForStudent(
        getSubtopicForStudent:
            getSubtopicForStudent == _undefined || getSubtopicForStudent == null
                ? _instance.getSubtopicForStudent
                : (getSubtopicForStudent
                    as Query$GetSubtopicsForStudent$getSubtopicForStudent),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetSubtopicsForStudent$getSubtopicForStudent<TRes>
      get getSubtopicForStudent {
    final local$getSubtopicForStudent = _instance.getSubtopicForStudent;
    return CopyWith$Query$GetSubtopicsForStudent$getSubtopicForStudent(
        local$getSubtopicForStudent, (e) => call(getSubtopicForStudent: e));
  }
}

class _CopyWithStubImpl$Query$GetSubtopicsForStudent<TRes>
    implements CopyWith$Query$GetSubtopicsForStudent<TRes> {
  _CopyWithStubImpl$Query$GetSubtopicsForStudent(this._res);

  TRes _res;

  call({
    Query$GetSubtopicsForStudent$getSubtopicForStudent? getSubtopicForStudent,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetSubtopicsForStudent$getSubtopicForStudent<TRes>
      get getSubtopicForStudent =>
          CopyWith$Query$GetSubtopicsForStudent$getSubtopicForStudent.stub(
              _res);
}

const documentNodeQueryGetSubtopicsForStudent = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetSubtopicsForStudent'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'topicId')),
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
        name: NameNode(value: 'topic'),
        alias: NameNode(value: 'getSubtopicForStudent'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'topicId')),
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
            name: NameNode(value: 'color'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'subtopicsForUser'),
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
                name: NameNode(value: 'state'),
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
  fragmentDefinitionProgress,
]);
Query$GetSubtopicsForStudent _parserFn$Query$GetSubtopicsForStudent(
        Map<String, dynamic> data) =>
    Query$GetSubtopicsForStudent.fromJson(data);

class Options$Query$GetSubtopicsForStudent
    extends graphql.QueryOptions<Query$GetSubtopicsForStudent> {
  Options$Query$GetSubtopicsForStudent({
    String? operationName,
    required Variables$Query$GetSubtopicsForStudent variables,
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
          document: documentNodeQueryGetSubtopicsForStudent,
          parserFn: _parserFn$Query$GetSubtopicsForStudent,
        );
}

class WatchOptions$Query$GetSubtopicsForStudent
    extends graphql.WatchQueryOptions<Query$GetSubtopicsForStudent> {
  WatchOptions$Query$GetSubtopicsForStudent({
    String? operationName,
    required Variables$Query$GetSubtopicsForStudent variables,
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
          document: documentNodeQueryGetSubtopicsForStudent,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetSubtopicsForStudent,
        );
}

class FetchMoreOptions$Query$GetSubtopicsForStudent
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetSubtopicsForStudent({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetSubtopicsForStudent variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetSubtopicsForStudent,
        );
}

extension ClientExtension$Query$GetSubtopicsForStudent
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetSubtopicsForStudent>>
      query$GetSubtopicsForStudent(
              Options$Query$GetSubtopicsForStudent options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetSubtopicsForStudent>
      watchQuery$GetSubtopicsForStudent(
              WatchOptions$Query$GetSubtopicsForStudent options) =>
          this.watchQuery(options);
  void writeQuery$GetSubtopicsForStudent({
    required Query$GetSubtopicsForStudent data,
    required Variables$Query$GetSubtopicsForStudent variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetSubtopicsForStudent),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetSubtopicsForStudent? readQuery$GetSubtopicsForStudent({
    required Variables$Query$GetSubtopicsForStudent variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetSubtopicsForStudent),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetSubtopicsForStudent.fromJson(result);
  }
}

class Query$GetSubtopicsForStudent$getSubtopicForStudent {
  Query$GetSubtopicsForStudent$getSubtopicForStudent({
    required this.id,
    required this.title,
    required this.color,
    required this.subtopicsForUser,
    required this.$__typename,
  });

  factory Query$GetSubtopicsForStudent$getSubtopicForStudent.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$color = json['color'];
    final l$subtopicsForUser = json['subtopicsForUser'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopicsForStudent$getSubtopicForStudent(
      id: (l$id as String),
      title: (l$title as String),
      color: (l$color as String),
      subtopicsForUser: (l$subtopicsForUser as List<dynamic>)
          .map((e) =>
              Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String color;

  final List<
          Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser>
      subtopicsForUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$subtopicsForUser = subtopicsForUser;
    _resultData['subtopicsForUser'] =
        l$subtopicsForUser.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$color = color;
    final l$subtopicsForUser = subtopicsForUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$color,
      Object.hashAll(l$subtopicsForUser.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSubtopicsForStudent$getSubtopicForStudent) ||
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
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$subtopicsForUser = subtopicsForUser;
    final lOther$subtopicsForUser = other.subtopicsForUser;
    if (l$subtopicsForUser.length != lOther$subtopicsForUser.length) {
      return false;
    }
    for (int i = 0; i < l$subtopicsForUser.length; i++) {
      final l$subtopicsForUser$entry = l$subtopicsForUser[i];
      final lOther$subtopicsForUser$entry = lOther$subtopicsForUser[i];
      if (l$subtopicsForUser$entry != lOther$subtopicsForUser$entry) {
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

extension UtilityExtension$Query$GetSubtopicsForStudent$getSubtopicForStudent
    on Query$GetSubtopicsForStudent$getSubtopicForStudent {
  CopyWith$Query$GetSubtopicsForStudent$getSubtopicForStudent<
          Query$GetSubtopicsForStudent$getSubtopicForStudent>
      get copyWith =>
          CopyWith$Query$GetSubtopicsForStudent$getSubtopicForStudent(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSubtopicsForStudent$getSubtopicForStudent<
    TRes> {
  factory CopyWith$Query$GetSubtopicsForStudent$getSubtopicForStudent(
    Query$GetSubtopicsForStudent$getSubtopicForStudent instance,
    TRes Function(Query$GetSubtopicsForStudent$getSubtopicForStudent) then,
  ) = _CopyWithImpl$Query$GetSubtopicsForStudent$getSubtopicForStudent;

  factory CopyWith$Query$GetSubtopicsForStudent$getSubtopicForStudent.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetSubtopicsForStudent$getSubtopicForStudent;

  TRes call({
    String? id,
    String? title,
    String? color,
    List<Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser>?
        subtopicsForUser,
    String? $__typename,
  });
  TRes subtopicsForUser(
      Iterable<Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser> Function(
              Iterable<
                  CopyWith$Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser<
                      Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser>>)
          _fn);
}

class _CopyWithImpl$Query$GetSubtopicsForStudent$getSubtopicForStudent<TRes>
    implements
        CopyWith$Query$GetSubtopicsForStudent$getSubtopicForStudent<TRes> {
  _CopyWithImpl$Query$GetSubtopicsForStudent$getSubtopicForStudent(
    this._instance,
    this._then,
  );

  final Query$GetSubtopicsForStudent$getSubtopicForStudent _instance;

  final TRes Function(Query$GetSubtopicsForStudent$getSubtopicForStudent) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? color = _undefined,
    Object? subtopicsForUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSubtopicsForStudent$getSubtopicForStudent(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        color: color == _undefined || color == null
            ? _instance.color
            : (color as String),
        subtopicsForUser: subtopicsForUser == _undefined ||
                subtopicsForUser == null
            ? _instance.subtopicsForUser
            : (subtopicsForUser as List<
                Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes subtopicsForUser(
          Iterable<Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser> Function(
                  Iterable<
                      CopyWith$Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser<
                          Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser>>)
              _fn) =>
      call(
          subtopicsForUser: _fn(_instance.subtopicsForUser.map((e) =>
              CopyWith$Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetSubtopicsForStudent$getSubtopicForStudent<TRes>
    implements
        CopyWith$Query$GetSubtopicsForStudent$getSubtopicForStudent<TRes> {
  _CopyWithStubImpl$Query$GetSubtopicsForStudent$getSubtopicForStudent(
      this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? color,
    List<Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser>?
        subtopicsForUser,
    String? $__typename,
  }) =>
      _res;
  subtopicsForUser(_fn) => _res;
}

class Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser {
  Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser({
    required this.id,
    required this.progress,
    required this.title,
    required this.icon,
    required this.state,
    required this.$__typename,
  });

  factory Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$progress = json['progress'];
    final l$title = json['title'];
    final l$icon = json['icon'];
    final l$state = json['state'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser(
      id: (l$id as String),
      progress:
          Fragment$Progress.fromJson((l$progress as Map<String, dynamic>)),
      title: (l$title as String),
      icon: (l$icon as String),
      state: fromJson$Enum$SubtopicState((l$state as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Fragment$Progress progress;

  final String title;

  final String icon;

  final Enum$SubtopicState state;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$progress = progress;
    _resultData['progress'] = l$progress.toJson();
    final l$title = title;
    _resultData['title'] = l$title;
    final l$icon = icon;
    _resultData['icon'] = l$icon;
    final l$state = state;
    _resultData['state'] = toJson$Enum$SubtopicState(l$state);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$progress = progress;
    final l$title = title;
    final l$icon = icon;
    final l$state = state;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$progress,
      l$title,
      l$icon,
      l$state,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
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
    final l$state = state;
    final lOther$state = other.state;
    if (l$state != lOther$state) {
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

extension UtilityExtension$Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser
    on Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser {
  CopyWith$Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser<
          Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser>
      get copyWith =>
          CopyWith$Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser<
    TRes> {
  factory CopyWith$Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser(
    Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser
        instance,
    TRes Function(
            Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser)
        then,
  ) = _CopyWithImpl$Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser;

  factory CopyWith$Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser;

  TRes call({
    String? id,
    Fragment$Progress? progress,
    String? title,
    String? icon,
    Enum$SubtopicState? state,
    String? $__typename,
  });
  CopyWith$Fragment$Progress<TRes> get progress;
}

class _CopyWithImpl$Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser<
        TRes>
    implements
        CopyWith$Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser<
            TRes> {
  _CopyWithImpl$Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser(
    this._instance,
    this._then,
  );

  final Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser
      _instance;

  final TRes Function(
          Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? progress = _undefined,
    Object? title = _undefined,
    Object? icon = _undefined,
    Object? state = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        progress: progress == _undefined || progress == null
            ? _instance.progress
            : (progress as Fragment$Progress),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        icon: icon == _undefined || icon == null
            ? _instance.icon
            : (icon as String),
        state: state == _undefined || state == null
            ? _instance.state
            : (state as Enum$SubtopicState),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Progress<TRes> get progress {
    final local$progress = _instance.progress;
    return CopyWith$Fragment$Progress(local$progress, (e) => call(progress: e));
  }
}

class _CopyWithStubImpl$Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser<
        TRes>
    implements
        CopyWith$Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser<
            TRes> {
  _CopyWithStubImpl$Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser(
      this._res);

  TRes _res;

  call({
    String? id,
    Fragment$Progress? progress,
    String? title,
    String? icon,
    Enum$SubtopicState? state,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Progress<TRes> get progress =>
      CopyWith$Fragment$Progress.stub(_res);
}

class Variables$Query$GetTopic {
  factory Variables$Query$GetTopic({required String topicId}) =>
      Variables$Query$GetTopic._({
        r'topicId': topicId,
      });

  Variables$Query$GetTopic._(this._$data);

  factory Variables$Query$GetTopic.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$topicId = data['topicId'];
    result$data['topicId'] = (l$topicId as String);
    return Variables$Query$GetTopic._(result$data);
  }

  Map<String, dynamic> _$data;

  String get topicId => (_$data['topicId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$topicId = topicId;
    result$data['topicId'] = l$topicId;
    return result$data;
  }

  CopyWith$Variables$Query$GetTopic<Variables$Query$GetTopic> get copyWith =>
      CopyWith$Variables$Query$GetTopic(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetTopic) ||
        runtimeType != other.runtimeType) {
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
    final l$topicId = topicId;
    return Object.hashAll([l$topicId]);
  }
}

abstract class CopyWith$Variables$Query$GetTopic<TRes> {
  factory CopyWith$Variables$Query$GetTopic(
    Variables$Query$GetTopic instance,
    TRes Function(Variables$Query$GetTopic) then,
  ) = _CopyWithImpl$Variables$Query$GetTopic;

  factory CopyWith$Variables$Query$GetTopic.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetTopic;

  TRes call({String? topicId});
}

class _CopyWithImpl$Variables$Query$GetTopic<TRes>
    implements CopyWith$Variables$Query$GetTopic<TRes> {
  _CopyWithImpl$Variables$Query$GetTopic(
    this._instance,
    this._then,
  );

  final Variables$Query$GetTopic _instance;

  final TRes Function(Variables$Query$GetTopic) _then;

  static const _undefined = {};

  TRes call({Object? topicId = _undefined}) =>
      _then(Variables$Query$GetTopic._({
        ..._instance._$data,
        if (topicId != _undefined && topicId != null)
          'topicId': (topicId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetTopic<TRes>
    implements CopyWith$Variables$Query$GetTopic<TRes> {
  _CopyWithStubImpl$Variables$Query$GetTopic(this._res);

  TRes _res;

  call({String? topicId}) => _res;
}

class Query$GetTopic {
  Query$GetTopic({
    required this.topic,
    required this.$__typename,
  });

  factory Query$GetTopic.fromJson(Map<String, dynamic> json) {
    final l$topic = json['topic'];
    final l$$__typename = json['__typename'];
    return Query$GetTopic(
      topic: Query$GetTopic$topic.fromJson((l$topic as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTopic$topic topic;

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
    if (!(other is Query$GetTopic) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetTopic on Query$GetTopic {
  CopyWith$Query$GetTopic<Query$GetTopic> get copyWith =>
      CopyWith$Query$GetTopic(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTopic<TRes> {
  factory CopyWith$Query$GetTopic(
    Query$GetTopic instance,
    TRes Function(Query$GetTopic) then,
  ) = _CopyWithImpl$Query$GetTopic;

  factory CopyWith$Query$GetTopic.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTopic;

  TRes call({
    Query$GetTopic$topic? topic,
    String? $__typename,
  });
  CopyWith$Query$GetTopic$topic<TRes> get topic;
}

class _CopyWithImpl$Query$GetTopic<TRes>
    implements CopyWith$Query$GetTopic<TRes> {
  _CopyWithImpl$Query$GetTopic(
    this._instance,
    this._then,
  );

  final Query$GetTopic _instance;

  final TRes Function(Query$GetTopic) _then;

  static const _undefined = {};

  TRes call({
    Object? topic = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTopic(
        topic: topic == _undefined || topic == null
            ? _instance.topic
            : (topic as Query$GetTopic$topic),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetTopic$topic<TRes> get topic {
    final local$topic = _instance.topic;
    return CopyWith$Query$GetTopic$topic(local$topic, (e) => call(topic: e));
  }
}

class _CopyWithStubImpl$Query$GetTopic<TRes>
    implements CopyWith$Query$GetTopic<TRes> {
  _CopyWithStubImpl$Query$GetTopic(this._res);

  TRes _res;

  call({
    Query$GetTopic$topic? topic,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetTopic$topic<TRes> get topic =>
      CopyWith$Query$GetTopic$topic.stub(_res);
}

const documentNodeQueryGetTopic = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetTopic'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'topicId')),
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
            name: NameNode(value: 'id'),
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
]);
Query$GetTopic _parserFn$Query$GetTopic(Map<String, dynamic> data) =>
    Query$GetTopic.fromJson(data);

class Options$Query$GetTopic extends graphql.QueryOptions<Query$GetTopic> {
  Options$Query$GetTopic({
    String? operationName,
    required Variables$Query$GetTopic variables,
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
          document: documentNodeQueryGetTopic,
          parserFn: _parserFn$Query$GetTopic,
        );
}

class WatchOptions$Query$GetTopic
    extends graphql.WatchQueryOptions<Query$GetTopic> {
  WatchOptions$Query$GetTopic({
    String? operationName,
    required Variables$Query$GetTopic variables,
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
          document: documentNodeQueryGetTopic,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetTopic,
        );
}

class FetchMoreOptions$Query$GetTopic extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetTopic({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetTopic variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetTopic,
        );
}

extension ClientExtension$Query$GetTopic on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetTopic>> query$GetTopic(
          Options$Query$GetTopic options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetTopic> watchQuery$GetTopic(
          WatchOptions$Query$GetTopic options) =>
      this.watchQuery(options);
  void writeQuery$GetTopic({
    required Query$GetTopic data,
    required Variables$Query$GetTopic variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetTopic),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetTopic? readQuery$GetTopic({
    required Variables$Query$GetTopic variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetTopic),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetTopic.fromJson(result);
  }
}

class Query$GetTopic$topic {
  Query$GetTopic$topic({
    required this.id,
    required this.emoji,
    required this.color,
    required this.title,
    required this.$__typename,
  });

  factory Query$GetTopic$topic.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$emoji = json['emoji'];
    final l$color = json['color'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$GetTopic$topic(
      id: (l$id as String),
      emoji: (l$emoji as String),
      color: (l$color as String),
      title: (l$title as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String emoji;

  final String color;

  final String title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$emoji = emoji;
    _resultData['emoji'] = l$emoji;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$emoji = emoji;
    final l$color = color;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$emoji,
      l$color,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTopic$topic) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetTopic$topic on Query$GetTopic$topic {
  CopyWith$Query$GetTopic$topic<Query$GetTopic$topic> get copyWith =>
      CopyWith$Query$GetTopic$topic(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTopic$topic<TRes> {
  factory CopyWith$Query$GetTopic$topic(
    Query$GetTopic$topic instance,
    TRes Function(Query$GetTopic$topic) then,
  ) = _CopyWithImpl$Query$GetTopic$topic;

  factory CopyWith$Query$GetTopic$topic.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTopic$topic;

  TRes call({
    String? id,
    String? emoji,
    String? color,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTopic$topic<TRes>
    implements CopyWith$Query$GetTopic$topic<TRes> {
  _CopyWithImpl$Query$GetTopic$topic(
    this._instance,
    this._then,
  );

  final Query$GetTopic$topic _instance;

  final TRes Function(Query$GetTopic$topic) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? emoji = _undefined,
    Object? color = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTopic$topic(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        emoji: emoji == _undefined || emoji == null
            ? _instance.emoji
            : (emoji as String),
        color: color == _undefined || color == null
            ? _instance.color
            : (color as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetTopic$topic<TRes>
    implements CopyWith$Query$GetTopic$topic<TRes> {
  _CopyWithStubImpl$Query$GetTopic$topic(this._res);

  TRes _res;

  call({
    String? id,
    String? emoji,
    String? color,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetTopicProgress {
  factory Variables$Query$GetTopicProgress({required String topicId}) =>
      Variables$Query$GetTopicProgress._({
        r'topicId': topicId,
      });

  Variables$Query$GetTopicProgress._(this._$data);

  factory Variables$Query$GetTopicProgress.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$topicId = data['topicId'];
    result$data['topicId'] = (l$topicId as String);
    return Variables$Query$GetTopicProgress._(result$data);
  }

  Map<String, dynamic> _$data;

  String get topicId => (_$data['topicId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$topicId = topicId;
    result$data['topicId'] = l$topicId;
    return result$data;
  }

  CopyWith$Variables$Query$GetTopicProgress<Variables$Query$GetTopicProgress>
      get copyWith => CopyWith$Variables$Query$GetTopicProgress(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetTopicProgress) ||
        runtimeType != other.runtimeType) {
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
    final l$topicId = topicId;
    return Object.hashAll([l$topicId]);
  }
}

abstract class CopyWith$Variables$Query$GetTopicProgress<TRes> {
  factory CopyWith$Variables$Query$GetTopicProgress(
    Variables$Query$GetTopicProgress instance,
    TRes Function(Variables$Query$GetTopicProgress) then,
  ) = _CopyWithImpl$Variables$Query$GetTopicProgress;

  factory CopyWith$Variables$Query$GetTopicProgress.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetTopicProgress;

  TRes call({String? topicId});
}

class _CopyWithImpl$Variables$Query$GetTopicProgress<TRes>
    implements CopyWith$Variables$Query$GetTopicProgress<TRes> {
  _CopyWithImpl$Variables$Query$GetTopicProgress(
    this._instance,
    this._then,
  );

  final Variables$Query$GetTopicProgress _instance;

  final TRes Function(Variables$Query$GetTopicProgress) _then;

  static const _undefined = {};

  TRes call({Object? topicId = _undefined}) =>
      _then(Variables$Query$GetTopicProgress._({
        ..._instance._$data,
        if (topicId != _undefined && topicId != null)
          'topicId': (topicId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetTopicProgress<TRes>
    implements CopyWith$Variables$Query$GetTopicProgress<TRes> {
  _CopyWithStubImpl$Variables$Query$GetTopicProgress(this._res);

  TRes _res;

  call({String? topicId}) => _res;
}

class Query$GetTopicProgress {
  Query$GetTopicProgress({
    required this.topicProgress,
    required this.$__typename,
  });

  factory Query$GetTopicProgress.fromJson(Map<String, dynamic> json) {
    final l$topicProgress = json['topicProgress'];
    final l$$__typename = json['__typename'];
    return Query$GetTopicProgress(
      topicProgress: Query$GetTopicProgress$topicProgress.fromJson(
          (l$topicProgress as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTopicProgress$topicProgress topicProgress;

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
    if (!(other is Query$GetTopicProgress) ||
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

extension UtilityExtension$Query$GetTopicProgress on Query$GetTopicProgress {
  CopyWith$Query$GetTopicProgress<Query$GetTopicProgress> get copyWith =>
      CopyWith$Query$GetTopicProgress(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTopicProgress<TRes> {
  factory CopyWith$Query$GetTopicProgress(
    Query$GetTopicProgress instance,
    TRes Function(Query$GetTopicProgress) then,
  ) = _CopyWithImpl$Query$GetTopicProgress;

  factory CopyWith$Query$GetTopicProgress.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTopicProgress;

  TRes call({
    Query$GetTopicProgress$topicProgress? topicProgress,
    String? $__typename,
  });
  CopyWith$Query$GetTopicProgress$topicProgress<TRes> get topicProgress;
}

class _CopyWithImpl$Query$GetTopicProgress<TRes>
    implements CopyWith$Query$GetTopicProgress<TRes> {
  _CopyWithImpl$Query$GetTopicProgress(
    this._instance,
    this._then,
  );

  final Query$GetTopicProgress _instance;

  final TRes Function(Query$GetTopicProgress) _then;

  static const _undefined = {};

  TRes call({
    Object? topicProgress = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTopicProgress(
        topicProgress: topicProgress == _undefined || topicProgress == null
            ? _instance.topicProgress
            : (topicProgress as Query$GetTopicProgress$topicProgress),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetTopicProgress$topicProgress<TRes> get topicProgress {
    final local$topicProgress = _instance.topicProgress;
    return CopyWith$Query$GetTopicProgress$topicProgress(
        local$topicProgress, (e) => call(topicProgress: e));
  }
}

class _CopyWithStubImpl$Query$GetTopicProgress<TRes>
    implements CopyWith$Query$GetTopicProgress<TRes> {
  _CopyWithStubImpl$Query$GetTopicProgress(this._res);

  TRes _res;

  call({
    Query$GetTopicProgress$topicProgress? topicProgress,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetTopicProgress$topicProgress<TRes> get topicProgress =>
      CopyWith$Query$GetTopicProgress$topicProgress.stub(_res);
}

const documentNodeQueryGetTopicProgress = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetTopicProgress'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'topicId')),
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
        name: NameNode(value: 'topic'),
        alias: NameNode(value: 'topicProgress'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'topicId')),
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
Query$GetTopicProgress _parserFn$Query$GetTopicProgress(
        Map<String, dynamic> data) =>
    Query$GetTopicProgress.fromJson(data);

class Options$Query$GetTopicProgress
    extends graphql.QueryOptions<Query$GetTopicProgress> {
  Options$Query$GetTopicProgress({
    String? operationName,
    required Variables$Query$GetTopicProgress variables,
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
          document: documentNodeQueryGetTopicProgress,
          parserFn: _parserFn$Query$GetTopicProgress,
        );
}

class WatchOptions$Query$GetTopicProgress
    extends graphql.WatchQueryOptions<Query$GetTopicProgress> {
  WatchOptions$Query$GetTopicProgress({
    String? operationName,
    required Variables$Query$GetTopicProgress variables,
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
          document: documentNodeQueryGetTopicProgress,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetTopicProgress,
        );
}

class FetchMoreOptions$Query$GetTopicProgress extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetTopicProgress({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetTopicProgress variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetTopicProgress,
        );
}

extension ClientExtension$Query$GetTopicProgress on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetTopicProgress>> query$GetTopicProgress(
          Options$Query$GetTopicProgress options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetTopicProgress> watchQuery$GetTopicProgress(
          WatchOptions$Query$GetTopicProgress options) =>
      this.watchQuery(options);
  void writeQuery$GetTopicProgress({
    required Query$GetTopicProgress data,
    required Variables$Query$GetTopicProgress variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetTopicProgress),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetTopicProgress? readQuery$GetTopicProgress({
    required Variables$Query$GetTopicProgress variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetTopicProgress),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetTopicProgress.fromJson(result);
  }
}

class Query$GetTopicProgress$topicProgress {
  Query$GetTopicProgress$topicProgress({
    required this.id,
    required this.progress,
    required this.$__typename,
  });

  factory Query$GetTopicProgress$topicProgress.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$progress = json['progress'];
    final l$$__typename = json['__typename'];
    return Query$GetTopicProgress$topicProgress(
      id: (l$id as String),
      progress:
          Fragment$Progress.fromJson((l$progress as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Fragment$Progress progress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$progress = progress;
    _resultData['progress'] = l$progress.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$progress = progress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$progress,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTopicProgress$topicProgress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
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

extension UtilityExtension$Query$GetTopicProgress$topicProgress
    on Query$GetTopicProgress$topicProgress {
  CopyWith$Query$GetTopicProgress$topicProgress<
          Query$GetTopicProgress$topicProgress>
      get copyWith => CopyWith$Query$GetTopicProgress$topicProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTopicProgress$topicProgress<TRes> {
  factory CopyWith$Query$GetTopicProgress$topicProgress(
    Query$GetTopicProgress$topicProgress instance,
    TRes Function(Query$GetTopicProgress$topicProgress) then,
  ) = _CopyWithImpl$Query$GetTopicProgress$topicProgress;

  factory CopyWith$Query$GetTopicProgress$topicProgress.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTopicProgress$topicProgress;

  TRes call({
    String? id,
    Fragment$Progress? progress,
    String? $__typename,
  });
  CopyWith$Fragment$Progress<TRes> get progress;
}

class _CopyWithImpl$Query$GetTopicProgress$topicProgress<TRes>
    implements CopyWith$Query$GetTopicProgress$topicProgress<TRes> {
  _CopyWithImpl$Query$GetTopicProgress$topicProgress(
    this._instance,
    this._then,
  );

  final Query$GetTopicProgress$topicProgress _instance;

  final TRes Function(Query$GetTopicProgress$topicProgress) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? progress = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTopicProgress$topicProgress(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        progress: progress == _undefined || progress == null
            ? _instance.progress
            : (progress as Fragment$Progress),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Progress<TRes> get progress {
    final local$progress = _instance.progress;
    return CopyWith$Fragment$Progress(local$progress, (e) => call(progress: e));
  }
}

class _CopyWithStubImpl$Query$GetTopicProgress$topicProgress<TRes>
    implements CopyWith$Query$GetTopicProgress$topicProgress<TRes> {
  _CopyWithStubImpl$Query$GetTopicProgress$topicProgress(this._res);

  TRes _res;

  call({
    String? id,
    Fragment$Progress? progress,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Progress<TRes> get progress =>
      CopyWith$Fragment$Progress.stub(_res);
}

class Variables$Query$GetTopicProgressForClass {
  factory Variables$Query$GetTopicProgressForClass({
    required String topicId,
    required String classId,
  }) =>
      Variables$Query$GetTopicProgressForClass._({
        r'topicId': topicId,
        r'classId': classId,
      });

  Variables$Query$GetTopicProgressForClass._(this._$data);

  factory Variables$Query$GetTopicProgressForClass.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$topicId = data['topicId'];
    result$data['topicId'] = (l$topicId as String);
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    return Variables$Query$GetTopicProgressForClass._(result$data);
  }

  Map<String, dynamic> _$data;

  String get topicId => (_$data['topicId'] as String);
  String get classId => (_$data['classId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$topicId = topicId;
    result$data['topicId'] = l$topicId;
    final l$classId = classId;
    result$data['classId'] = l$classId;
    return result$data;
  }

  CopyWith$Variables$Query$GetTopicProgressForClass<
          Variables$Query$GetTopicProgressForClass>
      get copyWith => CopyWith$Variables$Query$GetTopicProgressForClass(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetTopicProgressForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$topicId = topicId;
    final lOther$topicId = other.topicId;
    if (l$topicId != lOther$topicId) {
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
    final l$topicId = topicId;
    final l$classId = classId;
    return Object.hashAll([
      l$topicId,
      l$classId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetTopicProgressForClass<TRes> {
  factory CopyWith$Variables$Query$GetTopicProgressForClass(
    Variables$Query$GetTopicProgressForClass instance,
    TRes Function(Variables$Query$GetTopicProgressForClass) then,
  ) = _CopyWithImpl$Variables$Query$GetTopicProgressForClass;

  factory CopyWith$Variables$Query$GetTopicProgressForClass.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetTopicProgressForClass;

  TRes call({
    String? topicId,
    String? classId,
  });
}

class _CopyWithImpl$Variables$Query$GetTopicProgressForClass<TRes>
    implements CopyWith$Variables$Query$GetTopicProgressForClass<TRes> {
  _CopyWithImpl$Variables$Query$GetTopicProgressForClass(
    this._instance,
    this._then,
  );

  final Variables$Query$GetTopicProgressForClass _instance;

  final TRes Function(Variables$Query$GetTopicProgressForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? topicId = _undefined,
    Object? classId = _undefined,
  }) =>
      _then(Variables$Query$GetTopicProgressForClass._({
        ..._instance._$data,
        if (topicId != _undefined && topicId != null)
          'topicId': (topicId as String),
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetTopicProgressForClass<TRes>
    implements CopyWith$Variables$Query$GetTopicProgressForClass<TRes> {
  _CopyWithStubImpl$Variables$Query$GetTopicProgressForClass(this._res);

  TRes _res;

  call({
    String? topicId,
    String? classId,
  }) =>
      _res;
}

class Query$GetTopicProgressForClass {
  Query$GetTopicProgressForClass({
    required this.topicProgressForClassQuery,
    required this.$__typename,
  });

  factory Query$GetTopicProgressForClass.fromJson(Map<String, dynamic> json) {
    final l$topicProgressForClassQuery = json['topicProgressForClassQuery'];
    final l$$__typename = json['__typename'];
    return Query$GetTopicProgressForClass(
      topicProgressForClassQuery:
          Query$GetTopicProgressForClass$topicProgressForClassQuery.fromJson(
              (l$topicProgressForClassQuery as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTopicProgressForClass$topicProgressForClassQuery
      topicProgressForClassQuery;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$topicProgressForClassQuery = topicProgressForClassQuery;
    _resultData['topicProgressForClassQuery'] =
        l$topicProgressForClassQuery.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$topicProgressForClassQuery = topicProgressForClassQuery;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$topicProgressForClassQuery,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTopicProgressForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$topicProgressForClassQuery = topicProgressForClassQuery;
    final lOther$topicProgressForClassQuery = other.topicProgressForClassQuery;
    if (l$topicProgressForClassQuery != lOther$topicProgressForClassQuery) {
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

extension UtilityExtension$Query$GetTopicProgressForClass
    on Query$GetTopicProgressForClass {
  CopyWith$Query$GetTopicProgressForClass<Query$GetTopicProgressForClass>
      get copyWith => CopyWith$Query$GetTopicProgressForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTopicProgressForClass<TRes> {
  factory CopyWith$Query$GetTopicProgressForClass(
    Query$GetTopicProgressForClass instance,
    TRes Function(Query$GetTopicProgressForClass) then,
  ) = _CopyWithImpl$Query$GetTopicProgressForClass;

  factory CopyWith$Query$GetTopicProgressForClass.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTopicProgressForClass;

  TRes call({
    Query$GetTopicProgressForClass$topicProgressForClassQuery?
        topicProgressForClassQuery,
    String? $__typename,
  });
  CopyWith$Query$GetTopicProgressForClass$topicProgressForClassQuery<TRes>
      get topicProgressForClassQuery;
}

class _CopyWithImpl$Query$GetTopicProgressForClass<TRes>
    implements CopyWith$Query$GetTopicProgressForClass<TRes> {
  _CopyWithImpl$Query$GetTopicProgressForClass(
    this._instance,
    this._then,
  );

  final Query$GetTopicProgressForClass _instance;

  final TRes Function(Query$GetTopicProgressForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? topicProgressForClassQuery = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTopicProgressForClass(
        topicProgressForClassQuery: topicProgressForClassQuery == _undefined ||
                topicProgressForClassQuery == null
            ? _instance.topicProgressForClassQuery
            : (topicProgressForClassQuery
                as Query$GetTopicProgressForClass$topicProgressForClassQuery),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetTopicProgressForClass$topicProgressForClassQuery<TRes>
      get topicProgressForClassQuery {
    final local$topicProgressForClassQuery =
        _instance.topicProgressForClassQuery;
    return CopyWith$Query$GetTopicProgressForClass$topicProgressForClassQuery(
        local$topicProgressForClassQuery,
        (e) => call(topicProgressForClassQuery: e));
  }
}

class _CopyWithStubImpl$Query$GetTopicProgressForClass<TRes>
    implements CopyWith$Query$GetTopicProgressForClass<TRes> {
  _CopyWithStubImpl$Query$GetTopicProgressForClass(this._res);

  TRes _res;

  call({
    Query$GetTopicProgressForClass$topicProgressForClassQuery?
        topicProgressForClassQuery,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetTopicProgressForClass$topicProgressForClassQuery<TRes>
      get topicProgressForClassQuery =>
          CopyWith$Query$GetTopicProgressForClass$topicProgressForClassQuery
              .stub(_res);
}

const documentNodeQueryGetTopicProgressForClass = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetTopicProgressForClass'),
    variableDefinitions: [
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
        name: NameNode(value: 'topic'),
        alias: NameNode(value: 'topicProgressForClassQuery'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'topicId')),
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
            name: NameNode(value: 'progressForClass'),
            alias: NameNode(value: 'topicProgressForClass'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'classId')),
              )
            ],
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
Query$GetTopicProgressForClass _parserFn$Query$GetTopicProgressForClass(
        Map<String, dynamic> data) =>
    Query$GetTopicProgressForClass.fromJson(data);

class Options$Query$GetTopicProgressForClass
    extends graphql.QueryOptions<Query$GetTopicProgressForClass> {
  Options$Query$GetTopicProgressForClass({
    String? operationName,
    required Variables$Query$GetTopicProgressForClass variables,
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
          document: documentNodeQueryGetTopicProgressForClass,
          parserFn: _parserFn$Query$GetTopicProgressForClass,
        );
}

class WatchOptions$Query$GetTopicProgressForClass
    extends graphql.WatchQueryOptions<Query$GetTopicProgressForClass> {
  WatchOptions$Query$GetTopicProgressForClass({
    String? operationName,
    required Variables$Query$GetTopicProgressForClass variables,
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
          document: documentNodeQueryGetTopicProgressForClass,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetTopicProgressForClass,
        );
}

class FetchMoreOptions$Query$GetTopicProgressForClass
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetTopicProgressForClass({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetTopicProgressForClass variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetTopicProgressForClass,
        );
}

extension ClientExtension$Query$GetTopicProgressForClass
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetTopicProgressForClass>>
      query$GetTopicProgressForClass(
              Options$Query$GetTopicProgressForClass options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetTopicProgressForClass>
      watchQuery$GetTopicProgressForClass(
              WatchOptions$Query$GetTopicProgressForClass options) =>
          this.watchQuery(options);
  void writeQuery$GetTopicProgressForClass({
    required Query$GetTopicProgressForClass data,
    required Variables$Query$GetTopicProgressForClass variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetTopicProgressForClass),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetTopicProgressForClass? readQuery$GetTopicProgressForClass({
    required Variables$Query$GetTopicProgressForClass variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetTopicProgressForClass),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetTopicProgressForClass.fromJson(result);
  }
}

class Query$GetTopicProgressForClass$topicProgressForClassQuery {
  Query$GetTopicProgressForClass$topicProgressForClassQuery({
    required this.id,
    required this.topicProgressForClass,
    required this.$__typename,
  });

  factory Query$GetTopicProgressForClass$topicProgressForClassQuery.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$topicProgressForClass = json['topicProgressForClass'];
    final l$$__typename = json['__typename'];
    return Query$GetTopicProgressForClass$topicProgressForClassQuery(
      id: (l$id as String),
      topicProgressForClass:
          Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass
              .fromJson((l$topicProgressForClass as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass
      topicProgressForClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$topicProgressForClass = topicProgressForClass;
    _resultData['topicProgressForClass'] = l$topicProgressForClass.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$topicProgressForClass = topicProgressForClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$topicProgressForClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTopicProgressForClass$topicProgressForClassQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$topicProgressForClass = topicProgressForClass;
    final lOther$topicProgressForClass = other.topicProgressForClass;
    if (l$topicProgressForClass != lOther$topicProgressForClass) {
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

extension UtilityExtension$Query$GetTopicProgressForClass$topicProgressForClassQuery
    on Query$GetTopicProgressForClass$topicProgressForClassQuery {
  CopyWith$Query$GetTopicProgressForClass$topicProgressForClassQuery<
          Query$GetTopicProgressForClass$topicProgressForClassQuery>
      get copyWith =>
          CopyWith$Query$GetTopicProgressForClass$topicProgressForClassQuery(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTopicProgressForClass$topicProgressForClassQuery<
    TRes> {
  factory CopyWith$Query$GetTopicProgressForClass$topicProgressForClassQuery(
    Query$GetTopicProgressForClass$topicProgressForClassQuery instance,
    TRes Function(Query$GetTopicProgressForClass$topicProgressForClassQuery)
        then,
  ) = _CopyWithImpl$Query$GetTopicProgressForClass$topicProgressForClassQuery;

  factory CopyWith$Query$GetTopicProgressForClass$topicProgressForClassQuery.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetTopicProgressForClass$topicProgressForClassQuery;

  TRes call({
    String? id,
    Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass?
        topicProgressForClass,
    String? $__typename,
  });
  CopyWith$Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass<
      TRes> get topicProgressForClass;
}

class _CopyWithImpl$Query$GetTopicProgressForClass$topicProgressForClassQuery<
        TRes>
    implements
        CopyWith$Query$GetTopicProgressForClass$topicProgressForClassQuery<
            TRes> {
  _CopyWithImpl$Query$GetTopicProgressForClass$topicProgressForClassQuery(
    this._instance,
    this._then,
  );

  final Query$GetTopicProgressForClass$topicProgressForClassQuery _instance;

  final TRes Function(Query$GetTopicProgressForClass$topicProgressForClassQuery)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? topicProgressForClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTopicProgressForClass$topicProgressForClassQuery(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        topicProgressForClass: topicProgressForClass == _undefined ||
                topicProgressForClass == null
            ? _instance.topicProgressForClass
            : (topicProgressForClass
                as Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass<
      TRes> get topicProgressForClass {
    final local$topicProgressForClass = _instance.topicProgressForClass;
    return CopyWith$Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass(
        local$topicProgressForClass, (e) => call(topicProgressForClass: e));
  }
}

class _CopyWithStubImpl$Query$GetTopicProgressForClass$topicProgressForClassQuery<
        TRes>
    implements
        CopyWith$Query$GetTopicProgressForClass$topicProgressForClassQuery<
            TRes> {
  _CopyWithStubImpl$Query$GetTopicProgressForClass$topicProgressForClassQuery(
      this._res);

  TRes _res;

  call({
    String? id,
    Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass?
        topicProgressForClass,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass<
          TRes>
      get topicProgressForClass =>
          CopyWith$Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass
              .stub(_res);
}

class Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass {
  Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass({
    required this.progress,
    required this.$__typename,
  });

  factory Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass.fromJson(
      Map<String, dynamic> json) {
    final l$progress = json['progress'];
    final l$$__typename = json['__typename'];
    return Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass(
      progress:
          Fragment$Progress.fromJson((l$progress as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Progress progress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$progress = progress;
    _resultData['progress'] = l$progress.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$progress = progress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$progress,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
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

extension UtilityExtension$Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass
    on Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass {
  CopyWith$Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass<
          Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass>
      get copyWith =>
          CopyWith$Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass<
    TRes> {
  factory CopyWith$Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass(
    Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass
        instance,
    TRes Function(
            Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass)
        then,
  ) = _CopyWithImpl$Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass;

  factory CopyWith$Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass;

  TRes call({
    Fragment$Progress? progress,
    String? $__typename,
  });
  CopyWith$Fragment$Progress<TRes> get progress;
}

class _CopyWithImpl$Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass<
        TRes>
    implements
        CopyWith$Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass<
            TRes> {
  _CopyWithImpl$Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass(
    this._instance,
    this._then,
  );

  final Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass
      _instance;

  final TRes Function(
          Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass)
      _then;

  static const _undefined = {};

  TRes call({
    Object? progress = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass(
        progress: progress == _undefined || progress == null
            ? _instance.progress
            : (progress as Fragment$Progress),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Progress<TRes> get progress {
    final local$progress = _instance.progress;
    return CopyWith$Fragment$Progress(local$progress, (e) => call(progress: e));
  }
}

class _CopyWithStubImpl$Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass<
        TRes>
    implements
        CopyWith$Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass<
            TRes> {
  _CopyWithStubImpl$Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass(
      this._res);

  TRes _res;

  call({
    Fragment$Progress? progress,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Progress<TRes> get progress =>
      CopyWith$Fragment$Progress.stub(_res);
}

class Variables$Query$GetSubtopic {
  factory Variables$Query$GetSubtopic({
    required String subtopicId,
    required String topicId,
  }) =>
      Variables$Query$GetSubtopic._({
        r'subtopicId': subtopicId,
        r'topicId': topicId,
      });

  Variables$Query$GetSubtopic._(this._$data);

  factory Variables$Query$GetSubtopic.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$subtopicId = data['subtopicId'];
    result$data['subtopicId'] = (l$subtopicId as String);
    final l$topicId = data['topicId'];
    result$data['topicId'] = (l$topicId as String);
    return Variables$Query$GetSubtopic._(result$data);
  }

  Map<String, dynamic> _$data;

  String get subtopicId => (_$data['subtopicId'] as String);
  String get topicId => (_$data['topicId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$subtopicId = subtopicId;
    result$data['subtopicId'] = l$subtopicId;
    final l$topicId = topicId;
    result$data['topicId'] = l$topicId;
    return result$data;
  }

  CopyWith$Variables$Query$GetSubtopic<Variables$Query$GetSubtopic>
      get copyWith => CopyWith$Variables$Query$GetSubtopic(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetSubtopic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$subtopicId = subtopicId;
    final lOther$subtopicId = other.subtopicId;
    if (l$subtopicId != lOther$subtopicId) {
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
    final l$subtopicId = subtopicId;
    final l$topicId = topicId;
    return Object.hashAll([
      l$subtopicId,
      l$topicId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetSubtopic<TRes> {
  factory CopyWith$Variables$Query$GetSubtopic(
    Variables$Query$GetSubtopic instance,
    TRes Function(Variables$Query$GetSubtopic) then,
  ) = _CopyWithImpl$Variables$Query$GetSubtopic;

  factory CopyWith$Variables$Query$GetSubtopic.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetSubtopic;

  TRes call({
    String? subtopicId,
    String? topicId,
  });
}

class _CopyWithImpl$Variables$Query$GetSubtopic<TRes>
    implements CopyWith$Variables$Query$GetSubtopic<TRes> {
  _CopyWithImpl$Variables$Query$GetSubtopic(
    this._instance,
    this._then,
  );

  final Variables$Query$GetSubtopic _instance;

  final TRes Function(Variables$Query$GetSubtopic) _then;

  static const _undefined = {};

  TRes call({
    Object? subtopicId = _undefined,
    Object? topicId = _undefined,
  }) =>
      _then(Variables$Query$GetSubtopic._({
        ..._instance._$data,
        if (subtopicId != _undefined && subtopicId != null)
          'subtopicId': (subtopicId as String),
        if (topicId != _undefined && topicId != null)
          'topicId': (topicId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetSubtopic<TRes>
    implements CopyWith$Variables$Query$GetSubtopic<TRes> {
  _CopyWithStubImpl$Variables$Query$GetSubtopic(this._res);

  TRes _res;

  call({
    String? subtopicId,
    String? topicId,
  }) =>
      _res;
}

class Query$GetSubtopic {
  Query$GetSubtopic({
    required this.subtopic,
    required this.skillTopic,
    required this.$__typename,
  });

  factory Query$GetSubtopic.fromJson(Map<String, dynamic> json) {
    final l$subtopic = json['subtopic'];
    final l$skillTopic = json['skillTopic'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopic(
      subtopic: Query$GetSubtopic$subtopic.fromJson(
          (l$subtopic as Map<String, dynamic>)),
      skillTopic: Query$GetSubtopic$skillTopic.fromJson(
          (l$skillTopic as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSubtopic$subtopic subtopic;

  final Query$GetSubtopic$skillTopic skillTopic;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$subtopic = subtopic;
    _resultData['subtopic'] = l$subtopic.toJson();
    final l$skillTopic = skillTopic;
    _resultData['skillTopic'] = l$skillTopic.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$subtopic = subtopic;
    final l$skillTopic = skillTopic;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$subtopic,
      l$skillTopic,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSubtopic) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$subtopic = subtopic;
    final lOther$subtopic = other.subtopic;
    if (l$subtopic != lOther$subtopic) {
      return false;
    }
    final l$skillTopic = skillTopic;
    final lOther$skillTopic = other.skillTopic;
    if (l$skillTopic != lOther$skillTopic) {
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

extension UtilityExtension$Query$GetSubtopic on Query$GetSubtopic {
  CopyWith$Query$GetSubtopic<Query$GetSubtopic> get copyWith =>
      CopyWith$Query$GetSubtopic(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSubtopic<TRes> {
  factory CopyWith$Query$GetSubtopic(
    Query$GetSubtopic instance,
    TRes Function(Query$GetSubtopic) then,
  ) = _CopyWithImpl$Query$GetSubtopic;

  factory CopyWith$Query$GetSubtopic.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSubtopic;

  TRes call({
    Query$GetSubtopic$subtopic? subtopic,
    Query$GetSubtopic$skillTopic? skillTopic,
    String? $__typename,
  });
  CopyWith$Query$GetSubtopic$subtopic<TRes> get subtopic;
  CopyWith$Query$GetSubtopic$skillTopic<TRes> get skillTopic;
}

class _CopyWithImpl$Query$GetSubtopic<TRes>
    implements CopyWith$Query$GetSubtopic<TRes> {
  _CopyWithImpl$Query$GetSubtopic(
    this._instance,
    this._then,
  );

  final Query$GetSubtopic _instance;

  final TRes Function(Query$GetSubtopic) _then;

  static const _undefined = {};

  TRes call({
    Object? subtopic = _undefined,
    Object? skillTopic = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSubtopic(
        subtopic: subtopic == _undefined || subtopic == null
            ? _instance.subtopic
            : (subtopic as Query$GetSubtopic$subtopic),
        skillTopic: skillTopic == _undefined || skillTopic == null
            ? _instance.skillTopic
            : (skillTopic as Query$GetSubtopic$skillTopic),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetSubtopic$subtopic<TRes> get subtopic {
    final local$subtopic = _instance.subtopic;
    return CopyWith$Query$GetSubtopic$subtopic(
        local$subtopic, (e) => call(subtopic: e));
  }

  CopyWith$Query$GetSubtopic$skillTopic<TRes> get skillTopic {
    final local$skillTopic = _instance.skillTopic;
    return CopyWith$Query$GetSubtopic$skillTopic(
        local$skillTopic, (e) => call(skillTopic: e));
  }
}

class _CopyWithStubImpl$Query$GetSubtopic<TRes>
    implements CopyWith$Query$GetSubtopic<TRes> {
  _CopyWithStubImpl$Query$GetSubtopic(this._res);

  TRes _res;

  call({
    Query$GetSubtopic$subtopic? subtopic,
    Query$GetSubtopic$skillTopic? skillTopic,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetSubtopic$subtopic<TRes> get subtopic =>
      CopyWith$Query$GetSubtopic$subtopic.stub(_res);
  CopyWith$Query$GetSubtopic$skillTopic<TRes> get skillTopic =>
      CopyWith$Query$GetSubtopic$skillTopic.stub(_res);
}

const documentNodeQueryGetSubtopic = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetSubtopic'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'subtopicId')),
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
            name: NameNode(value: 'id'),
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
        name: NameNode(value: 'topic'),
        alias: NameNode(value: 'skillTopic'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'topicId')),
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
Query$GetSubtopic _parserFn$Query$GetSubtopic(Map<String, dynamic> data) =>
    Query$GetSubtopic.fromJson(data);

class Options$Query$GetSubtopic
    extends graphql.QueryOptions<Query$GetSubtopic> {
  Options$Query$GetSubtopic({
    String? operationName,
    required Variables$Query$GetSubtopic variables,
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
          document: documentNodeQueryGetSubtopic,
          parserFn: _parserFn$Query$GetSubtopic,
        );
}

class WatchOptions$Query$GetSubtopic
    extends graphql.WatchQueryOptions<Query$GetSubtopic> {
  WatchOptions$Query$GetSubtopic({
    String? operationName,
    required Variables$Query$GetSubtopic variables,
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
          document: documentNodeQueryGetSubtopic,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetSubtopic,
        );
}

class FetchMoreOptions$Query$GetSubtopic extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetSubtopic({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetSubtopic variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetSubtopic,
        );
}

extension ClientExtension$Query$GetSubtopic on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetSubtopic>> query$GetSubtopic(
          Options$Query$GetSubtopic options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetSubtopic> watchQuery$GetSubtopic(
          WatchOptions$Query$GetSubtopic options) =>
      this.watchQuery(options);
  void writeQuery$GetSubtopic({
    required Query$GetSubtopic data,
    required Variables$Query$GetSubtopic variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetSubtopic),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetSubtopic? readQuery$GetSubtopic({
    required Variables$Query$GetSubtopic variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetSubtopic),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetSubtopic.fromJson(result);
  }
}

class Query$GetSubtopic$subtopic {
  Query$GetSubtopic$subtopic({
    required this.id,
    required this.icon,
    required this.title,
    required this.$__typename,
  });

  factory Query$GetSubtopic$subtopic.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$icon = json['icon'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopic$subtopic(
      id: (l$id as String),
      icon: (l$icon as String),
      title: (l$title as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String icon;

  final String title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$icon = icon;
    _resultData['icon'] = l$icon;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$icon = icon;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$icon,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSubtopic$subtopic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$icon = icon;
    final lOther$icon = other.icon;
    if (l$icon != lOther$icon) {
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

extension UtilityExtension$Query$GetSubtopic$subtopic
    on Query$GetSubtopic$subtopic {
  CopyWith$Query$GetSubtopic$subtopic<Query$GetSubtopic$subtopic>
      get copyWith => CopyWith$Query$GetSubtopic$subtopic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSubtopic$subtopic<TRes> {
  factory CopyWith$Query$GetSubtopic$subtopic(
    Query$GetSubtopic$subtopic instance,
    TRes Function(Query$GetSubtopic$subtopic) then,
  ) = _CopyWithImpl$Query$GetSubtopic$subtopic;

  factory CopyWith$Query$GetSubtopic$subtopic.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSubtopic$subtopic;

  TRes call({
    String? id,
    String? icon,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetSubtopic$subtopic<TRes>
    implements CopyWith$Query$GetSubtopic$subtopic<TRes> {
  _CopyWithImpl$Query$GetSubtopic$subtopic(
    this._instance,
    this._then,
  );

  final Query$GetSubtopic$subtopic _instance;

  final TRes Function(Query$GetSubtopic$subtopic) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? icon = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSubtopic$subtopic(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        icon: icon == _undefined || icon == null
            ? _instance.icon
            : (icon as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetSubtopic$subtopic<TRes>
    implements CopyWith$Query$GetSubtopic$subtopic<TRes> {
  _CopyWithStubImpl$Query$GetSubtopic$subtopic(this._res);

  TRes _res;

  call({
    String? id,
    String? icon,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetSubtopic$skillTopic {
  Query$GetSubtopic$skillTopic({
    required this.id,
    required this.color,
    required this.$__typename,
  });

  factory Query$GetSubtopic$skillTopic.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopic$skillTopic(
      id: (l$id as String),
      color: (l$color as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String color;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$color = color;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$color,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSubtopic$skillTopic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetSubtopic$skillTopic
    on Query$GetSubtopic$skillTopic {
  CopyWith$Query$GetSubtopic$skillTopic<Query$GetSubtopic$skillTopic>
      get copyWith => CopyWith$Query$GetSubtopic$skillTopic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSubtopic$skillTopic<TRes> {
  factory CopyWith$Query$GetSubtopic$skillTopic(
    Query$GetSubtopic$skillTopic instance,
    TRes Function(Query$GetSubtopic$skillTopic) then,
  ) = _CopyWithImpl$Query$GetSubtopic$skillTopic;

  factory CopyWith$Query$GetSubtopic$skillTopic.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSubtopic$skillTopic;

  TRes call({
    String? id,
    String? color,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetSubtopic$skillTopic<TRes>
    implements CopyWith$Query$GetSubtopic$skillTopic<TRes> {
  _CopyWithImpl$Query$GetSubtopic$skillTopic(
    this._instance,
    this._then,
  );

  final Query$GetSubtopic$skillTopic _instance;

  final TRes Function(Query$GetSubtopic$skillTopic) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSubtopic$skillTopic(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        color: color == _undefined || color == null
            ? _instance.color
            : (color as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetSubtopic$skillTopic<TRes>
    implements CopyWith$Query$GetSubtopic$skillTopic<TRes> {
  _CopyWithStubImpl$Query$GetSubtopic$skillTopic(this._res);

  TRes _res;

  call({
    String? id,
    String? color,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetSubtopicState {
  factory Variables$Query$GetSubtopicState({required String subtopicId}) =>
      Variables$Query$GetSubtopicState._({
        r'subtopicId': subtopicId,
      });

  Variables$Query$GetSubtopicState._(this._$data);

  factory Variables$Query$GetSubtopicState.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$subtopicId = data['subtopicId'];
    result$data['subtopicId'] = (l$subtopicId as String);
    return Variables$Query$GetSubtopicState._(result$data);
  }

  Map<String, dynamic> _$data;

  String get subtopicId => (_$data['subtopicId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$subtopicId = subtopicId;
    result$data['subtopicId'] = l$subtopicId;
    return result$data;
  }

  CopyWith$Variables$Query$GetSubtopicState<Variables$Query$GetSubtopicState>
      get copyWith => CopyWith$Variables$Query$GetSubtopicState(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetSubtopicState) ||
        runtimeType != other.runtimeType) {
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
    final l$subtopicId = subtopicId;
    return Object.hashAll([l$subtopicId]);
  }
}

abstract class CopyWith$Variables$Query$GetSubtopicState<TRes> {
  factory CopyWith$Variables$Query$GetSubtopicState(
    Variables$Query$GetSubtopicState instance,
    TRes Function(Variables$Query$GetSubtopicState) then,
  ) = _CopyWithImpl$Variables$Query$GetSubtopicState;

  factory CopyWith$Variables$Query$GetSubtopicState.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetSubtopicState;

  TRes call({String? subtopicId});
}

class _CopyWithImpl$Variables$Query$GetSubtopicState<TRes>
    implements CopyWith$Variables$Query$GetSubtopicState<TRes> {
  _CopyWithImpl$Variables$Query$GetSubtopicState(
    this._instance,
    this._then,
  );

  final Variables$Query$GetSubtopicState _instance;

  final TRes Function(Variables$Query$GetSubtopicState) _then;

  static const _undefined = {};

  TRes call({Object? subtopicId = _undefined}) =>
      _then(Variables$Query$GetSubtopicState._({
        ..._instance._$data,
        if (subtopicId != _undefined && subtopicId != null)
          'subtopicId': (subtopicId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetSubtopicState<TRes>
    implements CopyWith$Variables$Query$GetSubtopicState<TRes> {
  _CopyWithStubImpl$Variables$Query$GetSubtopicState(this._res);

  TRes _res;

  call({String? subtopicId}) => _res;
}

class Query$GetSubtopicState {
  Query$GetSubtopicState({
    required this.subtopicStateResult,
    required this.$__typename,
  });

  factory Query$GetSubtopicState.fromJson(Map<String, dynamic> json) {
    final l$subtopicStateResult = json['subtopicStateResult'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopicState(
      subtopicStateResult: Query$GetSubtopicState$subtopicStateResult.fromJson(
          (l$subtopicStateResult as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSubtopicState$subtopicStateResult subtopicStateResult;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$subtopicStateResult = subtopicStateResult;
    _resultData['subtopicStateResult'] = l$subtopicStateResult.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$subtopicStateResult = subtopicStateResult;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$subtopicStateResult,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSubtopicState) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$subtopicStateResult = subtopicStateResult;
    final lOther$subtopicStateResult = other.subtopicStateResult;
    if (l$subtopicStateResult != lOther$subtopicStateResult) {
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

extension UtilityExtension$Query$GetSubtopicState on Query$GetSubtopicState {
  CopyWith$Query$GetSubtopicState<Query$GetSubtopicState> get copyWith =>
      CopyWith$Query$GetSubtopicState(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSubtopicState<TRes> {
  factory CopyWith$Query$GetSubtopicState(
    Query$GetSubtopicState instance,
    TRes Function(Query$GetSubtopicState) then,
  ) = _CopyWithImpl$Query$GetSubtopicState;

  factory CopyWith$Query$GetSubtopicState.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSubtopicState;

  TRes call({
    Query$GetSubtopicState$subtopicStateResult? subtopicStateResult,
    String? $__typename,
  });
  CopyWith$Query$GetSubtopicState$subtopicStateResult<TRes>
      get subtopicStateResult;
}

class _CopyWithImpl$Query$GetSubtopicState<TRes>
    implements CopyWith$Query$GetSubtopicState<TRes> {
  _CopyWithImpl$Query$GetSubtopicState(
    this._instance,
    this._then,
  );

  final Query$GetSubtopicState _instance;

  final TRes Function(Query$GetSubtopicState) _then;

  static const _undefined = {};

  TRes call({
    Object? subtopicStateResult = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSubtopicState(
        subtopicStateResult:
            subtopicStateResult == _undefined || subtopicStateResult == null
                ? _instance.subtopicStateResult
                : (subtopicStateResult
                    as Query$GetSubtopicState$subtopicStateResult),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetSubtopicState$subtopicStateResult<TRes>
      get subtopicStateResult {
    final local$subtopicStateResult = _instance.subtopicStateResult;
    return CopyWith$Query$GetSubtopicState$subtopicStateResult(
        local$subtopicStateResult, (e) => call(subtopicStateResult: e));
  }
}

class _CopyWithStubImpl$Query$GetSubtopicState<TRes>
    implements CopyWith$Query$GetSubtopicState<TRes> {
  _CopyWithStubImpl$Query$GetSubtopicState(this._res);

  TRes _res;

  call({
    Query$GetSubtopicState$subtopicStateResult? subtopicStateResult,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetSubtopicState$subtopicStateResult<TRes>
      get subtopicStateResult =>
          CopyWith$Query$GetSubtopicState$subtopicStateResult.stub(_res);
}

const documentNodeQueryGetSubtopicState = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetSubtopicState'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'subtopicId')),
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
        name: NameNode(value: 'subtopic'),
        alias: NameNode(value: 'subtopicStateResult'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'subtopicId')),
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
            name: NameNode(value: 'state'),
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
Query$GetSubtopicState _parserFn$Query$GetSubtopicState(
        Map<String, dynamic> data) =>
    Query$GetSubtopicState.fromJson(data);

class Options$Query$GetSubtopicState
    extends graphql.QueryOptions<Query$GetSubtopicState> {
  Options$Query$GetSubtopicState({
    String? operationName,
    required Variables$Query$GetSubtopicState variables,
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
          document: documentNodeQueryGetSubtopicState,
          parserFn: _parserFn$Query$GetSubtopicState,
        );
}

class WatchOptions$Query$GetSubtopicState
    extends graphql.WatchQueryOptions<Query$GetSubtopicState> {
  WatchOptions$Query$GetSubtopicState({
    String? operationName,
    required Variables$Query$GetSubtopicState variables,
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
          document: documentNodeQueryGetSubtopicState,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetSubtopicState,
        );
}

class FetchMoreOptions$Query$GetSubtopicState extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetSubtopicState({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetSubtopicState variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetSubtopicState,
        );
}

extension ClientExtension$Query$GetSubtopicState on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetSubtopicState>> query$GetSubtopicState(
          Options$Query$GetSubtopicState options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetSubtopicState> watchQuery$GetSubtopicState(
          WatchOptions$Query$GetSubtopicState options) =>
      this.watchQuery(options);
  void writeQuery$GetSubtopicState({
    required Query$GetSubtopicState data,
    required Variables$Query$GetSubtopicState variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetSubtopicState),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetSubtopicState? readQuery$GetSubtopicState({
    required Variables$Query$GetSubtopicState variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetSubtopicState),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetSubtopicState.fromJson(result);
  }
}

class Query$GetSubtopicState$subtopicStateResult {
  Query$GetSubtopicState$subtopicStateResult({
    required this.id,
    required this.state,
    required this.$__typename,
  });

  factory Query$GetSubtopicState$subtopicStateResult.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$state = json['state'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopicState$subtopicStateResult(
      id: (l$id as String),
      state: fromJson$Enum$SubtopicState((l$state as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Enum$SubtopicState state;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$state = state;
    _resultData['state'] = toJson$Enum$SubtopicState(l$state);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$state = state;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$state,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSubtopicState$subtopicStateResult) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$state = state;
    final lOther$state = other.state;
    if (l$state != lOther$state) {
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

extension UtilityExtension$Query$GetSubtopicState$subtopicStateResult
    on Query$GetSubtopicState$subtopicStateResult {
  CopyWith$Query$GetSubtopicState$subtopicStateResult<
          Query$GetSubtopicState$subtopicStateResult>
      get copyWith => CopyWith$Query$GetSubtopicState$subtopicStateResult(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSubtopicState$subtopicStateResult<TRes> {
  factory CopyWith$Query$GetSubtopicState$subtopicStateResult(
    Query$GetSubtopicState$subtopicStateResult instance,
    TRes Function(Query$GetSubtopicState$subtopicStateResult) then,
  ) = _CopyWithImpl$Query$GetSubtopicState$subtopicStateResult;

  factory CopyWith$Query$GetSubtopicState$subtopicStateResult.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSubtopicState$subtopicStateResult;

  TRes call({
    String? id,
    Enum$SubtopicState? state,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetSubtopicState$subtopicStateResult<TRes>
    implements CopyWith$Query$GetSubtopicState$subtopicStateResult<TRes> {
  _CopyWithImpl$Query$GetSubtopicState$subtopicStateResult(
    this._instance,
    this._then,
  );

  final Query$GetSubtopicState$subtopicStateResult _instance;

  final TRes Function(Query$GetSubtopicState$subtopicStateResult) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? state = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSubtopicState$subtopicStateResult(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        state: state == _undefined || state == null
            ? _instance.state
            : (state as Enum$SubtopicState),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetSubtopicState$subtopicStateResult<TRes>
    implements CopyWith$Query$GetSubtopicState$subtopicStateResult<TRes> {
  _CopyWithStubImpl$Query$GetSubtopicState$subtopicStateResult(this._res);

  TRes _res;

  call({
    String? id,
    Enum$SubtopicState? state,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetSubtopicStateForClass {
  factory Variables$Query$GetSubtopicStateForClass({
    required String subtopicId,
    required String stateForClassId,
  }) =>
      Variables$Query$GetSubtopicStateForClass._({
        r'subtopicId': subtopicId,
        r'stateForClassId': stateForClassId,
      });

  Variables$Query$GetSubtopicStateForClass._(this._$data);

  factory Variables$Query$GetSubtopicStateForClass.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$subtopicId = data['subtopicId'];
    result$data['subtopicId'] = (l$subtopicId as String);
    final l$stateForClassId = data['stateForClassId'];
    result$data['stateForClassId'] = (l$stateForClassId as String);
    return Variables$Query$GetSubtopicStateForClass._(result$data);
  }

  Map<String, dynamic> _$data;

  String get subtopicId => (_$data['subtopicId'] as String);
  String get stateForClassId => (_$data['stateForClassId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$subtopicId = subtopicId;
    result$data['subtopicId'] = l$subtopicId;
    final l$stateForClassId = stateForClassId;
    result$data['stateForClassId'] = l$stateForClassId;
    return result$data;
  }

  CopyWith$Variables$Query$GetSubtopicStateForClass<
          Variables$Query$GetSubtopicStateForClass>
      get copyWith => CopyWith$Variables$Query$GetSubtopicStateForClass(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetSubtopicStateForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$subtopicId = subtopicId;
    final lOther$subtopicId = other.subtopicId;
    if (l$subtopicId != lOther$subtopicId) {
      return false;
    }
    final l$stateForClassId = stateForClassId;
    final lOther$stateForClassId = other.stateForClassId;
    if (l$stateForClassId != lOther$stateForClassId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$subtopicId = subtopicId;
    final l$stateForClassId = stateForClassId;
    return Object.hashAll([
      l$subtopicId,
      l$stateForClassId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetSubtopicStateForClass<TRes> {
  factory CopyWith$Variables$Query$GetSubtopicStateForClass(
    Variables$Query$GetSubtopicStateForClass instance,
    TRes Function(Variables$Query$GetSubtopicStateForClass) then,
  ) = _CopyWithImpl$Variables$Query$GetSubtopicStateForClass;

  factory CopyWith$Variables$Query$GetSubtopicStateForClass.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetSubtopicStateForClass;

  TRes call({
    String? subtopicId,
    String? stateForClassId,
  });
}

class _CopyWithImpl$Variables$Query$GetSubtopicStateForClass<TRes>
    implements CopyWith$Variables$Query$GetSubtopicStateForClass<TRes> {
  _CopyWithImpl$Variables$Query$GetSubtopicStateForClass(
    this._instance,
    this._then,
  );

  final Variables$Query$GetSubtopicStateForClass _instance;

  final TRes Function(Variables$Query$GetSubtopicStateForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? subtopicId = _undefined,
    Object? stateForClassId = _undefined,
  }) =>
      _then(Variables$Query$GetSubtopicStateForClass._({
        ..._instance._$data,
        if (subtopicId != _undefined && subtopicId != null)
          'subtopicId': (subtopicId as String),
        if (stateForClassId != _undefined && stateForClassId != null)
          'stateForClassId': (stateForClassId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetSubtopicStateForClass<TRes>
    implements CopyWith$Variables$Query$GetSubtopicStateForClass<TRes> {
  _CopyWithStubImpl$Variables$Query$GetSubtopicStateForClass(this._res);

  TRes _res;

  call({
    String? subtopicId,
    String? stateForClassId,
  }) =>
      _res;
}

class Query$GetSubtopicStateForClass {
  Query$GetSubtopicStateForClass({
    required this.subtopicStateForClass,
    required this.$__typename,
  });

  factory Query$GetSubtopicStateForClass.fromJson(Map<String, dynamic> json) {
    final l$subtopicStateForClass = json['subtopicStateForClass'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopicStateForClass(
      subtopicStateForClass:
          Query$GetSubtopicStateForClass$subtopicStateForClass.fromJson(
              (l$subtopicStateForClass as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSubtopicStateForClass$subtopicStateForClass
      subtopicStateForClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$subtopicStateForClass = subtopicStateForClass;
    _resultData['subtopicStateForClass'] = l$subtopicStateForClass.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$subtopicStateForClass = subtopicStateForClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$subtopicStateForClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSubtopicStateForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$subtopicStateForClass = subtopicStateForClass;
    final lOther$subtopicStateForClass = other.subtopicStateForClass;
    if (l$subtopicStateForClass != lOther$subtopicStateForClass) {
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

extension UtilityExtension$Query$GetSubtopicStateForClass
    on Query$GetSubtopicStateForClass {
  CopyWith$Query$GetSubtopicStateForClass<Query$GetSubtopicStateForClass>
      get copyWith => CopyWith$Query$GetSubtopicStateForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSubtopicStateForClass<TRes> {
  factory CopyWith$Query$GetSubtopicStateForClass(
    Query$GetSubtopicStateForClass instance,
    TRes Function(Query$GetSubtopicStateForClass) then,
  ) = _CopyWithImpl$Query$GetSubtopicStateForClass;

  factory CopyWith$Query$GetSubtopicStateForClass.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSubtopicStateForClass;

  TRes call({
    Query$GetSubtopicStateForClass$subtopicStateForClass? subtopicStateForClass,
    String? $__typename,
  });
  CopyWith$Query$GetSubtopicStateForClass$subtopicStateForClass<TRes>
      get subtopicStateForClass;
}

class _CopyWithImpl$Query$GetSubtopicStateForClass<TRes>
    implements CopyWith$Query$GetSubtopicStateForClass<TRes> {
  _CopyWithImpl$Query$GetSubtopicStateForClass(
    this._instance,
    this._then,
  );

  final Query$GetSubtopicStateForClass _instance;

  final TRes Function(Query$GetSubtopicStateForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? subtopicStateForClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSubtopicStateForClass(
        subtopicStateForClass:
            subtopicStateForClass == _undefined || subtopicStateForClass == null
                ? _instance.subtopicStateForClass
                : (subtopicStateForClass
                    as Query$GetSubtopicStateForClass$subtopicStateForClass),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetSubtopicStateForClass$subtopicStateForClass<TRes>
      get subtopicStateForClass {
    final local$subtopicStateForClass = _instance.subtopicStateForClass;
    return CopyWith$Query$GetSubtopicStateForClass$subtopicStateForClass(
        local$subtopicStateForClass, (e) => call(subtopicStateForClass: e));
  }
}

class _CopyWithStubImpl$Query$GetSubtopicStateForClass<TRes>
    implements CopyWith$Query$GetSubtopicStateForClass<TRes> {
  _CopyWithStubImpl$Query$GetSubtopicStateForClass(this._res);

  TRes _res;

  call({
    Query$GetSubtopicStateForClass$subtopicStateForClass? subtopicStateForClass,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetSubtopicStateForClass$subtopicStateForClass<TRes>
      get subtopicStateForClass =>
          CopyWith$Query$GetSubtopicStateForClass$subtopicStateForClass.stub(
              _res);
}

const documentNodeQueryGetSubtopicStateForClass = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetSubtopicStateForClass'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'subtopicId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'stateForClassId')),
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
        alias: NameNode(value: 'subtopicStateForClass'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'subtopicId')),
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
            name: NameNode(value: 'stateForClass'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'stateForClassId')),
              )
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
Query$GetSubtopicStateForClass _parserFn$Query$GetSubtopicStateForClass(
        Map<String, dynamic> data) =>
    Query$GetSubtopicStateForClass.fromJson(data);

class Options$Query$GetSubtopicStateForClass
    extends graphql.QueryOptions<Query$GetSubtopicStateForClass> {
  Options$Query$GetSubtopicStateForClass({
    String? operationName,
    required Variables$Query$GetSubtopicStateForClass variables,
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
          document: documentNodeQueryGetSubtopicStateForClass,
          parserFn: _parserFn$Query$GetSubtopicStateForClass,
        );
}

class WatchOptions$Query$GetSubtopicStateForClass
    extends graphql.WatchQueryOptions<Query$GetSubtopicStateForClass> {
  WatchOptions$Query$GetSubtopicStateForClass({
    String? operationName,
    required Variables$Query$GetSubtopicStateForClass variables,
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
          document: documentNodeQueryGetSubtopicStateForClass,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetSubtopicStateForClass,
        );
}

class FetchMoreOptions$Query$GetSubtopicStateForClass
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetSubtopicStateForClass({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetSubtopicStateForClass variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetSubtopicStateForClass,
        );
}

extension ClientExtension$Query$GetSubtopicStateForClass
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetSubtopicStateForClass>>
      query$GetSubtopicStateForClass(
              Options$Query$GetSubtopicStateForClass options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetSubtopicStateForClass>
      watchQuery$GetSubtopicStateForClass(
              WatchOptions$Query$GetSubtopicStateForClass options) =>
          this.watchQuery(options);
  void writeQuery$GetSubtopicStateForClass({
    required Query$GetSubtopicStateForClass data,
    required Variables$Query$GetSubtopicStateForClass variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetSubtopicStateForClass),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetSubtopicStateForClass? readQuery$GetSubtopicStateForClass({
    required Variables$Query$GetSubtopicStateForClass variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetSubtopicStateForClass),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetSubtopicStateForClass.fromJson(result);
  }
}

class Query$GetSubtopicStateForClass$subtopicStateForClass {
  Query$GetSubtopicStateForClass$subtopicStateForClass({
    required this.id,
    required this.stateForClass,
    required this.$__typename,
  });

  factory Query$GetSubtopicStateForClass$subtopicStateForClass.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$stateForClass = json['stateForClass'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopicStateForClass$subtopicStateForClass(
      id: (l$id as String),
      stateForClass: fromJson$Enum$SubtopicState((l$stateForClass as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Enum$SubtopicState stateForClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$stateForClass = stateForClass;
    _resultData['stateForClass'] = toJson$Enum$SubtopicState(l$stateForClass);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$stateForClass = stateForClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$stateForClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSubtopicStateForClass$subtopicStateForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$stateForClass = stateForClass;
    final lOther$stateForClass = other.stateForClass;
    if (l$stateForClass != lOther$stateForClass) {
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

extension UtilityExtension$Query$GetSubtopicStateForClass$subtopicStateForClass
    on Query$GetSubtopicStateForClass$subtopicStateForClass {
  CopyWith$Query$GetSubtopicStateForClass$subtopicStateForClass<
          Query$GetSubtopicStateForClass$subtopicStateForClass>
      get copyWith =>
          CopyWith$Query$GetSubtopicStateForClass$subtopicStateForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSubtopicStateForClass$subtopicStateForClass<
    TRes> {
  factory CopyWith$Query$GetSubtopicStateForClass$subtopicStateForClass(
    Query$GetSubtopicStateForClass$subtopicStateForClass instance,
    TRes Function(Query$GetSubtopicStateForClass$subtopicStateForClass) then,
  ) = _CopyWithImpl$Query$GetSubtopicStateForClass$subtopicStateForClass;

  factory CopyWith$Query$GetSubtopicStateForClass$subtopicStateForClass.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetSubtopicStateForClass$subtopicStateForClass;

  TRes call({
    String? id,
    Enum$SubtopicState? stateForClass,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetSubtopicStateForClass$subtopicStateForClass<TRes>
    implements
        CopyWith$Query$GetSubtopicStateForClass$subtopicStateForClass<TRes> {
  _CopyWithImpl$Query$GetSubtopicStateForClass$subtopicStateForClass(
    this._instance,
    this._then,
  );

  final Query$GetSubtopicStateForClass$subtopicStateForClass _instance;

  final TRes Function(Query$GetSubtopicStateForClass$subtopicStateForClass)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? stateForClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSubtopicStateForClass$subtopicStateForClass(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        stateForClass: stateForClass == _undefined || stateForClass == null
            ? _instance.stateForClass
            : (stateForClass as Enum$SubtopicState),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetSubtopicStateForClass$subtopicStateForClass<
        TRes>
    implements
        CopyWith$Query$GetSubtopicStateForClass$subtopicStateForClass<TRes> {
  _CopyWithStubImpl$Query$GetSubtopicStateForClass$subtopicStateForClass(
      this._res);

  TRes _res;

  call({
    String? id,
    Enum$SubtopicState? stateForClass,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetSubtopicProgress {
  factory Variables$Query$GetSubtopicProgress({required String subtopicId}) =>
      Variables$Query$GetSubtopicProgress._({
        r'subtopicId': subtopicId,
      });

  Variables$Query$GetSubtopicProgress._(this._$data);

  factory Variables$Query$GetSubtopicProgress.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$subtopicId = data['subtopicId'];
    result$data['subtopicId'] = (l$subtopicId as String);
    return Variables$Query$GetSubtopicProgress._(result$data);
  }

  Map<String, dynamic> _$data;

  String get subtopicId => (_$data['subtopicId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$subtopicId = subtopicId;
    result$data['subtopicId'] = l$subtopicId;
    return result$data;
  }

  CopyWith$Variables$Query$GetSubtopicProgress<
          Variables$Query$GetSubtopicProgress>
      get copyWith => CopyWith$Variables$Query$GetSubtopicProgress(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetSubtopicProgress) ||
        runtimeType != other.runtimeType) {
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
    final l$subtopicId = subtopicId;
    return Object.hashAll([l$subtopicId]);
  }
}

abstract class CopyWith$Variables$Query$GetSubtopicProgress<TRes> {
  factory CopyWith$Variables$Query$GetSubtopicProgress(
    Variables$Query$GetSubtopicProgress instance,
    TRes Function(Variables$Query$GetSubtopicProgress) then,
  ) = _CopyWithImpl$Variables$Query$GetSubtopicProgress;

  factory CopyWith$Variables$Query$GetSubtopicProgress.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetSubtopicProgress;

  TRes call({String? subtopicId});
}

class _CopyWithImpl$Variables$Query$GetSubtopicProgress<TRes>
    implements CopyWith$Variables$Query$GetSubtopicProgress<TRes> {
  _CopyWithImpl$Variables$Query$GetSubtopicProgress(
    this._instance,
    this._then,
  );

  final Variables$Query$GetSubtopicProgress _instance;

  final TRes Function(Variables$Query$GetSubtopicProgress) _then;

  static const _undefined = {};

  TRes call({Object? subtopicId = _undefined}) =>
      _then(Variables$Query$GetSubtopicProgress._({
        ..._instance._$data,
        if (subtopicId != _undefined && subtopicId != null)
          'subtopicId': (subtopicId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetSubtopicProgress<TRes>
    implements CopyWith$Variables$Query$GetSubtopicProgress<TRes> {
  _CopyWithStubImpl$Variables$Query$GetSubtopicProgress(this._res);

  TRes _res;

  call({String? subtopicId}) => _res;
}

class Query$GetSubtopicProgress {
  Query$GetSubtopicProgress({
    required this.subtopicProgress,
    required this.$__typename,
  });

  factory Query$GetSubtopicProgress.fromJson(Map<String, dynamic> json) {
    final l$subtopicProgress = json['subtopicProgress'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopicProgress(
      subtopicProgress: Query$GetSubtopicProgress$subtopicProgress.fromJson(
          (l$subtopicProgress as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSubtopicProgress$subtopicProgress subtopicProgress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$subtopicProgress = subtopicProgress;
    _resultData['subtopicProgress'] = l$subtopicProgress.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$subtopicProgress = subtopicProgress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$subtopicProgress,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSubtopicProgress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$subtopicProgress = subtopicProgress;
    final lOther$subtopicProgress = other.subtopicProgress;
    if (l$subtopicProgress != lOther$subtopicProgress) {
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

extension UtilityExtension$Query$GetSubtopicProgress
    on Query$GetSubtopicProgress {
  CopyWith$Query$GetSubtopicProgress<Query$GetSubtopicProgress> get copyWith =>
      CopyWith$Query$GetSubtopicProgress(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSubtopicProgress<TRes> {
  factory CopyWith$Query$GetSubtopicProgress(
    Query$GetSubtopicProgress instance,
    TRes Function(Query$GetSubtopicProgress) then,
  ) = _CopyWithImpl$Query$GetSubtopicProgress;

  factory CopyWith$Query$GetSubtopicProgress.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSubtopicProgress;

  TRes call({
    Query$GetSubtopicProgress$subtopicProgress? subtopicProgress,
    String? $__typename,
  });
  CopyWith$Query$GetSubtopicProgress$subtopicProgress<TRes>
      get subtopicProgress;
}

class _CopyWithImpl$Query$GetSubtopicProgress<TRes>
    implements CopyWith$Query$GetSubtopicProgress<TRes> {
  _CopyWithImpl$Query$GetSubtopicProgress(
    this._instance,
    this._then,
  );

  final Query$GetSubtopicProgress _instance;

  final TRes Function(Query$GetSubtopicProgress) _then;

  static const _undefined = {};

  TRes call({
    Object? subtopicProgress = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSubtopicProgress(
        subtopicProgress: subtopicProgress == _undefined ||
                subtopicProgress == null
            ? _instance.subtopicProgress
            : (subtopicProgress as Query$GetSubtopicProgress$subtopicProgress),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetSubtopicProgress$subtopicProgress<TRes>
      get subtopicProgress {
    final local$subtopicProgress = _instance.subtopicProgress;
    return CopyWith$Query$GetSubtopicProgress$subtopicProgress(
        local$subtopicProgress, (e) => call(subtopicProgress: e));
  }
}

class _CopyWithStubImpl$Query$GetSubtopicProgress<TRes>
    implements CopyWith$Query$GetSubtopicProgress<TRes> {
  _CopyWithStubImpl$Query$GetSubtopicProgress(this._res);

  TRes _res;

  call({
    Query$GetSubtopicProgress$subtopicProgress? subtopicProgress,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetSubtopicProgress$subtopicProgress<TRes>
      get subtopicProgress =>
          CopyWith$Query$GetSubtopicProgress$subtopicProgress.stub(_res);
}

const documentNodeQueryGetSubtopicProgress = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetSubtopicProgress'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'subtopicId')),
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
        name: NameNode(value: 'subtopic'),
        alias: NameNode(value: 'subtopicProgress'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'subtopicId')),
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
Query$GetSubtopicProgress _parserFn$Query$GetSubtopicProgress(
        Map<String, dynamic> data) =>
    Query$GetSubtopicProgress.fromJson(data);

class Options$Query$GetSubtopicProgress
    extends graphql.QueryOptions<Query$GetSubtopicProgress> {
  Options$Query$GetSubtopicProgress({
    String? operationName,
    required Variables$Query$GetSubtopicProgress variables,
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
          document: documentNodeQueryGetSubtopicProgress,
          parserFn: _parserFn$Query$GetSubtopicProgress,
        );
}

class WatchOptions$Query$GetSubtopicProgress
    extends graphql.WatchQueryOptions<Query$GetSubtopicProgress> {
  WatchOptions$Query$GetSubtopicProgress({
    String? operationName,
    required Variables$Query$GetSubtopicProgress variables,
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
          document: documentNodeQueryGetSubtopicProgress,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetSubtopicProgress,
        );
}

class FetchMoreOptions$Query$GetSubtopicProgress
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetSubtopicProgress({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetSubtopicProgress variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetSubtopicProgress,
        );
}

extension ClientExtension$Query$GetSubtopicProgress on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetSubtopicProgress>>
      query$GetSubtopicProgress(
              Options$Query$GetSubtopicProgress options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetSubtopicProgress>
      watchQuery$GetSubtopicProgress(
              WatchOptions$Query$GetSubtopicProgress options) =>
          this.watchQuery(options);
  void writeQuery$GetSubtopicProgress({
    required Query$GetSubtopicProgress data,
    required Variables$Query$GetSubtopicProgress variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetSubtopicProgress),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetSubtopicProgress? readQuery$GetSubtopicProgress({
    required Variables$Query$GetSubtopicProgress variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetSubtopicProgress),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetSubtopicProgress.fromJson(result);
  }
}

class Query$GetSubtopicProgress$subtopicProgress {
  Query$GetSubtopicProgress$subtopicProgress({
    required this.id,
    required this.progress,
    required this.$__typename,
  });

  factory Query$GetSubtopicProgress$subtopicProgress.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$progress = json['progress'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopicProgress$subtopicProgress(
      id: (l$id as String),
      progress:
          Fragment$Progress.fromJson((l$progress as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Fragment$Progress progress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$progress = progress;
    _resultData['progress'] = l$progress.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$progress = progress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$progress,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSubtopicProgress$subtopicProgress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
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

extension UtilityExtension$Query$GetSubtopicProgress$subtopicProgress
    on Query$GetSubtopicProgress$subtopicProgress {
  CopyWith$Query$GetSubtopicProgress$subtopicProgress<
          Query$GetSubtopicProgress$subtopicProgress>
      get copyWith => CopyWith$Query$GetSubtopicProgress$subtopicProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSubtopicProgress$subtopicProgress<TRes> {
  factory CopyWith$Query$GetSubtopicProgress$subtopicProgress(
    Query$GetSubtopicProgress$subtopicProgress instance,
    TRes Function(Query$GetSubtopicProgress$subtopicProgress) then,
  ) = _CopyWithImpl$Query$GetSubtopicProgress$subtopicProgress;

  factory CopyWith$Query$GetSubtopicProgress$subtopicProgress.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSubtopicProgress$subtopicProgress;

  TRes call({
    String? id,
    Fragment$Progress? progress,
    String? $__typename,
  });
  CopyWith$Fragment$Progress<TRes> get progress;
}

class _CopyWithImpl$Query$GetSubtopicProgress$subtopicProgress<TRes>
    implements CopyWith$Query$GetSubtopicProgress$subtopicProgress<TRes> {
  _CopyWithImpl$Query$GetSubtopicProgress$subtopicProgress(
    this._instance,
    this._then,
  );

  final Query$GetSubtopicProgress$subtopicProgress _instance;

  final TRes Function(Query$GetSubtopicProgress$subtopicProgress) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? progress = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSubtopicProgress$subtopicProgress(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        progress: progress == _undefined || progress == null
            ? _instance.progress
            : (progress as Fragment$Progress),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Progress<TRes> get progress {
    final local$progress = _instance.progress;
    return CopyWith$Fragment$Progress(local$progress, (e) => call(progress: e));
  }
}

class _CopyWithStubImpl$Query$GetSubtopicProgress$subtopicProgress<TRes>
    implements CopyWith$Query$GetSubtopicProgress$subtopicProgress<TRes> {
  _CopyWithStubImpl$Query$GetSubtopicProgress$subtopicProgress(this._res);

  TRes _res;

  call({
    String? id,
    Fragment$Progress? progress,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Progress<TRes> get progress =>
      CopyWith$Fragment$Progress.stub(_res);
}

class Variables$Query$GetSubtopicProgressForClass {
  factory Variables$Query$GetSubtopicProgressForClass({
    required String subtopicId,
    required String classId,
  }) =>
      Variables$Query$GetSubtopicProgressForClass._({
        r'subtopicId': subtopicId,
        r'classId': classId,
      });

  Variables$Query$GetSubtopicProgressForClass._(this._$data);

  factory Variables$Query$GetSubtopicProgressForClass.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$subtopicId = data['subtopicId'];
    result$data['subtopicId'] = (l$subtopicId as String);
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    return Variables$Query$GetSubtopicProgressForClass._(result$data);
  }

  Map<String, dynamic> _$data;

  String get subtopicId => (_$data['subtopicId'] as String);
  String get classId => (_$data['classId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$subtopicId = subtopicId;
    result$data['subtopicId'] = l$subtopicId;
    final l$classId = classId;
    result$data['classId'] = l$classId;
    return result$data;
  }

  CopyWith$Variables$Query$GetSubtopicProgressForClass<
          Variables$Query$GetSubtopicProgressForClass>
      get copyWith => CopyWith$Variables$Query$GetSubtopicProgressForClass(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetSubtopicProgressForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$subtopicId = subtopicId;
    final lOther$subtopicId = other.subtopicId;
    if (l$subtopicId != lOther$subtopicId) {
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
    final l$subtopicId = subtopicId;
    final l$classId = classId;
    return Object.hashAll([
      l$subtopicId,
      l$classId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetSubtopicProgressForClass<TRes> {
  factory CopyWith$Variables$Query$GetSubtopicProgressForClass(
    Variables$Query$GetSubtopicProgressForClass instance,
    TRes Function(Variables$Query$GetSubtopicProgressForClass) then,
  ) = _CopyWithImpl$Variables$Query$GetSubtopicProgressForClass;

  factory CopyWith$Variables$Query$GetSubtopicProgressForClass.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetSubtopicProgressForClass;

  TRes call({
    String? subtopicId,
    String? classId,
  });
}

class _CopyWithImpl$Variables$Query$GetSubtopicProgressForClass<TRes>
    implements CopyWith$Variables$Query$GetSubtopicProgressForClass<TRes> {
  _CopyWithImpl$Variables$Query$GetSubtopicProgressForClass(
    this._instance,
    this._then,
  );

  final Variables$Query$GetSubtopicProgressForClass _instance;

  final TRes Function(Variables$Query$GetSubtopicProgressForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? subtopicId = _undefined,
    Object? classId = _undefined,
  }) =>
      _then(Variables$Query$GetSubtopicProgressForClass._({
        ..._instance._$data,
        if (subtopicId != _undefined && subtopicId != null)
          'subtopicId': (subtopicId as String),
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetSubtopicProgressForClass<TRes>
    implements CopyWith$Variables$Query$GetSubtopicProgressForClass<TRes> {
  _CopyWithStubImpl$Variables$Query$GetSubtopicProgressForClass(this._res);

  TRes _res;

  call({
    String? subtopicId,
    String? classId,
  }) =>
      _res;
}

class Query$GetSubtopicProgressForClass {
  Query$GetSubtopicProgressForClass({
    required this.subtopicProgressForClassQuery,
    required this.$__typename,
  });

  factory Query$GetSubtopicProgressForClass.fromJson(
      Map<String, dynamic> json) {
    final l$subtopicProgressForClassQuery =
        json['subtopicProgressForClassQuery'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopicProgressForClass(
      subtopicProgressForClassQuery:
          Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery
              .fromJson(
                  (l$subtopicProgressForClassQuery as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery
      subtopicProgressForClassQuery;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$subtopicProgressForClassQuery = subtopicProgressForClassQuery;
    _resultData['subtopicProgressForClassQuery'] =
        l$subtopicProgressForClassQuery.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$subtopicProgressForClassQuery = subtopicProgressForClassQuery;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$subtopicProgressForClassQuery,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSubtopicProgressForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$subtopicProgressForClassQuery = subtopicProgressForClassQuery;
    final lOther$subtopicProgressForClassQuery =
        other.subtopicProgressForClassQuery;
    if (l$subtopicProgressForClassQuery !=
        lOther$subtopicProgressForClassQuery) {
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

extension UtilityExtension$Query$GetSubtopicProgressForClass
    on Query$GetSubtopicProgressForClass {
  CopyWith$Query$GetSubtopicProgressForClass<Query$GetSubtopicProgressForClass>
      get copyWith => CopyWith$Query$GetSubtopicProgressForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSubtopicProgressForClass<TRes> {
  factory CopyWith$Query$GetSubtopicProgressForClass(
    Query$GetSubtopicProgressForClass instance,
    TRes Function(Query$GetSubtopicProgressForClass) then,
  ) = _CopyWithImpl$Query$GetSubtopicProgressForClass;

  factory CopyWith$Query$GetSubtopicProgressForClass.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSubtopicProgressForClass;

  TRes call({
    Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery?
        subtopicProgressForClassQuery,
    String? $__typename,
  });
  CopyWith$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery<TRes>
      get subtopicProgressForClassQuery;
}

class _CopyWithImpl$Query$GetSubtopicProgressForClass<TRes>
    implements CopyWith$Query$GetSubtopicProgressForClass<TRes> {
  _CopyWithImpl$Query$GetSubtopicProgressForClass(
    this._instance,
    this._then,
  );

  final Query$GetSubtopicProgressForClass _instance;

  final TRes Function(Query$GetSubtopicProgressForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? subtopicProgressForClassQuery = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSubtopicProgressForClass(
        subtopicProgressForClassQuery: subtopicProgressForClassQuery ==
                    _undefined ||
                subtopicProgressForClassQuery == null
            ? _instance.subtopicProgressForClassQuery
            : (subtopicProgressForClassQuery
                as Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery<TRes>
      get subtopicProgressForClassQuery {
    final local$subtopicProgressForClassQuery =
        _instance.subtopicProgressForClassQuery;
    return CopyWith$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery(
        local$subtopicProgressForClassQuery,
        (e) => call(subtopicProgressForClassQuery: e));
  }
}

class _CopyWithStubImpl$Query$GetSubtopicProgressForClass<TRes>
    implements CopyWith$Query$GetSubtopicProgressForClass<TRes> {
  _CopyWithStubImpl$Query$GetSubtopicProgressForClass(this._res);

  TRes _res;

  call({
    Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery?
        subtopicProgressForClassQuery,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery<TRes>
      get subtopicProgressForClassQuery =>
          CopyWith$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery
              .stub(_res);
}

const documentNodeQueryGetSubtopicProgressForClass = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetSubtopicProgressForClass'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'subtopicId')),
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
        name: NameNode(value: 'subtopic'),
        alias: NameNode(value: 'subtopicProgressForClassQuery'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'subtopicId')),
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
            name: NameNode(value: 'progressForClass'),
            alias: NameNode(value: 'subtopicProgressForClass'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'classId')),
              )
            ],
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
Query$GetSubtopicProgressForClass _parserFn$Query$GetSubtopicProgressForClass(
        Map<String, dynamic> data) =>
    Query$GetSubtopicProgressForClass.fromJson(data);

class Options$Query$GetSubtopicProgressForClass
    extends graphql.QueryOptions<Query$GetSubtopicProgressForClass> {
  Options$Query$GetSubtopicProgressForClass({
    String? operationName,
    required Variables$Query$GetSubtopicProgressForClass variables,
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
          document: documentNodeQueryGetSubtopicProgressForClass,
          parserFn: _parserFn$Query$GetSubtopicProgressForClass,
        );
}

class WatchOptions$Query$GetSubtopicProgressForClass
    extends graphql.WatchQueryOptions<Query$GetSubtopicProgressForClass> {
  WatchOptions$Query$GetSubtopicProgressForClass({
    String? operationName,
    required Variables$Query$GetSubtopicProgressForClass variables,
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
          document: documentNodeQueryGetSubtopicProgressForClass,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetSubtopicProgressForClass,
        );
}

class FetchMoreOptions$Query$GetSubtopicProgressForClass
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetSubtopicProgressForClass({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetSubtopicProgressForClass variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetSubtopicProgressForClass,
        );
}

extension ClientExtension$Query$GetSubtopicProgressForClass
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetSubtopicProgressForClass>>
      query$GetSubtopicProgressForClass(
              Options$Query$GetSubtopicProgressForClass options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetSubtopicProgressForClass>
      watchQuery$GetSubtopicProgressForClass(
              WatchOptions$Query$GetSubtopicProgressForClass options) =>
          this.watchQuery(options);
  void writeQuery$GetSubtopicProgressForClass({
    required Query$GetSubtopicProgressForClass data,
    required Variables$Query$GetSubtopicProgressForClass variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetSubtopicProgressForClass),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetSubtopicProgressForClass? readQuery$GetSubtopicProgressForClass({
    required Variables$Query$GetSubtopicProgressForClass variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetSubtopicProgressForClass),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetSubtopicProgressForClass.fromJson(result);
  }
}

class Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery {
  Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery({
    required this.id,
    required this.subtopicProgressForClass,
    required this.$__typename,
  });

  factory Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$subtopicProgressForClass = json['subtopicProgressForClass'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery(
      id: (l$id as String),
      subtopicProgressForClass:
          Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass
              .fromJson((l$subtopicProgressForClass as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass
      subtopicProgressForClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$subtopicProgressForClass = subtopicProgressForClass;
    _resultData['subtopicProgressForClass'] =
        l$subtopicProgressForClass.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$subtopicProgressForClass = subtopicProgressForClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$subtopicProgressForClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$subtopicProgressForClass = subtopicProgressForClass;
    final lOther$subtopicProgressForClass = other.subtopicProgressForClass;
    if (l$subtopicProgressForClass != lOther$subtopicProgressForClass) {
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

extension UtilityExtension$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery
    on Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery {
  CopyWith$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery<
          Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery>
      get copyWith =>
          CopyWith$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery<
    TRes> {
  factory CopyWith$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery(
    Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery instance,
    TRes Function(
            Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery)
        then,
  ) = _CopyWithImpl$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery;

  factory CopyWith$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery;

  TRes call({
    String? id,
    Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass?
        subtopicProgressForClass,
    String? $__typename,
  });
  CopyWith$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass<
      TRes> get subtopicProgressForClass;
}

class _CopyWithImpl$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery<
        TRes>
    implements
        CopyWith$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery<
            TRes> {
  _CopyWithImpl$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery(
    this._instance,
    this._then,
  );

  final Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery
      _instance;

  final TRes Function(
      Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? subtopicProgressForClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        subtopicProgressForClass: subtopicProgressForClass == _undefined ||
                subtopicProgressForClass == null
            ? _instance.subtopicProgressForClass
            : (subtopicProgressForClass
                as Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass<
      TRes> get subtopicProgressForClass {
    final local$subtopicProgressForClass = _instance.subtopicProgressForClass;
    return CopyWith$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass(
        local$subtopicProgressForClass,
        (e) => call(subtopicProgressForClass: e));
  }
}

class _CopyWithStubImpl$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery<
        TRes>
    implements
        CopyWith$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery<
            TRes> {
  _CopyWithStubImpl$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery(
      this._res);

  TRes _res;

  call({
    String? id,
    Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass?
        subtopicProgressForClass,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass<
          TRes>
      get subtopicProgressForClass =>
          CopyWith$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass
              .stub(_res);
}

class Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass {
  Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass({
    required this.progress,
    required this.$__typename,
  });

  factory Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass.fromJson(
      Map<String, dynamic> json) {
    final l$progress = json['progress'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass(
      progress:
          Fragment$Progress.fromJson((l$progress as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Progress progress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$progress = progress;
    _resultData['progress'] = l$progress.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$progress = progress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$progress,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
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

extension UtilityExtension$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass
    on Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass {
  CopyWith$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass<
          Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass>
      get copyWith =>
          CopyWith$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass<
    TRes> {
  factory CopyWith$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass(
    Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass
        instance,
    TRes Function(
            Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass)
        then,
  ) = _CopyWithImpl$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass;

  factory CopyWith$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass;

  TRes call({
    Fragment$Progress? progress,
    String? $__typename,
  });
  CopyWith$Fragment$Progress<TRes> get progress;
}

class _CopyWithImpl$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass<
        TRes>
    implements
        CopyWith$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass<
            TRes> {
  _CopyWithImpl$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass(
    this._instance,
    this._then,
  );

  final Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass
      _instance;

  final TRes Function(
          Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass)
      _then;

  static const _undefined = {};

  TRes call({
    Object? progress = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass(
        progress: progress == _undefined || progress == null
            ? _instance.progress
            : (progress as Fragment$Progress),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Progress<TRes> get progress {
    final local$progress = _instance.progress;
    return CopyWith$Fragment$Progress(local$progress, (e) => call(progress: e));
  }
}

class _CopyWithStubImpl$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass<
        TRes>
    implements
        CopyWith$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass<
            TRes> {
  _CopyWithStubImpl$Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass(
      this._res);

  TRes _res;

  call({
    Fragment$Progress? progress,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Progress<TRes> get progress =>
      CopyWith$Fragment$Progress.stub(_res);
}

class Variables$Mutation$TeachSkillForClass {
  factory Variables$Mutation$TeachSkillForClass({
    required String classId,
    required String skillId,
  }) =>
      Variables$Mutation$TeachSkillForClass._({
        r'classId': classId,
        r'skillId': skillId,
      });

  Variables$Mutation$TeachSkillForClass._(this._$data);

  factory Variables$Mutation$TeachSkillForClass.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    final l$skillId = data['skillId'];
    result$data['skillId'] = (l$skillId as String);
    return Variables$Mutation$TeachSkillForClass._(result$data);
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

  CopyWith$Variables$Mutation$TeachSkillForClass<
          Variables$Mutation$TeachSkillForClass>
      get copyWith => CopyWith$Variables$Mutation$TeachSkillForClass(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$TeachSkillForClass) ||
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

abstract class CopyWith$Variables$Mutation$TeachSkillForClass<TRes> {
  factory CopyWith$Variables$Mutation$TeachSkillForClass(
    Variables$Mutation$TeachSkillForClass instance,
    TRes Function(Variables$Mutation$TeachSkillForClass) then,
  ) = _CopyWithImpl$Variables$Mutation$TeachSkillForClass;

  factory CopyWith$Variables$Mutation$TeachSkillForClass.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$TeachSkillForClass;

  TRes call({
    String? classId,
    String? skillId,
  });
}

class _CopyWithImpl$Variables$Mutation$TeachSkillForClass<TRes>
    implements CopyWith$Variables$Mutation$TeachSkillForClass<TRes> {
  _CopyWithImpl$Variables$Mutation$TeachSkillForClass(
    this._instance,
    this._then,
  );

  final Variables$Mutation$TeachSkillForClass _instance;

  final TRes Function(Variables$Mutation$TeachSkillForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? classId = _undefined,
    Object? skillId = _undefined,
  }) =>
      _then(Variables$Mutation$TeachSkillForClass._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
        if (skillId != _undefined && skillId != null)
          'skillId': (skillId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$TeachSkillForClass<TRes>
    implements CopyWith$Variables$Mutation$TeachSkillForClass<TRes> {
  _CopyWithStubImpl$Variables$Mutation$TeachSkillForClass(this._res);

  TRes _res;

  call({
    String? classId,
    String? skillId,
  }) =>
      _res;
}

class Mutation$TeachSkillForClass {
  Mutation$TeachSkillForClass({
    required this.teachSkillForClass,
    required this.$__typename,
  });

  factory Mutation$TeachSkillForClass.fromJson(Map<String, dynamic> json) {
    final l$teachSkillForClass = json['teachSkillForClass'];
    final l$$__typename = json['__typename'];
    return Mutation$TeachSkillForClass(
      teachSkillForClass:
          Mutation$TeachSkillForClass$teachSkillForClass.fromJson(
              (l$teachSkillForClass as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$TeachSkillForClass$teachSkillForClass teachSkillForClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$teachSkillForClass = teachSkillForClass;
    _resultData['teachSkillForClass'] = l$teachSkillForClass.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$teachSkillForClass = teachSkillForClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$teachSkillForClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$TeachSkillForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$teachSkillForClass = teachSkillForClass;
    final lOther$teachSkillForClass = other.teachSkillForClass;
    if (l$teachSkillForClass != lOther$teachSkillForClass) {
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

extension UtilityExtension$Mutation$TeachSkillForClass
    on Mutation$TeachSkillForClass {
  CopyWith$Mutation$TeachSkillForClass<Mutation$TeachSkillForClass>
      get copyWith => CopyWith$Mutation$TeachSkillForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$TeachSkillForClass<TRes> {
  factory CopyWith$Mutation$TeachSkillForClass(
    Mutation$TeachSkillForClass instance,
    TRes Function(Mutation$TeachSkillForClass) then,
  ) = _CopyWithImpl$Mutation$TeachSkillForClass;

  factory CopyWith$Mutation$TeachSkillForClass.stub(TRes res) =
      _CopyWithStubImpl$Mutation$TeachSkillForClass;

  TRes call({
    Mutation$TeachSkillForClass$teachSkillForClass? teachSkillForClass,
    String? $__typename,
  });
  CopyWith$Mutation$TeachSkillForClass$teachSkillForClass<TRes>
      get teachSkillForClass;
}

class _CopyWithImpl$Mutation$TeachSkillForClass<TRes>
    implements CopyWith$Mutation$TeachSkillForClass<TRes> {
  _CopyWithImpl$Mutation$TeachSkillForClass(
    this._instance,
    this._then,
  );

  final Mutation$TeachSkillForClass _instance;

  final TRes Function(Mutation$TeachSkillForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? teachSkillForClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$TeachSkillForClass(
        teachSkillForClass:
            teachSkillForClass == _undefined || teachSkillForClass == null
                ? _instance.teachSkillForClass
                : (teachSkillForClass
                    as Mutation$TeachSkillForClass$teachSkillForClass),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$TeachSkillForClass$teachSkillForClass<TRes>
      get teachSkillForClass {
    final local$teachSkillForClass = _instance.teachSkillForClass;
    return CopyWith$Mutation$TeachSkillForClass$teachSkillForClass(
        local$teachSkillForClass, (e) => call(teachSkillForClass: e));
  }
}

class _CopyWithStubImpl$Mutation$TeachSkillForClass<TRes>
    implements CopyWith$Mutation$TeachSkillForClass<TRes> {
  _CopyWithStubImpl$Mutation$TeachSkillForClass(this._res);

  TRes _res;

  call({
    Mutation$TeachSkillForClass$teachSkillForClass? teachSkillForClass,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$TeachSkillForClass$teachSkillForClass<TRes>
      get teachSkillForClass =>
          CopyWith$Mutation$TeachSkillForClass$teachSkillForClass.stub(_res);
}

const documentNodeMutationTeachSkillForClass = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'TeachSkillForClass'),
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
        name: NameNode(value: 'teachSkillForClass'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'classId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'skillID'),
            value: VariableNode(name: NameNode(value: 'skillId')),
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
            name: NameNode(value: 'taughtForClass'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'classId')),
              )
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
Mutation$TeachSkillForClass _parserFn$Mutation$TeachSkillForClass(
        Map<String, dynamic> data) =>
    Mutation$TeachSkillForClass.fromJson(data);
typedef OnMutationCompleted$Mutation$TeachSkillForClass = FutureOr<void>
    Function(
  dynamic,
  Mutation$TeachSkillForClass?,
);

class Options$Mutation$TeachSkillForClass
    extends graphql.MutationOptions<Mutation$TeachSkillForClass> {
  Options$Mutation$TeachSkillForClass({
    String? operationName,
    required Variables$Mutation$TeachSkillForClass variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$TeachSkillForClass? onCompleted,
    graphql.OnMutationUpdate<Mutation$TeachSkillForClass>? update,
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
                        : _parserFn$Mutation$TeachSkillForClass(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationTeachSkillForClass,
          parserFn: _parserFn$Mutation$TeachSkillForClass,
        );

  final OnMutationCompleted$Mutation$TeachSkillForClass? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$TeachSkillForClass
    extends graphql.WatchQueryOptions<Mutation$TeachSkillForClass> {
  WatchOptions$Mutation$TeachSkillForClass({
    String? operationName,
    required Variables$Mutation$TeachSkillForClass variables,
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
          document: documentNodeMutationTeachSkillForClass,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$TeachSkillForClass,
        );
}

extension ClientExtension$Mutation$TeachSkillForClass on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$TeachSkillForClass>>
      mutate$TeachSkillForClass(
              Options$Mutation$TeachSkillForClass options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$TeachSkillForClass>
      watchMutation$TeachSkillForClass(
              WatchOptions$Mutation$TeachSkillForClass options) =>
          this.watchMutation(options);
}

class Mutation$TeachSkillForClass$teachSkillForClass {
  Mutation$TeachSkillForClass$teachSkillForClass({
    required this.id,
    required this.taughtForClass,
    required this.$__typename,
  });

  factory Mutation$TeachSkillForClass$teachSkillForClass.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$taughtForClass = json['taughtForClass'];
    final l$$__typename = json['__typename'];
    return Mutation$TeachSkillForClass$teachSkillForClass(
      id: (l$id as String),
      taughtForClass: (l$taughtForClass as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final bool taughtForClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$taughtForClass = taughtForClass;
    _resultData['taughtForClass'] = l$taughtForClass;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$taughtForClass = taughtForClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$taughtForClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$TeachSkillForClass$teachSkillForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$taughtForClass = taughtForClass;
    final lOther$taughtForClass = other.taughtForClass;
    if (l$taughtForClass != lOther$taughtForClass) {
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

extension UtilityExtension$Mutation$TeachSkillForClass$teachSkillForClass
    on Mutation$TeachSkillForClass$teachSkillForClass {
  CopyWith$Mutation$TeachSkillForClass$teachSkillForClass<
          Mutation$TeachSkillForClass$teachSkillForClass>
      get copyWith => CopyWith$Mutation$TeachSkillForClass$teachSkillForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$TeachSkillForClass$teachSkillForClass<TRes> {
  factory CopyWith$Mutation$TeachSkillForClass$teachSkillForClass(
    Mutation$TeachSkillForClass$teachSkillForClass instance,
    TRes Function(Mutation$TeachSkillForClass$teachSkillForClass) then,
  ) = _CopyWithImpl$Mutation$TeachSkillForClass$teachSkillForClass;

  factory CopyWith$Mutation$TeachSkillForClass$teachSkillForClass.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$TeachSkillForClass$teachSkillForClass;

  TRes call({
    String? id,
    bool? taughtForClass,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$TeachSkillForClass$teachSkillForClass<TRes>
    implements CopyWith$Mutation$TeachSkillForClass$teachSkillForClass<TRes> {
  _CopyWithImpl$Mutation$TeachSkillForClass$teachSkillForClass(
    this._instance,
    this._then,
  );

  final Mutation$TeachSkillForClass$teachSkillForClass _instance;

  final TRes Function(Mutation$TeachSkillForClass$teachSkillForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? taughtForClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$TeachSkillForClass$teachSkillForClass(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        taughtForClass: taughtForClass == _undefined || taughtForClass == null
            ? _instance.taughtForClass
            : (taughtForClass as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$TeachSkillForClass$teachSkillForClass<TRes>
    implements CopyWith$Mutation$TeachSkillForClass$teachSkillForClass<TRes> {
  _CopyWithStubImpl$Mutation$TeachSkillForClass$teachSkillForClass(this._res);

  TRes _res;

  call({
    String? id,
    bool? taughtForClass,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UnteachSkillForClass {
  factory Variables$Mutation$UnteachSkillForClass({
    required String classId,
    required String skillId,
  }) =>
      Variables$Mutation$UnteachSkillForClass._({
        r'classId': classId,
        r'skillId': skillId,
      });

  Variables$Mutation$UnteachSkillForClass._(this._$data);

  factory Variables$Mutation$UnteachSkillForClass.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    final l$skillId = data['skillId'];
    result$data['skillId'] = (l$skillId as String);
    return Variables$Mutation$UnteachSkillForClass._(result$data);
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

  CopyWith$Variables$Mutation$UnteachSkillForClass<
          Variables$Mutation$UnteachSkillForClass>
      get copyWith => CopyWith$Variables$Mutation$UnteachSkillForClass(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UnteachSkillForClass) ||
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

abstract class CopyWith$Variables$Mutation$UnteachSkillForClass<TRes> {
  factory CopyWith$Variables$Mutation$UnteachSkillForClass(
    Variables$Mutation$UnteachSkillForClass instance,
    TRes Function(Variables$Mutation$UnteachSkillForClass) then,
  ) = _CopyWithImpl$Variables$Mutation$UnteachSkillForClass;

  factory CopyWith$Variables$Mutation$UnteachSkillForClass.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UnteachSkillForClass;

  TRes call({
    String? classId,
    String? skillId,
  });
}

class _CopyWithImpl$Variables$Mutation$UnteachSkillForClass<TRes>
    implements CopyWith$Variables$Mutation$UnteachSkillForClass<TRes> {
  _CopyWithImpl$Variables$Mutation$UnteachSkillForClass(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UnteachSkillForClass _instance;

  final TRes Function(Variables$Mutation$UnteachSkillForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? classId = _undefined,
    Object? skillId = _undefined,
  }) =>
      _then(Variables$Mutation$UnteachSkillForClass._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
        if (skillId != _undefined && skillId != null)
          'skillId': (skillId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UnteachSkillForClass<TRes>
    implements CopyWith$Variables$Mutation$UnteachSkillForClass<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UnteachSkillForClass(this._res);

  TRes _res;

  call({
    String? classId,
    String? skillId,
  }) =>
      _res;
}

class Mutation$UnteachSkillForClass {
  Mutation$UnteachSkillForClass({
    required this.unteachSkillForClass,
    required this.$__typename,
  });

  factory Mutation$UnteachSkillForClass.fromJson(Map<String, dynamic> json) {
    final l$unteachSkillForClass = json['unteachSkillForClass'];
    final l$$__typename = json['__typename'];
    return Mutation$UnteachSkillForClass(
      unteachSkillForClass:
          Mutation$UnteachSkillForClass$unteachSkillForClass.fromJson(
              (l$unteachSkillForClass as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UnteachSkillForClass$unteachSkillForClass unteachSkillForClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$unteachSkillForClass = unteachSkillForClass;
    _resultData['unteachSkillForClass'] = l$unteachSkillForClass.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$unteachSkillForClass = unteachSkillForClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$unteachSkillForClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UnteachSkillForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$unteachSkillForClass = unteachSkillForClass;
    final lOther$unteachSkillForClass = other.unteachSkillForClass;
    if (l$unteachSkillForClass != lOther$unteachSkillForClass) {
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

extension UtilityExtension$Mutation$UnteachSkillForClass
    on Mutation$UnteachSkillForClass {
  CopyWith$Mutation$UnteachSkillForClass<Mutation$UnteachSkillForClass>
      get copyWith => CopyWith$Mutation$UnteachSkillForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UnteachSkillForClass<TRes> {
  factory CopyWith$Mutation$UnteachSkillForClass(
    Mutation$UnteachSkillForClass instance,
    TRes Function(Mutation$UnteachSkillForClass) then,
  ) = _CopyWithImpl$Mutation$UnteachSkillForClass;

  factory CopyWith$Mutation$UnteachSkillForClass.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UnteachSkillForClass;

  TRes call({
    Mutation$UnteachSkillForClass$unteachSkillForClass? unteachSkillForClass,
    String? $__typename,
  });
  CopyWith$Mutation$UnteachSkillForClass$unteachSkillForClass<TRes>
      get unteachSkillForClass;
}

class _CopyWithImpl$Mutation$UnteachSkillForClass<TRes>
    implements CopyWith$Mutation$UnteachSkillForClass<TRes> {
  _CopyWithImpl$Mutation$UnteachSkillForClass(
    this._instance,
    this._then,
  );

  final Mutation$UnteachSkillForClass _instance;

  final TRes Function(Mutation$UnteachSkillForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? unteachSkillForClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UnteachSkillForClass(
        unteachSkillForClass:
            unteachSkillForClass == _undefined || unteachSkillForClass == null
                ? _instance.unteachSkillForClass
                : (unteachSkillForClass
                    as Mutation$UnteachSkillForClass$unteachSkillForClass),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UnteachSkillForClass$unteachSkillForClass<TRes>
      get unteachSkillForClass {
    final local$unteachSkillForClass = _instance.unteachSkillForClass;
    return CopyWith$Mutation$UnteachSkillForClass$unteachSkillForClass(
        local$unteachSkillForClass, (e) => call(unteachSkillForClass: e));
  }
}

class _CopyWithStubImpl$Mutation$UnteachSkillForClass<TRes>
    implements CopyWith$Mutation$UnteachSkillForClass<TRes> {
  _CopyWithStubImpl$Mutation$UnteachSkillForClass(this._res);

  TRes _res;

  call({
    Mutation$UnteachSkillForClass$unteachSkillForClass? unteachSkillForClass,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UnteachSkillForClass$unteachSkillForClass<TRes>
      get unteachSkillForClass =>
          CopyWith$Mutation$UnteachSkillForClass$unteachSkillForClass.stub(
              _res);
}

const documentNodeMutationUnteachSkillForClass = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UnteachSkillForClass'),
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
        name: NameNode(value: 'unteachSkillForClass'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'classId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'skillID'),
            value: VariableNode(name: NameNode(value: 'skillId')),
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
            name: NameNode(value: 'taughtForClass'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'classId')),
              )
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
Mutation$UnteachSkillForClass _parserFn$Mutation$UnteachSkillForClass(
        Map<String, dynamic> data) =>
    Mutation$UnteachSkillForClass.fromJson(data);
typedef OnMutationCompleted$Mutation$UnteachSkillForClass = FutureOr<void>
    Function(
  dynamic,
  Mutation$UnteachSkillForClass?,
);

class Options$Mutation$UnteachSkillForClass
    extends graphql.MutationOptions<Mutation$UnteachSkillForClass> {
  Options$Mutation$UnteachSkillForClass({
    String? operationName,
    required Variables$Mutation$UnteachSkillForClass variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UnteachSkillForClass? onCompleted,
    graphql.OnMutationUpdate<Mutation$UnteachSkillForClass>? update,
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
                        : _parserFn$Mutation$UnteachSkillForClass(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUnteachSkillForClass,
          parserFn: _parserFn$Mutation$UnteachSkillForClass,
        );

  final OnMutationCompleted$Mutation$UnteachSkillForClass?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UnteachSkillForClass
    extends graphql.WatchQueryOptions<Mutation$UnteachSkillForClass> {
  WatchOptions$Mutation$UnteachSkillForClass({
    String? operationName,
    required Variables$Mutation$UnteachSkillForClass variables,
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
          document: documentNodeMutationUnteachSkillForClass,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UnteachSkillForClass,
        );
}

extension ClientExtension$Mutation$UnteachSkillForClass
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UnteachSkillForClass>>
      mutate$UnteachSkillForClass(
              Options$Mutation$UnteachSkillForClass options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UnteachSkillForClass>
      watchMutation$UnteachSkillForClass(
              WatchOptions$Mutation$UnteachSkillForClass options) =>
          this.watchMutation(options);
}

class Mutation$UnteachSkillForClass$unteachSkillForClass {
  Mutation$UnteachSkillForClass$unteachSkillForClass({
    required this.id,
    required this.taughtForClass,
    required this.$__typename,
  });

  factory Mutation$UnteachSkillForClass$unteachSkillForClass.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$taughtForClass = json['taughtForClass'];
    final l$$__typename = json['__typename'];
    return Mutation$UnteachSkillForClass$unteachSkillForClass(
      id: (l$id as String),
      taughtForClass: (l$taughtForClass as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final bool taughtForClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$taughtForClass = taughtForClass;
    _resultData['taughtForClass'] = l$taughtForClass;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$taughtForClass = taughtForClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$taughtForClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UnteachSkillForClass$unteachSkillForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$taughtForClass = taughtForClass;
    final lOther$taughtForClass = other.taughtForClass;
    if (l$taughtForClass != lOther$taughtForClass) {
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

extension UtilityExtension$Mutation$UnteachSkillForClass$unteachSkillForClass
    on Mutation$UnteachSkillForClass$unteachSkillForClass {
  CopyWith$Mutation$UnteachSkillForClass$unteachSkillForClass<
          Mutation$UnteachSkillForClass$unteachSkillForClass>
      get copyWith =>
          CopyWith$Mutation$UnteachSkillForClass$unteachSkillForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UnteachSkillForClass$unteachSkillForClass<
    TRes> {
  factory CopyWith$Mutation$UnteachSkillForClass$unteachSkillForClass(
    Mutation$UnteachSkillForClass$unteachSkillForClass instance,
    TRes Function(Mutation$UnteachSkillForClass$unteachSkillForClass) then,
  ) = _CopyWithImpl$Mutation$UnteachSkillForClass$unteachSkillForClass;

  factory CopyWith$Mutation$UnteachSkillForClass$unteachSkillForClass.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UnteachSkillForClass$unteachSkillForClass;

  TRes call({
    String? id,
    bool? taughtForClass,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UnteachSkillForClass$unteachSkillForClass<TRes>
    implements
        CopyWith$Mutation$UnteachSkillForClass$unteachSkillForClass<TRes> {
  _CopyWithImpl$Mutation$UnteachSkillForClass$unteachSkillForClass(
    this._instance,
    this._then,
  );

  final Mutation$UnteachSkillForClass$unteachSkillForClass _instance;

  final TRes Function(Mutation$UnteachSkillForClass$unteachSkillForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? taughtForClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UnteachSkillForClass$unteachSkillForClass(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        taughtForClass: taughtForClass == _undefined || taughtForClass == null
            ? _instance.taughtForClass
            : (taughtForClass as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UnteachSkillForClass$unteachSkillForClass<TRes>
    implements
        CopyWith$Mutation$UnteachSkillForClass$unteachSkillForClass<TRes> {
  _CopyWithStubImpl$Mutation$UnteachSkillForClass$unteachSkillForClass(
      this._res);

  TRes _res;

  call({
    String? id,
    bool? taughtForClass,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$FlagSkillForClass {
  factory Variables$Mutation$FlagSkillForClass({
    required String classId,
    required String skillId,
  }) =>
      Variables$Mutation$FlagSkillForClass._({
        r'classId': classId,
        r'skillId': skillId,
      });

  Variables$Mutation$FlagSkillForClass._(this._$data);

  factory Variables$Mutation$FlagSkillForClass.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    final l$skillId = data['skillId'];
    result$data['skillId'] = (l$skillId as String);
    return Variables$Mutation$FlagSkillForClass._(result$data);
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

  CopyWith$Variables$Mutation$FlagSkillForClass<
          Variables$Mutation$FlagSkillForClass>
      get copyWith => CopyWith$Variables$Mutation$FlagSkillForClass(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$FlagSkillForClass) ||
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

abstract class CopyWith$Variables$Mutation$FlagSkillForClass<TRes> {
  factory CopyWith$Variables$Mutation$FlagSkillForClass(
    Variables$Mutation$FlagSkillForClass instance,
    TRes Function(Variables$Mutation$FlagSkillForClass) then,
  ) = _CopyWithImpl$Variables$Mutation$FlagSkillForClass;

  factory CopyWith$Variables$Mutation$FlagSkillForClass.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$FlagSkillForClass;

  TRes call({
    String? classId,
    String? skillId,
  });
}

class _CopyWithImpl$Variables$Mutation$FlagSkillForClass<TRes>
    implements CopyWith$Variables$Mutation$FlagSkillForClass<TRes> {
  _CopyWithImpl$Variables$Mutation$FlagSkillForClass(
    this._instance,
    this._then,
  );

  final Variables$Mutation$FlagSkillForClass _instance;

  final TRes Function(Variables$Mutation$FlagSkillForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? classId = _undefined,
    Object? skillId = _undefined,
  }) =>
      _then(Variables$Mutation$FlagSkillForClass._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
        if (skillId != _undefined && skillId != null)
          'skillId': (skillId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$FlagSkillForClass<TRes>
    implements CopyWith$Variables$Mutation$FlagSkillForClass<TRes> {
  _CopyWithStubImpl$Variables$Mutation$FlagSkillForClass(this._res);

  TRes _res;

  call({
    String? classId,
    String? skillId,
  }) =>
      _res;
}

class Mutation$FlagSkillForClass {
  Mutation$FlagSkillForClass({
    required this.flagSkillForClass,
    required this.$__typename,
  });

  factory Mutation$FlagSkillForClass.fromJson(Map<String, dynamic> json) {
    final l$flagSkillForClass = json['flagSkillForClass'];
    final l$$__typename = json['__typename'];
    return Mutation$FlagSkillForClass(
      flagSkillForClass: Mutation$FlagSkillForClass$flagSkillForClass.fromJson(
          (l$flagSkillForClass as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$FlagSkillForClass$flagSkillForClass flagSkillForClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$flagSkillForClass = flagSkillForClass;
    _resultData['flagSkillForClass'] = l$flagSkillForClass.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$flagSkillForClass = flagSkillForClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$flagSkillForClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$FlagSkillForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$flagSkillForClass = flagSkillForClass;
    final lOther$flagSkillForClass = other.flagSkillForClass;
    if (l$flagSkillForClass != lOther$flagSkillForClass) {
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

extension UtilityExtension$Mutation$FlagSkillForClass
    on Mutation$FlagSkillForClass {
  CopyWith$Mutation$FlagSkillForClass<Mutation$FlagSkillForClass>
      get copyWith => CopyWith$Mutation$FlagSkillForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$FlagSkillForClass<TRes> {
  factory CopyWith$Mutation$FlagSkillForClass(
    Mutation$FlagSkillForClass instance,
    TRes Function(Mutation$FlagSkillForClass) then,
  ) = _CopyWithImpl$Mutation$FlagSkillForClass;

  factory CopyWith$Mutation$FlagSkillForClass.stub(TRes res) =
      _CopyWithStubImpl$Mutation$FlagSkillForClass;

  TRes call({
    Mutation$FlagSkillForClass$flagSkillForClass? flagSkillForClass,
    String? $__typename,
  });
  CopyWith$Mutation$FlagSkillForClass$flagSkillForClass<TRes>
      get flagSkillForClass;
}

class _CopyWithImpl$Mutation$FlagSkillForClass<TRes>
    implements CopyWith$Mutation$FlagSkillForClass<TRes> {
  _CopyWithImpl$Mutation$FlagSkillForClass(
    this._instance,
    this._then,
  );

  final Mutation$FlagSkillForClass _instance;

  final TRes Function(Mutation$FlagSkillForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? flagSkillForClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$FlagSkillForClass(
        flagSkillForClass:
            flagSkillForClass == _undefined || flagSkillForClass == null
                ? _instance.flagSkillForClass
                : (flagSkillForClass
                    as Mutation$FlagSkillForClass$flagSkillForClass),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$FlagSkillForClass$flagSkillForClass<TRes>
      get flagSkillForClass {
    final local$flagSkillForClass = _instance.flagSkillForClass;
    return CopyWith$Mutation$FlagSkillForClass$flagSkillForClass(
        local$flagSkillForClass, (e) => call(flagSkillForClass: e));
  }
}

class _CopyWithStubImpl$Mutation$FlagSkillForClass<TRes>
    implements CopyWith$Mutation$FlagSkillForClass<TRes> {
  _CopyWithStubImpl$Mutation$FlagSkillForClass(this._res);

  TRes _res;

  call({
    Mutation$FlagSkillForClass$flagSkillForClass? flagSkillForClass,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$FlagSkillForClass$flagSkillForClass<TRes>
      get flagSkillForClass =>
          CopyWith$Mutation$FlagSkillForClass$flagSkillForClass.stub(_res);
}

const documentNodeMutationFlagSkillForClass = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'FlagSkillForClass'),
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
        name: NameNode(value: 'flagSkillForClass'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'classId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'skillID'),
            value: VariableNode(name: NameNode(value: 'skillId')),
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
            name: NameNode(value: 'flaggedForClass'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'classId')),
              )
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
Mutation$FlagSkillForClass _parserFn$Mutation$FlagSkillForClass(
        Map<String, dynamic> data) =>
    Mutation$FlagSkillForClass.fromJson(data);
typedef OnMutationCompleted$Mutation$FlagSkillForClass = FutureOr<void>
    Function(
  dynamic,
  Mutation$FlagSkillForClass?,
);

class Options$Mutation$FlagSkillForClass
    extends graphql.MutationOptions<Mutation$FlagSkillForClass> {
  Options$Mutation$FlagSkillForClass({
    String? operationName,
    required Variables$Mutation$FlagSkillForClass variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$FlagSkillForClass? onCompleted,
    graphql.OnMutationUpdate<Mutation$FlagSkillForClass>? update,
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
                        : _parserFn$Mutation$FlagSkillForClass(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationFlagSkillForClass,
          parserFn: _parserFn$Mutation$FlagSkillForClass,
        );

  final OnMutationCompleted$Mutation$FlagSkillForClass? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$FlagSkillForClass
    extends graphql.WatchQueryOptions<Mutation$FlagSkillForClass> {
  WatchOptions$Mutation$FlagSkillForClass({
    String? operationName,
    required Variables$Mutation$FlagSkillForClass variables,
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
          document: documentNodeMutationFlagSkillForClass,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$FlagSkillForClass,
        );
}

extension ClientExtension$Mutation$FlagSkillForClass on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$FlagSkillForClass>>
      mutate$FlagSkillForClass(
              Options$Mutation$FlagSkillForClass options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$FlagSkillForClass>
      watchMutation$FlagSkillForClass(
              WatchOptions$Mutation$FlagSkillForClass options) =>
          this.watchMutation(options);
}

class Mutation$FlagSkillForClass$flagSkillForClass {
  Mutation$FlagSkillForClass$flagSkillForClass({
    required this.id,
    required this.flaggedForClass,
    required this.$__typename,
  });

  factory Mutation$FlagSkillForClass$flagSkillForClass.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$flaggedForClass = json['flaggedForClass'];
    final l$$__typename = json['__typename'];
    return Mutation$FlagSkillForClass$flagSkillForClass(
      id: (l$id as String),
      flaggedForClass: (l$flaggedForClass as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final bool flaggedForClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$flaggedForClass = flaggedForClass;
    _resultData['flaggedForClass'] = l$flaggedForClass;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$flaggedForClass = flaggedForClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$flaggedForClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$FlagSkillForClass$flagSkillForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$flaggedForClass = flaggedForClass;
    final lOther$flaggedForClass = other.flaggedForClass;
    if (l$flaggedForClass != lOther$flaggedForClass) {
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

extension UtilityExtension$Mutation$FlagSkillForClass$flagSkillForClass
    on Mutation$FlagSkillForClass$flagSkillForClass {
  CopyWith$Mutation$FlagSkillForClass$flagSkillForClass<
          Mutation$FlagSkillForClass$flagSkillForClass>
      get copyWith => CopyWith$Mutation$FlagSkillForClass$flagSkillForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$FlagSkillForClass$flagSkillForClass<TRes> {
  factory CopyWith$Mutation$FlagSkillForClass$flagSkillForClass(
    Mutation$FlagSkillForClass$flagSkillForClass instance,
    TRes Function(Mutation$FlagSkillForClass$flagSkillForClass) then,
  ) = _CopyWithImpl$Mutation$FlagSkillForClass$flagSkillForClass;

  factory CopyWith$Mutation$FlagSkillForClass$flagSkillForClass.stub(TRes res) =
      _CopyWithStubImpl$Mutation$FlagSkillForClass$flagSkillForClass;

  TRes call({
    String? id,
    bool? flaggedForClass,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$FlagSkillForClass$flagSkillForClass<TRes>
    implements CopyWith$Mutation$FlagSkillForClass$flagSkillForClass<TRes> {
  _CopyWithImpl$Mutation$FlagSkillForClass$flagSkillForClass(
    this._instance,
    this._then,
  );

  final Mutation$FlagSkillForClass$flagSkillForClass _instance;

  final TRes Function(Mutation$FlagSkillForClass$flagSkillForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? flaggedForClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$FlagSkillForClass$flagSkillForClass(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        flaggedForClass:
            flaggedForClass == _undefined || flaggedForClass == null
                ? _instance.flaggedForClass
                : (flaggedForClass as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$FlagSkillForClass$flagSkillForClass<TRes>
    implements CopyWith$Mutation$FlagSkillForClass$flagSkillForClass<TRes> {
  _CopyWithStubImpl$Mutation$FlagSkillForClass$flagSkillForClass(this._res);

  TRes _res;

  call({
    String? id,
    bool? flaggedForClass,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UnflagSkillForClass {
  factory Variables$Mutation$UnflagSkillForClass({
    required String classId,
    required String skillId,
  }) =>
      Variables$Mutation$UnflagSkillForClass._({
        r'classId': classId,
        r'skillId': skillId,
      });

  Variables$Mutation$UnflagSkillForClass._(this._$data);

  factory Variables$Mutation$UnflagSkillForClass.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    final l$skillId = data['skillId'];
    result$data['skillId'] = (l$skillId as String);
    return Variables$Mutation$UnflagSkillForClass._(result$data);
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

  CopyWith$Variables$Mutation$UnflagSkillForClass<
          Variables$Mutation$UnflagSkillForClass>
      get copyWith => CopyWith$Variables$Mutation$UnflagSkillForClass(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UnflagSkillForClass) ||
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

abstract class CopyWith$Variables$Mutation$UnflagSkillForClass<TRes> {
  factory CopyWith$Variables$Mutation$UnflagSkillForClass(
    Variables$Mutation$UnflagSkillForClass instance,
    TRes Function(Variables$Mutation$UnflagSkillForClass) then,
  ) = _CopyWithImpl$Variables$Mutation$UnflagSkillForClass;

  factory CopyWith$Variables$Mutation$UnflagSkillForClass.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UnflagSkillForClass;

  TRes call({
    String? classId,
    String? skillId,
  });
}

class _CopyWithImpl$Variables$Mutation$UnflagSkillForClass<TRes>
    implements CopyWith$Variables$Mutation$UnflagSkillForClass<TRes> {
  _CopyWithImpl$Variables$Mutation$UnflagSkillForClass(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UnflagSkillForClass _instance;

  final TRes Function(Variables$Mutation$UnflagSkillForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? classId = _undefined,
    Object? skillId = _undefined,
  }) =>
      _then(Variables$Mutation$UnflagSkillForClass._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
        if (skillId != _undefined && skillId != null)
          'skillId': (skillId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UnflagSkillForClass<TRes>
    implements CopyWith$Variables$Mutation$UnflagSkillForClass<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UnflagSkillForClass(this._res);

  TRes _res;

  call({
    String? classId,
    String? skillId,
  }) =>
      _res;
}

class Mutation$UnflagSkillForClass {
  Mutation$UnflagSkillForClass({
    required this.unflagSkillForClass,
    required this.$__typename,
  });

  factory Mutation$UnflagSkillForClass.fromJson(Map<String, dynamic> json) {
    final l$unflagSkillForClass = json['unflagSkillForClass'];
    final l$$__typename = json['__typename'];
    return Mutation$UnflagSkillForClass(
      unflagSkillForClass:
          Mutation$UnflagSkillForClass$unflagSkillForClass.fromJson(
              (l$unflagSkillForClass as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UnflagSkillForClass$unflagSkillForClass unflagSkillForClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$unflagSkillForClass = unflagSkillForClass;
    _resultData['unflagSkillForClass'] = l$unflagSkillForClass.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$unflagSkillForClass = unflagSkillForClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$unflagSkillForClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UnflagSkillForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$unflagSkillForClass = unflagSkillForClass;
    final lOther$unflagSkillForClass = other.unflagSkillForClass;
    if (l$unflagSkillForClass != lOther$unflagSkillForClass) {
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

extension UtilityExtension$Mutation$UnflagSkillForClass
    on Mutation$UnflagSkillForClass {
  CopyWith$Mutation$UnflagSkillForClass<Mutation$UnflagSkillForClass>
      get copyWith => CopyWith$Mutation$UnflagSkillForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UnflagSkillForClass<TRes> {
  factory CopyWith$Mutation$UnflagSkillForClass(
    Mutation$UnflagSkillForClass instance,
    TRes Function(Mutation$UnflagSkillForClass) then,
  ) = _CopyWithImpl$Mutation$UnflagSkillForClass;

  factory CopyWith$Mutation$UnflagSkillForClass.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UnflagSkillForClass;

  TRes call({
    Mutation$UnflagSkillForClass$unflagSkillForClass? unflagSkillForClass,
    String? $__typename,
  });
  CopyWith$Mutation$UnflagSkillForClass$unflagSkillForClass<TRes>
      get unflagSkillForClass;
}

class _CopyWithImpl$Mutation$UnflagSkillForClass<TRes>
    implements CopyWith$Mutation$UnflagSkillForClass<TRes> {
  _CopyWithImpl$Mutation$UnflagSkillForClass(
    this._instance,
    this._then,
  );

  final Mutation$UnflagSkillForClass _instance;

  final TRes Function(Mutation$UnflagSkillForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? unflagSkillForClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UnflagSkillForClass(
        unflagSkillForClass:
            unflagSkillForClass == _undefined || unflagSkillForClass == null
                ? _instance.unflagSkillForClass
                : (unflagSkillForClass
                    as Mutation$UnflagSkillForClass$unflagSkillForClass),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UnflagSkillForClass$unflagSkillForClass<TRes>
      get unflagSkillForClass {
    final local$unflagSkillForClass = _instance.unflagSkillForClass;
    return CopyWith$Mutation$UnflagSkillForClass$unflagSkillForClass(
        local$unflagSkillForClass, (e) => call(unflagSkillForClass: e));
  }
}

class _CopyWithStubImpl$Mutation$UnflagSkillForClass<TRes>
    implements CopyWith$Mutation$UnflagSkillForClass<TRes> {
  _CopyWithStubImpl$Mutation$UnflagSkillForClass(this._res);

  TRes _res;

  call({
    Mutation$UnflagSkillForClass$unflagSkillForClass? unflagSkillForClass,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UnflagSkillForClass$unflagSkillForClass<TRes>
      get unflagSkillForClass =>
          CopyWith$Mutation$UnflagSkillForClass$unflagSkillForClass.stub(_res);
}

const documentNodeMutationUnflagSkillForClass = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UnflagSkillForClass'),
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
        name: NameNode(value: 'unflagSkillForClass'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'classId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'skillID'),
            value: VariableNode(name: NameNode(value: 'skillId')),
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
            name: NameNode(value: 'flaggedForClass'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'classId')),
              )
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
Mutation$UnflagSkillForClass _parserFn$Mutation$UnflagSkillForClass(
        Map<String, dynamic> data) =>
    Mutation$UnflagSkillForClass.fromJson(data);
typedef OnMutationCompleted$Mutation$UnflagSkillForClass = FutureOr<void>
    Function(
  dynamic,
  Mutation$UnflagSkillForClass?,
);

class Options$Mutation$UnflagSkillForClass
    extends graphql.MutationOptions<Mutation$UnflagSkillForClass> {
  Options$Mutation$UnflagSkillForClass({
    String? operationName,
    required Variables$Mutation$UnflagSkillForClass variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UnflagSkillForClass? onCompleted,
    graphql.OnMutationUpdate<Mutation$UnflagSkillForClass>? update,
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
                        : _parserFn$Mutation$UnflagSkillForClass(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUnflagSkillForClass,
          parserFn: _parserFn$Mutation$UnflagSkillForClass,
        );

  final OnMutationCompleted$Mutation$UnflagSkillForClass? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UnflagSkillForClass
    extends graphql.WatchQueryOptions<Mutation$UnflagSkillForClass> {
  WatchOptions$Mutation$UnflagSkillForClass({
    String? operationName,
    required Variables$Mutation$UnflagSkillForClass variables,
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
          document: documentNodeMutationUnflagSkillForClass,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UnflagSkillForClass,
        );
}

extension ClientExtension$Mutation$UnflagSkillForClass
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UnflagSkillForClass>>
      mutate$UnflagSkillForClass(
              Options$Mutation$UnflagSkillForClass options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UnflagSkillForClass>
      watchMutation$UnflagSkillForClass(
              WatchOptions$Mutation$UnflagSkillForClass options) =>
          this.watchMutation(options);
}

class Mutation$UnflagSkillForClass$unflagSkillForClass {
  Mutation$UnflagSkillForClass$unflagSkillForClass({
    required this.id,
    required this.flaggedForClass,
    required this.$__typename,
  });

  factory Mutation$UnflagSkillForClass$unflagSkillForClass.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$flaggedForClass = json['flaggedForClass'];
    final l$$__typename = json['__typename'];
    return Mutation$UnflagSkillForClass$unflagSkillForClass(
      id: (l$id as String),
      flaggedForClass: (l$flaggedForClass as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final bool flaggedForClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$flaggedForClass = flaggedForClass;
    _resultData['flaggedForClass'] = l$flaggedForClass;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$flaggedForClass = flaggedForClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$flaggedForClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UnflagSkillForClass$unflagSkillForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$flaggedForClass = flaggedForClass;
    final lOther$flaggedForClass = other.flaggedForClass;
    if (l$flaggedForClass != lOther$flaggedForClass) {
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

extension UtilityExtension$Mutation$UnflagSkillForClass$unflagSkillForClass
    on Mutation$UnflagSkillForClass$unflagSkillForClass {
  CopyWith$Mutation$UnflagSkillForClass$unflagSkillForClass<
          Mutation$UnflagSkillForClass$unflagSkillForClass>
      get copyWith => CopyWith$Mutation$UnflagSkillForClass$unflagSkillForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UnflagSkillForClass$unflagSkillForClass<TRes> {
  factory CopyWith$Mutation$UnflagSkillForClass$unflagSkillForClass(
    Mutation$UnflagSkillForClass$unflagSkillForClass instance,
    TRes Function(Mutation$UnflagSkillForClass$unflagSkillForClass) then,
  ) = _CopyWithImpl$Mutation$UnflagSkillForClass$unflagSkillForClass;

  factory CopyWith$Mutation$UnflagSkillForClass$unflagSkillForClass.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UnflagSkillForClass$unflagSkillForClass;

  TRes call({
    String? id,
    bool? flaggedForClass,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UnflagSkillForClass$unflagSkillForClass<TRes>
    implements CopyWith$Mutation$UnflagSkillForClass$unflagSkillForClass<TRes> {
  _CopyWithImpl$Mutation$UnflagSkillForClass$unflagSkillForClass(
    this._instance,
    this._then,
  );

  final Mutation$UnflagSkillForClass$unflagSkillForClass _instance;

  final TRes Function(Mutation$UnflagSkillForClass$unflagSkillForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? flaggedForClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UnflagSkillForClass$unflagSkillForClass(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        flaggedForClass:
            flaggedForClass == _undefined || flaggedForClass == null
                ? _instance.flaggedForClass
                : (flaggedForClass as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UnflagSkillForClass$unflagSkillForClass<TRes>
    implements CopyWith$Mutation$UnflagSkillForClass$unflagSkillForClass<TRes> {
  _CopyWithStubImpl$Mutation$UnflagSkillForClass$unflagSkillForClass(this._res);

  TRes _res;

  call({
    String? id,
    bool? flaggedForClass,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$SetSubtopicStateForClass {
  factory Variables$Mutation$SetSubtopicStateForClass({
    required String classId,
    required String subtopicId,
    required Enum$SubtopicState state,
  }) =>
      Variables$Mutation$SetSubtopicStateForClass._({
        r'classId': classId,
        r'subtopicId': subtopicId,
        r'state': state,
      });

  Variables$Mutation$SetSubtopicStateForClass._(this._$data);

  factory Variables$Mutation$SetSubtopicStateForClass.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    final l$subtopicId = data['subtopicId'];
    result$data['subtopicId'] = (l$subtopicId as String);
    final l$state = data['state'];
    result$data['state'] = fromJson$Enum$SubtopicState((l$state as String));
    return Variables$Mutation$SetSubtopicStateForClass._(result$data);
  }

  Map<String, dynamic> _$data;

  String get classId => (_$data['classId'] as String);
  String get subtopicId => (_$data['subtopicId'] as String);
  Enum$SubtopicState get state => (_$data['state'] as Enum$SubtopicState);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$classId = classId;
    result$data['classId'] = l$classId;
    final l$subtopicId = subtopicId;
    result$data['subtopicId'] = l$subtopicId;
    final l$state = state;
    result$data['state'] = toJson$Enum$SubtopicState(l$state);
    return result$data;
  }

  CopyWith$Variables$Mutation$SetSubtopicStateForClass<
          Variables$Mutation$SetSubtopicStateForClass>
      get copyWith => CopyWith$Variables$Mutation$SetSubtopicStateForClass(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SetSubtopicStateForClass) ||
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
    final l$state = state;
    final lOther$state = other.state;
    if (l$state != lOther$state) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$classId = classId;
    final l$subtopicId = subtopicId;
    final l$state = state;
    return Object.hashAll([
      l$classId,
      l$subtopicId,
      l$state,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SetSubtopicStateForClass<TRes> {
  factory CopyWith$Variables$Mutation$SetSubtopicStateForClass(
    Variables$Mutation$SetSubtopicStateForClass instance,
    TRes Function(Variables$Mutation$SetSubtopicStateForClass) then,
  ) = _CopyWithImpl$Variables$Mutation$SetSubtopicStateForClass;

  factory CopyWith$Variables$Mutation$SetSubtopicStateForClass.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SetSubtopicStateForClass;

  TRes call({
    String? classId,
    String? subtopicId,
    Enum$SubtopicState? state,
  });
}

class _CopyWithImpl$Variables$Mutation$SetSubtopicStateForClass<TRes>
    implements CopyWith$Variables$Mutation$SetSubtopicStateForClass<TRes> {
  _CopyWithImpl$Variables$Mutation$SetSubtopicStateForClass(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SetSubtopicStateForClass _instance;

  final TRes Function(Variables$Mutation$SetSubtopicStateForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? classId = _undefined,
    Object? subtopicId = _undefined,
    Object? state = _undefined,
  }) =>
      _then(Variables$Mutation$SetSubtopicStateForClass._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
        if (subtopicId != _undefined && subtopicId != null)
          'subtopicId': (subtopicId as String),
        if (state != _undefined && state != null)
          'state': (state as Enum$SubtopicState),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SetSubtopicStateForClass<TRes>
    implements CopyWith$Variables$Mutation$SetSubtopicStateForClass<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SetSubtopicStateForClass(this._res);

  TRes _res;

  call({
    String? classId,
    String? subtopicId,
    Enum$SubtopicState? state,
  }) =>
      _res;
}

class Mutation$SetSubtopicStateForClass {
  Mutation$SetSubtopicStateForClass({
    required this.setSubtopicStateForClass,
    required this.$__typename,
  });

  factory Mutation$SetSubtopicStateForClass.fromJson(
      Map<String, dynamic> json) {
    final l$setSubtopicStateForClass = json['setSubtopicStateForClass'];
    final l$$__typename = json['__typename'];
    return Mutation$SetSubtopicStateForClass(
      setSubtopicStateForClass:
          Mutation$SetSubtopicStateForClass$setSubtopicStateForClass.fromJson(
              (l$setSubtopicStateForClass as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SetSubtopicStateForClass$setSubtopicStateForClass
      setSubtopicStateForClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$setSubtopicStateForClass = setSubtopicStateForClass;
    _resultData['setSubtopicStateForClass'] =
        l$setSubtopicStateForClass.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$setSubtopicStateForClass = setSubtopicStateForClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$setSubtopicStateForClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SetSubtopicStateForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$setSubtopicStateForClass = setSubtopicStateForClass;
    final lOther$setSubtopicStateForClass = other.setSubtopicStateForClass;
    if (l$setSubtopicStateForClass != lOther$setSubtopicStateForClass) {
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

extension UtilityExtension$Mutation$SetSubtopicStateForClass
    on Mutation$SetSubtopicStateForClass {
  CopyWith$Mutation$SetSubtopicStateForClass<Mutation$SetSubtopicStateForClass>
      get copyWith => CopyWith$Mutation$SetSubtopicStateForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SetSubtopicStateForClass<TRes> {
  factory CopyWith$Mutation$SetSubtopicStateForClass(
    Mutation$SetSubtopicStateForClass instance,
    TRes Function(Mutation$SetSubtopicStateForClass) then,
  ) = _CopyWithImpl$Mutation$SetSubtopicStateForClass;

  factory CopyWith$Mutation$SetSubtopicStateForClass.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SetSubtopicStateForClass;

  TRes call({
    Mutation$SetSubtopicStateForClass$setSubtopicStateForClass?
        setSubtopicStateForClass,
    String? $__typename,
  });
  CopyWith$Mutation$SetSubtopicStateForClass$setSubtopicStateForClass<TRes>
      get setSubtopicStateForClass;
}

class _CopyWithImpl$Mutation$SetSubtopicStateForClass<TRes>
    implements CopyWith$Mutation$SetSubtopicStateForClass<TRes> {
  _CopyWithImpl$Mutation$SetSubtopicStateForClass(
    this._instance,
    this._then,
  );

  final Mutation$SetSubtopicStateForClass _instance;

  final TRes Function(Mutation$SetSubtopicStateForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? setSubtopicStateForClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SetSubtopicStateForClass(
        setSubtopicStateForClass: setSubtopicStateForClass == _undefined ||
                setSubtopicStateForClass == null
            ? _instance.setSubtopicStateForClass
            : (setSubtopicStateForClass
                as Mutation$SetSubtopicStateForClass$setSubtopicStateForClass),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$SetSubtopicStateForClass$setSubtopicStateForClass<TRes>
      get setSubtopicStateForClass {
    final local$setSubtopicStateForClass = _instance.setSubtopicStateForClass;
    return CopyWith$Mutation$SetSubtopicStateForClass$setSubtopicStateForClass(
        local$setSubtopicStateForClass,
        (e) => call(setSubtopicStateForClass: e));
  }
}

class _CopyWithStubImpl$Mutation$SetSubtopicStateForClass<TRes>
    implements CopyWith$Mutation$SetSubtopicStateForClass<TRes> {
  _CopyWithStubImpl$Mutation$SetSubtopicStateForClass(this._res);

  TRes _res;

  call({
    Mutation$SetSubtopicStateForClass$setSubtopicStateForClass?
        setSubtopicStateForClass,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$SetSubtopicStateForClass$setSubtopicStateForClass<TRes>
      get setSubtopicStateForClass =>
          CopyWith$Mutation$SetSubtopicStateForClass$setSubtopicStateForClass
              .stub(_res);
}

const documentNodeMutationSetSubtopicStateForClass = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SetSubtopicStateForClass'),
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'state')),
        type: NamedTypeNode(
          name: NameNode(value: 'SubtopicState'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'setSubtopicStateForClass'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'classId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'subtopicID'),
            value: VariableNode(name: NameNode(value: 'subtopicId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'state'),
            value: VariableNode(name: NameNode(value: 'state')),
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
            name: NameNode(value: 'stateForClass'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'classId')),
              )
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
Mutation$SetSubtopicStateForClass _parserFn$Mutation$SetSubtopicStateForClass(
        Map<String, dynamic> data) =>
    Mutation$SetSubtopicStateForClass.fromJson(data);
typedef OnMutationCompleted$Mutation$SetSubtopicStateForClass = FutureOr<void>
    Function(
  dynamic,
  Mutation$SetSubtopicStateForClass?,
);

class Options$Mutation$SetSubtopicStateForClass
    extends graphql.MutationOptions<Mutation$SetSubtopicStateForClass> {
  Options$Mutation$SetSubtopicStateForClass({
    String? operationName,
    required Variables$Mutation$SetSubtopicStateForClass variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SetSubtopicStateForClass? onCompleted,
    graphql.OnMutationUpdate<Mutation$SetSubtopicStateForClass>? update,
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
                        : _parserFn$Mutation$SetSubtopicStateForClass(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSetSubtopicStateForClass,
          parserFn: _parserFn$Mutation$SetSubtopicStateForClass,
        );

  final OnMutationCompleted$Mutation$SetSubtopicStateForClass?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SetSubtopicStateForClass
    extends graphql.WatchQueryOptions<Mutation$SetSubtopicStateForClass> {
  WatchOptions$Mutation$SetSubtopicStateForClass({
    String? operationName,
    required Variables$Mutation$SetSubtopicStateForClass variables,
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
          document: documentNodeMutationSetSubtopicStateForClass,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SetSubtopicStateForClass,
        );
}

extension ClientExtension$Mutation$SetSubtopicStateForClass
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SetSubtopicStateForClass>>
      mutate$SetSubtopicStateForClass(
              Options$Mutation$SetSubtopicStateForClass options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$SetSubtopicStateForClass>
      watchMutation$SetSubtopicStateForClass(
              WatchOptions$Mutation$SetSubtopicStateForClass options) =>
          this.watchMutation(options);
}

class Mutation$SetSubtopicStateForClass$setSubtopicStateForClass {
  Mutation$SetSubtopicStateForClass$setSubtopicStateForClass({
    required this.id,
    required this.stateForClass,
    required this.$__typename,
  });

  factory Mutation$SetSubtopicStateForClass$setSubtopicStateForClass.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$stateForClass = json['stateForClass'];
    final l$$__typename = json['__typename'];
    return Mutation$SetSubtopicStateForClass$setSubtopicStateForClass(
      id: (l$id as String),
      stateForClass: fromJson$Enum$SubtopicState((l$stateForClass as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Enum$SubtopicState stateForClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$stateForClass = stateForClass;
    _resultData['stateForClass'] = toJson$Enum$SubtopicState(l$stateForClass);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$stateForClass = stateForClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$stateForClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$SetSubtopicStateForClass$setSubtopicStateForClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$stateForClass = stateForClass;
    final lOther$stateForClass = other.stateForClass;
    if (l$stateForClass != lOther$stateForClass) {
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

extension UtilityExtension$Mutation$SetSubtopicStateForClass$setSubtopicStateForClass
    on Mutation$SetSubtopicStateForClass$setSubtopicStateForClass {
  CopyWith$Mutation$SetSubtopicStateForClass$setSubtopicStateForClass<
          Mutation$SetSubtopicStateForClass$setSubtopicStateForClass>
      get copyWith =>
          CopyWith$Mutation$SetSubtopicStateForClass$setSubtopicStateForClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SetSubtopicStateForClass$setSubtopicStateForClass<
    TRes> {
  factory CopyWith$Mutation$SetSubtopicStateForClass$setSubtopicStateForClass(
    Mutation$SetSubtopicStateForClass$setSubtopicStateForClass instance,
    TRes Function(Mutation$SetSubtopicStateForClass$setSubtopicStateForClass)
        then,
  ) = _CopyWithImpl$Mutation$SetSubtopicStateForClass$setSubtopicStateForClass;

  factory CopyWith$Mutation$SetSubtopicStateForClass$setSubtopicStateForClass.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SetSubtopicStateForClass$setSubtopicStateForClass;

  TRes call({
    String? id,
    Enum$SubtopicState? stateForClass,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SetSubtopicStateForClass$setSubtopicStateForClass<
        TRes>
    implements
        CopyWith$Mutation$SetSubtopicStateForClass$setSubtopicStateForClass<
            TRes> {
  _CopyWithImpl$Mutation$SetSubtopicStateForClass$setSubtopicStateForClass(
    this._instance,
    this._then,
  );

  final Mutation$SetSubtopicStateForClass$setSubtopicStateForClass _instance;

  final TRes Function(
      Mutation$SetSubtopicStateForClass$setSubtopicStateForClass) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? stateForClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SetSubtopicStateForClass$setSubtopicStateForClass(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        stateForClass: stateForClass == _undefined || stateForClass == null
            ? _instance.stateForClass
            : (stateForClass as Enum$SubtopicState),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SetSubtopicStateForClass$setSubtopicStateForClass<
        TRes>
    implements
        CopyWith$Mutation$SetSubtopicStateForClass$setSubtopicStateForClass<
            TRes> {
  _CopyWithStubImpl$Mutation$SetSubtopicStateForClass$setSubtopicStateForClass(
      this._res);

  TRes _res;

  call({
    String? id,
    Enum$SubtopicState? stateForClass,
    String? $__typename,
  }) =>
      _res;
}
