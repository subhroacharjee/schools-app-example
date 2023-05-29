import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$Year {
  Fragment$Year({
    required this.id,
    required this.title,
    required this.$__typename,
  });

  factory Fragment$Year.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Fragment$Year(
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
    if (!(other is Fragment$Year) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$Year on Fragment$Year {
  CopyWith$Fragment$Year<Fragment$Year> get copyWith => CopyWith$Fragment$Year(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Year<TRes> {
  factory CopyWith$Fragment$Year(
    Fragment$Year instance,
    TRes Function(Fragment$Year) then,
  ) = _CopyWithImpl$Fragment$Year;

  factory CopyWith$Fragment$Year.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Year;

  TRes call({
    String? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Year<TRes>
    implements CopyWith$Fragment$Year<TRes> {
  _CopyWithImpl$Fragment$Year(
    this._instance,
    this._then,
  );

  final Fragment$Year _instance;

  final TRes Function(Fragment$Year) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Year(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Year<TRes>
    implements CopyWith$Fragment$Year<TRes> {
  _CopyWithStubImpl$Fragment$Year(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionYear = FragmentDefinitionNode(
  name: NameNode(value: 'Year'),
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
const documentNodeFragmentYear = DocumentNode(definitions: [
  fragmentDefinitionYear,
]);

extension ClientExtension$Fragment$Year on graphql.GraphQLClient {
  void writeFragment$Year({
    required Fragment$Year data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Year',
            document: documentNodeFragmentYear,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Year? readFragment$Year({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Year',
          document: documentNodeFragmentYear,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Year.fromJson(result);
  }
}

class Variables$Query$GetTopicsForYear {
  factory Variables$Query$GetTopicsForYear({required String yearId}) =>
      Variables$Query$GetTopicsForYear._({
        r'yearId': yearId,
      });

  Variables$Query$GetTopicsForYear._(this._$data);

  factory Variables$Query$GetTopicsForYear.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$yearId = data['yearId'];
    result$data['yearId'] = (l$yearId as String);
    return Variables$Query$GetTopicsForYear._(result$data);
  }

  Map<String, dynamic> _$data;

  String get yearId => (_$data['yearId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$yearId = yearId;
    result$data['yearId'] = l$yearId;
    return result$data;
  }

  CopyWith$Variables$Query$GetTopicsForYear<Variables$Query$GetTopicsForYear>
      get copyWith => CopyWith$Variables$Query$GetTopicsForYear(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetTopicsForYear) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yearId = yearId;
    final lOther$yearId = other.yearId;
    if (l$yearId != lOther$yearId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$yearId = yearId;
    return Object.hashAll([l$yearId]);
  }
}

abstract class CopyWith$Variables$Query$GetTopicsForYear<TRes> {
  factory CopyWith$Variables$Query$GetTopicsForYear(
    Variables$Query$GetTopicsForYear instance,
    TRes Function(Variables$Query$GetTopicsForYear) then,
  ) = _CopyWithImpl$Variables$Query$GetTopicsForYear;

  factory CopyWith$Variables$Query$GetTopicsForYear.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetTopicsForYear;

  TRes call({String? yearId});
}

class _CopyWithImpl$Variables$Query$GetTopicsForYear<TRes>
    implements CopyWith$Variables$Query$GetTopicsForYear<TRes> {
  _CopyWithImpl$Variables$Query$GetTopicsForYear(
    this._instance,
    this._then,
  );

  final Variables$Query$GetTopicsForYear _instance;

  final TRes Function(Variables$Query$GetTopicsForYear) _then;

  static const _undefined = {};

  TRes call({Object? yearId = _undefined}) =>
      _then(Variables$Query$GetTopicsForYear._({
        ..._instance._$data,
        if (yearId != _undefined && yearId != null)
          'yearId': (yearId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetTopicsForYear<TRes>
    implements CopyWith$Variables$Query$GetTopicsForYear<TRes> {
  _CopyWithStubImpl$Variables$Query$GetTopicsForYear(this._res);

  TRes _res;

  call({String? yearId}) => _res;
}

class Query$GetTopicsForYear {
  Query$GetTopicsForYear({
    required this.allTopic,
    required this.$__typename,
  });

  factory Query$GetTopicsForYear.fromJson(Map<String, dynamic> json) {
    final l$allTopic = json['allTopic'];
    final l$$__typename = json['__typename'];
    return Query$GetTopicsForYear(
      allTopic: Query$GetTopicsForYear$allTopic.fromJson(
          (l$allTopic as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTopicsForYear$allTopic allTopic;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allTopic = allTopic;
    _resultData['allTopic'] = l$allTopic.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allTopic = allTopic;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$allTopic,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTopicsForYear) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allTopic = allTopic;
    final lOther$allTopic = other.allTopic;
    if (l$allTopic != lOther$allTopic) {
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

extension UtilityExtension$Query$GetTopicsForYear on Query$GetTopicsForYear {
  CopyWith$Query$GetTopicsForYear<Query$GetTopicsForYear> get copyWith =>
      CopyWith$Query$GetTopicsForYear(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTopicsForYear<TRes> {
  factory CopyWith$Query$GetTopicsForYear(
    Query$GetTopicsForYear instance,
    TRes Function(Query$GetTopicsForYear) then,
  ) = _CopyWithImpl$Query$GetTopicsForYear;

  factory CopyWith$Query$GetTopicsForYear.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTopicsForYear;

  TRes call({
    Query$GetTopicsForYear$allTopic? allTopic,
    String? $__typename,
  });
  CopyWith$Query$GetTopicsForYear$allTopic<TRes> get allTopic;
}

class _CopyWithImpl$Query$GetTopicsForYear<TRes>
    implements CopyWith$Query$GetTopicsForYear<TRes> {
  _CopyWithImpl$Query$GetTopicsForYear(
    this._instance,
    this._then,
  );

  final Query$GetTopicsForYear _instance;

  final TRes Function(Query$GetTopicsForYear) _then;

  static const _undefined = {};

  TRes call({
    Object? allTopic = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTopicsForYear(
        allTopic: allTopic == _undefined || allTopic == null
            ? _instance.allTopic
            : (allTopic as Query$GetTopicsForYear$allTopic),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetTopicsForYear$allTopic<TRes> get allTopic {
    final local$allTopic = _instance.allTopic;
    return CopyWith$Query$GetTopicsForYear$allTopic(
        local$allTopic, (e) => call(allTopic: e));
  }
}

class _CopyWithStubImpl$Query$GetTopicsForYear<TRes>
    implements CopyWith$Query$GetTopicsForYear<TRes> {
  _CopyWithStubImpl$Query$GetTopicsForYear(this._res);

  TRes _res;

  call({
    Query$GetTopicsForYear$allTopic? allTopic,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetTopicsForYear$allTopic<TRes> get allTopic =>
      CopyWith$Query$GetTopicsForYear$allTopic.stub(_res);
}

const documentNodeQueryGetTopicsForYear = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetTopicsForYear'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'yearId')),
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
        name: NameNode(value: 'year'),
        alias: NameNode(value: 'allTopic'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'yearId')),
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
            name: NameNode(value: 'topics'),
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
Query$GetTopicsForYear _parserFn$Query$GetTopicsForYear(
        Map<String, dynamic> data) =>
    Query$GetTopicsForYear.fromJson(data);

class Options$Query$GetTopicsForYear
    extends graphql.QueryOptions<Query$GetTopicsForYear> {
  Options$Query$GetTopicsForYear({
    String? operationName,
    required Variables$Query$GetTopicsForYear variables,
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
          document: documentNodeQueryGetTopicsForYear,
          parserFn: _parserFn$Query$GetTopicsForYear,
        );
}

class WatchOptions$Query$GetTopicsForYear
    extends graphql.WatchQueryOptions<Query$GetTopicsForYear> {
  WatchOptions$Query$GetTopicsForYear({
    String? operationName,
    required Variables$Query$GetTopicsForYear variables,
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
          document: documentNodeQueryGetTopicsForYear,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetTopicsForYear,
        );
}

class FetchMoreOptions$Query$GetTopicsForYear extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetTopicsForYear({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetTopicsForYear variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetTopicsForYear,
        );
}

extension ClientExtension$Query$GetTopicsForYear on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetTopicsForYear>> query$GetTopicsForYear(
          Options$Query$GetTopicsForYear options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetTopicsForYear> watchQuery$GetTopicsForYear(
          WatchOptions$Query$GetTopicsForYear options) =>
      this.watchQuery(options);
  void writeQuery$GetTopicsForYear({
    required Query$GetTopicsForYear data,
    required Variables$Query$GetTopicsForYear variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetTopicsForYear),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetTopicsForYear? readQuery$GetTopicsForYear({
    required Variables$Query$GetTopicsForYear variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetTopicsForYear),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetTopicsForYear.fromJson(result);
  }
}

class Query$GetTopicsForYear$allTopic {
  Query$GetTopicsForYear$allTopic({
    required this.id,
    required this.topics,
    required this.$__typename,
  });

  factory Query$GetTopicsForYear$allTopic.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$topics = json['topics'];
    final l$$__typename = json['__typename'];
    return Query$GetTopicsForYear$allTopic(
      id: (l$id as String),
      topics: (l$topics as List<dynamic>)
          .map((e) => Query$GetTopicsForYear$allTopic$topics.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final List<Query$GetTopicsForYear$allTopic$topics> topics;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$topics = topics;
    _resultData['topics'] = l$topics.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$topics = topics;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$topics.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTopicsForYear$allTopic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$topics = topics;
    final lOther$topics = other.topics;
    if (l$topics.length != lOther$topics.length) {
      return false;
    }
    for (int i = 0; i < l$topics.length; i++) {
      final l$topics$entry = l$topics[i];
      final lOther$topics$entry = lOther$topics[i];
      if (l$topics$entry != lOther$topics$entry) {
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

extension UtilityExtension$Query$GetTopicsForYear$allTopic
    on Query$GetTopicsForYear$allTopic {
  CopyWith$Query$GetTopicsForYear$allTopic<Query$GetTopicsForYear$allTopic>
      get copyWith => CopyWith$Query$GetTopicsForYear$allTopic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTopicsForYear$allTopic<TRes> {
  factory CopyWith$Query$GetTopicsForYear$allTopic(
    Query$GetTopicsForYear$allTopic instance,
    TRes Function(Query$GetTopicsForYear$allTopic) then,
  ) = _CopyWithImpl$Query$GetTopicsForYear$allTopic;

  factory CopyWith$Query$GetTopicsForYear$allTopic.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTopicsForYear$allTopic;

  TRes call({
    String? id,
    List<Query$GetTopicsForYear$allTopic$topics>? topics,
    String? $__typename,
  });
  TRes topics(
      Iterable<Query$GetTopicsForYear$allTopic$topics> Function(
              Iterable<
                  CopyWith$Query$GetTopicsForYear$allTopic$topics<
                      Query$GetTopicsForYear$allTopic$topics>>)
          _fn);
}

class _CopyWithImpl$Query$GetTopicsForYear$allTopic<TRes>
    implements CopyWith$Query$GetTopicsForYear$allTopic<TRes> {
  _CopyWithImpl$Query$GetTopicsForYear$allTopic(
    this._instance,
    this._then,
  );

  final Query$GetTopicsForYear$allTopic _instance;

  final TRes Function(Query$GetTopicsForYear$allTopic) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? topics = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTopicsForYear$allTopic(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        topics: topics == _undefined || topics == null
            ? _instance.topics
            : (topics as List<Query$GetTopicsForYear$allTopic$topics>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes topics(
          Iterable<Query$GetTopicsForYear$allTopic$topics> Function(
                  Iterable<
                      CopyWith$Query$GetTopicsForYear$allTopic$topics<
                          Query$GetTopicsForYear$allTopic$topics>>)
              _fn) =>
      call(
          topics: _fn(_instance.topics
              .map((e) => CopyWith$Query$GetTopicsForYear$allTopic$topics(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetTopicsForYear$allTopic<TRes>
    implements CopyWith$Query$GetTopicsForYear$allTopic<TRes> {
  _CopyWithStubImpl$Query$GetTopicsForYear$allTopic(this._res);

  TRes _res;

  call({
    String? id,
    List<Query$GetTopicsForYear$allTopic$topics>? topics,
    String? $__typename,
  }) =>
      _res;
  topics(_fn) => _res;
}

class Query$GetTopicsForYear$allTopic$topics {
  Query$GetTopicsForYear$allTopic$topics({
    required this.id,
    required this.color,
    required this.title,
    required this.emoji,
    required this.$__typename,
  });

  factory Query$GetTopicsForYear$allTopic$topics.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$color = json['color'];
    final l$title = json['title'];
    final l$emoji = json['emoji'];
    final l$$__typename = json['__typename'];
    return Query$GetTopicsForYear$allTopic$topics(
      id: (l$id as String),
      color: (l$color as String),
      title: (l$title as String),
      emoji: (l$emoji as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String color;

  final String title;

  final String emoji;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$color = color;
    _resultData['color'] = l$color;
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
    final l$color = color;
    final l$title = title;
    final l$emoji = emoji;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$color,
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
    if (!(other is Query$GetTopicsForYear$allTopic$topics) ||
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

extension UtilityExtension$Query$GetTopicsForYear$allTopic$topics
    on Query$GetTopicsForYear$allTopic$topics {
  CopyWith$Query$GetTopicsForYear$allTopic$topics<
          Query$GetTopicsForYear$allTopic$topics>
      get copyWith => CopyWith$Query$GetTopicsForYear$allTopic$topics(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTopicsForYear$allTopic$topics<TRes> {
  factory CopyWith$Query$GetTopicsForYear$allTopic$topics(
    Query$GetTopicsForYear$allTopic$topics instance,
    TRes Function(Query$GetTopicsForYear$allTopic$topics) then,
  ) = _CopyWithImpl$Query$GetTopicsForYear$allTopic$topics;

  factory CopyWith$Query$GetTopicsForYear$allTopic$topics.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTopicsForYear$allTopic$topics;

  TRes call({
    String? id,
    String? color,
    String? title,
    String? emoji,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTopicsForYear$allTopic$topics<TRes>
    implements CopyWith$Query$GetTopicsForYear$allTopic$topics<TRes> {
  _CopyWithImpl$Query$GetTopicsForYear$allTopic$topics(
    this._instance,
    this._then,
  );

  final Query$GetTopicsForYear$allTopic$topics _instance;

  final TRes Function(Query$GetTopicsForYear$allTopic$topics) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? color = _undefined,
    Object? title = _undefined,
    Object? emoji = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTopicsForYear$allTopic$topics(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        color: color == _undefined || color == null
            ? _instance.color
            : (color as String),
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

class _CopyWithStubImpl$Query$GetTopicsForYear$allTopic$topics<TRes>
    implements CopyWith$Query$GetTopicsForYear$allTopic$topics<TRes> {
  _CopyWithStubImpl$Query$GetTopicsForYear$allTopic$topics(this._res);

  TRes _res;

  call({
    String? id,
    String? color,
    String? title,
    String? emoji,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetTopicYears {
  factory Variables$Query$GetTopicYears({required String topicId}) =>
      Variables$Query$GetTopicYears._({
        r'topicId': topicId,
      });

  Variables$Query$GetTopicYears._(this._$data);

  factory Variables$Query$GetTopicYears.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$topicId = data['topicId'];
    result$data['topicId'] = (l$topicId as String);
    return Variables$Query$GetTopicYears._(result$data);
  }

  Map<String, dynamic> _$data;

  String get topicId => (_$data['topicId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$topicId = topicId;
    result$data['topicId'] = l$topicId;
    return result$data;
  }

  CopyWith$Variables$Query$GetTopicYears<Variables$Query$GetTopicYears>
      get copyWith => CopyWith$Variables$Query$GetTopicYears(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetTopicYears) ||
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

abstract class CopyWith$Variables$Query$GetTopicYears<TRes> {
  factory CopyWith$Variables$Query$GetTopicYears(
    Variables$Query$GetTopicYears instance,
    TRes Function(Variables$Query$GetTopicYears) then,
  ) = _CopyWithImpl$Variables$Query$GetTopicYears;

  factory CopyWith$Variables$Query$GetTopicYears.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetTopicYears;

  TRes call({String? topicId});
}

class _CopyWithImpl$Variables$Query$GetTopicYears<TRes>
    implements CopyWith$Variables$Query$GetTopicYears<TRes> {
  _CopyWithImpl$Variables$Query$GetTopicYears(
    this._instance,
    this._then,
  );

  final Variables$Query$GetTopicYears _instance;

  final TRes Function(Variables$Query$GetTopicYears) _then;

  static const _undefined = {};

  TRes call({Object? topicId = _undefined}) =>
      _then(Variables$Query$GetTopicYears._({
        ..._instance._$data,
        if (topicId != _undefined && topicId != null)
          'topicId': (topicId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetTopicYears<TRes>
    implements CopyWith$Variables$Query$GetTopicYears<TRes> {
  _CopyWithStubImpl$Variables$Query$GetTopicYears(this._res);

  TRes _res;

  call({String? topicId}) => _res;
}

class Query$GetTopicYears {
  Query$GetTopicYears({
    required this.tTopic,
    required this.$__typename,
  });

  factory Query$GetTopicYears.fromJson(Map<String, dynamic> json) {
    final l$tTopic = json['tTopic'];
    final l$$__typename = json['__typename'];
    return Query$GetTopicYears(
      tTopic: Query$GetTopicYears$tTopic.fromJson(
          (l$tTopic as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTopicYears$tTopic tTopic;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$tTopic = tTopic;
    _resultData['tTopic'] = l$tTopic.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$tTopic = tTopic;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$tTopic,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTopicYears) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$tTopic = tTopic;
    final lOther$tTopic = other.tTopic;
    if (l$tTopic != lOther$tTopic) {
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

extension UtilityExtension$Query$GetTopicYears on Query$GetTopicYears {
  CopyWith$Query$GetTopicYears<Query$GetTopicYears> get copyWith =>
      CopyWith$Query$GetTopicYears(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTopicYears<TRes> {
  factory CopyWith$Query$GetTopicYears(
    Query$GetTopicYears instance,
    TRes Function(Query$GetTopicYears) then,
  ) = _CopyWithImpl$Query$GetTopicYears;

  factory CopyWith$Query$GetTopicYears.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTopicYears;

  TRes call({
    Query$GetTopicYears$tTopic? tTopic,
    String? $__typename,
  });
  CopyWith$Query$GetTopicYears$tTopic<TRes> get tTopic;
}

class _CopyWithImpl$Query$GetTopicYears<TRes>
    implements CopyWith$Query$GetTopicYears<TRes> {
  _CopyWithImpl$Query$GetTopicYears(
    this._instance,
    this._then,
  );

  final Query$GetTopicYears _instance;

  final TRes Function(Query$GetTopicYears) _then;

  static const _undefined = {};

  TRes call({
    Object? tTopic = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTopicYears(
        tTopic: tTopic == _undefined || tTopic == null
            ? _instance.tTopic
            : (tTopic as Query$GetTopicYears$tTopic),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetTopicYears$tTopic<TRes> get tTopic {
    final local$tTopic = _instance.tTopic;
    return CopyWith$Query$GetTopicYears$tTopic(
        local$tTopic, (e) => call(tTopic: e));
  }
}

class _CopyWithStubImpl$Query$GetTopicYears<TRes>
    implements CopyWith$Query$GetTopicYears<TRes> {
  _CopyWithStubImpl$Query$GetTopicYears(this._res);

  TRes _res;

  call({
    Query$GetTopicYears$tTopic? tTopic,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetTopicYears$tTopic<TRes> get tTopic =>
      CopyWith$Query$GetTopicYears$tTopic.stub(_res);
}

const documentNodeQueryGetTopicYears = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetTopicYears'),
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
        alias: NameNode(value: 'tTopic'),
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
            name: NameNode(value: 'years'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Year'),
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
  fragmentDefinitionYear,
]);
Query$GetTopicYears _parserFn$Query$GetTopicYears(Map<String, dynamic> data) =>
    Query$GetTopicYears.fromJson(data);

class Options$Query$GetTopicYears
    extends graphql.QueryOptions<Query$GetTopicYears> {
  Options$Query$GetTopicYears({
    String? operationName,
    required Variables$Query$GetTopicYears variables,
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
          document: documentNodeQueryGetTopicYears,
          parserFn: _parserFn$Query$GetTopicYears,
        );
}

class WatchOptions$Query$GetTopicYears
    extends graphql.WatchQueryOptions<Query$GetTopicYears> {
  WatchOptions$Query$GetTopicYears({
    String? operationName,
    required Variables$Query$GetTopicYears variables,
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
          document: documentNodeQueryGetTopicYears,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetTopicYears,
        );
}

class FetchMoreOptions$Query$GetTopicYears extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetTopicYears({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetTopicYears variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetTopicYears,
        );
}

extension ClientExtension$Query$GetTopicYears on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetTopicYears>> query$GetTopicYears(
          Options$Query$GetTopicYears options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetTopicYears> watchQuery$GetTopicYears(
          WatchOptions$Query$GetTopicYears options) =>
      this.watchQuery(options);
  void writeQuery$GetTopicYears({
    required Query$GetTopicYears data,
    required Variables$Query$GetTopicYears variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetTopicYears),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetTopicYears? readQuery$GetTopicYears({
    required Variables$Query$GetTopicYears variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetTopicYears),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetTopicYears.fromJson(result);
  }
}

class Query$GetTopicYears$tTopic {
  Query$GetTopicYears$tTopic({
    required this.id,
    required this.years,
    required this.$__typename,
  });

  factory Query$GetTopicYears$tTopic.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$years = json['years'];
    final l$$__typename = json['__typename'];
    return Query$GetTopicYears$tTopic(
      id: (l$id as String),
      years: (l$years as List<dynamic>)
          .map((e) => Fragment$Year.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final List<Fragment$Year> years;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$years = years;
    _resultData['years'] = l$years.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$years = years;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$years.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTopicYears$tTopic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetTopicYears$tTopic
    on Query$GetTopicYears$tTopic {
  CopyWith$Query$GetTopicYears$tTopic<Query$GetTopicYears$tTopic>
      get copyWith => CopyWith$Query$GetTopicYears$tTopic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTopicYears$tTopic<TRes> {
  factory CopyWith$Query$GetTopicYears$tTopic(
    Query$GetTopicYears$tTopic instance,
    TRes Function(Query$GetTopicYears$tTopic) then,
  ) = _CopyWithImpl$Query$GetTopicYears$tTopic;

  factory CopyWith$Query$GetTopicYears$tTopic.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTopicYears$tTopic;

  TRes call({
    String? id,
    List<Fragment$Year>? years,
    String? $__typename,
  });
  TRes years(
      Iterable<Fragment$Year> Function(
              Iterable<CopyWith$Fragment$Year<Fragment$Year>>)
          _fn);
}

class _CopyWithImpl$Query$GetTopicYears$tTopic<TRes>
    implements CopyWith$Query$GetTopicYears$tTopic<TRes> {
  _CopyWithImpl$Query$GetTopicYears$tTopic(
    this._instance,
    this._then,
  );

  final Query$GetTopicYears$tTopic _instance;

  final TRes Function(Query$GetTopicYears$tTopic) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? years = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTopicYears$tTopic(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        years: years == _undefined || years == null
            ? _instance.years
            : (years as List<Fragment$Year>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes years(
          Iterable<Fragment$Year> Function(
                  Iterable<CopyWith$Fragment$Year<Fragment$Year>>)
              _fn) =>
      call(
          years: _fn(_instance.years.map((e) => CopyWith$Fragment$Year(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetTopicYears$tTopic<TRes>
    implements CopyWith$Query$GetTopicYears$tTopic<TRes> {
  _CopyWithStubImpl$Query$GetTopicYears$tTopic(this._res);

  TRes _res;

  call({
    String? id,
    List<Fragment$Year>? years,
    String? $__typename,
  }) =>
      _res;
  years(_fn) => _res;
}

class Variables$Query$GetSubtopicsForYear {
  factory Variables$Query$GetSubtopicsForYear({
    required String yearId,
    required String topicId,
  }) =>
      Variables$Query$GetSubtopicsForYear._({
        r'yearId': yearId,
        r'topicId': topicId,
      });

  Variables$Query$GetSubtopicsForYear._(this._$data);

  factory Variables$Query$GetSubtopicsForYear.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$yearId = data['yearId'];
    result$data['yearId'] = (l$yearId as String);
    final l$topicId = data['topicId'];
    result$data['topicId'] = (l$topicId as String);
    return Variables$Query$GetSubtopicsForYear._(result$data);
  }

  Map<String, dynamic> _$data;

  String get yearId => (_$data['yearId'] as String);
  String get topicId => (_$data['topicId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$yearId = yearId;
    result$data['yearId'] = l$yearId;
    final l$topicId = topicId;
    result$data['topicId'] = l$topicId;
    return result$data;
  }

  CopyWith$Variables$Query$GetSubtopicsForYear<
          Variables$Query$GetSubtopicsForYear>
      get copyWith => CopyWith$Variables$Query$GetSubtopicsForYear(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetSubtopicsForYear) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yearId = yearId;
    final lOther$yearId = other.yearId;
    if (l$yearId != lOther$yearId) {
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
    final l$yearId = yearId;
    final l$topicId = topicId;
    return Object.hashAll([
      l$yearId,
      l$topicId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetSubtopicsForYear<TRes> {
  factory CopyWith$Variables$Query$GetSubtopicsForYear(
    Variables$Query$GetSubtopicsForYear instance,
    TRes Function(Variables$Query$GetSubtopicsForYear) then,
  ) = _CopyWithImpl$Variables$Query$GetSubtopicsForYear;

  factory CopyWith$Variables$Query$GetSubtopicsForYear.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetSubtopicsForYear;

  TRes call({
    String? yearId,
    String? topicId,
  });
}

class _CopyWithImpl$Variables$Query$GetSubtopicsForYear<TRes>
    implements CopyWith$Variables$Query$GetSubtopicsForYear<TRes> {
  _CopyWithImpl$Variables$Query$GetSubtopicsForYear(
    this._instance,
    this._then,
  );

  final Variables$Query$GetSubtopicsForYear _instance;

  final TRes Function(Variables$Query$GetSubtopicsForYear) _then;

  static const _undefined = {};

  TRes call({
    Object? yearId = _undefined,
    Object? topicId = _undefined,
  }) =>
      _then(Variables$Query$GetSubtopicsForYear._({
        ..._instance._$data,
        if (yearId != _undefined && yearId != null)
          'yearId': (yearId as String),
        if (topicId != _undefined && topicId != null)
          'topicId': (topicId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetSubtopicsForYear<TRes>
    implements CopyWith$Variables$Query$GetSubtopicsForYear<TRes> {
  _CopyWithStubImpl$Variables$Query$GetSubtopicsForYear(this._res);

  TRes _res;

  call({
    String? yearId,
    String? topicId,
  }) =>
      _res;
}

class Query$GetSubtopicsForYear {
  Query$GetSubtopicsForYear({
    required this.sTopic,
    required this.$__typename,
  });

  factory Query$GetSubtopicsForYear.fromJson(Map<String, dynamic> json) {
    final l$sTopic = json['sTopic'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopicsForYear(
      sTopic: Query$GetSubtopicsForYear$sTopic.fromJson(
          (l$sTopic as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSubtopicsForYear$sTopic sTopic;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sTopic = sTopic;
    _resultData['sTopic'] = l$sTopic.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sTopic = sTopic;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sTopic,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSubtopicsForYear) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sTopic = sTopic;
    final lOther$sTopic = other.sTopic;
    if (l$sTopic != lOther$sTopic) {
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

extension UtilityExtension$Query$GetSubtopicsForYear
    on Query$GetSubtopicsForYear {
  CopyWith$Query$GetSubtopicsForYear<Query$GetSubtopicsForYear> get copyWith =>
      CopyWith$Query$GetSubtopicsForYear(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSubtopicsForYear<TRes> {
  factory CopyWith$Query$GetSubtopicsForYear(
    Query$GetSubtopicsForYear instance,
    TRes Function(Query$GetSubtopicsForYear) then,
  ) = _CopyWithImpl$Query$GetSubtopicsForYear;

  factory CopyWith$Query$GetSubtopicsForYear.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSubtopicsForYear;

  TRes call({
    Query$GetSubtopicsForYear$sTopic? sTopic,
    String? $__typename,
  });
  CopyWith$Query$GetSubtopicsForYear$sTopic<TRes> get sTopic;
}

class _CopyWithImpl$Query$GetSubtopicsForYear<TRes>
    implements CopyWith$Query$GetSubtopicsForYear<TRes> {
  _CopyWithImpl$Query$GetSubtopicsForYear(
    this._instance,
    this._then,
  );

  final Query$GetSubtopicsForYear _instance;

  final TRes Function(Query$GetSubtopicsForYear) _then;

  static const _undefined = {};

  TRes call({
    Object? sTopic = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSubtopicsForYear(
        sTopic: sTopic == _undefined || sTopic == null
            ? _instance.sTopic
            : (sTopic as Query$GetSubtopicsForYear$sTopic),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetSubtopicsForYear$sTopic<TRes> get sTopic {
    final local$sTopic = _instance.sTopic;
    return CopyWith$Query$GetSubtopicsForYear$sTopic(
        local$sTopic, (e) => call(sTopic: e));
  }
}

class _CopyWithStubImpl$Query$GetSubtopicsForYear<TRes>
    implements CopyWith$Query$GetSubtopicsForYear<TRes> {
  _CopyWithStubImpl$Query$GetSubtopicsForYear(this._res);

  TRes _res;

  call({
    Query$GetSubtopicsForYear$sTopic? sTopic,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetSubtopicsForYear$sTopic<TRes> get sTopic =>
      CopyWith$Query$GetSubtopicsForYear$sTopic.stub(_res);
}

const documentNodeQueryGetSubtopicsForYear = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetSubtopicsForYear'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'yearId')),
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
        alias: NameNode(value: 'sTopic'),
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
            name: NameNode(value: 'subtopicsForYear'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'yearID'),
                value: VariableNode(name: NameNode(value: 'yearId')),
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
                name: NameNode(value: 'totalSkills'),
                alias: null,
                arguments: [],
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
                    name: NameNode(value: 'Year'),
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
  fragmentDefinitionYear,
]);
Query$GetSubtopicsForYear _parserFn$Query$GetSubtopicsForYear(
        Map<String, dynamic> data) =>
    Query$GetSubtopicsForYear.fromJson(data);

class Options$Query$GetSubtopicsForYear
    extends graphql.QueryOptions<Query$GetSubtopicsForYear> {
  Options$Query$GetSubtopicsForYear({
    String? operationName,
    required Variables$Query$GetSubtopicsForYear variables,
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
          document: documentNodeQueryGetSubtopicsForYear,
          parserFn: _parserFn$Query$GetSubtopicsForYear,
        );
}

class WatchOptions$Query$GetSubtopicsForYear
    extends graphql.WatchQueryOptions<Query$GetSubtopicsForYear> {
  WatchOptions$Query$GetSubtopicsForYear({
    String? operationName,
    required Variables$Query$GetSubtopicsForYear variables,
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
          document: documentNodeQueryGetSubtopicsForYear,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetSubtopicsForYear,
        );
}

class FetchMoreOptions$Query$GetSubtopicsForYear
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetSubtopicsForYear({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetSubtopicsForYear variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetSubtopicsForYear,
        );
}

extension ClientExtension$Query$GetSubtopicsForYear on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetSubtopicsForYear>>
      query$GetSubtopicsForYear(
              Options$Query$GetSubtopicsForYear options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetSubtopicsForYear>
      watchQuery$GetSubtopicsForYear(
              WatchOptions$Query$GetSubtopicsForYear options) =>
          this.watchQuery(options);
  void writeQuery$GetSubtopicsForYear({
    required Query$GetSubtopicsForYear data,
    required Variables$Query$GetSubtopicsForYear variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetSubtopicsForYear),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetSubtopicsForYear? readQuery$GetSubtopicsForYear({
    required Variables$Query$GetSubtopicsForYear variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetSubtopicsForYear),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetSubtopicsForYear.fromJson(result);
  }
}

class Query$GetSubtopicsForYear$sTopic {
  Query$GetSubtopicsForYear$sTopic({
    required this.id,
    required this.color,
    required this.subtopicsForYear,
    required this.$__typename,
  });

  factory Query$GetSubtopicsForYear$sTopic.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$color = json['color'];
    final l$subtopicsForYear = json['subtopicsForYear'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopicsForYear$sTopic(
      id: (l$id as String),
      color: (l$color as String),
      subtopicsForYear: (l$subtopicsForYear as List<dynamic>)
          .map((e) =>
              Query$GetSubtopicsForYear$sTopic$subtopicsForYear.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String color;

  final List<Query$GetSubtopicsForYear$sTopic$subtopicsForYear>
      subtopicsForYear;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$subtopicsForYear = subtopicsForYear;
    _resultData['subtopicsForYear'] =
        l$subtopicsForYear.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$color = color;
    final l$subtopicsForYear = subtopicsForYear;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$color,
      Object.hashAll(l$subtopicsForYear.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSubtopicsForYear$sTopic) ||
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
    final l$subtopicsForYear = subtopicsForYear;
    final lOther$subtopicsForYear = other.subtopicsForYear;
    if (l$subtopicsForYear.length != lOther$subtopicsForYear.length) {
      return false;
    }
    for (int i = 0; i < l$subtopicsForYear.length; i++) {
      final l$subtopicsForYear$entry = l$subtopicsForYear[i];
      final lOther$subtopicsForYear$entry = lOther$subtopicsForYear[i];
      if (l$subtopicsForYear$entry != lOther$subtopicsForYear$entry) {
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

extension UtilityExtension$Query$GetSubtopicsForYear$sTopic
    on Query$GetSubtopicsForYear$sTopic {
  CopyWith$Query$GetSubtopicsForYear$sTopic<Query$GetSubtopicsForYear$sTopic>
      get copyWith => CopyWith$Query$GetSubtopicsForYear$sTopic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSubtopicsForYear$sTopic<TRes> {
  factory CopyWith$Query$GetSubtopicsForYear$sTopic(
    Query$GetSubtopicsForYear$sTopic instance,
    TRes Function(Query$GetSubtopicsForYear$sTopic) then,
  ) = _CopyWithImpl$Query$GetSubtopicsForYear$sTopic;

  factory CopyWith$Query$GetSubtopicsForYear$sTopic.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSubtopicsForYear$sTopic;

  TRes call({
    String? id,
    String? color,
    List<Query$GetSubtopicsForYear$sTopic$subtopicsForYear>? subtopicsForYear,
    String? $__typename,
  });
  TRes subtopicsForYear(
      Iterable<Query$GetSubtopicsForYear$sTopic$subtopicsForYear> Function(
              Iterable<
                  CopyWith$Query$GetSubtopicsForYear$sTopic$subtopicsForYear<
                      Query$GetSubtopicsForYear$sTopic$subtopicsForYear>>)
          _fn);
}

class _CopyWithImpl$Query$GetSubtopicsForYear$sTopic<TRes>
    implements CopyWith$Query$GetSubtopicsForYear$sTopic<TRes> {
  _CopyWithImpl$Query$GetSubtopicsForYear$sTopic(
    this._instance,
    this._then,
  );

  final Query$GetSubtopicsForYear$sTopic _instance;

  final TRes Function(Query$GetSubtopicsForYear$sTopic) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? color = _undefined,
    Object? subtopicsForYear = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSubtopicsForYear$sTopic(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        color: color == _undefined || color == null
            ? _instance.color
            : (color as String),
        subtopicsForYear:
            subtopicsForYear == _undefined || subtopicsForYear == null
                ? _instance.subtopicsForYear
                : (subtopicsForYear
                    as List<Query$GetSubtopicsForYear$sTopic$subtopicsForYear>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes subtopicsForYear(
          Iterable<Query$GetSubtopicsForYear$sTopic$subtopicsForYear> Function(
                  Iterable<
                      CopyWith$Query$GetSubtopicsForYear$sTopic$subtopicsForYear<
                          Query$GetSubtopicsForYear$sTopic$subtopicsForYear>>)
              _fn) =>
      call(
          subtopicsForYear: _fn(_instance.subtopicsForYear.map(
              (e) => CopyWith$Query$GetSubtopicsForYear$sTopic$subtopicsForYear(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetSubtopicsForYear$sTopic<TRes>
    implements CopyWith$Query$GetSubtopicsForYear$sTopic<TRes> {
  _CopyWithStubImpl$Query$GetSubtopicsForYear$sTopic(this._res);

  TRes _res;

  call({
    String? id,
    String? color,
    List<Query$GetSubtopicsForYear$sTopic$subtopicsForYear>? subtopicsForYear,
    String? $__typename,
  }) =>
      _res;
  subtopicsForYear(_fn) => _res;
}

class Query$GetSubtopicsForYear$sTopic$subtopicsForYear {
  Query$GetSubtopicsForYear$sTopic$subtopicsForYear({
    required this.id,
    required this.title,
    required this.icon,
    required this.totalSkills,
    required this.years,
    required this.$__typename,
  });

  factory Query$GetSubtopicsForYear$sTopic$subtopicsForYear.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$icon = json['icon'];
    final l$totalSkills = json['totalSkills'];
    final l$years = json['years'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopicsForYear$sTopic$subtopicsForYear(
      id: (l$id as String),
      title: (l$title as String),
      icon: (l$icon as String),
      totalSkills: (l$totalSkills as int),
      years: (l$years as List<dynamic>)
          .map((e) => Fragment$Year.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String icon;

  final int totalSkills;

  final List<Fragment$Year> years;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$icon = icon;
    _resultData['icon'] = l$icon;
    final l$totalSkills = totalSkills;
    _resultData['totalSkills'] = l$totalSkills;
    final l$years = years;
    _resultData['years'] = l$years.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$icon = icon;
    final l$totalSkills = totalSkills;
    final l$years = years;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$icon,
      l$totalSkills,
      Object.hashAll(l$years.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSubtopicsForYear$sTopic$subtopicsForYear) ||
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
    final l$totalSkills = totalSkills;
    final lOther$totalSkills = other.totalSkills;
    if (l$totalSkills != lOther$totalSkills) {
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

extension UtilityExtension$Query$GetSubtopicsForYear$sTopic$subtopicsForYear
    on Query$GetSubtopicsForYear$sTopic$subtopicsForYear {
  CopyWith$Query$GetSubtopicsForYear$sTopic$subtopicsForYear<
          Query$GetSubtopicsForYear$sTopic$subtopicsForYear>
      get copyWith =>
          CopyWith$Query$GetSubtopicsForYear$sTopic$subtopicsForYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSubtopicsForYear$sTopic$subtopicsForYear<
    TRes> {
  factory CopyWith$Query$GetSubtopicsForYear$sTopic$subtopicsForYear(
    Query$GetSubtopicsForYear$sTopic$subtopicsForYear instance,
    TRes Function(Query$GetSubtopicsForYear$sTopic$subtopicsForYear) then,
  ) = _CopyWithImpl$Query$GetSubtopicsForYear$sTopic$subtopicsForYear;

  factory CopyWith$Query$GetSubtopicsForYear$sTopic$subtopicsForYear.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetSubtopicsForYear$sTopic$subtopicsForYear;

  TRes call({
    String? id,
    String? title,
    String? icon,
    int? totalSkills,
    List<Fragment$Year>? years,
    String? $__typename,
  });
  TRes years(
      Iterable<Fragment$Year> Function(
              Iterable<CopyWith$Fragment$Year<Fragment$Year>>)
          _fn);
}

class _CopyWithImpl$Query$GetSubtopicsForYear$sTopic$subtopicsForYear<TRes>
    implements
        CopyWith$Query$GetSubtopicsForYear$sTopic$subtopicsForYear<TRes> {
  _CopyWithImpl$Query$GetSubtopicsForYear$sTopic$subtopicsForYear(
    this._instance,
    this._then,
  );

  final Query$GetSubtopicsForYear$sTopic$subtopicsForYear _instance;

  final TRes Function(Query$GetSubtopicsForYear$sTopic$subtopicsForYear) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? icon = _undefined,
    Object? totalSkills = _undefined,
    Object? years = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSubtopicsForYear$sTopic$subtopicsForYear(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        icon: icon == _undefined || icon == null
            ? _instance.icon
            : (icon as String),
        totalSkills: totalSkills == _undefined || totalSkills == null
            ? _instance.totalSkills
            : (totalSkills as int),
        years: years == _undefined || years == null
            ? _instance.years
            : (years as List<Fragment$Year>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes years(
          Iterable<Fragment$Year> Function(
                  Iterable<CopyWith$Fragment$Year<Fragment$Year>>)
              _fn) =>
      call(
          years: _fn(_instance.years.map((e) => CopyWith$Fragment$Year(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetSubtopicsForYear$sTopic$subtopicsForYear<TRes>
    implements
        CopyWith$Query$GetSubtopicsForYear$sTopic$subtopicsForYear<TRes> {
  _CopyWithStubImpl$Query$GetSubtopicsForYear$sTopic$subtopicsForYear(
      this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? icon,
    int? totalSkills,
    List<Fragment$Year>? years,
    String? $__typename,
  }) =>
      _res;
  years(_fn) => _res;
}

class Variables$Query$GetSubtopicYear {
  factory Variables$Query$GetSubtopicYear({required String subtopicId}) =>
      Variables$Query$GetSubtopicYear._({
        r'subtopicId': subtopicId,
      });

  Variables$Query$GetSubtopicYear._(this._$data);

  factory Variables$Query$GetSubtopicYear.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$subtopicId = data['subtopicId'];
    result$data['subtopicId'] = (l$subtopicId as String);
    return Variables$Query$GetSubtopicYear._(result$data);
  }

  Map<String, dynamic> _$data;

  String get subtopicId => (_$data['subtopicId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$subtopicId = subtopicId;
    result$data['subtopicId'] = l$subtopicId;
    return result$data;
  }

  CopyWith$Variables$Query$GetSubtopicYear<Variables$Query$GetSubtopicYear>
      get copyWith => CopyWith$Variables$Query$GetSubtopicYear(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetSubtopicYear) ||
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

abstract class CopyWith$Variables$Query$GetSubtopicYear<TRes> {
  factory CopyWith$Variables$Query$GetSubtopicYear(
    Variables$Query$GetSubtopicYear instance,
    TRes Function(Variables$Query$GetSubtopicYear) then,
  ) = _CopyWithImpl$Variables$Query$GetSubtopicYear;

  factory CopyWith$Variables$Query$GetSubtopicYear.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetSubtopicYear;

  TRes call({String? subtopicId});
}

class _CopyWithImpl$Variables$Query$GetSubtopicYear<TRes>
    implements CopyWith$Variables$Query$GetSubtopicYear<TRes> {
  _CopyWithImpl$Variables$Query$GetSubtopicYear(
    this._instance,
    this._then,
  );

  final Variables$Query$GetSubtopicYear _instance;

  final TRes Function(Variables$Query$GetSubtopicYear) _then;

  static const _undefined = {};

  TRes call({Object? subtopicId = _undefined}) =>
      _then(Variables$Query$GetSubtopicYear._({
        ..._instance._$data,
        if (subtopicId != _undefined && subtopicId != null)
          'subtopicId': (subtopicId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetSubtopicYear<TRes>
    implements CopyWith$Variables$Query$GetSubtopicYear<TRes> {
  _CopyWithStubImpl$Variables$Query$GetSubtopicYear(this._res);

  TRes _res;

  call({String? subtopicId}) => _res;
}

class Query$GetSubtopicYear {
  Query$GetSubtopicYear({
    required this.yearSubtopic,
    required this.$__typename,
  });

  factory Query$GetSubtopicYear.fromJson(Map<String, dynamic> json) {
    final l$yearSubtopic = json['yearSubtopic'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopicYear(
      yearSubtopic: Query$GetSubtopicYear$yearSubtopic.fromJson(
          (l$yearSubtopic as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSubtopicYear$yearSubtopic yearSubtopic;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$yearSubtopic = yearSubtopic;
    _resultData['yearSubtopic'] = l$yearSubtopic.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$yearSubtopic = yearSubtopic;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$yearSubtopic,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSubtopicYear) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$yearSubtopic = yearSubtopic;
    final lOther$yearSubtopic = other.yearSubtopic;
    if (l$yearSubtopic != lOther$yearSubtopic) {
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

extension UtilityExtension$Query$GetSubtopicYear on Query$GetSubtopicYear {
  CopyWith$Query$GetSubtopicYear<Query$GetSubtopicYear> get copyWith =>
      CopyWith$Query$GetSubtopicYear(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSubtopicYear<TRes> {
  factory CopyWith$Query$GetSubtopicYear(
    Query$GetSubtopicYear instance,
    TRes Function(Query$GetSubtopicYear) then,
  ) = _CopyWithImpl$Query$GetSubtopicYear;

  factory CopyWith$Query$GetSubtopicYear.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSubtopicYear;

  TRes call({
    Query$GetSubtopicYear$yearSubtopic? yearSubtopic,
    String? $__typename,
  });
  CopyWith$Query$GetSubtopicYear$yearSubtopic<TRes> get yearSubtopic;
}

class _CopyWithImpl$Query$GetSubtopicYear<TRes>
    implements CopyWith$Query$GetSubtopicYear<TRes> {
  _CopyWithImpl$Query$GetSubtopicYear(
    this._instance,
    this._then,
  );

  final Query$GetSubtopicYear _instance;

  final TRes Function(Query$GetSubtopicYear) _then;

  static const _undefined = {};

  TRes call({
    Object? yearSubtopic = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSubtopicYear(
        yearSubtopic: yearSubtopic == _undefined || yearSubtopic == null
            ? _instance.yearSubtopic
            : (yearSubtopic as Query$GetSubtopicYear$yearSubtopic),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetSubtopicYear$yearSubtopic<TRes> get yearSubtopic {
    final local$yearSubtopic = _instance.yearSubtopic;
    return CopyWith$Query$GetSubtopicYear$yearSubtopic(
        local$yearSubtopic, (e) => call(yearSubtopic: e));
  }
}

class _CopyWithStubImpl$Query$GetSubtopicYear<TRes>
    implements CopyWith$Query$GetSubtopicYear<TRes> {
  _CopyWithStubImpl$Query$GetSubtopicYear(this._res);

  TRes _res;

  call({
    Query$GetSubtopicYear$yearSubtopic? yearSubtopic,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetSubtopicYear$yearSubtopic<TRes> get yearSubtopic =>
      CopyWith$Query$GetSubtopicYear$yearSubtopic.stub(_res);
}

const documentNodeQueryGetSubtopicYear = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetSubtopicYear'),
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
        alias: NameNode(value: 'yearSubtopic'),
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
            name: NameNode(value: 'years'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Year'),
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
  fragmentDefinitionYear,
]);
Query$GetSubtopicYear _parserFn$Query$GetSubtopicYear(
        Map<String, dynamic> data) =>
    Query$GetSubtopicYear.fromJson(data);

class Options$Query$GetSubtopicYear
    extends graphql.QueryOptions<Query$GetSubtopicYear> {
  Options$Query$GetSubtopicYear({
    String? operationName,
    required Variables$Query$GetSubtopicYear variables,
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
          document: documentNodeQueryGetSubtopicYear,
          parserFn: _parserFn$Query$GetSubtopicYear,
        );
}

class WatchOptions$Query$GetSubtopicYear
    extends graphql.WatchQueryOptions<Query$GetSubtopicYear> {
  WatchOptions$Query$GetSubtopicYear({
    String? operationName,
    required Variables$Query$GetSubtopicYear variables,
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
          document: documentNodeQueryGetSubtopicYear,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetSubtopicYear,
        );
}

class FetchMoreOptions$Query$GetSubtopicYear extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetSubtopicYear({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetSubtopicYear variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetSubtopicYear,
        );
}

extension ClientExtension$Query$GetSubtopicYear on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetSubtopicYear>> query$GetSubtopicYear(
          Options$Query$GetSubtopicYear options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetSubtopicYear> watchQuery$GetSubtopicYear(
          WatchOptions$Query$GetSubtopicYear options) =>
      this.watchQuery(options);
  void writeQuery$GetSubtopicYear({
    required Query$GetSubtopicYear data,
    required Variables$Query$GetSubtopicYear variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetSubtopicYear),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetSubtopicYear? readQuery$GetSubtopicYear({
    required Variables$Query$GetSubtopicYear variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetSubtopicYear),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetSubtopicYear.fromJson(result);
  }
}

class Query$GetSubtopicYear$yearSubtopic {
  Query$GetSubtopicYear$yearSubtopic({
    required this.id,
    required this.years,
    required this.$__typename,
  });

  factory Query$GetSubtopicYear$yearSubtopic.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$years = json['years'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopicYear$yearSubtopic(
      id: (l$id as String),
      years: (l$years as List<dynamic>)
          .map((e) => Fragment$Year.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final List<Fragment$Year> years;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$years = years;
    _resultData['years'] = l$years.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$years = years;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$years.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSubtopicYear$yearSubtopic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetSubtopicYear$yearSubtopic
    on Query$GetSubtopicYear$yearSubtopic {
  CopyWith$Query$GetSubtopicYear$yearSubtopic<
          Query$GetSubtopicYear$yearSubtopic>
      get copyWith => CopyWith$Query$GetSubtopicYear$yearSubtopic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSubtopicYear$yearSubtopic<TRes> {
  factory CopyWith$Query$GetSubtopicYear$yearSubtopic(
    Query$GetSubtopicYear$yearSubtopic instance,
    TRes Function(Query$GetSubtopicYear$yearSubtopic) then,
  ) = _CopyWithImpl$Query$GetSubtopicYear$yearSubtopic;

  factory CopyWith$Query$GetSubtopicYear$yearSubtopic.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSubtopicYear$yearSubtopic;

  TRes call({
    String? id,
    List<Fragment$Year>? years,
    String? $__typename,
  });
  TRes years(
      Iterable<Fragment$Year> Function(
              Iterable<CopyWith$Fragment$Year<Fragment$Year>>)
          _fn);
}

class _CopyWithImpl$Query$GetSubtopicYear$yearSubtopic<TRes>
    implements CopyWith$Query$GetSubtopicYear$yearSubtopic<TRes> {
  _CopyWithImpl$Query$GetSubtopicYear$yearSubtopic(
    this._instance,
    this._then,
  );

  final Query$GetSubtopicYear$yearSubtopic _instance;

  final TRes Function(Query$GetSubtopicYear$yearSubtopic) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? years = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSubtopicYear$yearSubtopic(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        years: years == _undefined || years == null
            ? _instance.years
            : (years as List<Fragment$Year>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes years(
          Iterable<Fragment$Year> Function(
                  Iterable<CopyWith$Fragment$Year<Fragment$Year>>)
              _fn) =>
      call(
          years: _fn(_instance.years.map((e) => CopyWith$Fragment$Year(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetSubtopicYear$yearSubtopic<TRes>
    implements CopyWith$Query$GetSubtopicYear$yearSubtopic<TRes> {
  _CopyWithStubImpl$Query$GetSubtopicYear$yearSubtopic(this._res);

  TRes _res;

  call({
    String? id,
    List<Fragment$Year>? years,
    String? $__typename,
  }) =>
      _res;
  years(_fn) => _res;
}

class Variables$Query$SkillsForYear {
  factory Variables$Query$SkillsForYear({
    required String yearId,
    required String topicId,
    required String subtopicId,
  }) =>
      Variables$Query$SkillsForYear._({
        r'yearId': yearId,
        r'topicId': topicId,
        r'subtopicId': subtopicId,
      });

  Variables$Query$SkillsForYear._(this._$data);

  factory Variables$Query$SkillsForYear.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$yearId = data['yearId'];
    result$data['yearId'] = (l$yearId as String);
    final l$topicId = data['topicId'];
    result$data['topicId'] = (l$topicId as String);
    final l$subtopicId = data['subtopicId'];
    result$data['subtopicId'] = (l$subtopicId as String);
    return Variables$Query$SkillsForYear._(result$data);
  }

  Map<String, dynamic> _$data;

  String get yearId => (_$data['yearId'] as String);
  String get topicId => (_$data['topicId'] as String);
  String get subtopicId => (_$data['subtopicId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$yearId = yearId;
    result$data['yearId'] = l$yearId;
    final l$topicId = topicId;
    result$data['topicId'] = l$topicId;
    final l$subtopicId = subtopicId;
    result$data['subtopicId'] = l$subtopicId;
    return result$data;
  }

  CopyWith$Variables$Query$SkillsForYear<Variables$Query$SkillsForYear>
      get copyWith => CopyWith$Variables$Query$SkillsForYear(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$SkillsForYear) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yearId = yearId;
    final lOther$yearId = other.yearId;
    if (l$yearId != lOther$yearId) {
      return false;
    }
    final l$topicId = topicId;
    final lOther$topicId = other.topicId;
    if (l$topicId != lOther$topicId) {
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
    final l$yearId = yearId;
    final l$topicId = topicId;
    final l$subtopicId = subtopicId;
    return Object.hashAll([
      l$yearId,
      l$topicId,
      l$subtopicId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$SkillsForYear<TRes> {
  factory CopyWith$Variables$Query$SkillsForYear(
    Variables$Query$SkillsForYear instance,
    TRes Function(Variables$Query$SkillsForYear) then,
  ) = _CopyWithImpl$Variables$Query$SkillsForYear;

  factory CopyWith$Variables$Query$SkillsForYear.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SkillsForYear;

  TRes call({
    String? yearId,
    String? topicId,
    String? subtopicId,
  });
}

class _CopyWithImpl$Variables$Query$SkillsForYear<TRes>
    implements CopyWith$Variables$Query$SkillsForYear<TRes> {
  _CopyWithImpl$Variables$Query$SkillsForYear(
    this._instance,
    this._then,
  );

  final Variables$Query$SkillsForYear _instance;

  final TRes Function(Variables$Query$SkillsForYear) _then;

  static const _undefined = {};

  TRes call({
    Object? yearId = _undefined,
    Object? topicId = _undefined,
    Object? subtopicId = _undefined,
  }) =>
      _then(Variables$Query$SkillsForYear._({
        ..._instance._$data,
        if (yearId != _undefined && yearId != null)
          'yearId': (yearId as String),
        if (topicId != _undefined && topicId != null)
          'topicId': (topicId as String),
        if (subtopicId != _undefined && subtopicId != null)
          'subtopicId': (subtopicId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$SkillsForYear<TRes>
    implements CopyWith$Variables$Query$SkillsForYear<TRes> {
  _CopyWithStubImpl$Variables$Query$SkillsForYear(this._res);

  TRes _res;

  call({
    String? yearId,
    String? topicId,
    String? subtopicId,
  }) =>
      _res;
}

class Query$SkillsForYear {
  Query$SkillsForYear({
    required this.skSubtopic,
    required this.yearTopic,
    required this.$__typename,
  });

  factory Query$SkillsForYear.fromJson(Map<String, dynamic> json) {
    final l$skSubtopic = json['skSubtopic'];
    final l$yearTopic = json['yearTopic'];
    final l$$__typename = json['__typename'];
    return Query$SkillsForYear(
      skSubtopic: Query$SkillsForYear$skSubtopic.fromJson(
          (l$skSubtopic as Map<String, dynamic>)),
      yearTopic: Query$SkillsForYear$yearTopic.fromJson(
          (l$yearTopic as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SkillsForYear$skSubtopic skSubtopic;

  final Query$SkillsForYear$yearTopic yearTopic;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$skSubtopic = skSubtopic;
    _resultData['skSubtopic'] = l$skSubtopic.toJson();
    final l$yearTopic = yearTopic;
    _resultData['yearTopic'] = l$yearTopic.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$skSubtopic = skSubtopic;
    final l$yearTopic = yearTopic;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$skSubtopic,
      l$yearTopic,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SkillsForYear) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$skSubtopic = skSubtopic;
    final lOther$skSubtopic = other.skSubtopic;
    if (l$skSubtopic != lOther$skSubtopic) {
      return false;
    }
    final l$yearTopic = yearTopic;
    final lOther$yearTopic = other.yearTopic;
    if (l$yearTopic != lOther$yearTopic) {
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

extension UtilityExtension$Query$SkillsForYear on Query$SkillsForYear {
  CopyWith$Query$SkillsForYear<Query$SkillsForYear> get copyWith =>
      CopyWith$Query$SkillsForYear(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SkillsForYear<TRes> {
  factory CopyWith$Query$SkillsForYear(
    Query$SkillsForYear instance,
    TRes Function(Query$SkillsForYear) then,
  ) = _CopyWithImpl$Query$SkillsForYear;

  factory CopyWith$Query$SkillsForYear.stub(TRes res) =
      _CopyWithStubImpl$Query$SkillsForYear;

  TRes call({
    Query$SkillsForYear$skSubtopic? skSubtopic,
    Query$SkillsForYear$yearTopic? yearTopic,
    String? $__typename,
  });
  CopyWith$Query$SkillsForYear$skSubtopic<TRes> get skSubtopic;
  CopyWith$Query$SkillsForYear$yearTopic<TRes> get yearTopic;
}

class _CopyWithImpl$Query$SkillsForYear<TRes>
    implements CopyWith$Query$SkillsForYear<TRes> {
  _CopyWithImpl$Query$SkillsForYear(
    this._instance,
    this._then,
  );

  final Query$SkillsForYear _instance;

  final TRes Function(Query$SkillsForYear) _then;

  static const _undefined = {};

  TRes call({
    Object? skSubtopic = _undefined,
    Object? yearTopic = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SkillsForYear(
        skSubtopic: skSubtopic == _undefined || skSubtopic == null
            ? _instance.skSubtopic
            : (skSubtopic as Query$SkillsForYear$skSubtopic),
        yearTopic: yearTopic == _undefined || yearTopic == null
            ? _instance.yearTopic
            : (yearTopic as Query$SkillsForYear$yearTopic),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$SkillsForYear$skSubtopic<TRes> get skSubtopic {
    final local$skSubtopic = _instance.skSubtopic;
    return CopyWith$Query$SkillsForYear$skSubtopic(
        local$skSubtopic, (e) => call(skSubtopic: e));
  }

  CopyWith$Query$SkillsForYear$yearTopic<TRes> get yearTopic {
    final local$yearTopic = _instance.yearTopic;
    return CopyWith$Query$SkillsForYear$yearTopic(
        local$yearTopic, (e) => call(yearTopic: e));
  }
}

class _CopyWithStubImpl$Query$SkillsForYear<TRes>
    implements CopyWith$Query$SkillsForYear<TRes> {
  _CopyWithStubImpl$Query$SkillsForYear(this._res);

  TRes _res;

  call({
    Query$SkillsForYear$skSubtopic? skSubtopic,
    Query$SkillsForYear$yearTopic? yearTopic,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$SkillsForYear$skSubtopic<TRes> get skSubtopic =>
      CopyWith$Query$SkillsForYear$skSubtopic.stub(_res);
  CopyWith$Query$SkillsForYear$yearTopic<TRes> get yearTopic =>
      CopyWith$Query$SkillsForYear$yearTopic.stub(_res);
}

const documentNodeQuerySkillsForYear = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SkillsForYear'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'yearId')),
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
        alias: NameNode(value: 'skSubtopic'),
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
            name: NameNode(value: 'skillsForYear'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'yearID'),
                value: VariableNode(name: NameNode(value: 'yearId')),
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
                name: NameNode(value: 'headerTextForYear'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'yearID'),
                    value: VariableNode(name: NameNode(value: 'yearId')),
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
                name: NameNode(value: 'years'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'Year'),
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
        name: NameNode(value: 'topic'),
        alias: NameNode(value: 'yearTopic'),
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
  fragmentDefinitionYear,
]);
Query$SkillsForYear _parserFn$Query$SkillsForYear(Map<String, dynamic> data) =>
    Query$SkillsForYear.fromJson(data);

class Options$Query$SkillsForYear
    extends graphql.QueryOptions<Query$SkillsForYear> {
  Options$Query$SkillsForYear({
    String? operationName,
    required Variables$Query$SkillsForYear variables,
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
          document: documentNodeQuerySkillsForYear,
          parserFn: _parserFn$Query$SkillsForYear,
        );
}

class WatchOptions$Query$SkillsForYear
    extends graphql.WatchQueryOptions<Query$SkillsForYear> {
  WatchOptions$Query$SkillsForYear({
    String? operationName,
    required Variables$Query$SkillsForYear variables,
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
          document: documentNodeQuerySkillsForYear,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$SkillsForYear,
        );
}

class FetchMoreOptions$Query$SkillsForYear extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SkillsForYear({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$SkillsForYear variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerySkillsForYear,
        );
}

extension ClientExtension$Query$SkillsForYear on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SkillsForYear>> query$SkillsForYear(
          Options$Query$SkillsForYear options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$SkillsForYear> watchQuery$SkillsForYear(
          WatchOptions$Query$SkillsForYear options) =>
      this.watchQuery(options);
  void writeQuery$SkillsForYear({
    required Query$SkillsForYear data,
    required Variables$Query$SkillsForYear variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerySkillsForYear),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$SkillsForYear? readQuery$SkillsForYear({
    required Variables$Query$SkillsForYear variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerySkillsForYear),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$SkillsForYear.fromJson(result);
  }
}

class Query$SkillsForYear$skSubtopic {
  Query$SkillsForYear$skSubtopic({
    required this.id,
    required this.skillsForYear,
    required this.$__typename,
  });

  factory Query$SkillsForYear$skSubtopic.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$skillsForYear = json['skillsForYear'];
    final l$$__typename = json['__typename'];
    return Query$SkillsForYear$skSubtopic(
      id: (l$id as String),
      skillsForYear: (l$skillsForYear as List<dynamic>)
          .map((e) => Query$SkillsForYear$skSubtopic$skillsForYear.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final List<Query$SkillsForYear$skSubtopic$skillsForYear> skillsForYear;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$skillsForYear = skillsForYear;
    _resultData['skillsForYear'] =
        l$skillsForYear.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$skillsForYear = skillsForYear;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$skillsForYear.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SkillsForYear$skSubtopic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$skillsForYear = skillsForYear;
    final lOther$skillsForYear = other.skillsForYear;
    if (l$skillsForYear.length != lOther$skillsForYear.length) {
      return false;
    }
    for (int i = 0; i < l$skillsForYear.length; i++) {
      final l$skillsForYear$entry = l$skillsForYear[i];
      final lOther$skillsForYear$entry = lOther$skillsForYear[i];
      if (l$skillsForYear$entry != lOther$skillsForYear$entry) {
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

extension UtilityExtension$Query$SkillsForYear$skSubtopic
    on Query$SkillsForYear$skSubtopic {
  CopyWith$Query$SkillsForYear$skSubtopic<Query$SkillsForYear$skSubtopic>
      get copyWith => CopyWith$Query$SkillsForYear$skSubtopic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SkillsForYear$skSubtopic<TRes> {
  factory CopyWith$Query$SkillsForYear$skSubtopic(
    Query$SkillsForYear$skSubtopic instance,
    TRes Function(Query$SkillsForYear$skSubtopic) then,
  ) = _CopyWithImpl$Query$SkillsForYear$skSubtopic;

  factory CopyWith$Query$SkillsForYear$skSubtopic.stub(TRes res) =
      _CopyWithStubImpl$Query$SkillsForYear$skSubtopic;

  TRes call({
    String? id,
    List<Query$SkillsForYear$skSubtopic$skillsForYear>? skillsForYear,
    String? $__typename,
  });
  TRes skillsForYear(
      Iterable<Query$SkillsForYear$skSubtopic$skillsForYear> Function(
              Iterable<
                  CopyWith$Query$SkillsForYear$skSubtopic$skillsForYear<
                      Query$SkillsForYear$skSubtopic$skillsForYear>>)
          _fn);
}

class _CopyWithImpl$Query$SkillsForYear$skSubtopic<TRes>
    implements CopyWith$Query$SkillsForYear$skSubtopic<TRes> {
  _CopyWithImpl$Query$SkillsForYear$skSubtopic(
    this._instance,
    this._then,
  );

  final Query$SkillsForYear$skSubtopic _instance;

  final TRes Function(Query$SkillsForYear$skSubtopic) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? skillsForYear = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SkillsForYear$skSubtopic(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        skillsForYear: skillsForYear == _undefined || skillsForYear == null
            ? _instance.skillsForYear
            : (skillsForYear
                as List<Query$SkillsForYear$skSubtopic$skillsForYear>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes skillsForYear(
          Iterable<Query$SkillsForYear$skSubtopic$skillsForYear> Function(
                  Iterable<
                      CopyWith$Query$SkillsForYear$skSubtopic$skillsForYear<
                          Query$SkillsForYear$skSubtopic$skillsForYear>>)
              _fn) =>
      call(
          skillsForYear: _fn(_instance.skillsForYear
              .map((e) => CopyWith$Query$SkillsForYear$skSubtopic$skillsForYear(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$SkillsForYear$skSubtopic<TRes>
    implements CopyWith$Query$SkillsForYear$skSubtopic<TRes> {
  _CopyWithStubImpl$Query$SkillsForYear$skSubtopic(this._res);

  TRes _res;

  call({
    String? id,
    List<Query$SkillsForYear$skSubtopic$skillsForYear>? skillsForYear,
    String? $__typename,
  }) =>
      _res;
  skillsForYear(_fn) => _res;
}

class Query$SkillsForYear$skSubtopic$skillsForYear {
  Query$SkillsForYear$skSubtopic$skillsForYear({
    required this.id,
    required this.title,
    required this.headerTextForYear,
    required this.years,
    required this.$__typename,
  });

  factory Query$SkillsForYear$skSubtopic$skillsForYear.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$headerTextForYear = json['headerTextForYear'];
    final l$years = json['years'];
    final l$$__typename = json['__typename'];
    return Query$SkillsForYear$skSubtopic$skillsForYear(
      id: (l$id as String),
      title: (l$title as String),
      headerTextForYear: (l$headerTextForYear as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      years: (l$years as List<dynamic>)
          .map((e) => Fragment$Year.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final List<String> headerTextForYear;

  final List<Fragment$Year> years;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$headerTextForYear = headerTextForYear;
    _resultData['headerTextForYear'] =
        l$headerTextForYear.map((e) => e).toList();
    final l$years = years;
    _resultData['years'] = l$years.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$headerTextForYear = headerTextForYear;
    final l$years = years;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      Object.hashAll(l$headerTextForYear.map((v) => v)),
      Object.hashAll(l$years.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SkillsForYear$skSubtopic$skillsForYear) ||
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
    final l$headerTextForYear = headerTextForYear;
    final lOther$headerTextForYear = other.headerTextForYear;
    if (l$headerTextForYear.length != lOther$headerTextForYear.length) {
      return false;
    }
    for (int i = 0; i < l$headerTextForYear.length; i++) {
      final l$headerTextForYear$entry = l$headerTextForYear[i];
      final lOther$headerTextForYear$entry = lOther$headerTextForYear[i];
      if (l$headerTextForYear$entry != lOther$headerTextForYear$entry) {
        return false;
      }
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

extension UtilityExtension$Query$SkillsForYear$skSubtopic$skillsForYear
    on Query$SkillsForYear$skSubtopic$skillsForYear {
  CopyWith$Query$SkillsForYear$skSubtopic$skillsForYear<
          Query$SkillsForYear$skSubtopic$skillsForYear>
      get copyWith => CopyWith$Query$SkillsForYear$skSubtopic$skillsForYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SkillsForYear$skSubtopic$skillsForYear<TRes> {
  factory CopyWith$Query$SkillsForYear$skSubtopic$skillsForYear(
    Query$SkillsForYear$skSubtopic$skillsForYear instance,
    TRes Function(Query$SkillsForYear$skSubtopic$skillsForYear) then,
  ) = _CopyWithImpl$Query$SkillsForYear$skSubtopic$skillsForYear;

  factory CopyWith$Query$SkillsForYear$skSubtopic$skillsForYear.stub(TRes res) =
      _CopyWithStubImpl$Query$SkillsForYear$skSubtopic$skillsForYear;

  TRes call({
    String? id,
    String? title,
    List<String>? headerTextForYear,
    List<Fragment$Year>? years,
    String? $__typename,
  });
  TRes years(
      Iterable<Fragment$Year> Function(
              Iterable<CopyWith$Fragment$Year<Fragment$Year>>)
          _fn);
}

class _CopyWithImpl$Query$SkillsForYear$skSubtopic$skillsForYear<TRes>
    implements CopyWith$Query$SkillsForYear$skSubtopic$skillsForYear<TRes> {
  _CopyWithImpl$Query$SkillsForYear$skSubtopic$skillsForYear(
    this._instance,
    this._then,
  );

  final Query$SkillsForYear$skSubtopic$skillsForYear _instance;

  final TRes Function(Query$SkillsForYear$skSubtopic$skillsForYear) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? headerTextForYear = _undefined,
    Object? years = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SkillsForYear$skSubtopic$skillsForYear(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        headerTextForYear:
            headerTextForYear == _undefined || headerTextForYear == null
                ? _instance.headerTextForYear
                : (headerTextForYear as List<String>),
        years: years == _undefined || years == null
            ? _instance.years
            : (years as List<Fragment$Year>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes years(
          Iterable<Fragment$Year> Function(
                  Iterable<CopyWith$Fragment$Year<Fragment$Year>>)
              _fn) =>
      call(
          years: _fn(_instance.years.map((e) => CopyWith$Fragment$Year(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$SkillsForYear$skSubtopic$skillsForYear<TRes>
    implements CopyWith$Query$SkillsForYear$skSubtopic$skillsForYear<TRes> {
  _CopyWithStubImpl$Query$SkillsForYear$skSubtopic$skillsForYear(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    List<String>? headerTextForYear,
    List<Fragment$Year>? years,
    String? $__typename,
  }) =>
      _res;
  years(_fn) => _res;
}

class Query$SkillsForYear$yearTopic {
  Query$SkillsForYear$yearTopic({
    required this.id,
    required this.color,
    required this.$__typename,
  });

  factory Query$SkillsForYear$yearTopic.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Query$SkillsForYear$yearTopic(
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
    if (!(other is Query$SkillsForYear$yearTopic) ||
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

extension UtilityExtension$Query$SkillsForYear$yearTopic
    on Query$SkillsForYear$yearTopic {
  CopyWith$Query$SkillsForYear$yearTopic<Query$SkillsForYear$yearTopic>
      get copyWith => CopyWith$Query$SkillsForYear$yearTopic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SkillsForYear$yearTopic<TRes> {
  factory CopyWith$Query$SkillsForYear$yearTopic(
    Query$SkillsForYear$yearTopic instance,
    TRes Function(Query$SkillsForYear$yearTopic) then,
  ) = _CopyWithImpl$Query$SkillsForYear$yearTopic;

  factory CopyWith$Query$SkillsForYear$yearTopic.stub(TRes res) =
      _CopyWithStubImpl$Query$SkillsForYear$yearTopic;

  TRes call({
    String? id,
    String? color,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SkillsForYear$yearTopic<TRes>
    implements CopyWith$Query$SkillsForYear$yearTopic<TRes> {
  _CopyWithImpl$Query$SkillsForYear$yearTopic(
    this._instance,
    this._then,
  );

  final Query$SkillsForYear$yearTopic _instance;

  final TRes Function(Query$SkillsForYear$yearTopic) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SkillsForYear$yearTopic(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        color: color == _undefined || color == null
            ? _instance.color
            : (color as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SkillsForYear$yearTopic<TRes>
    implements CopyWith$Query$SkillsForYear$yearTopic<TRes> {
  _CopyWithStubImpl$Query$SkillsForYear$yearTopic(this._res);

  TRes _res;

  call({
    String? id,
    String? color,
    String? $__typename,
  }) =>
      _res;
}

class Query$AllYears {
  Query$AllYears({
    required this.allYears,
    required this.$__typename,
  });

  factory Query$AllYears.fromJson(Map<String, dynamic> json) {
    final l$allYears = json['allYears'];
    final l$$__typename = json['__typename'];
    return Query$AllYears(
      allYears: (l$allYears as List<dynamic>)
          .map((e) => Fragment$Year.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Year> allYears;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allYears = allYears;
    _resultData['allYears'] = l$allYears.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allYears = allYears;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$allYears.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AllYears) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$allYears = allYears;
    final lOther$allYears = other.allYears;
    if (l$allYears.length != lOther$allYears.length) {
      return false;
    }
    for (int i = 0; i < l$allYears.length; i++) {
      final l$allYears$entry = l$allYears[i];
      final lOther$allYears$entry = lOther$allYears[i];
      if (l$allYears$entry != lOther$allYears$entry) {
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

extension UtilityExtension$Query$AllYears on Query$AllYears {
  CopyWith$Query$AllYears<Query$AllYears> get copyWith =>
      CopyWith$Query$AllYears(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AllYears<TRes> {
  factory CopyWith$Query$AllYears(
    Query$AllYears instance,
    TRes Function(Query$AllYears) then,
  ) = _CopyWithImpl$Query$AllYears;

  factory CopyWith$Query$AllYears.stub(TRes res) =
      _CopyWithStubImpl$Query$AllYears;

  TRes call({
    List<Fragment$Year>? allYears,
    String? $__typename,
  });
  TRes allYears(
      Iterable<Fragment$Year> Function(
              Iterable<CopyWith$Fragment$Year<Fragment$Year>>)
          _fn);
}

class _CopyWithImpl$Query$AllYears<TRes>
    implements CopyWith$Query$AllYears<TRes> {
  _CopyWithImpl$Query$AllYears(
    this._instance,
    this._then,
  );

  final Query$AllYears _instance;

  final TRes Function(Query$AllYears) _then;

  static const _undefined = {};

  TRes call({
    Object? allYears = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllYears(
        allYears: allYears == _undefined || allYears == null
            ? _instance.allYears
            : (allYears as List<Fragment$Year>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes allYears(
          Iterable<Fragment$Year> Function(
                  Iterable<CopyWith$Fragment$Year<Fragment$Year>>)
              _fn) =>
      call(
          allYears: _fn(_instance.allYears.map((e) => CopyWith$Fragment$Year(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$AllYears<TRes>
    implements CopyWith$Query$AllYears<TRes> {
  _CopyWithStubImpl$Query$AllYears(this._res);

  TRes _res;

  call({
    List<Fragment$Year>? allYears,
    String? $__typename,
  }) =>
      _res;
  allYears(_fn) => _res;
}

const documentNodeQueryAllYears = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'AllYears'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'allYears'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Year'),
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
  fragmentDefinitionYear,
]);
Query$AllYears _parserFn$Query$AllYears(Map<String, dynamic> data) =>
    Query$AllYears.fromJson(data);

class Options$Query$AllYears extends graphql.QueryOptions<Query$AllYears> {
  Options$Query$AllYears({
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
          document: documentNodeQueryAllYears,
          parserFn: _parserFn$Query$AllYears,
        );
}

class WatchOptions$Query$AllYears
    extends graphql.WatchQueryOptions<Query$AllYears> {
  WatchOptions$Query$AllYears({
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
          document: documentNodeQueryAllYears,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$AllYears,
        );
}

class FetchMoreOptions$Query$AllYears extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$AllYears({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryAllYears,
        );
}

extension ClientExtension$Query$AllYears on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$AllYears>> query$AllYears(
          [Options$Query$AllYears? options]) async =>
      await this.query(options ?? Options$Query$AllYears());
  graphql.ObservableQuery<Query$AllYears> watchQuery$AllYears(
          [WatchOptions$Query$AllYears? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$AllYears());
  void writeQuery$AllYears({
    required Query$AllYears data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryAllYears)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$AllYears? readQuery$AllYears({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryAllYears)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$AllYears.fromJson(result);
  }
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
            name: NameNode(value: 'totalSkills'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: 'Year'),
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
  fragmentDefinitionYear,
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
    required this.totalSkills,
    required this.years,
    required this.$__typename,
  });

  factory Query$GetSubtopic$subtopic.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$icon = json['icon'];
    final l$title = json['title'];
    final l$totalSkills = json['totalSkills'];
    final l$years = json['years'];
    final l$$__typename = json['__typename'];
    return Query$GetSubtopic$subtopic(
      id: (l$id as String),
      icon: (l$icon as String),
      title: (l$title as String),
      totalSkills: (l$totalSkills as int),
      years: (l$years as List<dynamic>)
          .map((e) => Fragment$Year.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String icon;

  final String title;

  final int totalSkills;

  final List<Fragment$Year> years;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$icon = icon;
    _resultData['icon'] = l$icon;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$totalSkills = totalSkills;
    _resultData['totalSkills'] = l$totalSkills;
    final l$years = years;
    _resultData['years'] = l$years.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$icon = icon;
    final l$title = title;
    final l$totalSkills = totalSkills;
    final l$years = years;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$icon,
      l$title,
      l$totalSkills,
      Object.hashAll(l$years.map((v) => v)),
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
    final l$totalSkills = totalSkills;
    final lOther$totalSkills = other.totalSkills;
    if (l$totalSkills != lOther$totalSkills) {
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
    int? totalSkills,
    List<Fragment$Year>? years,
    String? $__typename,
  });
  TRes years(
      Iterable<Fragment$Year> Function(
              Iterable<CopyWith$Fragment$Year<Fragment$Year>>)
          _fn);
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
    Object? totalSkills = _undefined,
    Object? years = _undefined,
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
        totalSkills: totalSkills == _undefined || totalSkills == null
            ? _instance.totalSkills
            : (totalSkills as int),
        years: years == _undefined || years == null
            ? _instance.years
            : (years as List<Fragment$Year>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes years(
          Iterable<Fragment$Year> Function(
                  Iterable<CopyWith$Fragment$Year<Fragment$Year>>)
              _fn) =>
      call(
          years: _fn(_instance.years.map((e) => CopyWith$Fragment$Year(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetSubtopic$subtopic<TRes>
    implements CopyWith$Query$GetSubtopic$subtopic<TRes> {
  _CopyWithStubImpl$Query$GetSubtopic$subtopic(this._res);

  TRes _res;

  call({
    String? id,
    String? icon,
    String? title,
    int? totalSkills,
    List<Fragment$Year>? years,
    String? $__typename,
  }) =>
      _res;
  years(_fn) => _res;
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
