import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:schema/src/tutero_graph.graphql.dart';

class Variables$Query$SearchSchools {
  factory Variables$Query$SearchSchools({
    required String query,
    required String regionId,
  }) =>
      Variables$Query$SearchSchools._({
        r'query': query,
        r'regionId': regionId,
      });

  Variables$Query$SearchSchools._(this._$data);

  factory Variables$Query$SearchSchools.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$query = data['query'];
    result$data['query'] = (l$query as String);
    final l$regionId = data['regionId'];
    result$data['regionId'] = (l$regionId as String);
    return Variables$Query$SearchSchools._(result$data);
  }

  Map<String, dynamic> _$data;

  String get query => (_$data['query'] as String);
  String get regionId => (_$data['regionId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$query = query;
    result$data['query'] = l$query;
    final l$regionId = regionId;
    result$data['regionId'] = l$regionId;
    return result$data;
  }

  CopyWith$Variables$Query$SearchSchools<Variables$Query$SearchSchools>
      get copyWith => CopyWith$Variables$Query$SearchSchools(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$SearchSchools) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (l$query != lOther$query) {
      return false;
    }
    final l$regionId = regionId;
    final lOther$regionId = other.regionId;
    if (l$regionId != lOther$regionId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    final l$regionId = regionId;
    return Object.hashAll([
      l$query,
      l$regionId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$SearchSchools<TRes> {
  factory CopyWith$Variables$Query$SearchSchools(
    Variables$Query$SearchSchools instance,
    TRes Function(Variables$Query$SearchSchools) then,
  ) = _CopyWithImpl$Variables$Query$SearchSchools;

  factory CopyWith$Variables$Query$SearchSchools.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchSchools;

  TRes call({
    String? query,
    String? regionId,
  });
}

class _CopyWithImpl$Variables$Query$SearchSchools<TRes>
    implements CopyWith$Variables$Query$SearchSchools<TRes> {
  _CopyWithImpl$Variables$Query$SearchSchools(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchSchools _instance;

  final TRes Function(Variables$Query$SearchSchools) _then;

  static const _undefined = {};

  TRes call({
    Object? query = _undefined,
    Object? regionId = _undefined,
  }) =>
      _then(Variables$Query$SearchSchools._({
        ..._instance._$data,
        if (query != _undefined && query != null) 'query': (query as String),
        if (regionId != _undefined && regionId != null)
          'regionId': (regionId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$SearchSchools<TRes>
    implements CopyWith$Variables$Query$SearchSchools<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchSchools(this._res);

  TRes _res;

  call({
    String? query,
    String? regionId,
  }) =>
      _res;
}

class Query$SearchSchools {
  Query$SearchSchools({
    required this.searchSchools,
    required this.$__typename,
  });

  factory Query$SearchSchools.fromJson(Map<String, dynamic> json) {
    final l$searchSchools = json['searchSchools'];
    final l$$__typename = json['__typename'];
    return Query$SearchSchools(
      searchSchools: (l$searchSchools as List<dynamic>)
          .map((e) => Query$SearchSchools$searchSchools.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchSchools$searchSchools> searchSchools;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchSchools = searchSchools;
    _resultData['searchSchools'] =
        l$searchSchools.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchSchools = searchSchools;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$searchSchools.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchSchools) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchSchools = searchSchools;
    final lOther$searchSchools = other.searchSchools;
    if (l$searchSchools.length != lOther$searchSchools.length) {
      return false;
    }
    for (int i = 0; i < l$searchSchools.length; i++) {
      final l$searchSchools$entry = l$searchSchools[i];
      final lOther$searchSchools$entry = lOther$searchSchools[i];
      if (l$searchSchools$entry != lOther$searchSchools$entry) {
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

extension UtilityExtension$Query$SearchSchools on Query$SearchSchools {
  CopyWith$Query$SearchSchools<Query$SearchSchools> get copyWith =>
      CopyWith$Query$SearchSchools(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchSchools<TRes> {
  factory CopyWith$Query$SearchSchools(
    Query$SearchSchools instance,
    TRes Function(Query$SearchSchools) then,
  ) = _CopyWithImpl$Query$SearchSchools;

  factory CopyWith$Query$SearchSchools.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchSchools;

  TRes call({
    List<Query$SearchSchools$searchSchools>? searchSchools,
    String? $__typename,
  });
  TRes searchSchools(
      Iterable<Query$SearchSchools$searchSchools> Function(
              Iterable<
                  CopyWith$Query$SearchSchools$searchSchools<
                      Query$SearchSchools$searchSchools>>)
          _fn);
}

class _CopyWithImpl$Query$SearchSchools<TRes>
    implements CopyWith$Query$SearchSchools<TRes> {
  _CopyWithImpl$Query$SearchSchools(
    this._instance,
    this._then,
  );

  final Query$SearchSchools _instance;

  final TRes Function(Query$SearchSchools) _then;

  static const _undefined = {};

  TRes call({
    Object? searchSchools = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchSchools(
        searchSchools: searchSchools == _undefined || searchSchools == null
            ? _instance.searchSchools
            : (searchSchools as List<Query$SearchSchools$searchSchools>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes searchSchools(
          Iterable<Query$SearchSchools$searchSchools> Function(
                  Iterable<
                      CopyWith$Query$SearchSchools$searchSchools<
                          Query$SearchSchools$searchSchools>>)
              _fn) =>
      call(
          searchSchools: _fn(_instance.searchSchools
              .map((e) => CopyWith$Query$SearchSchools$searchSchools(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$SearchSchools<TRes>
    implements CopyWith$Query$SearchSchools<TRes> {
  _CopyWithStubImpl$Query$SearchSchools(this._res);

  TRes _res;

  call({
    List<Query$SearchSchools$searchSchools>? searchSchools,
    String? $__typename,
  }) =>
      _res;
  searchSchools(_fn) => _res;
}

const documentNodeQuerySearchSchools = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SearchSchools'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'query')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'regionId')),
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
        name: NameNode(value: 'searchSchools'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'query'),
            value: VariableNode(name: NameNode(value: 'query')),
          ),
          ArgumentNode(
            name: NameNode(value: 'regionID'),
            value: VariableNode(name: NameNode(value: 'regionId')),
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
            name: NameNode(value: 'name'),
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
Query$SearchSchools _parserFn$Query$SearchSchools(Map<String, dynamic> data) =>
    Query$SearchSchools.fromJson(data);

class Options$Query$SearchSchools
    extends graphql.QueryOptions<Query$SearchSchools> {
  Options$Query$SearchSchools({
    String? operationName,
    required Variables$Query$SearchSchools variables,
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
          document: documentNodeQuerySearchSchools,
          parserFn: _parserFn$Query$SearchSchools,
        );
}

class WatchOptions$Query$SearchSchools
    extends graphql.WatchQueryOptions<Query$SearchSchools> {
  WatchOptions$Query$SearchSchools({
    String? operationName,
    required Variables$Query$SearchSchools variables,
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
          document: documentNodeQuerySearchSchools,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$SearchSchools,
        );
}

class FetchMoreOptions$Query$SearchSchools extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SearchSchools({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$SearchSchools variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerySearchSchools,
        );
}

extension ClientExtension$Query$SearchSchools on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SearchSchools>> query$SearchSchools(
          Options$Query$SearchSchools options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$SearchSchools> watchQuery$SearchSchools(
          WatchOptions$Query$SearchSchools options) =>
      this.watchQuery(options);
  void writeQuery$SearchSchools({
    required Query$SearchSchools data,
    required Variables$Query$SearchSchools variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerySearchSchools),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$SearchSchools? readQuery$SearchSchools({
    required Variables$Query$SearchSchools variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerySearchSchools),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$SearchSchools.fromJson(result);
  }
}

class Query$SearchSchools$searchSchools {
  Query$SearchSchools$searchSchools({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Query$SearchSchools$searchSchools.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$SearchSchools$searchSchools(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchSchools$searchSchools) ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchSchools$searchSchools
    on Query$SearchSchools$searchSchools {
  CopyWith$Query$SearchSchools$searchSchools<Query$SearchSchools$searchSchools>
      get copyWith => CopyWith$Query$SearchSchools$searchSchools(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchSchools$searchSchools<TRes> {
  factory CopyWith$Query$SearchSchools$searchSchools(
    Query$SearchSchools$searchSchools instance,
    TRes Function(Query$SearchSchools$searchSchools) then,
  ) = _CopyWithImpl$Query$SearchSchools$searchSchools;

  factory CopyWith$Query$SearchSchools$searchSchools.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchSchools$searchSchools;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchSchools$searchSchools<TRes>
    implements CopyWith$Query$SearchSchools$searchSchools<TRes> {
  _CopyWithImpl$Query$SearchSchools$searchSchools(
    this._instance,
    this._then,
  );

  final Query$SearchSchools$searchSchools _instance;

  final TRes Function(Query$SearchSchools$searchSchools) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchSchools$searchSchools(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SearchSchools$searchSchools<TRes>
    implements CopyWith$Query$SearchSchools$searchSchools<TRes> {
  _CopyWithStubImpl$Query$SearchSchools$searchSchools(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$CreateTeacher {
  Mutation$CreateTeacher({
    required this.createTeacher,
    required this.$__typename,
  });

  factory Mutation$CreateTeacher.fromJson(Map<String, dynamic> json) {
    final l$createTeacher = json['createTeacher'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateTeacher(
      createTeacher: Mutation$CreateTeacher$createTeacher.fromJson(
          (l$createTeacher as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateTeacher$createTeacher createTeacher;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createTeacher = createTeacher;
    _resultData['createTeacher'] = l$createTeacher.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createTeacher = createTeacher;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createTeacher,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateTeacher) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createTeacher = createTeacher;
    final lOther$createTeacher = other.createTeacher;
    if (l$createTeacher != lOther$createTeacher) {
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

extension UtilityExtension$Mutation$CreateTeacher on Mutation$CreateTeacher {
  CopyWith$Mutation$CreateTeacher<Mutation$CreateTeacher> get copyWith =>
      CopyWith$Mutation$CreateTeacher(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateTeacher<TRes> {
  factory CopyWith$Mutation$CreateTeacher(
    Mutation$CreateTeacher instance,
    TRes Function(Mutation$CreateTeacher) then,
  ) = _CopyWithImpl$Mutation$CreateTeacher;

  factory CopyWith$Mutation$CreateTeacher.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateTeacher;

  TRes call({
    Mutation$CreateTeacher$createTeacher? createTeacher,
    String? $__typename,
  });
  CopyWith$Mutation$CreateTeacher$createTeacher<TRes> get createTeacher;
}

class _CopyWithImpl$Mutation$CreateTeacher<TRes>
    implements CopyWith$Mutation$CreateTeacher<TRes> {
  _CopyWithImpl$Mutation$CreateTeacher(
    this._instance,
    this._then,
  );

  final Mutation$CreateTeacher _instance;

  final TRes Function(Mutation$CreateTeacher) _then;

  static const _undefined = {};

  TRes call({
    Object? createTeacher = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateTeacher(
        createTeacher: createTeacher == _undefined || createTeacher == null
            ? _instance.createTeacher
            : (createTeacher as Mutation$CreateTeacher$createTeacher),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$CreateTeacher$createTeacher<TRes> get createTeacher {
    final local$createTeacher = _instance.createTeacher;
    return CopyWith$Mutation$CreateTeacher$createTeacher(
        local$createTeacher, (e) => call(createTeacher: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateTeacher<TRes>
    implements CopyWith$Mutation$CreateTeacher<TRes> {
  _CopyWithStubImpl$Mutation$CreateTeacher(this._res);

  TRes _res;

  call({
    Mutation$CreateTeacher$createTeacher? createTeacher,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$CreateTeacher$createTeacher<TRes> get createTeacher =>
      CopyWith$Mutation$CreateTeacher$createTeacher.stub(_res);
}

const documentNodeMutationCreateTeacher = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateTeacher'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createTeacher'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'user'),
            alias: NameNode(value: 'createdUser'),
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$CreateTeacher _parserFn$Mutation$CreateTeacher(
        Map<String, dynamic> data) =>
    Mutation$CreateTeacher.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateTeacher = FutureOr<void> Function(
  dynamic,
  Mutation$CreateTeacher?,
);

class Options$Mutation$CreateTeacher
    extends graphql.MutationOptions<Mutation$CreateTeacher> {
  Options$Mutation$CreateTeacher({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateTeacher? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateTeacher>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
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
                        : _parserFn$Mutation$CreateTeacher(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateTeacher,
          parserFn: _parserFn$Mutation$CreateTeacher,
        );

  final OnMutationCompleted$Mutation$CreateTeacher? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateTeacher
    extends graphql.WatchQueryOptions<Mutation$CreateTeacher> {
  WatchOptions$Mutation$CreateTeacher({
    String? operationName,
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
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationCreateTeacher,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateTeacher,
        );
}

extension ClientExtension$Mutation$CreateTeacher on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateTeacher>> mutate$CreateTeacher(
          [Options$Mutation$CreateTeacher? options]) async =>
      await this.mutate(options ?? Options$Mutation$CreateTeacher());
  graphql.ObservableQuery<Mutation$CreateTeacher> watchMutation$CreateTeacher(
          [WatchOptions$Mutation$CreateTeacher? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$CreateTeacher());
}

class Mutation$CreateTeacher$createTeacher {
  Mutation$CreateTeacher$createTeacher({
    required this.createdUser,
    required this.$__typename,
  });

  factory Mutation$CreateTeacher$createTeacher.fromJson(
      Map<String, dynamic> json) {
    final l$createdUser = json['createdUser'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateTeacher$createTeacher(
      createdUser: Mutation$CreateTeacher$createTeacher$createdUser.fromJson(
          (l$createdUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateTeacher$createTeacher$createdUser createdUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createdUser = createdUser;
    _resultData['createdUser'] = l$createdUser.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createdUser = createdUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createdUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateTeacher$createTeacher) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createdUser = createdUser;
    final lOther$createdUser = other.createdUser;
    if (l$createdUser != lOther$createdUser) {
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

extension UtilityExtension$Mutation$CreateTeacher$createTeacher
    on Mutation$CreateTeacher$createTeacher {
  CopyWith$Mutation$CreateTeacher$createTeacher<
          Mutation$CreateTeacher$createTeacher>
      get copyWith => CopyWith$Mutation$CreateTeacher$createTeacher(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateTeacher$createTeacher<TRes> {
  factory CopyWith$Mutation$CreateTeacher$createTeacher(
    Mutation$CreateTeacher$createTeacher instance,
    TRes Function(Mutation$CreateTeacher$createTeacher) then,
  ) = _CopyWithImpl$Mutation$CreateTeacher$createTeacher;

  factory CopyWith$Mutation$CreateTeacher$createTeacher.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateTeacher$createTeacher;

  TRes call({
    Mutation$CreateTeacher$createTeacher$createdUser? createdUser,
    String? $__typename,
  });
  CopyWith$Mutation$CreateTeacher$createTeacher$createdUser<TRes>
      get createdUser;
}

class _CopyWithImpl$Mutation$CreateTeacher$createTeacher<TRes>
    implements CopyWith$Mutation$CreateTeacher$createTeacher<TRes> {
  _CopyWithImpl$Mutation$CreateTeacher$createTeacher(
    this._instance,
    this._then,
  );

  final Mutation$CreateTeacher$createTeacher _instance;

  final TRes Function(Mutation$CreateTeacher$createTeacher) _then;

  static const _undefined = {};

  TRes call({
    Object? createdUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateTeacher$createTeacher(
        createdUser: createdUser == _undefined || createdUser == null
            ? _instance.createdUser
            : (createdUser as Mutation$CreateTeacher$createTeacher$createdUser),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$CreateTeacher$createTeacher$createdUser<TRes>
      get createdUser {
    final local$createdUser = _instance.createdUser;
    return CopyWith$Mutation$CreateTeacher$createTeacher$createdUser(
        local$createdUser, (e) => call(createdUser: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateTeacher$createTeacher<TRes>
    implements CopyWith$Mutation$CreateTeacher$createTeacher<TRes> {
  _CopyWithStubImpl$Mutation$CreateTeacher$createTeacher(this._res);

  TRes _res;

  call({
    Mutation$CreateTeacher$createTeacher$createdUser? createdUser,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$CreateTeacher$createTeacher$createdUser<TRes>
      get createdUser =>
          CopyWith$Mutation$CreateTeacher$createTeacher$createdUser.stub(_res);
}

class Mutation$CreateTeacher$createTeacher$createdUser {
  Mutation$CreateTeacher$createTeacher$createdUser({
    required this.id,
    required this.$__typename,
  });

  factory Mutation$CreateTeacher$createTeacher$createdUser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateTeacher$createTeacher$createdUser(
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
    if (!(other is Mutation$CreateTeacher$createTeacher$createdUser) ||
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

extension UtilityExtension$Mutation$CreateTeacher$createTeacher$createdUser
    on Mutation$CreateTeacher$createTeacher$createdUser {
  CopyWith$Mutation$CreateTeacher$createTeacher$createdUser<
          Mutation$CreateTeacher$createTeacher$createdUser>
      get copyWith => CopyWith$Mutation$CreateTeacher$createTeacher$createdUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateTeacher$createTeacher$createdUser<TRes> {
  factory CopyWith$Mutation$CreateTeacher$createTeacher$createdUser(
    Mutation$CreateTeacher$createTeacher$createdUser instance,
    TRes Function(Mutation$CreateTeacher$createTeacher$createdUser) then,
  ) = _CopyWithImpl$Mutation$CreateTeacher$createTeacher$createdUser;

  factory CopyWith$Mutation$CreateTeacher$createTeacher$createdUser.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateTeacher$createTeacher$createdUser;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateTeacher$createTeacher$createdUser<TRes>
    implements CopyWith$Mutation$CreateTeacher$createTeacher$createdUser<TRes> {
  _CopyWithImpl$Mutation$CreateTeacher$createTeacher$createdUser(
    this._instance,
    this._then,
  );

  final Mutation$CreateTeacher$createTeacher$createdUser _instance;

  final TRes Function(Mutation$CreateTeacher$createTeacher$createdUser) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateTeacher$createTeacher$createdUser(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateTeacher$createTeacher$createdUser<TRes>
    implements CopyWith$Mutation$CreateTeacher$createTeacher$createdUser<TRes> {
  _CopyWithStubImpl$Mutation$CreateTeacher$createTeacher$createdUser(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$JoinClass {
  factory Variables$Mutation$JoinClass({required Input$JoinClassInput input}) =>
      Variables$Mutation$JoinClass._({
        r'input': input,
      });

  Variables$Mutation$JoinClass._(this._$data);

  factory Variables$Mutation$JoinClass.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$JoinClassInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$JoinClass._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$JoinClassInput get input => (_$data['input'] as Input$JoinClassInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$JoinClass<Variables$Mutation$JoinClass>
      get copyWith => CopyWith$Variables$Mutation$JoinClass(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$JoinClass) ||
        runtimeType != other.runtimeType) {
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
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$JoinClass<TRes> {
  factory CopyWith$Variables$Mutation$JoinClass(
    Variables$Mutation$JoinClass instance,
    TRes Function(Variables$Mutation$JoinClass) then,
  ) = _CopyWithImpl$Variables$Mutation$JoinClass;

  factory CopyWith$Variables$Mutation$JoinClass.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$JoinClass;

  TRes call({Input$JoinClassInput? input});
}

class _CopyWithImpl$Variables$Mutation$JoinClass<TRes>
    implements CopyWith$Variables$Mutation$JoinClass<TRes> {
  _CopyWithImpl$Variables$Mutation$JoinClass(
    this._instance,
    this._then,
  );

  final Variables$Mutation$JoinClass _instance;

  final TRes Function(Variables$Mutation$JoinClass) _then;

  static const _undefined = {};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$JoinClass._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$JoinClassInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$JoinClass<TRes>
    implements CopyWith$Variables$Mutation$JoinClass<TRes> {
  _CopyWithStubImpl$Variables$Mutation$JoinClass(this._res);

  TRes _res;

  call({Input$JoinClassInput? input}) => _res;
}

class Mutation$JoinClass {
  Mutation$JoinClass({
    required this.joinClass,
    required this.$__typename,
  });

  factory Mutation$JoinClass.fromJson(Map<String, dynamic> json) {
    final l$joinClass = json['joinClass'];
    final l$$__typename = json['__typename'];
    return Mutation$JoinClass(
      joinClass: Mutation$JoinClass$joinClass.fromJson(
          (l$joinClass as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$JoinClass$joinClass joinClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$joinClass = joinClass;
    _resultData['joinClass'] = l$joinClass.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$joinClass = joinClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$joinClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$JoinClass) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$joinClass = joinClass;
    final lOther$joinClass = other.joinClass;
    if (l$joinClass != lOther$joinClass) {
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

extension UtilityExtension$Mutation$JoinClass on Mutation$JoinClass {
  CopyWith$Mutation$JoinClass<Mutation$JoinClass> get copyWith =>
      CopyWith$Mutation$JoinClass(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$JoinClass<TRes> {
  factory CopyWith$Mutation$JoinClass(
    Mutation$JoinClass instance,
    TRes Function(Mutation$JoinClass) then,
  ) = _CopyWithImpl$Mutation$JoinClass;

  factory CopyWith$Mutation$JoinClass.stub(TRes res) =
      _CopyWithStubImpl$Mutation$JoinClass;

  TRes call({
    Mutation$JoinClass$joinClass? joinClass,
    String? $__typename,
  });
  CopyWith$Mutation$JoinClass$joinClass<TRes> get joinClass;
}

class _CopyWithImpl$Mutation$JoinClass<TRes>
    implements CopyWith$Mutation$JoinClass<TRes> {
  _CopyWithImpl$Mutation$JoinClass(
    this._instance,
    this._then,
  );

  final Mutation$JoinClass _instance;

  final TRes Function(Mutation$JoinClass) _then;

  static const _undefined = {};

  TRes call({
    Object? joinClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$JoinClass(
        joinClass: joinClass == _undefined || joinClass == null
            ? _instance.joinClass
            : (joinClass as Mutation$JoinClass$joinClass),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$JoinClass$joinClass<TRes> get joinClass {
    final local$joinClass = _instance.joinClass;
    return CopyWith$Mutation$JoinClass$joinClass(
        local$joinClass, (e) => call(joinClass: e));
  }
}

class _CopyWithStubImpl$Mutation$JoinClass<TRes>
    implements CopyWith$Mutation$JoinClass<TRes> {
  _CopyWithStubImpl$Mutation$JoinClass(this._res);

  TRes _res;

  call({
    Mutation$JoinClass$joinClass? joinClass,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$JoinClass$joinClass<TRes> get joinClass =>
      CopyWith$Mutation$JoinClass$joinClass.stub(_res);
}

const documentNodeMutationJoinClass = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'JoinClass'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'JoinClassInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'joinClass'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
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
            name: NameNode(value: 'name'),
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
Mutation$JoinClass _parserFn$Mutation$JoinClass(Map<String, dynamic> data) =>
    Mutation$JoinClass.fromJson(data);
typedef OnMutationCompleted$Mutation$JoinClass = FutureOr<void> Function(
  dynamic,
  Mutation$JoinClass?,
);

class Options$Mutation$JoinClass
    extends graphql.MutationOptions<Mutation$JoinClass> {
  Options$Mutation$JoinClass({
    String? operationName,
    required Variables$Mutation$JoinClass variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$JoinClass? onCompleted,
    graphql.OnMutationUpdate<Mutation$JoinClass>? update,
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
                    data == null ? null : _parserFn$Mutation$JoinClass(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationJoinClass,
          parserFn: _parserFn$Mutation$JoinClass,
        );

  final OnMutationCompleted$Mutation$JoinClass? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$JoinClass
    extends graphql.WatchQueryOptions<Mutation$JoinClass> {
  WatchOptions$Mutation$JoinClass({
    String? operationName,
    required Variables$Mutation$JoinClass variables,
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
          document: documentNodeMutationJoinClass,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$JoinClass,
        );
}

extension ClientExtension$Mutation$JoinClass on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$JoinClass>> mutate$JoinClass(
          Options$Mutation$JoinClass options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$JoinClass> watchMutation$JoinClass(
          WatchOptions$Mutation$JoinClass options) =>
      this.watchMutation(options);
}

class Mutation$JoinClass$joinClass {
  Mutation$JoinClass$joinClass({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Mutation$JoinClass$joinClass.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$JoinClass$joinClass(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$JoinClass$joinClass) ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$JoinClass$joinClass
    on Mutation$JoinClass$joinClass {
  CopyWith$Mutation$JoinClass$joinClass<Mutation$JoinClass$joinClass>
      get copyWith => CopyWith$Mutation$JoinClass$joinClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$JoinClass$joinClass<TRes> {
  factory CopyWith$Mutation$JoinClass$joinClass(
    Mutation$JoinClass$joinClass instance,
    TRes Function(Mutation$JoinClass$joinClass) then,
  ) = _CopyWithImpl$Mutation$JoinClass$joinClass;

  factory CopyWith$Mutation$JoinClass$joinClass.stub(TRes res) =
      _CopyWithStubImpl$Mutation$JoinClass$joinClass;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$JoinClass$joinClass<TRes>
    implements CopyWith$Mutation$JoinClass$joinClass<TRes> {
  _CopyWithImpl$Mutation$JoinClass$joinClass(
    this._instance,
    this._then,
  );

  final Mutation$JoinClass$joinClass _instance;

  final TRes Function(Mutation$JoinClass$joinClass) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$JoinClass$joinClass(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$JoinClass$joinClass<TRes>
    implements CopyWith$Mutation$JoinClass$joinClass<TRes> {
  _CopyWithStubImpl$Mutation$JoinClass$joinClass(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$CreateSchoolStudent {
  Mutation$CreateSchoolStudent({
    required this.createSchoolStudent,
    required this.$__typename,
  });

  factory Mutation$CreateSchoolStudent.fromJson(Map<String, dynamic> json) {
    final l$createSchoolStudent = json['createSchoolStudent'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateSchoolStudent(
      createSchoolStudent:
          Mutation$CreateSchoolStudent$createSchoolStudent.fromJson(
              (l$createSchoolStudent as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateSchoolStudent$createSchoolStudent createSchoolStudent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createSchoolStudent = createSchoolStudent;
    _resultData['createSchoolStudent'] = l$createSchoolStudent.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createSchoolStudent = createSchoolStudent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createSchoolStudent,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateSchoolStudent) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createSchoolStudent = createSchoolStudent;
    final lOther$createSchoolStudent = other.createSchoolStudent;
    if (l$createSchoolStudent != lOther$createSchoolStudent) {
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

extension UtilityExtension$Mutation$CreateSchoolStudent
    on Mutation$CreateSchoolStudent {
  CopyWith$Mutation$CreateSchoolStudent<Mutation$CreateSchoolStudent>
      get copyWith => CopyWith$Mutation$CreateSchoolStudent(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateSchoolStudent<TRes> {
  factory CopyWith$Mutation$CreateSchoolStudent(
    Mutation$CreateSchoolStudent instance,
    TRes Function(Mutation$CreateSchoolStudent) then,
  ) = _CopyWithImpl$Mutation$CreateSchoolStudent;

  factory CopyWith$Mutation$CreateSchoolStudent.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateSchoolStudent;

  TRes call({
    Mutation$CreateSchoolStudent$createSchoolStudent? createSchoolStudent,
    String? $__typename,
  });
  CopyWith$Mutation$CreateSchoolStudent$createSchoolStudent<TRes>
      get createSchoolStudent;
}

class _CopyWithImpl$Mutation$CreateSchoolStudent<TRes>
    implements CopyWith$Mutation$CreateSchoolStudent<TRes> {
  _CopyWithImpl$Mutation$CreateSchoolStudent(
    this._instance,
    this._then,
  );

  final Mutation$CreateSchoolStudent _instance;

  final TRes Function(Mutation$CreateSchoolStudent) _then;

  static const _undefined = {};

  TRes call({
    Object? createSchoolStudent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateSchoolStudent(
        createSchoolStudent:
            createSchoolStudent == _undefined || createSchoolStudent == null
                ? _instance.createSchoolStudent
                : (createSchoolStudent
                    as Mutation$CreateSchoolStudent$createSchoolStudent),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$CreateSchoolStudent$createSchoolStudent<TRes>
      get createSchoolStudent {
    final local$createSchoolStudent = _instance.createSchoolStudent;
    return CopyWith$Mutation$CreateSchoolStudent$createSchoolStudent(
        local$createSchoolStudent, (e) => call(createSchoolStudent: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateSchoolStudent<TRes>
    implements CopyWith$Mutation$CreateSchoolStudent<TRes> {
  _CopyWithStubImpl$Mutation$CreateSchoolStudent(this._res);

  TRes _res;

  call({
    Mutation$CreateSchoolStudent$createSchoolStudent? createSchoolStudent,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$CreateSchoolStudent$createSchoolStudent<TRes>
      get createSchoolStudent =>
          CopyWith$Mutation$CreateSchoolStudent$createSchoolStudent.stub(_res);
}

const documentNodeMutationCreateSchoolStudent = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateSchoolStudent'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createSchoolStudent'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'user'),
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
Mutation$CreateSchoolStudent _parserFn$Mutation$CreateSchoolStudent(
        Map<String, dynamic> data) =>
    Mutation$CreateSchoolStudent.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateSchoolStudent = FutureOr<void>
    Function(
  dynamic,
  Mutation$CreateSchoolStudent?,
);

class Options$Mutation$CreateSchoolStudent
    extends graphql.MutationOptions<Mutation$CreateSchoolStudent> {
  Options$Mutation$CreateSchoolStudent({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateSchoolStudent? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateSchoolStudent>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
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
                        : _parserFn$Mutation$CreateSchoolStudent(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateSchoolStudent,
          parserFn: _parserFn$Mutation$CreateSchoolStudent,
        );

  final OnMutationCompleted$Mutation$CreateSchoolStudent? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateSchoolStudent
    extends graphql.WatchQueryOptions<Mutation$CreateSchoolStudent> {
  WatchOptions$Mutation$CreateSchoolStudent({
    String? operationName,
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
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationCreateSchoolStudent,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateSchoolStudent,
        );
}

extension ClientExtension$Mutation$CreateSchoolStudent
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateSchoolStudent>>
      mutate$CreateSchoolStudent(
              [Options$Mutation$CreateSchoolStudent? options]) async =>
          await this.mutate(options ?? Options$Mutation$CreateSchoolStudent());
  graphql.ObservableQuery<Mutation$CreateSchoolStudent>
      watchMutation$CreateSchoolStudent(
              [WatchOptions$Mutation$CreateSchoolStudent? options]) =>
          this.watchMutation(
              options ?? WatchOptions$Mutation$CreateSchoolStudent());
}

class Mutation$CreateSchoolStudent$createSchoolStudent {
  Mutation$CreateSchoolStudent$createSchoolStudent({
    required this.user,
    required this.$__typename,
  });

  factory Mutation$CreateSchoolStudent$createSchoolStudent.fromJson(
      Map<String, dynamic> json) {
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateSchoolStudent$createSchoolStudent(
      user: Mutation$CreateSchoolStudent$createSchoolStudent$user.fromJson(
          (l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateSchoolStudent$createSchoolStudent$user user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateSchoolStudent$createSchoolStudent) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Mutation$CreateSchoolStudent$createSchoolStudent
    on Mutation$CreateSchoolStudent$createSchoolStudent {
  CopyWith$Mutation$CreateSchoolStudent$createSchoolStudent<
          Mutation$CreateSchoolStudent$createSchoolStudent>
      get copyWith => CopyWith$Mutation$CreateSchoolStudent$createSchoolStudent(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateSchoolStudent$createSchoolStudent<TRes> {
  factory CopyWith$Mutation$CreateSchoolStudent$createSchoolStudent(
    Mutation$CreateSchoolStudent$createSchoolStudent instance,
    TRes Function(Mutation$CreateSchoolStudent$createSchoolStudent) then,
  ) = _CopyWithImpl$Mutation$CreateSchoolStudent$createSchoolStudent;

  factory CopyWith$Mutation$CreateSchoolStudent$createSchoolStudent.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateSchoolStudent$createSchoolStudent;

  TRes call({
    Mutation$CreateSchoolStudent$createSchoolStudent$user? user,
    String? $__typename,
  });
  CopyWith$Mutation$CreateSchoolStudent$createSchoolStudent$user<TRes> get user;
}

class _CopyWithImpl$Mutation$CreateSchoolStudent$createSchoolStudent<TRes>
    implements CopyWith$Mutation$CreateSchoolStudent$createSchoolStudent<TRes> {
  _CopyWithImpl$Mutation$CreateSchoolStudent$createSchoolStudent(
    this._instance,
    this._then,
  );

  final Mutation$CreateSchoolStudent$createSchoolStudent _instance;

  final TRes Function(Mutation$CreateSchoolStudent$createSchoolStudent) _then;

  static const _undefined = {};

  TRes call({
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateSchoolStudent$createSchoolStudent(
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Mutation$CreateSchoolStudent$createSchoolStudent$user),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$CreateSchoolStudent$createSchoolStudent$user<TRes>
      get user {
    final local$user = _instance.user;
    return CopyWith$Mutation$CreateSchoolStudent$createSchoolStudent$user(
        local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateSchoolStudent$createSchoolStudent<TRes>
    implements CopyWith$Mutation$CreateSchoolStudent$createSchoolStudent<TRes> {
  _CopyWithStubImpl$Mutation$CreateSchoolStudent$createSchoolStudent(this._res);

  TRes _res;

  call({
    Mutation$CreateSchoolStudent$createSchoolStudent$user? user,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$CreateSchoolStudent$createSchoolStudent$user<TRes>
      get user =>
          CopyWith$Mutation$CreateSchoolStudent$createSchoolStudent$user.stub(
              _res);
}

class Mutation$CreateSchoolStudent$createSchoolStudent$user {
  Mutation$CreateSchoolStudent$createSchoolStudent$user({
    required this.id,
    required this.$__typename,
  });

  factory Mutation$CreateSchoolStudent$createSchoolStudent$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateSchoolStudent$createSchoolStudent$user(
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
    if (!(other is Mutation$CreateSchoolStudent$createSchoolStudent$user) ||
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

extension UtilityExtension$Mutation$CreateSchoolStudent$createSchoolStudent$user
    on Mutation$CreateSchoolStudent$createSchoolStudent$user {
  CopyWith$Mutation$CreateSchoolStudent$createSchoolStudent$user<
          Mutation$CreateSchoolStudent$createSchoolStudent$user>
      get copyWith =>
          CopyWith$Mutation$CreateSchoolStudent$createSchoolStudent$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateSchoolStudent$createSchoolStudent$user<
    TRes> {
  factory CopyWith$Mutation$CreateSchoolStudent$createSchoolStudent$user(
    Mutation$CreateSchoolStudent$createSchoolStudent$user instance,
    TRes Function(Mutation$CreateSchoolStudent$createSchoolStudent$user) then,
  ) = _CopyWithImpl$Mutation$CreateSchoolStudent$createSchoolStudent$user;

  factory CopyWith$Mutation$CreateSchoolStudent$createSchoolStudent$user.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateSchoolStudent$createSchoolStudent$user;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateSchoolStudent$createSchoolStudent$user<TRes>
    implements
        CopyWith$Mutation$CreateSchoolStudent$createSchoolStudent$user<TRes> {
  _CopyWithImpl$Mutation$CreateSchoolStudent$createSchoolStudent$user(
    this._instance,
    this._then,
  );

  final Mutation$CreateSchoolStudent$createSchoolStudent$user _instance;

  final TRes Function(Mutation$CreateSchoolStudent$createSchoolStudent$user)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateSchoolStudent$createSchoolStudent$user(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateSchoolStudent$createSchoolStudent$user<
        TRes>
    implements
        CopyWith$Mutation$CreateSchoolStudent$createSchoolStudent$user<TRes> {
  _CopyWithStubImpl$Mutation$CreateSchoolStudent$createSchoolStudent$user(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetStudentClasses {
  factory Variables$Query$GetStudentClasses({required String studentId}) =>
      Variables$Query$GetStudentClasses._({
        r'studentId': studentId,
      });

  Variables$Query$GetStudentClasses._(this._$data);

  factory Variables$Query$GetStudentClasses.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$studentId = data['studentId'];
    result$data['studentId'] = (l$studentId as String);
    return Variables$Query$GetStudentClasses._(result$data);
  }

  Map<String, dynamic> _$data;

  String get studentId => (_$data['studentId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$studentId = studentId;
    result$data['studentId'] = l$studentId;
    return result$data;
  }

  CopyWith$Variables$Query$GetStudentClasses<Variables$Query$GetStudentClasses>
      get copyWith => CopyWith$Variables$Query$GetStudentClasses(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetStudentClasses) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$studentId = studentId;
    final lOther$studentId = other.studentId;
    if (l$studentId != lOther$studentId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$studentId = studentId;
    return Object.hashAll([l$studentId]);
  }
}

abstract class CopyWith$Variables$Query$GetStudentClasses<TRes> {
  factory CopyWith$Variables$Query$GetStudentClasses(
    Variables$Query$GetStudentClasses instance,
    TRes Function(Variables$Query$GetStudentClasses) then,
  ) = _CopyWithImpl$Variables$Query$GetStudentClasses;

  factory CopyWith$Variables$Query$GetStudentClasses.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetStudentClasses;

  TRes call({String? studentId});
}

class _CopyWithImpl$Variables$Query$GetStudentClasses<TRes>
    implements CopyWith$Variables$Query$GetStudentClasses<TRes> {
  _CopyWithImpl$Variables$Query$GetStudentClasses(
    this._instance,
    this._then,
  );

  final Variables$Query$GetStudentClasses _instance;

  final TRes Function(Variables$Query$GetStudentClasses) _then;

  static const _undefined = {};

  TRes call({Object? studentId = _undefined}) =>
      _then(Variables$Query$GetStudentClasses._({
        ..._instance._$data,
        if (studentId != _undefined && studentId != null)
          'studentId': (studentId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetStudentClasses<TRes>
    implements CopyWith$Variables$Query$GetStudentClasses<TRes> {
  _CopyWithStubImpl$Variables$Query$GetStudentClasses(this._res);

  TRes _res;

  call({String? studentId}) => _res;
}

class Query$GetStudentClasses {
  Query$GetStudentClasses({
    required this.getStudentClasses,
    required this.$__typename,
  });

  factory Query$GetStudentClasses.fromJson(Map<String, dynamic> json) {
    final l$getStudentClasses = json['getStudentClasses'];
    final l$$__typename = json['__typename'];
    return Query$GetStudentClasses(
      getStudentClasses: Query$GetStudentClasses$getStudentClasses.fromJson(
          (l$getStudentClasses as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetStudentClasses$getStudentClasses getStudentClasses;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getStudentClasses = getStudentClasses;
    _resultData['getStudentClasses'] = l$getStudentClasses.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getStudentClasses = getStudentClasses;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$getStudentClasses,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetStudentClasses) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$getStudentClasses = getStudentClasses;
    final lOther$getStudentClasses = other.getStudentClasses;
    if (l$getStudentClasses != lOther$getStudentClasses) {
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

extension UtilityExtension$Query$GetStudentClasses on Query$GetStudentClasses {
  CopyWith$Query$GetStudentClasses<Query$GetStudentClasses> get copyWith =>
      CopyWith$Query$GetStudentClasses(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStudentClasses<TRes> {
  factory CopyWith$Query$GetStudentClasses(
    Query$GetStudentClasses instance,
    TRes Function(Query$GetStudentClasses) then,
  ) = _CopyWithImpl$Query$GetStudentClasses;

  factory CopyWith$Query$GetStudentClasses.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStudentClasses;

  TRes call({
    Query$GetStudentClasses$getStudentClasses? getStudentClasses,
    String? $__typename,
  });
  CopyWith$Query$GetStudentClasses$getStudentClasses<TRes>
      get getStudentClasses;
}

class _CopyWithImpl$Query$GetStudentClasses<TRes>
    implements CopyWith$Query$GetStudentClasses<TRes> {
  _CopyWithImpl$Query$GetStudentClasses(
    this._instance,
    this._then,
  );

  final Query$GetStudentClasses _instance;

  final TRes Function(Query$GetStudentClasses) _then;

  static const _undefined = {};

  TRes call({
    Object? getStudentClasses = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetStudentClasses(
        getStudentClasses: getStudentClasses == _undefined ||
                getStudentClasses == null
            ? _instance.getStudentClasses
            : (getStudentClasses as Query$GetStudentClasses$getStudentClasses),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetStudentClasses$getStudentClasses<TRes>
      get getStudentClasses {
    final local$getStudentClasses = _instance.getStudentClasses;
    return CopyWith$Query$GetStudentClasses$getStudentClasses(
        local$getStudentClasses, (e) => call(getStudentClasses: e));
  }
}

class _CopyWithStubImpl$Query$GetStudentClasses<TRes>
    implements CopyWith$Query$GetStudentClasses<TRes> {
  _CopyWithStubImpl$Query$GetStudentClasses(this._res);

  TRes _res;

  call({
    Query$GetStudentClasses$getStudentClasses? getStudentClasses,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetStudentClasses$getStudentClasses<TRes>
      get getStudentClasses =>
          CopyWith$Query$GetStudentClasses$getStudentClasses.stub(_res);
}

const documentNodeQueryGetStudentClasses = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetStudentClasses'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'studentId')),
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
        name: NameNode(value: 'student'),
        alias: NameNode(value: 'getStudentClasses'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'studentId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'allClasses'),
            alias: NameNode(value: 'studentClasses'),
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$GetStudentClasses _parserFn$Query$GetStudentClasses(
        Map<String, dynamic> data) =>
    Query$GetStudentClasses.fromJson(data);

class Options$Query$GetStudentClasses
    extends graphql.QueryOptions<Query$GetStudentClasses> {
  Options$Query$GetStudentClasses({
    String? operationName,
    required Variables$Query$GetStudentClasses variables,
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
          document: documentNodeQueryGetStudentClasses,
          parserFn: _parserFn$Query$GetStudentClasses,
        );
}

class WatchOptions$Query$GetStudentClasses
    extends graphql.WatchQueryOptions<Query$GetStudentClasses> {
  WatchOptions$Query$GetStudentClasses({
    String? operationName,
    required Variables$Query$GetStudentClasses variables,
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
          document: documentNodeQueryGetStudentClasses,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetStudentClasses,
        );
}

class FetchMoreOptions$Query$GetStudentClasses
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetStudentClasses({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetStudentClasses variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetStudentClasses,
        );
}

extension ClientExtension$Query$GetStudentClasses on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetStudentClasses>> query$GetStudentClasses(
          Options$Query$GetStudentClasses options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetStudentClasses> watchQuery$GetStudentClasses(
          WatchOptions$Query$GetStudentClasses options) =>
      this.watchQuery(options);
  void writeQuery$GetStudentClasses({
    required Query$GetStudentClasses data,
    required Variables$Query$GetStudentClasses variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetStudentClasses),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetStudentClasses? readQuery$GetStudentClasses({
    required Variables$Query$GetStudentClasses variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetStudentClasses),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetStudentClasses.fromJson(result);
  }
}

class Query$GetStudentClasses$getStudentClasses {
  Query$GetStudentClasses$getStudentClasses({
    required this.studentClasses,
    required this.$__typename,
  });

  factory Query$GetStudentClasses$getStudentClasses.fromJson(
      Map<String, dynamic> json) {
    final l$studentClasses = json['studentClasses'];
    final l$$__typename = json['__typename'];
    return Query$GetStudentClasses$getStudentClasses(
      studentClasses: (l$studentClasses as List<dynamic>)
          .map((e) =>
              Query$GetStudentClasses$getStudentClasses$studentClasses.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetStudentClasses$getStudentClasses$studentClasses>
      studentClasses;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$studentClasses = studentClasses;
    _resultData['studentClasses'] =
        l$studentClasses.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$studentClasses = studentClasses;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$studentClasses.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetStudentClasses$getStudentClasses) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$studentClasses = studentClasses;
    final lOther$studentClasses = other.studentClasses;
    if (l$studentClasses.length != lOther$studentClasses.length) {
      return false;
    }
    for (int i = 0; i < l$studentClasses.length; i++) {
      final l$studentClasses$entry = l$studentClasses[i];
      final lOther$studentClasses$entry = lOther$studentClasses[i];
      if (l$studentClasses$entry != lOther$studentClasses$entry) {
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

extension UtilityExtension$Query$GetStudentClasses$getStudentClasses
    on Query$GetStudentClasses$getStudentClasses {
  CopyWith$Query$GetStudentClasses$getStudentClasses<
          Query$GetStudentClasses$getStudentClasses>
      get copyWith => CopyWith$Query$GetStudentClasses$getStudentClasses(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetStudentClasses$getStudentClasses<TRes> {
  factory CopyWith$Query$GetStudentClasses$getStudentClasses(
    Query$GetStudentClasses$getStudentClasses instance,
    TRes Function(Query$GetStudentClasses$getStudentClasses) then,
  ) = _CopyWithImpl$Query$GetStudentClasses$getStudentClasses;

  factory CopyWith$Query$GetStudentClasses$getStudentClasses.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStudentClasses$getStudentClasses;

  TRes call({
    List<Query$GetStudentClasses$getStudentClasses$studentClasses>?
        studentClasses,
    String? $__typename,
  });
  TRes studentClasses(
      Iterable<Query$GetStudentClasses$getStudentClasses$studentClasses> Function(
              Iterable<
                  CopyWith$Query$GetStudentClasses$getStudentClasses$studentClasses<
                      Query$GetStudentClasses$getStudentClasses$studentClasses>>)
          _fn);
}

class _CopyWithImpl$Query$GetStudentClasses$getStudentClasses<TRes>
    implements CopyWith$Query$GetStudentClasses$getStudentClasses<TRes> {
  _CopyWithImpl$Query$GetStudentClasses$getStudentClasses(
    this._instance,
    this._then,
  );

  final Query$GetStudentClasses$getStudentClasses _instance;

  final TRes Function(Query$GetStudentClasses$getStudentClasses) _then;

  static const _undefined = {};

  TRes call({
    Object? studentClasses = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetStudentClasses$getStudentClasses(
        studentClasses: studentClasses == _undefined || studentClasses == null
            ? _instance.studentClasses
            : (studentClasses as List<
                Query$GetStudentClasses$getStudentClasses$studentClasses>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes studentClasses(
          Iterable<Query$GetStudentClasses$getStudentClasses$studentClasses> Function(
                  Iterable<
                      CopyWith$Query$GetStudentClasses$getStudentClasses$studentClasses<
                          Query$GetStudentClasses$getStudentClasses$studentClasses>>)
              _fn) =>
      call(
          studentClasses: _fn(_instance.studentClasses.map((e) =>
              CopyWith$Query$GetStudentClasses$getStudentClasses$studentClasses(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetStudentClasses$getStudentClasses<TRes>
    implements CopyWith$Query$GetStudentClasses$getStudentClasses<TRes> {
  _CopyWithStubImpl$Query$GetStudentClasses$getStudentClasses(this._res);

  TRes _res;

  call({
    List<Query$GetStudentClasses$getStudentClasses$studentClasses>?
        studentClasses,
    String? $__typename,
  }) =>
      _res;
  studentClasses(_fn) => _res;
}

class Query$GetStudentClasses$getStudentClasses$studentClasses {
  Query$GetStudentClasses$getStudentClasses$studentClasses({
    required this.id,
    required this.$__typename,
  });

  factory Query$GetStudentClasses$getStudentClasses$studentClasses.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetStudentClasses$getStudentClasses$studentClasses(
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
    if (!(other is Query$GetStudentClasses$getStudentClasses$studentClasses) ||
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

extension UtilityExtension$Query$GetStudentClasses$getStudentClasses$studentClasses
    on Query$GetStudentClasses$getStudentClasses$studentClasses {
  CopyWith$Query$GetStudentClasses$getStudentClasses$studentClasses<
          Query$GetStudentClasses$getStudentClasses$studentClasses>
      get copyWith =>
          CopyWith$Query$GetStudentClasses$getStudentClasses$studentClasses(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetStudentClasses$getStudentClasses$studentClasses<
    TRes> {
  factory CopyWith$Query$GetStudentClasses$getStudentClasses$studentClasses(
    Query$GetStudentClasses$getStudentClasses$studentClasses instance,
    TRes Function(Query$GetStudentClasses$getStudentClasses$studentClasses)
        then,
  ) = _CopyWithImpl$Query$GetStudentClasses$getStudentClasses$studentClasses;

  factory CopyWith$Query$GetStudentClasses$getStudentClasses$studentClasses.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetStudentClasses$getStudentClasses$studentClasses;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetStudentClasses$getStudentClasses$studentClasses<
        TRes>
    implements
        CopyWith$Query$GetStudentClasses$getStudentClasses$studentClasses<
            TRes> {
  _CopyWithImpl$Query$GetStudentClasses$getStudentClasses$studentClasses(
    this._instance,
    this._then,
  );

  final Query$GetStudentClasses$getStudentClasses$studentClasses _instance;

  final TRes Function(Query$GetStudentClasses$getStudentClasses$studentClasses)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetStudentClasses$getStudentClasses$studentClasses(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetStudentClasses$getStudentClasses$studentClasses<
        TRes>
    implements
        CopyWith$Query$GetStudentClasses$getStudentClasses$studentClasses<
            TRes> {
  _CopyWithStubImpl$Query$GetStudentClasses$getStudentClasses$studentClasses(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetStudentTeacherId {
  factory Variables$Query$GetStudentTeacherId({required String studentId}) =>
      Variables$Query$GetStudentTeacherId._({
        r'studentId': studentId,
      });

  Variables$Query$GetStudentTeacherId._(this._$data);

  factory Variables$Query$GetStudentTeacherId.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$studentId = data['studentId'];
    result$data['studentId'] = (l$studentId as String);
    return Variables$Query$GetStudentTeacherId._(result$data);
  }

  Map<String, dynamic> _$data;

  String get studentId => (_$data['studentId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$studentId = studentId;
    result$data['studentId'] = l$studentId;
    return result$data;
  }

  CopyWith$Variables$Query$GetStudentTeacherId<
          Variables$Query$GetStudentTeacherId>
      get copyWith => CopyWith$Variables$Query$GetStudentTeacherId(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetStudentTeacherId) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$studentId = studentId;
    final lOther$studentId = other.studentId;
    if (l$studentId != lOther$studentId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$studentId = studentId;
    return Object.hashAll([l$studentId]);
  }
}

abstract class CopyWith$Variables$Query$GetStudentTeacherId<TRes> {
  factory CopyWith$Variables$Query$GetStudentTeacherId(
    Variables$Query$GetStudentTeacherId instance,
    TRes Function(Variables$Query$GetStudentTeacherId) then,
  ) = _CopyWithImpl$Variables$Query$GetStudentTeacherId;

  factory CopyWith$Variables$Query$GetStudentTeacherId.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetStudentTeacherId;

  TRes call({String? studentId});
}

class _CopyWithImpl$Variables$Query$GetStudentTeacherId<TRes>
    implements CopyWith$Variables$Query$GetStudentTeacherId<TRes> {
  _CopyWithImpl$Variables$Query$GetStudentTeacherId(
    this._instance,
    this._then,
  );

  final Variables$Query$GetStudentTeacherId _instance;

  final TRes Function(Variables$Query$GetStudentTeacherId) _then;

  static const _undefined = {};

  TRes call({Object? studentId = _undefined}) =>
      _then(Variables$Query$GetStudentTeacherId._({
        ..._instance._$data,
        if (studentId != _undefined && studentId != null)
          'studentId': (studentId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetStudentTeacherId<TRes>
    implements CopyWith$Variables$Query$GetStudentTeacherId<TRes> {
  _CopyWithStubImpl$Variables$Query$GetStudentTeacherId(this._res);

  TRes _res;

  call({String? studentId}) => _res;
}

class Query$GetStudentTeacherId {
  Query$GetStudentTeacherId({
    required this.studentTeacherId,
    required this.$__typename,
  });

  factory Query$GetStudentTeacherId.fromJson(Map<String, dynamic> json) {
    final l$studentTeacherId = json['studentTeacherId'];
    final l$$__typename = json['__typename'];
    return Query$GetStudentTeacherId(
      studentTeacherId: Query$GetStudentTeacherId$studentTeacherId.fromJson(
          (l$studentTeacherId as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetStudentTeacherId$studentTeacherId studentTeacherId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$studentTeacherId = studentTeacherId;
    _resultData['studentTeacherId'] = l$studentTeacherId.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$studentTeacherId = studentTeacherId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$studentTeacherId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetStudentTeacherId) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$studentTeacherId = studentTeacherId;
    final lOther$studentTeacherId = other.studentTeacherId;
    if (l$studentTeacherId != lOther$studentTeacherId) {
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

extension UtilityExtension$Query$GetStudentTeacherId
    on Query$GetStudentTeacherId {
  CopyWith$Query$GetStudentTeacherId<Query$GetStudentTeacherId> get copyWith =>
      CopyWith$Query$GetStudentTeacherId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStudentTeacherId<TRes> {
  factory CopyWith$Query$GetStudentTeacherId(
    Query$GetStudentTeacherId instance,
    TRes Function(Query$GetStudentTeacherId) then,
  ) = _CopyWithImpl$Query$GetStudentTeacherId;

  factory CopyWith$Query$GetStudentTeacherId.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStudentTeacherId;

  TRes call({
    Query$GetStudentTeacherId$studentTeacherId? studentTeacherId,
    String? $__typename,
  });
  CopyWith$Query$GetStudentTeacherId$studentTeacherId<TRes>
      get studentTeacherId;
}

class _CopyWithImpl$Query$GetStudentTeacherId<TRes>
    implements CopyWith$Query$GetStudentTeacherId<TRes> {
  _CopyWithImpl$Query$GetStudentTeacherId(
    this._instance,
    this._then,
  );

  final Query$GetStudentTeacherId _instance;

  final TRes Function(Query$GetStudentTeacherId) _then;

  static const _undefined = {};

  TRes call({
    Object? studentTeacherId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetStudentTeacherId(
        studentTeacherId: studentTeacherId == _undefined ||
                studentTeacherId == null
            ? _instance.studentTeacherId
            : (studentTeacherId as Query$GetStudentTeacherId$studentTeacherId),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetStudentTeacherId$studentTeacherId<TRes>
      get studentTeacherId {
    final local$studentTeacherId = _instance.studentTeacherId;
    return CopyWith$Query$GetStudentTeacherId$studentTeacherId(
        local$studentTeacherId, (e) => call(studentTeacherId: e));
  }
}

class _CopyWithStubImpl$Query$GetStudentTeacherId<TRes>
    implements CopyWith$Query$GetStudentTeacherId<TRes> {
  _CopyWithStubImpl$Query$GetStudentTeacherId(this._res);

  TRes _res;

  call({
    Query$GetStudentTeacherId$studentTeacherId? studentTeacherId,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetStudentTeacherId$studentTeacherId<TRes>
      get studentTeacherId =>
          CopyWith$Query$GetStudentTeacherId$studentTeacherId.stub(_res);
}

const documentNodeQueryGetStudentTeacherId = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetStudentTeacherId'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'studentId')),
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
        name: NameNode(value: 'student'),
        alias: NameNode(value: 'studentTeacherId'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'studentId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'allClasses'),
            alias: NameNode(value: 'studentClass'),
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'teachers'),
                alias: NameNode(value: 'studentTeacher'),
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'user'),
                    alias: NameNode(value: 'studentTeacherUser'),
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
Query$GetStudentTeacherId _parserFn$Query$GetStudentTeacherId(
        Map<String, dynamic> data) =>
    Query$GetStudentTeacherId.fromJson(data);

class Options$Query$GetStudentTeacherId
    extends graphql.QueryOptions<Query$GetStudentTeacherId> {
  Options$Query$GetStudentTeacherId({
    String? operationName,
    required Variables$Query$GetStudentTeacherId variables,
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
          document: documentNodeQueryGetStudentTeacherId,
          parserFn: _parserFn$Query$GetStudentTeacherId,
        );
}

class WatchOptions$Query$GetStudentTeacherId
    extends graphql.WatchQueryOptions<Query$GetStudentTeacherId> {
  WatchOptions$Query$GetStudentTeacherId({
    String? operationName,
    required Variables$Query$GetStudentTeacherId variables,
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
          document: documentNodeQueryGetStudentTeacherId,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetStudentTeacherId,
        );
}

class FetchMoreOptions$Query$GetStudentTeacherId
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetStudentTeacherId({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetStudentTeacherId variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetStudentTeacherId,
        );
}

extension ClientExtension$Query$GetStudentTeacherId on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetStudentTeacherId>>
      query$GetStudentTeacherId(
              Options$Query$GetStudentTeacherId options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetStudentTeacherId>
      watchQuery$GetStudentTeacherId(
              WatchOptions$Query$GetStudentTeacherId options) =>
          this.watchQuery(options);
  void writeQuery$GetStudentTeacherId({
    required Query$GetStudentTeacherId data,
    required Variables$Query$GetStudentTeacherId variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetStudentTeacherId),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetStudentTeacherId? readQuery$GetStudentTeacherId({
    required Variables$Query$GetStudentTeacherId variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetStudentTeacherId),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetStudentTeacherId.fromJson(result);
  }
}

class Query$GetStudentTeacherId$studentTeacherId {
  Query$GetStudentTeacherId$studentTeacherId({
    required this.studentClass,
    required this.$__typename,
  });

  factory Query$GetStudentTeacherId$studentTeacherId.fromJson(
      Map<String, dynamic> json) {
    final l$studentClass = json['studentClass'];
    final l$$__typename = json['__typename'];
    return Query$GetStudentTeacherId$studentTeacherId(
      studentClass: (l$studentClass as List<dynamic>)
          .map((e) =>
              Query$GetStudentTeacherId$studentTeacherId$studentClass.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetStudentTeacherId$studentTeacherId$studentClass>
      studentClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$studentClass = studentClass;
    _resultData['studentClass'] =
        l$studentClass.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$studentClass = studentClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$studentClass.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetStudentTeacherId$studentTeacherId) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$studentClass = studentClass;
    final lOther$studentClass = other.studentClass;
    if (l$studentClass.length != lOther$studentClass.length) {
      return false;
    }
    for (int i = 0; i < l$studentClass.length; i++) {
      final l$studentClass$entry = l$studentClass[i];
      final lOther$studentClass$entry = lOther$studentClass[i];
      if (l$studentClass$entry != lOther$studentClass$entry) {
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

extension UtilityExtension$Query$GetStudentTeacherId$studentTeacherId
    on Query$GetStudentTeacherId$studentTeacherId {
  CopyWith$Query$GetStudentTeacherId$studentTeacherId<
          Query$GetStudentTeacherId$studentTeacherId>
      get copyWith => CopyWith$Query$GetStudentTeacherId$studentTeacherId(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetStudentTeacherId$studentTeacherId<TRes> {
  factory CopyWith$Query$GetStudentTeacherId$studentTeacherId(
    Query$GetStudentTeacherId$studentTeacherId instance,
    TRes Function(Query$GetStudentTeacherId$studentTeacherId) then,
  ) = _CopyWithImpl$Query$GetStudentTeacherId$studentTeacherId;

  factory CopyWith$Query$GetStudentTeacherId$studentTeacherId.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStudentTeacherId$studentTeacherId;

  TRes call({
    List<Query$GetStudentTeacherId$studentTeacherId$studentClass>? studentClass,
    String? $__typename,
  });
  TRes studentClass(
      Iterable<Query$GetStudentTeacherId$studentTeacherId$studentClass> Function(
              Iterable<
                  CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass<
                      Query$GetStudentTeacherId$studentTeacherId$studentClass>>)
          _fn);
}

class _CopyWithImpl$Query$GetStudentTeacherId$studentTeacherId<TRes>
    implements CopyWith$Query$GetStudentTeacherId$studentTeacherId<TRes> {
  _CopyWithImpl$Query$GetStudentTeacherId$studentTeacherId(
    this._instance,
    this._then,
  );

  final Query$GetStudentTeacherId$studentTeacherId _instance;

  final TRes Function(Query$GetStudentTeacherId$studentTeacherId) _then;

  static const _undefined = {};

  TRes call({
    Object? studentClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetStudentTeacherId$studentTeacherId(
        studentClass: studentClass == _undefined || studentClass == null
            ? _instance.studentClass
            : (studentClass as List<
                Query$GetStudentTeacherId$studentTeacherId$studentClass>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes studentClass(
          Iterable<Query$GetStudentTeacherId$studentTeacherId$studentClass> Function(
                  Iterable<
                      CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass<
                          Query$GetStudentTeacherId$studentTeacherId$studentClass>>)
              _fn) =>
      call(
          studentClass: _fn(_instance.studentClass.map((e) =>
              CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetStudentTeacherId$studentTeacherId<TRes>
    implements CopyWith$Query$GetStudentTeacherId$studentTeacherId<TRes> {
  _CopyWithStubImpl$Query$GetStudentTeacherId$studentTeacherId(this._res);

  TRes _res;

  call({
    List<Query$GetStudentTeacherId$studentTeacherId$studentClass>? studentClass,
    String? $__typename,
  }) =>
      _res;
  studentClass(_fn) => _res;
}

class Query$GetStudentTeacherId$studentTeacherId$studentClass {
  Query$GetStudentTeacherId$studentTeacherId$studentClass({
    required this.studentTeacher,
    required this.$__typename,
  });

  factory Query$GetStudentTeacherId$studentTeacherId$studentClass.fromJson(
      Map<String, dynamic> json) {
    final l$studentTeacher = json['studentTeacher'];
    final l$$__typename = json['__typename'];
    return Query$GetStudentTeacherId$studentTeacherId$studentClass(
      studentTeacher: (l$studentTeacher as List<dynamic>)
          .map((e) =>
              Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
          Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher>
      studentTeacher;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$studentTeacher = studentTeacher;
    _resultData['studentTeacher'] =
        l$studentTeacher.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$studentTeacher = studentTeacher;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$studentTeacher.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetStudentTeacherId$studentTeacherId$studentClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$studentTeacher = studentTeacher;
    final lOther$studentTeacher = other.studentTeacher;
    if (l$studentTeacher.length != lOther$studentTeacher.length) {
      return false;
    }
    for (int i = 0; i < l$studentTeacher.length; i++) {
      final l$studentTeacher$entry = l$studentTeacher[i];
      final lOther$studentTeacher$entry = lOther$studentTeacher[i];
      if (l$studentTeacher$entry != lOther$studentTeacher$entry) {
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

extension UtilityExtension$Query$GetStudentTeacherId$studentTeacherId$studentClass
    on Query$GetStudentTeacherId$studentTeacherId$studentClass {
  CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass<
          Query$GetStudentTeacherId$studentTeacherId$studentClass>
      get copyWith =>
          CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass<
    TRes> {
  factory CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass(
    Query$GetStudentTeacherId$studentTeacherId$studentClass instance,
    TRes Function(Query$GetStudentTeacherId$studentTeacherId$studentClass) then,
  ) = _CopyWithImpl$Query$GetStudentTeacherId$studentTeacherId$studentClass;

  factory CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetStudentTeacherId$studentTeacherId$studentClass;

  TRes call({
    List<Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher>?
        studentTeacher,
    String? $__typename,
  });
  TRes studentTeacher(
      Iterable<Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher> Function(
              Iterable<
                  CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher<
                      Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher>>)
          _fn);
}

class _CopyWithImpl$Query$GetStudentTeacherId$studentTeacherId$studentClass<
        TRes>
    implements
        CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass<TRes> {
  _CopyWithImpl$Query$GetStudentTeacherId$studentTeacherId$studentClass(
    this._instance,
    this._then,
  );

  final Query$GetStudentTeacherId$studentTeacherId$studentClass _instance;

  final TRes Function(Query$GetStudentTeacherId$studentTeacherId$studentClass)
      _then;

  static const _undefined = {};

  TRes call({
    Object? studentTeacher = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetStudentTeacherId$studentTeacherId$studentClass(
        studentTeacher: studentTeacher == _undefined || studentTeacher == null
            ? _instance.studentTeacher
            : (studentTeacher as List<
                Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes studentTeacher(
          Iterable<Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher> Function(
                  Iterable<
                      CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher<
                          Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher>>)
              _fn) =>
      call(
          studentTeacher: _fn(_instance.studentTeacher.map((e) =>
              CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetStudentTeacherId$studentTeacherId$studentClass<
        TRes>
    implements
        CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass<TRes> {
  _CopyWithStubImpl$Query$GetStudentTeacherId$studentTeacherId$studentClass(
      this._res);

  TRes _res;

  call({
    List<Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher>?
        studentTeacher,
    String? $__typename,
  }) =>
      _res;
  studentTeacher(_fn) => _res;
}

class Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher {
  Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher({
    required this.studentTeacherUser,
    required this.$__typename,
  });

  factory Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher.fromJson(
      Map<String, dynamic> json) {
    final l$studentTeacherUser = json['studentTeacherUser'];
    final l$$__typename = json['__typename'];
    return Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher(
      studentTeacherUser:
          Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser
              .fromJson((l$studentTeacherUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser
      studentTeacherUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$studentTeacherUser = studentTeacherUser;
    _resultData['studentTeacherUser'] = l$studentTeacherUser.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$studentTeacherUser = studentTeacherUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$studentTeacherUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$studentTeacherUser = studentTeacherUser;
    final lOther$studentTeacherUser = other.studentTeacherUser;
    if (l$studentTeacherUser != lOther$studentTeacherUser) {
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

extension UtilityExtension$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher
    on Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher {
  CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher<
          Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher>
      get copyWith =>
          CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher<
    TRes> {
  factory CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher(
    Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher
        instance,
    TRes Function(
            Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher)
        then,
  ) = _CopyWithImpl$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher;

  factory CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher;

  TRes call({
    Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser?
        studentTeacherUser,
    String? $__typename,
  });
  CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser<
      TRes> get studentTeacherUser;
}

class _CopyWithImpl$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher<
        TRes>
    implements
        CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher<
            TRes> {
  _CopyWithImpl$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher(
    this._instance,
    this._then,
  );

  final Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher
      _instance;

  final TRes Function(
          Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher)
      _then;

  static const _undefined = {};

  TRes call({
    Object? studentTeacherUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher(
        studentTeacherUser: studentTeacherUser == _undefined ||
                studentTeacherUser == null
            ? _instance.studentTeacherUser
            : (studentTeacherUser
                as Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser<
      TRes> get studentTeacherUser {
    final local$studentTeacherUser = _instance.studentTeacherUser;
    return CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser(
        local$studentTeacherUser, (e) => call(studentTeacherUser: e));
  }
}

class _CopyWithStubImpl$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher<
        TRes>
    implements
        CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher<
            TRes> {
  _CopyWithStubImpl$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher(
      this._res);

  TRes _res;

  call({
    Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser?
        studentTeacherUser,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser<
          TRes>
      get studentTeacherUser =>
          CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser
              .stub(_res);
}

class Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser {
  Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser({
    required this.id,
    required this.$__typename,
  });

  factory Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser(
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
            is Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser) ||
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

extension UtilityExtension$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser
    on Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser {
  CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser<
          Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser>
      get copyWith =>
          CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser<
    TRes> {
  factory CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser(
    Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser
        instance,
    TRes Function(
            Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser)
        then,
  ) = _CopyWithImpl$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser;

  factory CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser<
        TRes>
    implements
        CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser<
            TRes> {
  _CopyWithImpl$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser(
    this._instance,
    this._then,
  );

  final Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser
      _instance;

  final TRes Function(
          Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser<
        TRes>
    implements
        CopyWith$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser<
            TRes> {
  _CopyWithStubImpl$Query$GetStudentTeacherId$studentTeacherId$studentClass$studentTeacher$studentTeacherUser(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeleteSchool {
  factory Variables$Mutation$DeleteSchool({required String id}) =>
      Variables$Mutation$DeleteSchool._({
        r'id': id,
      });

  Variables$Mutation$DeleteSchool._(this._$data);

  factory Variables$Mutation$DeleteSchool.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$DeleteSchool._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteSchool<Variables$Mutation$DeleteSchool>
      get copyWith => CopyWith$Variables$Mutation$DeleteSchool(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteSchool) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteSchool<TRes> {
  factory CopyWith$Variables$Mutation$DeleteSchool(
    Variables$Mutation$DeleteSchool instance,
    TRes Function(Variables$Mutation$DeleteSchool) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteSchool;

  factory CopyWith$Variables$Mutation$DeleteSchool.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteSchool;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$DeleteSchool<TRes>
    implements CopyWith$Variables$Mutation$DeleteSchool<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteSchool(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteSchool _instance;

  final TRes Function(Variables$Mutation$DeleteSchool) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeleteSchool._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteSchool<TRes>
    implements CopyWith$Variables$Mutation$DeleteSchool<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteSchool(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$DeleteSchool {
  Mutation$DeleteSchool({
    required this.deleteSchool,
    required this.$__typename,
  });

  factory Mutation$DeleteSchool.fromJson(Map<String, dynamic> json) {
    final l$deleteSchool = json['deleteSchool'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteSchool(
      deleteSchool: Mutation$DeleteSchool$deleteSchool.fromJson(
          (l$deleteSchool as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteSchool$deleteSchool deleteSchool;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteSchool = deleteSchool;
    _resultData['deleteSchool'] = l$deleteSchool.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteSchool = deleteSchool;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteSchool,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteSchool) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteSchool = deleteSchool;
    final lOther$deleteSchool = other.deleteSchool;
    if (l$deleteSchool != lOther$deleteSchool) {
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

extension UtilityExtension$Mutation$DeleteSchool on Mutation$DeleteSchool {
  CopyWith$Mutation$DeleteSchool<Mutation$DeleteSchool> get copyWith =>
      CopyWith$Mutation$DeleteSchool(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteSchool<TRes> {
  factory CopyWith$Mutation$DeleteSchool(
    Mutation$DeleteSchool instance,
    TRes Function(Mutation$DeleteSchool) then,
  ) = _CopyWithImpl$Mutation$DeleteSchool;

  factory CopyWith$Mutation$DeleteSchool.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteSchool;

  TRes call({
    Mutation$DeleteSchool$deleteSchool? deleteSchool,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteSchool$deleteSchool<TRes> get deleteSchool;
}

class _CopyWithImpl$Mutation$DeleteSchool<TRes>
    implements CopyWith$Mutation$DeleteSchool<TRes> {
  _CopyWithImpl$Mutation$DeleteSchool(
    this._instance,
    this._then,
  );

  final Mutation$DeleteSchool _instance;

  final TRes Function(Mutation$DeleteSchool) _then;

  static const _undefined = {};

  TRes call({
    Object? deleteSchool = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteSchool(
        deleteSchool: deleteSchool == _undefined || deleteSchool == null
            ? _instance.deleteSchool
            : (deleteSchool as Mutation$DeleteSchool$deleteSchool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$DeleteSchool$deleteSchool<TRes> get deleteSchool {
    final local$deleteSchool = _instance.deleteSchool;
    return CopyWith$Mutation$DeleteSchool$deleteSchool(
        local$deleteSchool, (e) => call(deleteSchool: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteSchool<TRes>
    implements CopyWith$Mutation$DeleteSchool<TRes> {
  _CopyWithStubImpl$Mutation$DeleteSchool(this._res);

  TRes _res;

  call({
    Mutation$DeleteSchool$deleteSchool? deleteSchool,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$DeleteSchool$deleteSchool<TRes> get deleteSchool =>
      CopyWith$Mutation$DeleteSchool$deleteSchool.stub(_res);
}

const documentNodeMutationDeleteSchool = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteSchool'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
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
        name: NameNode(value: 'deleteSchool'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
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
Mutation$DeleteSchool _parserFn$Mutation$DeleteSchool(
        Map<String, dynamic> data) =>
    Mutation$DeleteSchool.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteSchool = FutureOr<void> Function(
  dynamic,
  Mutation$DeleteSchool?,
);

class Options$Mutation$DeleteSchool
    extends graphql.MutationOptions<Mutation$DeleteSchool> {
  Options$Mutation$DeleteSchool({
    String? operationName,
    required Variables$Mutation$DeleteSchool variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteSchool? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteSchool>? update,
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
                    data == null ? null : _parserFn$Mutation$DeleteSchool(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteSchool,
          parserFn: _parserFn$Mutation$DeleteSchool,
        );

  final OnMutationCompleted$Mutation$DeleteSchool? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteSchool
    extends graphql.WatchQueryOptions<Mutation$DeleteSchool> {
  WatchOptions$Mutation$DeleteSchool({
    String? operationName,
    required Variables$Mutation$DeleteSchool variables,
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
          document: documentNodeMutationDeleteSchool,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteSchool,
        );
}

extension ClientExtension$Mutation$DeleteSchool on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteSchool>> mutate$DeleteSchool(
          Options$Mutation$DeleteSchool options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteSchool> watchMutation$DeleteSchool(
          WatchOptions$Mutation$DeleteSchool options) =>
      this.watchMutation(options);
}

class Mutation$DeleteSchool$deleteSchool {
  Mutation$DeleteSchool$deleteSchool({
    required this.id,
    required this.$__typename,
  });

  factory Mutation$DeleteSchool$deleteSchool.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteSchool$deleteSchool(
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
    if (!(other is Mutation$DeleteSchool$deleteSchool) ||
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

extension UtilityExtension$Mutation$DeleteSchool$deleteSchool
    on Mutation$DeleteSchool$deleteSchool {
  CopyWith$Mutation$DeleteSchool$deleteSchool<
          Mutation$DeleteSchool$deleteSchool>
      get copyWith => CopyWith$Mutation$DeleteSchool$deleteSchool(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteSchool$deleteSchool<TRes> {
  factory CopyWith$Mutation$DeleteSchool$deleteSchool(
    Mutation$DeleteSchool$deleteSchool instance,
    TRes Function(Mutation$DeleteSchool$deleteSchool) then,
  ) = _CopyWithImpl$Mutation$DeleteSchool$deleteSchool;

  factory CopyWith$Mutation$DeleteSchool$deleteSchool.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteSchool$deleteSchool;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteSchool$deleteSchool<TRes>
    implements CopyWith$Mutation$DeleteSchool$deleteSchool<TRes> {
  _CopyWithImpl$Mutation$DeleteSchool$deleteSchool(
    this._instance,
    this._then,
  );

  final Mutation$DeleteSchool$deleteSchool _instance;

  final TRes Function(Mutation$DeleteSchool$deleteSchool) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteSchool$deleteSchool(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteSchool$deleteSchool<TRes>
    implements CopyWith$Mutation$DeleteSchool$deleteSchool<TRes> {
  _CopyWithStubImpl$Mutation$DeleteSchool$deleteSchool(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetTeacherSchoolInfo {
  Query$GetTeacherSchoolInfo({
    required this.schoolInfoTeacher,
    required this.$__typename,
  });

  factory Query$GetTeacherSchoolInfo.fromJson(Map<String, dynamic> json) {
    final l$schoolInfoTeacher = json['schoolInfoTeacher'];
    final l$$__typename = json['__typename'];
    return Query$GetTeacherSchoolInfo(
      schoolInfoTeacher: Query$GetTeacherSchoolInfo$schoolInfoTeacher.fromJson(
          (l$schoolInfoTeacher as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTeacherSchoolInfo$schoolInfoTeacher schoolInfoTeacher;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$schoolInfoTeacher = schoolInfoTeacher;
    _resultData['schoolInfoTeacher'] = l$schoolInfoTeacher.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$schoolInfoTeacher = schoolInfoTeacher;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$schoolInfoTeacher,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTeacherSchoolInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$schoolInfoTeacher = schoolInfoTeacher;
    final lOther$schoolInfoTeacher = other.schoolInfoTeacher;
    if (l$schoolInfoTeacher != lOther$schoolInfoTeacher) {
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

extension UtilityExtension$Query$GetTeacherSchoolInfo
    on Query$GetTeacherSchoolInfo {
  CopyWith$Query$GetTeacherSchoolInfo<Query$GetTeacherSchoolInfo>
      get copyWith => CopyWith$Query$GetTeacherSchoolInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTeacherSchoolInfo<TRes> {
  factory CopyWith$Query$GetTeacherSchoolInfo(
    Query$GetTeacherSchoolInfo instance,
    TRes Function(Query$GetTeacherSchoolInfo) then,
  ) = _CopyWithImpl$Query$GetTeacherSchoolInfo;

  factory CopyWith$Query$GetTeacherSchoolInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTeacherSchoolInfo;

  TRes call({
    Query$GetTeacherSchoolInfo$schoolInfoTeacher? schoolInfoTeacher,
    String? $__typename,
  });
  CopyWith$Query$GetTeacherSchoolInfo$schoolInfoTeacher<TRes>
      get schoolInfoTeacher;
}

class _CopyWithImpl$Query$GetTeacherSchoolInfo<TRes>
    implements CopyWith$Query$GetTeacherSchoolInfo<TRes> {
  _CopyWithImpl$Query$GetTeacherSchoolInfo(
    this._instance,
    this._then,
  );

  final Query$GetTeacherSchoolInfo _instance;

  final TRes Function(Query$GetTeacherSchoolInfo) _then;

  static const _undefined = {};

  TRes call({
    Object? schoolInfoTeacher = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTeacherSchoolInfo(
        schoolInfoTeacher:
            schoolInfoTeacher == _undefined || schoolInfoTeacher == null
                ? _instance.schoolInfoTeacher
                : (schoolInfoTeacher
                    as Query$GetTeacherSchoolInfo$schoolInfoTeacher),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetTeacherSchoolInfo$schoolInfoTeacher<TRes>
      get schoolInfoTeacher {
    final local$schoolInfoTeacher = _instance.schoolInfoTeacher;
    return CopyWith$Query$GetTeacherSchoolInfo$schoolInfoTeacher(
        local$schoolInfoTeacher, (e) => call(schoolInfoTeacher: e));
  }
}

class _CopyWithStubImpl$Query$GetTeacherSchoolInfo<TRes>
    implements CopyWith$Query$GetTeacherSchoolInfo<TRes> {
  _CopyWithStubImpl$Query$GetTeacherSchoolInfo(this._res);

  TRes _res;

  call({
    Query$GetTeacherSchoolInfo$schoolInfoTeacher? schoolInfoTeacher,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetTeacherSchoolInfo$schoolInfoTeacher<TRes>
      get schoolInfoTeacher =>
          CopyWith$Query$GetTeacherSchoolInfo$schoolInfoTeacher.stub(_res);
}

const documentNodeQueryGetTeacherSchoolInfo = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetTeacherSchoolInfo'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'teacher'),
        alias: NameNode(value: 'schoolInfoTeacher'),
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'school'),
            alias: NameNode(value: 'schoolInfoSchool'),
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'regionID'),
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
                name: NameNode(value: 'name'),
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
Query$GetTeacherSchoolInfo _parserFn$Query$GetTeacherSchoolInfo(
        Map<String, dynamic> data) =>
    Query$GetTeacherSchoolInfo.fromJson(data);

class Options$Query$GetTeacherSchoolInfo
    extends graphql.QueryOptions<Query$GetTeacherSchoolInfo> {
  Options$Query$GetTeacherSchoolInfo({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryGetTeacherSchoolInfo,
          parserFn: _parserFn$Query$GetTeacherSchoolInfo,
        );
}

class WatchOptions$Query$GetTeacherSchoolInfo
    extends graphql.WatchQueryOptions<Query$GetTeacherSchoolInfo> {
  WatchOptions$Query$GetTeacherSchoolInfo({
    String? operationName,
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
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryGetTeacherSchoolInfo,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetTeacherSchoolInfo,
        );
}

class FetchMoreOptions$Query$GetTeacherSchoolInfo
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetTeacherSchoolInfo(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetTeacherSchoolInfo,
        );
}

extension ClientExtension$Query$GetTeacherSchoolInfo on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetTeacherSchoolInfo>>
      query$GetTeacherSchoolInfo(
              [Options$Query$GetTeacherSchoolInfo? options]) async =>
          await this.query(options ?? Options$Query$GetTeacherSchoolInfo());
  graphql.ObservableQuery<Query$GetTeacherSchoolInfo>
      watchQuery$GetTeacherSchoolInfo(
              [WatchOptions$Query$GetTeacherSchoolInfo? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$GetTeacherSchoolInfo());
  void writeQuery$GetTeacherSchoolInfo({
    required Query$GetTeacherSchoolInfo data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryGetTeacherSchoolInfo)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetTeacherSchoolInfo? readQuery$GetTeacherSchoolInfo(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetTeacherSchoolInfo)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetTeacherSchoolInfo.fromJson(result);
  }
}

class Query$GetTeacherSchoolInfo$schoolInfoTeacher {
  Query$GetTeacherSchoolInfo$schoolInfoTeacher({
    this.schoolInfoSchool,
    required this.$__typename,
  });

  factory Query$GetTeacherSchoolInfo$schoolInfoTeacher.fromJson(
      Map<String, dynamic> json) {
    final l$schoolInfoSchool = json['schoolInfoSchool'];
    final l$$__typename = json['__typename'];
    return Query$GetTeacherSchoolInfo$schoolInfoTeacher(
      schoolInfoSchool: l$schoolInfoSchool == null
          ? null
          : Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool
              .fromJson((l$schoolInfoSchool as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool?
      schoolInfoSchool;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$schoolInfoSchool = schoolInfoSchool;
    _resultData['schoolInfoSchool'] = l$schoolInfoSchool?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$schoolInfoSchool = schoolInfoSchool;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$schoolInfoSchool,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTeacherSchoolInfo$schoolInfoTeacher) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$schoolInfoSchool = schoolInfoSchool;
    final lOther$schoolInfoSchool = other.schoolInfoSchool;
    if (l$schoolInfoSchool != lOther$schoolInfoSchool) {
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

extension UtilityExtension$Query$GetTeacherSchoolInfo$schoolInfoTeacher
    on Query$GetTeacherSchoolInfo$schoolInfoTeacher {
  CopyWith$Query$GetTeacherSchoolInfo$schoolInfoTeacher<
          Query$GetTeacherSchoolInfo$schoolInfoTeacher>
      get copyWith => CopyWith$Query$GetTeacherSchoolInfo$schoolInfoTeacher(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTeacherSchoolInfo$schoolInfoTeacher<TRes> {
  factory CopyWith$Query$GetTeacherSchoolInfo$schoolInfoTeacher(
    Query$GetTeacherSchoolInfo$schoolInfoTeacher instance,
    TRes Function(Query$GetTeacherSchoolInfo$schoolInfoTeacher) then,
  ) = _CopyWithImpl$Query$GetTeacherSchoolInfo$schoolInfoTeacher;

  factory CopyWith$Query$GetTeacherSchoolInfo$schoolInfoTeacher.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTeacherSchoolInfo$schoolInfoTeacher;

  TRes call({
    Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool?
        schoolInfoSchool,
    String? $__typename,
  });
  CopyWith$Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool<TRes>
      get schoolInfoSchool;
}

class _CopyWithImpl$Query$GetTeacherSchoolInfo$schoolInfoTeacher<TRes>
    implements CopyWith$Query$GetTeacherSchoolInfo$schoolInfoTeacher<TRes> {
  _CopyWithImpl$Query$GetTeacherSchoolInfo$schoolInfoTeacher(
    this._instance,
    this._then,
  );

  final Query$GetTeacherSchoolInfo$schoolInfoTeacher _instance;

  final TRes Function(Query$GetTeacherSchoolInfo$schoolInfoTeacher) _then;

  static const _undefined = {};

  TRes call({
    Object? schoolInfoSchool = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTeacherSchoolInfo$schoolInfoTeacher(
        schoolInfoSchool: schoolInfoSchool == _undefined
            ? _instance.schoolInfoSchool
            : (schoolInfoSchool
                as Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool<TRes>
      get schoolInfoSchool {
    final local$schoolInfoSchool = _instance.schoolInfoSchool;
    return local$schoolInfoSchool == null
        ? CopyWith$Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool
            .stub(_then(_instance))
        : CopyWith$Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool(
            local$schoolInfoSchool, (e) => call(schoolInfoSchool: e));
  }
}

class _CopyWithStubImpl$Query$GetTeacherSchoolInfo$schoolInfoTeacher<TRes>
    implements CopyWith$Query$GetTeacherSchoolInfo$schoolInfoTeacher<TRes> {
  _CopyWithStubImpl$Query$GetTeacherSchoolInfo$schoolInfoTeacher(this._res);

  TRes _res;

  call({
    Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool?
        schoolInfoSchool,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool<TRes>
      get schoolInfoSchool =>
          CopyWith$Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool
              .stub(_res);
}

class Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool {
  Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool({
    required this.regionID,
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool.fromJson(
      Map<String, dynamic> json) {
    final l$regionID = json['regionID'];
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool(
      regionID: (l$regionID as String),
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String regionID;

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$regionID = regionID;
    _resultData['regionID'] = l$regionID;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$regionID = regionID;
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$regionID,
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$regionID = regionID;
    final lOther$regionID = other.regionID;
    if (l$regionID != lOther$regionID) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool
    on Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool {
  CopyWith$Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool<
          Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool>
      get copyWith =>
          CopyWith$Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool<
    TRes> {
  factory CopyWith$Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool(
    Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool instance,
    TRes Function(Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool)
        then,
  ) = _CopyWithImpl$Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool;

  factory CopyWith$Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool;

  TRes call({
    String? regionID,
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool<
        TRes>
    implements
        CopyWith$Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool<
            TRes> {
  _CopyWithImpl$Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool(
    this._instance,
    this._then,
  );

  final Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool _instance;

  final TRes Function(
      Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool) _then;

  static const _undefined = {};

  TRes call({
    Object? regionID = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool(
        regionID: regionID == _undefined || regionID == null
            ? _instance.regionID
            : (regionID as String),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool<
        TRes>
    implements
        CopyWith$Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool<
            TRes> {
  _CopyWithStubImpl$Query$GetTeacherSchoolInfo$schoolInfoTeacher$schoolInfoSchool(
      this._res);

  TRes _res;

  call({
    String? regionID,
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
