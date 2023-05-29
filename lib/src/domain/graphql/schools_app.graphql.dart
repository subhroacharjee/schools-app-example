import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:schema/schema.dart';
import 'package:schema/src/tutero_graph.graphql.dart';

class Variables$Query$GetClassNameAndYear {
  factory Variables$Query$GetClassNameAndYear({required String classId}) =>
      Variables$Query$GetClassNameAndYear._({
        r'classId': classId,
      });

  Variables$Query$GetClassNameAndYear._(this._$data);

  factory Variables$Query$GetClassNameAndYear.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    return Variables$Query$GetClassNameAndYear._(result$data);
  }

  Map<String, dynamic> _$data;

  String get classId => (_$data['classId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$classId = classId;
    result$data['classId'] = l$classId;
    return result$data;
  }

  CopyWith$Variables$Query$GetClassNameAndYear<
          Variables$Query$GetClassNameAndYear>
      get copyWith => CopyWith$Variables$Query$GetClassNameAndYear(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetClassNameAndYear) ||
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

abstract class CopyWith$Variables$Query$GetClassNameAndYear<TRes> {
  factory CopyWith$Variables$Query$GetClassNameAndYear(
    Variables$Query$GetClassNameAndYear instance,
    TRes Function(Variables$Query$GetClassNameAndYear) then,
  ) = _CopyWithImpl$Variables$Query$GetClassNameAndYear;

  factory CopyWith$Variables$Query$GetClassNameAndYear.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetClassNameAndYear;

  TRes call({String? classId});
}

class _CopyWithImpl$Variables$Query$GetClassNameAndYear<TRes>
    implements CopyWith$Variables$Query$GetClassNameAndYear<TRes> {
  _CopyWithImpl$Variables$Query$GetClassNameAndYear(
    this._instance,
    this._then,
  );

  final Variables$Query$GetClassNameAndYear _instance;

  final TRes Function(Variables$Query$GetClassNameAndYear) _then;

  static const _undefined = {};

  TRes call({Object? classId = _undefined}) =>
      _then(Variables$Query$GetClassNameAndYear._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetClassNameAndYear<TRes>
    implements CopyWith$Variables$Query$GetClassNameAndYear<TRes> {
  _CopyWithStubImpl$Variables$Query$GetClassNameAndYear(this._res);

  TRes _res;

  call({String? classId}) => _res;
}

class Query$GetClassNameAndYear {
  Query$GetClassNameAndYear({
    required this.classNameAndYear,
    required this.$__typename,
  });

  factory Query$GetClassNameAndYear.fromJson(Map<String, dynamic> json) {
    final l$classNameAndYear = json['classNameAndYear'];
    final l$$__typename = json['__typename'];
    return Query$GetClassNameAndYear(
      classNameAndYear: Query$GetClassNameAndYear$classNameAndYear.fromJson(
          (l$classNameAndYear as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetClassNameAndYear$classNameAndYear classNameAndYear;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$classNameAndYear = classNameAndYear;
    _resultData['classNameAndYear'] = l$classNameAndYear.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$classNameAndYear = classNameAndYear;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$classNameAndYear,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetClassNameAndYear) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classNameAndYear = classNameAndYear;
    final lOther$classNameAndYear = other.classNameAndYear;
    if (l$classNameAndYear != lOther$classNameAndYear) {
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

extension UtilityExtension$Query$GetClassNameAndYear
    on Query$GetClassNameAndYear {
  CopyWith$Query$GetClassNameAndYear<Query$GetClassNameAndYear> get copyWith =>
      CopyWith$Query$GetClassNameAndYear(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetClassNameAndYear<TRes> {
  factory CopyWith$Query$GetClassNameAndYear(
    Query$GetClassNameAndYear instance,
    TRes Function(Query$GetClassNameAndYear) then,
  ) = _CopyWithImpl$Query$GetClassNameAndYear;

  factory CopyWith$Query$GetClassNameAndYear.stub(TRes res) =
      _CopyWithStubImpl$Query$GetClassNameAndYear;

  TRes call({
    Query$GetClassNameAndYear$classNameAndYear? classNameAndYear,
    String? $__typename,
  });
  CopyWith$Query$GetClassNameAndYear$classNameAndYear<TRes>
      get classNameAndYear;
}

class _CopyWithImpl$Query$GetClassNameAndYear<TRes>
    implements CopyWith$Query$GetClassNameAndYear<TRes> {
  _CopyWithImpl$Query$GetClassNameAndYear(
    this._instance,
    this._then,
  );

  final Query$GetClassNameAndYear _instance;

  final TRes Function(Query$GetClassNameAndYear) _then;

  static const _undefined = {};

  TRes call({
    Object? classNameAndYear = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetClassNameAndYear(
        classNameAndYear: classNameAndYear == _undefined ||
                classNameAndYear == null
            ? _instance.classNameAndYear
            : (classNameAndYear as Query$GetClassNameAndYear$classNameAndYear),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetClassNameAndYear$classNameAndYear<TRes>
      get classNameAndYear {
    final local$classNameAndYear = _instance.classNameAndYear;
    return CopyWith$Query$GetClassNameAndYear$classNameAndYear(
        local$classNameAndYear, (e) => call(classNameAndYear: e));
  }
}

class _CopyWithStubImpl$Query$GetClassNameAndYear<TRes>
    implements CopyWith$Query$GetClassNameAndYear<TRes> {
  _CopyWithStubImpl$Query$GetClassNameAndYear(this._res);

  TRes _res;

  call({
    Query$GetClassNameAndYear$classNameAndYear? classNameAndYear,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetClassNameAndYear$classNameAndYear<TRes>
      get classNameAndYear =>
          CopyWith$Query$GetClassNameAndYear$classNameAndYear.stub(_res);
}

const documentNodeQueryGetClassNameAndYear = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetClassNameAndYear'),
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
        alias: NameNode(value: 'classNameAndYear'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'classId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'year'),
            alias: NameNode(value: 'nYear'),
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
Query$GetClassNameAndYear _parserFn$Query$GetClassNameAndYear(
        Map<String, dynamic> data) =>
    Query$GetClassNameAndYear.fromJson(data);

class Options$Query$GetClassNameAndYear
    extends graphql.QueryOptions<Query$GetClassNameAndYear> {
  Options$Query$GetClassNameAndYear({
    String? operationName,
    required Variables$Query$GetClassNameAndYear variables,
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
          document: documentNodeQueryGetClassNameAndYear,
          parserFn: _parserFn$Query$GetClassNameAndYear,
        );
}

class WatchOptions$Query$GetClassNameAndYear
    extends graphql.WatchQueryOptions<Query$GetClassNameAndYear> {
  WatchOptions$Query$GetClassNameAndYear({
    String? operationName,
    required Variables$Query$GetClassNameAndYear variables,
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
          document: documentNodeQueryGetClassNameAndYear,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetClassNameAndYear,
        );
}

class FetchMoreOptions$Query$GetClassNameAndYear
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetClassNameAndYear({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetClassNameAndYear variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetClassNameAndYear,
        );
}

extension ClientExtension$Query$GetClassNameAndYear on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetClassNameAndYear>>
      query$GetClassNameAndYear(
              Options$Query$GetClassNameAndYear options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetClassNameAndYear>
      watchQuery$GetClassNameAndYear(
              WatchOptions$Query$GetClassNameAndYear options) =>
          this.watchQuery(options);
  void writeQuery$GetClassNameAndYear({
    required Query$GetClassNameAndYear data,
    required Variables$Query$GetClassNameAndYear variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetClassNameAndYear),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetClassNameAndYear? readQuery$GetClassNameAndYear({
    required Variables$Query$GetClassNameAndYear variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetClassNameAndYear),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetClassNameAndYear.fromJson(result);
  }
}

class Query$GetClassNameAndYear$classNameAndYear {
  Query$GetClassNameAndYear$classNameAndYear({
    required this.name,
    required this.nYear,
    required this.$__typename,
  });

  factory Query$GetClassNameAndYear$classNameAndYear.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$nYear = json['nYear'];
    final l$$__typename = json['__typename'];
    return Query$GetClassNameAndYear$classNameAndYear(
      name: (l$name as String),
      nYear: Query$GetClassNameAndYear$classNameAndYear$nYear.fromJson(
          (l$nYear as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final Query$GetClassNameAndYear$classNameAndYear$nYear nYear;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$nYear = nYear;
    _resultData['nYear'] = l$nYear.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$nYear = nYear;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$nYear,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetClassNameAndYear$classNameAndYear) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$nYear = nYear;
    final lOther$nYear = other.nYear;
    if (l$nYear != lOther$nYear) {
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

extension UtilityExtension$Query$GetClassNameAndYear$classNameAndYear
    on Query$GetClassNameAndYear$classNameAndYear {
  CopyWith$Query$GetClassNameAndYear$classNameAndYear<
          Query$GetClassNameAndYear$classNameAndYear>
      get copyWith => CopyWith$Query$GetClassNameAndYear$classNameAndYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetClassNameAndYear$classNameAndYear<TRes> {
  factory CopyWith$Query$GetClassNameAndYear$classNameAndYear(
    Query$GetClassNameAndYear$classNameAndYear instance,
    TRes Function(Query$GetClassNameAndYear$classNameAndYear) then,
  ) = _CopyWithImpl$Query$GetClassNameAndYear$classNameAndYear;

  factory CopyWith$Query$GetClassNameAndYear$classNameAndYear.stub(TRes res) =
      _CopyWithStubImpl$Query$GetClassNameAndYear$classNameAndYear;

  TRes call({
    String? name,
    Query$GetClassNameAndYear$classNameAndYear$nYear? nYear,
    String? $__typename,
  });
  CopyWith$Query$GetClassNameAndYear$classNameAndYear$nYear<TRes> get nYear;
}

class _CopyWithImpl$Query$GetClassNameAndYear$classNameAndYear<TRes>
    implements CopyWith$Query$GetClassNameAndYear$classNameAndYear<TRes> {
  _CopyWithImpl$Query$GetClassNameAndYear$classNameAndYear(
    this._instance,
    this._then,
  );

  final Query$GetClassNameAndYear$classNameAndYear _instance;

  final TRes Function(Query$GetClassNameAndYear$classNameAndYear) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? nYear = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetClassNameAndYear$classNameAndYear(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        nYear: nYear == _undefined || nYear == null
            ? _instance.nYear
            : (nYear as Query$GetClassNameAndYear$classNameAndYear$nYear),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetClassNameAndYear$classNameAndYear$nYear<TRes> get nYear {
    final local$nYear = _instance.nYear;
    return CopyWith$Query$GetClassNameAndYear$classNameAndYear$nYear(
        local$nYear, (e) => call(nYear: e));
  }
}

class _CopyWithStubImpl$Query$GetClassNameAndYear$classNameAndYear<TRes>
    implements CopyWith$Query$GetClassNameAndYear$classNameAndYear<TRes> {
  _CopyWithStubImpl$Query$GetClassNameAndYear$classNameAndYear(this._res);

  TRes _res;

  call({
    String? name,
    Query$GetClassNameAndYear$classNameAndYear$nYear? nYear,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetClassNameAndYear$classNameAndYear$nYear<TRes> get nYear =>
      CopyWith$Query$GetClassNameAndYear$classNameAndYear$nYear.stub(_res);
}

class Query$GetClassNameAndYear$classNameAndYear$nYear {
  Query$GetClassNameAndYear$classNameAndYear$nYear({
    required this.id,
    required this.$__typename,
  });

  factory Query$GetClassNameAndYear$classNameAndYear$nYear.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetClassNameAndYear$classNameAndYear$nYear(
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
    if (!(other is Query$GetClassNameAndYear$classNameAndYear$nYear) ||
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

extension UtilityExtension$Query$GetClassNameAndYear$classNameAndYear$nYear
    on Query$GetClassNameAndYear$classNameAndYear$nYear {
  CopyWith$Query$GetClassNameAndYear$classNameAndYear$nYear<
          Query$GetClassNameAndYear$classNameAndYear$nYear>
      get copyWith => CopyWith$Query$GetClassNameAndYear$classNameAndYear$nYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetClassNameAndYear$classNameAndYear$nYear<TRes> {
  factory CopyWith$Query$GetClassNameAndYear$classNameAndYear$nYear(
    Query$GetClassNameAndYear$classNameAndYear$nYear instance,
    TRes Function(Query$GetClassNameAndYear$classNameAndYear$nYear) then,
  ) = _CopyWithImpl$Query$GetClassNameAndYear$classNameAndYear$nYear;

  factory CopyWith$Query$GetClassNameAndYear$classNameAndYear$nYear.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetClassNameAndYear$classNameAndYear$nYear;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetClassNameAndYear$classNameAndYear$nYear<TRes>
    implements CopyWith$Query$GetClassNameAndYear$classNameAndYear$nYear<TRes> {
  _CopyWithImpl$Query$GetClassNameAndYear$classNameAndYear$nYear(
    this._instance,
    this._then,
  );

  final Query$GetClassNameAndYear$classNameAndYear$nYear _instance;

  final TRes Function(Query$GetClassNameAndYear$classNameAndYear$nYear) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetClassNameAndYear$classNameAndYear$nYear(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetClassNameAndYear$classNameAndYear$nYear<TRes>
    implements CopyWith$Query$GetClassNameAndYear$classNameAndYear$nYear<TRes> {
  _CopyWithStubImpl$Query$GetClassNameAndYear$classNameAndYear$nYear(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetClassName {
  factory Variables$Query$GetClassName({required String classId}) =>
      Variables$Query$GetClassName._({
        r'classId': classId,
      });

  Variables$Query$GetClassName._(this._$data);

  factory Variables$Query$GetClassName.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    return Variables$Query$GetClassName._(result$data);
  }

  Map<String, dynamic> _$data;

  String get classId => (_$data['classId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$classId = classId;
    result$data['classId'] = l$classId;
    return result$data;
  }

  CopyWith$Variables$Query$GetClassName<Variables$Query$GetClassName>
      get copyWith => CopyWith$Variables$Query$GetClassName(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetClassName) ||
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

abstract class CopyWith$Variables$Query$GetClassName<TRes> {
  factory CopyWith$Variables$Query$GetClassName(
    Variables$Query$GetClassName instance,
    TRes Function(Variables$Query$GetClassName) then,
  ) = _CopyWithImpl$Variables$Query$GetClassName;

  factory CopyWith$Variables$Query$GetClassName.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetClassName;

  TRes call({String? classId});
}

class _CopyWithImpl$Variables$Query$GetClassName<TRes>
    implements CopyWith$Variables$Query$GetClassName<TRes> {
  _CopyWithImpl$Variables$Query$GetClassName(
    this._instance,
    this._then,
  );

  final Variables$Query$GetClassName _instance;

  final TRes Function(Variables$Query$GetClassName) _then;

  static const _undefined = {};

  TRes call({Object? classId = _undefined}) =>
      _then(Variables$Query$GetClassName._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetClassName<TRes>
    implements CopyWith$Variables$Query$GetClassName<TRes> {
  _CopyWithStubImpl$Variables$Query$GetClassName(this._res);

  TRes _res;

  call({String? classId}) => _res;
}

class Query$GetClassName {
  Query$GetClassName({
    required this.className,
    required this.$__typename,
  });

  factory Query$GetClassName.fromJson(Map<String, dynamic> json) {
    final l$className = json['className'];
    final l$$__typename = json['__typename'];
    return Query$GetClassName(
      className: Query$GetClassName$className.fromJson(
          (l$className as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetClassName$className className;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$className = className;
    _resultData['className'] = l$className.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$className = className;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$className,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetClassName) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$className = className;
    final lOther$className = other.className;
    if (l$className != lOther$className) {
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

extension UtilityExtension$Query$GetClassName on Query$GetClassName {
  CopyWith$Query$GetClassName<Query$GetClassName> get copyWith =>
      CopyWith$Query$GetClassName(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetClassName<TRes> {
  factory CopyWith$Query$GetClassName(
    Query$GetClassName instance,
    TRes Function(Query$GetClassName) then,
  ) = _CopyWithImpl$Query$GetClassName;

  factory CopyWith$Query$GetClassName.stub(TRes res) =
      _CopyWithStubImpl$Query$GetClassName;

  TRes call({
    Query$GetClassName$className? className,
    String? $__typename,
  });
  CopyWith$Query$GetClassName$className<TRes> get className;
}

class _CopyWithImpl$Query$GetClassName<TRes>
    implements CopyWith$Query$GetClassName<TRes> {
  _CopyWithImpl$Query$GetClassName(
    this._instance,
    this._then,
  );

  final Query$GetClassName _instance;

  final TRes Function(Query$GetClassName) _then;

  static const _undefined = {};

  TRes call({
    Object? className = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetClassName(
        className: className == _undefined || className == null
            ? _instance.className
            : (className as Query$GetClassName$className),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetClassName$className<TRes> get className {
    final local$className = _instance.className;
    return CopyWith$Query$GetClassName$className(
        local$className, (e) => call(className: e));
  }
}

class _CopyWithStubImpl$Query$GetClassName<TRes>
    implements CopyWith$Query$GetClassName<TRes> {
  _CopyWithStubImpl$Query$GetClassName(this._res);

  TRes _res;

  call({
    Query$GetClassName$className? className,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetClassName$className<TRes> get className =>
      CopyWith$Query$GetClassName$className.stub(_res);
}

const documentNodeQueryGetClassName = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetClassName'),
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
        alias: NameNode(value: 'className'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'classId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
Query$GetClassName _parserFn$Query$GetClassName(Map<String, dynamic> data) =>
    Query$GetClassName.fromJson(data);

class Options$Query$GetClassName
    extends graphql.QueryOptions<Query$GetClassName> {
  Options$Query$GetClassName({
    String? operationName,
    required Variables$Query$GetClassName variables,
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
          document: documentNodeQueryGetClassName,
          parserFn: _parserFn$Query$GetClassName,
        );
}

class WatchOptions$Query$GetClassName
    extends graphql.WatchQueryOptions<Query$GetClassName> {
  WatchOptions$Query$GetClassName({
    String? operationName,
    required Variables$Query$GetClassName variables,
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
          document: documentNodeQueryGetClassName,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetClassName,
        );
}

class FetchMoreOptions$Query$GetClassName extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetClassName({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetClassName variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetClassName,
        );
}

extension ClientExtension$Query$GetClassName on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetClassName>> query$GetClassName(
          Options$Query$GetClassName options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetClassName> watchQuery$GetClassName(
          WatchOptions$Query$GetClassName options) =>
      this.watchQuery(options);
  void writeQuery$GetClassName({
    required Query$GetClassName data,
    required Variables$Query$GetClassName variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetClassName),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetClassName? readQuery$GetClassName({
    required Variables$Query$GetClassName variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetClassName),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetClassName.fromJson(result);
  }
}

class Query$GetClassName$className {
  Query$GetClassName$className({
    required this.name,
    required this.$__typename,
  });

  factory Query$GetClassName$className.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetClassName$className(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetClassName$className) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetClassName$className
    on Query$GetClassName$className {
  CopyWith$Query$GetClassName$className<Query$GetClassName$className>
      get copyWith => CopyWith$Query$GetClassName$className(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetClassName$className<TRes> {
  factory CopyWith$Query$GetClassName$className(
    Query$GetClassName$className instance,
    TRes Function(Query$GetClassName$className) then,
  ) = _CopyWithImpl$Query$GetClassName$className;

  factory CopyWith$Query$GetClassName$className.stub(TRes res) =
      _CopyWithStubImpl$Query$GetClassName$className;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetClassName$className<TRes>
    implements CopyWith$Query$GetClassName$className<TRes> {
  _CopyWithImpl$Query$GetClassName$className(
    this._instance,
    this._then,
  );

  final Query$GetClassName$className _instance;

  final TRes Function(Query$GetClassName$className) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetClassName$className(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetClassName$className<TRes>
    implements CopyWith$Query$GetClassName$className<TRes> {
  _CopyWithStubImpl$Query$GetClassName$className(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateClass {
  factory Variables$Mutation$UpdateClass({
    required String updateClassId,
    required Input$UpdateClassInput input,
  }) =>
      Variables$Mutation$UpdateClass._({
        r'updateClassId': updateClassId,
        r'input': input,
      });

  Variables$Mutation$UpdateClass._(this._$data);

  factory Variables$Mutation$UpdateClass.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$updateClassId = data['updateClassId'];
    result$data['updateClassId'] = (l$updateClassId as String);
    final l$input = data['input'];
    result$data['input'] =
        Input$UpdateClassInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateClass._(result$data);
  }

  Map<String, dynamic> _$data;

  String get updateClassId => (_$data['updateClassId'] as String);
  Input$UpdateClassInput get input =>
      (_$data['input'] as Input$UpdateClassInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$updateClassId = updateClassId;
    result$data['updateClassId'] = l$updateClassId;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateClass<Variables$Mutation$UpdateClass>
      get copyWith => CopyWith$Variables$Mutation$UpdateClass(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateClassId = updateClassId;
    final lOther$updateClassId = other.updateClassId;
    if (l$updateClassId != lOther$updateClassId) {
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
    final l$updateClassId = updateClassId;
    final l$input = input;
    return Object.hashAll([
      l$updateClassId,
      l$input,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateClass<TRes> {
  factory CopyWith$Variables$Mutation$UpdateClass(
    Variables$Mutation$UpdateClass instance,
    TRes Function(Variables$Mutation$UpdateClass) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateClass;

  factory CopyWith$Variables$Mutation$UpdateClass.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateClass;

  TRes call({
    String? updateClassId,
    Input$UpdateClassInput? input,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateClass<TRes>
    implements CopyWith$Variables$Mutation$UpdateClass<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateClass(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateClass _instance;

  final TRes Function(Variables$Mutation$UpdateClass) _then;

  static const _undefined = {};

  TRes call({
    Object? updateClassId = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateClass._({
        ..._instance._$data,
        if (updateClassId != _undefined && updateClassId != null)
          'updateClassId': (updateClassId as String),
        if (input != _undefined && input != null)
          'input': (input as Input$UpdateClassInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateClass<TRes>
    implements CopyWith$Variables$Mutation$UpdateClass<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateClass(this._res);

  TRes _res;

  call({
    String? updateClassId,
    Input$UpdateClassInput? input,
  }) =>
      _res;
}

class Mutation$UpdateClass {
  Mutation$UpdateClass({
    required this.updateClass,
    required this.$__typename,
  });

  factory Mutation$UpdateClass.fromJson(Map<String, dynamic> json) {
    final l$updateClass = json['updateClass'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateClass(
      updateClass: Mutation$UpdateClass$updateClass.fromJson(
          (l$updateClass as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateClass$updateClass updateClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateClass = updateClass;
    _resultData['updateClass'] = l$updateClass.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateClass = updateClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateClass) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateClass = updateClass;
    final lOther$updateClass = other.updateClass;
    if (l$updateClass != lOther$updateClass) {
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

extension UtilityExtension$Mutation$UpdateClass on Mutation$UpdateClass {
  CopyWith$Mutation$UpdateClass<Mutation$UpdateClass> get copyWith =>
      CopyWith$Mutation$UpdateClass(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateClass<TRes> {
  factory CopyWith$Mutation$UpdateClass(
    Mutation$UpdateClass instance,
    TRes Function(Mutation$UpdateClass) then,
  ) = _CopyWithImpl$Mutation$UpdateClass;

  factory CopyWith$Mutation$UpdateClass.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateClass;

  TRes call({
    Mutation$UpdateClass$updateClass? updateClass,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateClass$updateClass<TRes> get updateClass;
}

class _CopyWithImpl$Mutation$UpdateClass<TRes>
    implements CopyWith$Mutation$UpdateClass<TRes> {
  _CopyWithImpl$Mutation$UpdateClass(
    this._instance,
    this._then,
  );

  final Mutation$UpdateClass _instance;

  final TRes Function(Mutation$UpdateClass) _then;

  static const _undefined = {};

  TRes call({
    Object? updateClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateClass(
        updateClass: updateClass == _undefined || updateClass == null
            ? _instance.updateClass
            : (updateClass as Mutation$UpdateClass$updateClass),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UpdateClass$updateClass<TRes> get updateClass {
    final local$updateClass = _instance.updateClass;
    return CopyWith$Mutation$UpdateClass$updateClass(
        local$updateClass, (e) => call(updateClass: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateClass<TRes>
    implements CopyWith$Mutation$UpdateClass<TRes> {
  _CopyWithStubImpl$Mutation$UpdateClass(this._res);

  TRes _res;

  call({
    Mutation$UpdateClass$updateClass? updateClass,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UpdateClass$updateClass<TRes> get updateClass =>
      CopyWith$Mutation$UpdateClass$updateClass.stub(_res);
}

const documentNodeMutationUpdateClass = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateClass'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'updateClassId')),
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
          name: NameNode(value: 'UpdateClassInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateClass'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'updateClassId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'year'),
            alias: NameNode(value: 'cYear'),
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
Mutation$UpdateClass _parserFn$Mutation$UpdateClass(
        Map<String, dynamic> data) =>
    Mutation$UpdateClass.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateClass = FutureOr<void> Function(
  dynamic,
  Mutation$UpdateClass?,
);

class Options$Mutation$UpdateClass
    extends graphql.MutationOptions<Mutation$UpdateClass> {
  Options$Mutation$UpdateClass({
    String? operationName,
    required Variables$Mutation$UpdateClass variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateClass? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateClass>? update,
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
                    data == null ? null : _parserFn$Mutation$UpdateClass(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateClass,
          parserFn: _parserFn$Mutation$UpdateClass,
        );

  final OnMutationCompleted$Mutation$UpdateClass? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateClass
    extends graphql.WatchQueryOptions<Mutation$UpdateClass> {
  WatchOptions$Mutation$UpdateClass({
    String? operationName,
    required Variables$Mutation$UpdateClass variables,
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
          document: documentNodeMutationUpdateClass,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateClass,
        );
}

extension ClientExtension$Mutation$UpdateClass on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateClass>> mutate$UpdateClass(
          Options$Mutation$UpdateClass options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateClass> watchMutation$UpdateClass(
          WatchOptions$Mutation$UpdateClass options) =>
      this.watchMutation(options);
}

class Mutation$UpdateClass$updateClass {
  Mutation$UpdateClass$updateClass({
    required this.name,
    required this.cYear,
    required this.$__typename,
  });

  factory Mutation$UpdateClass$updateClass.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$cYear = json['cYear'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateClass$updateClass(
      name: (l$name as String),
      cYear: Mutation$UpdateClass$updateClass$cYear.fromJson(
          (l$cYear as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final Mutation$UpdateClass$updateClass$cYear cYear;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$cYear = cYear;
    _resultData['cYear'] = l$cYear.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$cYear = cYear;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$cYear,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateClass$updateClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$cYear = cYear;
    final lOther$cYear = other.cYear;
    if (l$cYear != lOther$cYear) {
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

extension UtilityExtension$Mutation$UpdateClass$updateClass
    on Mutation$UpdateClass$updateClass {
  CopyWith$Mutation$UpdateClass$updateClass<Mutation$UpdateClass$updateClass>
      get copyWith => CopyWith$Mutation$UpdateClass$updateClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateClass$updateClass<TRes> {
  factory CopyWith$Mutation$UpdateClass$updateClass(
    Mutation$UpdateClass$updateClass instance,
    TRes Function(Mutation$UpdateClass$updateClass) then,
  ) = _CopyWithImpl$Mutation$UpdateClass$updateClass;

  factory CopyWith$Mutation$UpdateClass$updateClass.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateClass$updateClass;

  TRes call({
    String? name,
    Mutation$UpdateClass$updateClass$cYear? cYear,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateClass$updateClass$cYear<TRes> get cYear;
}

class _CopyWithImpl$Mutation$UpdateClass$updateClass<TRes>
    implements CopyWith$Mutation$UpdateClass$updateClass<TRes> {
  _CopyWithImpl$Mutation$UpdateClass$updateClass(
    this._instance,
    this._then,
  );

  final Mutation$UpdateClass$updateClass _instance;

  final TRes Function(Mutation$UpdateClass$updateClass) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? cYear = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateClass$updateClass(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        cYear: cYear == _undefined || cYear == null
            ? _instance.cYear
            : (cYear as Mutation$UpdateClass$updateClass$cYear),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UpdateClass$updateClass$cYear<TRes> get cYear {
    final local$cYear = _instance.cYear;
    return CopyWith$Mutation$UpdateClass$updateClass$cYear(
        local$cYear, (e) => call(cYear: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateClass$updateClass<TRes>
    implements CopyWith$Mutation$UpdateClass$updateClass<TRes> {
  _CopyWithStubImpl$Mutation$UpdateClass$updateClass(this._res);

  TRes _res;

  call({
    String? name,
    Mutation$UpdateClass$updateClass$cYear? cYear,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UpdateClass$updateClass$cYear<TRes> get cYear =>
      CopyWith$Mutation$UpdateClass$updateClass$cYear.stub(_res);
}

class Mutation$UpdateClass$updateClass$cYear {
  Mutation$UpdateClass$updateClass$cYear({
    required this.id,
    required this.$__typename,
  });

  factory Mutation$UpdateClass$updateClass$cYear.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateClass$updateClass$cYear(
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
    if (!(other is Mutation$UpdateClass$updateClass$cYear) ||
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

extension UtilityExtension$Mutation$UpdateClass$updateClass$cYear
    on Mutation$UpdateClass$updateClass$cYear {
  CopyWith$Mutation$UpdateClass$updateClass$cYear<
          Mutation$UpdateClass$updateClass$cYear>
      get copyWith => CopyWith$Mutation$UpdateClass$updateClass$cYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateClass$updateClass$cYear<TRes> {
  factory CopyWith$Mutation$UpdateClass$updateClass$cYear(
    Mutation$UpdateClass$updateClass$cYear instance,
    TRes Function(Mutation$UpdateClass$updateClass$cYear) then,
  ) = _CopyWithImpl$Mutation$UpdateClass$updateClass$cYear;

  factory CopyWith$Mutation$UpdateClass$updateClass$cYear.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateClass$updateClass$cYear;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateClass$updateClass$cYear<TRes>
    implements CopyWith$Mutation$UpdateClass$updateClass$cYear<TRes> {
  _CopyWithImpl$Mutation$UpdateClass$updateClass$cYear(
    this._instance,
    this._then,
  );

  final Mutation$UpdateClass$updateClass$cYear _instance;

  final TRes Function(Mutation$UpdateClass$updateClass$cYear) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateClass$updateClass$cYear(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateClass$updateClass$cYear<TRes>
    implements CopyWith$Mutation$UpdateClass$updateClass$cYear<TRes> {
  _CopyWithStubImpl$Mutation$UpdateClass$updateClass$cYear(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetYearTitles {
  factory Variables$Query$GetYearTitles({Input$GetAllOptions? options}) =>
      Variables$Query$GetYearTitles._({
        if (options != null) r'options': options,
      });

  Variables$Query$GetYearTitles._(this._$data);

  factory Variables$Query$GetYearTitles.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('options')) {
      final l$options = data['options'];
      result$data['options'] = l$options == null
          ? null
          : Input$GetAllOptions.fromJson((l$options as Map<String, dynamic>));
    }
    return Variables$Query$GetYearTitles._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GetAllOptions? get options =>
      (_$data['options'] as Input$GetAllOptions?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('options')) {
      final l$options = options;
      result$data['options'] = l$options?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetYearTitles<Variables$Query$GetYearTitles>
      get copyWith => CopyWith$Variables$Query$GetYearTitles(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetYearTitles) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$options = options;
    return Object.hashAll(
        [_$data.containsKey('options') ? l$options : const {}]);
  }
}

abstract class CopyWith$Variables$Query$GetYearTitles<TRes> {
  factory CopyWith$Variables$Query$GetYearTitles(
    Variables$Query$GetYearTitles instance,
    TRes Function(Variables$Query$GetYearTitles) then,
  ) = _CopyWithImpl$Variables$Query$GetYearTitles;

  factory CopyWith$Variables$Query$GetYearTitles.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetYearTitles;

  TRes call({Input$GetAllOptions? options});
}

class _CopyWithImpl$Variables$Query$GetYearTitles<TRes>
    implements CopyWith$Variables$Query$GetYearTitles<TRes> {
  _CopyWithImpl$Variables$Query$GetYearTitles(
    this._instance,
    this._then,
  );

  final Variables$Query$GetYearTitles _instance;

  final TRes Function(Variables$Query$GetYearTitles) _then;

  static const _undefined = {};

  TRes call({Object? options = _undefined}) =>
      _then(Variables$Query$GetYearTitles._({
        ..._instance._$data,
        if (options != _undefined) 'options': (options as Input$GetAllOptions?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetYearTitles<TRes>
    implements CopyWith$Variables$Query$GetYearTitles<TRes> {
  _CopyWithStubImpl$Variables$Query$GetYearTitles(this._res);

  TRes _res;

  call({Input$GetAllOptions? options}) => _res;
}

class Query$GetYearTitles {
  Query$GetYearTitles({
    required this.allYears,
    required this.$__typename,
  });

  factory Query$GetYearTitles.fromJson(Map<String, dynamic> json) {
    final l$allYears = json['allYears'];
    final l$$__typename = json['__typename'];
    return Query$GetYearTitles(
      allYears: (l$allYears as List<dynamic>)
          .map((e) => Query$GetYearTitles$allYears.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetYearTitles$allYears> allYears;

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
    if (!(other is Query$GetYearTitles) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetYearTitles on Query$GetYearTitles {
  CopyWith$Query$GetYearTitles<Query$GetYearTitles> get copyWith =>
      CopyWith$Query$GetYearTitles(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetYearTitles<TRes> {
  factory CopyWith$Query$GetYearTitles(
    Query$GetYearTitles instance,
    TRes Function(Query$GetYearTitles) then,
  ) = _CopyWithImpl$Query$GetYearTitles;

  factory CopyWith$Query$GetYearTitles.stub(TRes res) =
      _CopyWithStubImpl$Query$GetYearTitles;

  TRes call({
    List<Query$GetYearTitles$allYears>? allYears,
    String? $__typename,
  });
  TRes allYears(
      Iterable<Query$GetYearTitles$allYears> Function(
              Iterable<
                  CopyWith$Query$GetYearTitles$allYears<
                      Query$GetYearTitles$allYears>>)
          _fn);
}

class _CopyWithImpl$Query$GetYearTitles<TRes>
    implements CopyWith$Query$GetYearTitles<TRes> {
  _CopyWithImpl$Query$GetYearTitles(
    this._instance,
    this._then,
  );

  final Query$GetYearTitles _instance;

  final TRes Function(Query$GetYearTitles) _then;

  static const _undefined = {};

  TRes call({
    Object? allYears = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetYearTitles(
        allYears: allYears == _undefined || allYears == null
            ? _instance.allYears
            : (allYears as List<Query$GetYearTitles$allYears>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes allYears(
          Iterable<Query$GetYearTitles$allYears> Function(
                  Iterable<
                      CopyWith$Query$GetYearTitles$allYears<
                          Query$GetYearTitles$allYears>>)
              _fn) =>
      call(
          allYears: _fn(_instance.allYears
              .map((e) => CopyWith$Query$GetYearTitles$allYears(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetYearTitles<TRes>
    implements CopyWith$Query$GetYearTitles<TRes> {
  _CopyWithStubImpl$Query$GetYearTitles(this._res);

  TRes _res;

  call({
    List<Query$GetYearTitles$allYears>? allYears,
    String? $__typename,
  }) =>
      _res;
  allYears(_fn) => _res;
}

const documentNodeQueryGetYearTitles = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetYearTitles'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'options')),
        type: NamedTypeNode(
          name: NameNode(value: 'GetAllOptions'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'allYears'),
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
Query$GetYearTitles _parserFn$Query$GetYearTitles(Map<String, dynamic> data) =>
    Query$GetYearTitles.fromJson(data);

class Options$Query$GetYearTitles
    extends graphql.QueryOptions<Query$GetYearTitles> {
  Options$Query$GetYearTitles({
    String? operationName,
    Variables$Query$GetYearTitles? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryGetYearTitles,
          parserFn: _parserFn$Query$GetYearTitles,
        );
}

class WatchOptions$Query$GetYearTitles
    extends graphql.WatchQueryOptions<Query$GetYearTitles> {
  WatchOptions$Query$GetYearTitles({
    String? operationName,
    Variables$Query$GetYearTitles? variables,
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
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryGetYearTitles,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetYearTitles,
        );
}

class FetchMoreOptions$Query$GetYearTitles extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetYearTitles({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetYearTitles? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetYearTitles,
        );
}

extension ClientExtension$Query$GetYearTitles on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetYearTitles>> query$GetYearTitles(
          [Options$Query$GetYearTitles? options]) async =>
      await this.query(options ?? Options$Query$GetYearTitles());
  graphql.ObservableQuery<Query$GetYearTitles> watchQuery$GetYearTitles(
          [WatchOptions$Query$GetYearTitles? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetYearTitles());
  void writeQuery$GetYearTitles({
    required Query$GetYearTitles data,
    Variables$Query$GetYearTitles? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetYearTitles),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetYearTitles? readQuery$GetYearTitles({
    Variables$Query$GetYearTitles? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetYearTitles),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetYearTitles.fromJson(result);
  }
}

class Query$GetYearTitles$allYears {
  Query$GetYearTitles$allYears({
    required this.id,
    required this.title,
    required this.$__typename,
  });

  factory Query$GetYearTitles$allYears.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$GetYearTitles$allYears(
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
    if (!(other is Query$GetYearTitles$allYears) ||
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

extension UtilityExtension$Query$GetYearTitles$allYears
    on Query$GetYearTitles$allYears {
  CopyWith$Query$GetYearTitles$allYears<Query$GetYearTitles$allYears>
      get copyWith => CopyWith$Query$GetYearTitles$allYears(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetYearTitles$allYears<TRes> {
  factory CopyWith$Query$GetYearTitles$allYears(
    Query$GetYearTitles$allYears instance,
    TRes Function(Query$GetYearTitles$allYears) then,
  ) = _CopyWithImpl$Query$GetYearTitles$allYears;

  factory CopyWith$Query$GetYearTitles$allYears.stub(TRes res) =
      _CopyWithStubImpl$Query$GetYearTitles$allYears;

  TRes call({
    String? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetYearTitles$allYears<TRes>
    implements CopyWith$Query$GetYearTitles$allYears<TRes> {
  _CopyWithImpl$Query$GetYearTitles$allYears(
    this._instance,
    this._then,
  );

  final Query$GetYearTitles$allYears _instance;

  final TRes Function(Query$GetYearTitles$allYears) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetYearTitles$allYears(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetYearTitles$allYears<TRes>
    implements CopyWith$Query$GetYearTitles$allYears<TRes> {
  _CopyWithStubImpl$Query$GetYearTitles$allYears(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetClassStudentSettings {
  factory Variables$Query$GetClassStudentSettings({required String classId}) =>
      Variables$Query$GetClassStudentSettings._({
        r'classId': classId,
      });

  Variables$Query$GetClassStudentSettings._(this._$data);

  factory Variables$Query$GetClassStudentSettings.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    return Variables$Query$GetClassStudentSettings._(result$data);
  }

  Map<String, dynamic> _$data;

  String get classId => (_$data['classId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$classId = classId;
    result$data['classId'] = l$classId;
    return result$data;
  }

  CopyWith$Variables$Query$GetClassStudentSettings<
          Variables$Query$GetClassStudentSettings>
      get copyWith => CopyWith$Variables$Query$GetClassStudentSettings(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetClassStudentSettings) ||
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

abstract class CopyWith$Variables$Query$GetClassStudentSettings<TRes> {
  factory CopyWith$Variables$Query$GetClassStudentSettings(
    Variables$Query$GetClassStudentSettings instance,
    TRes Function(Variables$Query$GetClassStudentSettings) then,
  ) = _CopyWithImpl$Variables$Query$GetClassStudentSettings;

  factory CopyWith$Variables$Query$GetClassStudentSettings.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetClassStudentSettings;

  TRes call({String? classId});
}

class _CopyWithImpl$Variables$Query$GetClassStudentSettings<TRes>
    implements CopyWith$Variables$Query$GetClassStudentSettings<TRes> {
  _CopyWithImpl$Variables$Query$GetClassStudentSettings(
    this._instance,
    this._then,
  );

  final Variables$Query$GetClassStudentSettings _instance;

  final TRes Function(Variables$Query$GetClassStudentSettings) _then;

  static const _undefined = {};

  TRes call({Object? classId = _undefined}) =>
      _then(Variables$Query$GetClassStudentSettings._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetClassStudentSettings<TRes>
    implements CopyWith$Variables$Query$GetClassStudentSettings<TRes> {
  _CopyWithStubImpl$Variables$Query$GetClassStudentSettings(this._res);

  TRes _res;

  call({String? classId}) => _res;
}

class Query$GetClassStudentSettings {
  Query$GetClassStudentSettings({
    required this.classStudentSettings,
    required this.$__typename,
  });

  factory Query$GetClassStudentSettings.fromJson(Map<String, dynamic> json) {
    final l$classStudentSettings = json['classStudentSettings'];
    final l$$__typename = json['__typename'];
    return Query$GetClassStudentSettings(
      classStudentSettings:
          Query$GetClassStudentSettings$classStudentSettings.fromJson(
              (l$classStudentSettings as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetClassStudentSettings$classStudentSettings classStudentSettings;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$classStudentSettings = classStudentSettings;
    _resultData['classStudentSettings'] = l$classStudentSettings.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$classStudentSettings = classStudentSettings;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$classStudentSettings,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetClassStudentSettings) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classStudentSettings = classStudentSettings;
    final lOther$classStudentSettings = other.classStudentSettings;
    if (l$classStudentSettings != lOther$classStudentSettings) {
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

extension UtilityExtension$Query$GetClassStudentSettings
    on Query$GetClassStudentSettings {
  CopyWith$Query$GetClassStudentSettings<Query$GetClassStudentSettings>
      get copyWith => CopyWith$Query$GetClassStudentSettings(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetClassStudentSettings<TRes> {
  factory CopyWith$Query$GetClassStudentSettings(
    Query$GetClassStudentSettings instance,
    TRes Function(Query$GetClassStudentSettings) then,
  ) = _CopyWithImpl$Query$GetClassStudentSettings;

  factory CopyWith$Query$GetClassStudentSettings.stub(TRes res) =
      _CopyWithStubImpl$Query$GetClassStudentSettings;

  TRes call({
    Query$GetClassStudentSettings$classStudentSettings? classStudentSettings,
    String? $__typename,
  });
  CopyWith$Query$GetClassStudentSettings$classStudentSettings<TRes>
      get classStudentSettings;
}

class _CopyWithImpl$Query$GetClassStudentSettings<TRes>
    implements CopyWith$Query$GetClassStudentSettings<TRes> {
  _CopyWithImpl$Query$GetClassStudentSettings(
    this._instance,
    this._then,
  );

  final Query$GetClassStudentSettings _instance;

  final TRes Function(Query$GetClassStudentSettings) _then;

  static const _undefined = {};

  TRes call({
    Object? classStudentSettings = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetClassStudentSettings(
        classStudentSettings:
            classStudentSettings == _undefined || classStudentSettings == null
                ? _instance.classStudentSettings
                : (classStudentSettings
                    as Query$GetClassStudentSettings$classStudentSettings),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetClassStudentSettings$classStudentSettings<TRes>
      get classStudentSettings {
    final local$classStudentSettings = _instance.classStudentSettings;
    return CopyWith$Query$GetClassStudentSettings$classStudentSettings(
        local$classStudentSettings, (e) => call(classStudentSettings: e));
  }
}

class _CopyWithStubImpl$Query$GetClassStudentSettings<TRes>
    implements CopyWith$Query$GetClassStudentSettings<TRes> {
  _CopyWithStubImpl$Query$GetClassStudentSettings(this._res);

  TRes _res;

  call({
    Query$GetClassStudentSettings$classStudentSettings? classStudentSettings,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetClassStudentSettings$classStudentSettings<TRes>
      get classStudentSettings =>
          CopyWith$Query$GetClassStudentSettings$classStudentSettings.stub(
              _res);
}

const documentNodeQueryGetClassStudentSettings = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetClassStudentSettings'),
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
        alias: NameNode(value: 'classStudentSettings'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'classId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'code'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'students'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'user'),
                alias: NameNode(value: 'settingsUser'),
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
]);
Query$GetClassStudentSettings _parserFn$Query$GetClassStudentSettings(
        Map<String, dynamic> data) =>
    Query$GetClassStudentSettings.fromJson(data);

class Options$Query$GetClassStudentSettings
    extends graphql.QueryOptions<Query$GetClassStudentSettings> {
  Options$Query$GetClassStudentSettings({
    String? operationName,
    required Variables$Query$GetClassStudentSettings variables,
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
          document: documentNodeQueryGetClassStudentSettings,
          parserFn: _parserFn$Query$GetClassStudentSettings,
        );
}

class WatchOptions$Query$GetClassStudentSettings
    extends graphql.WatchQueryOptions<Query$GetClassStudentSettings> {
  WatchOptions$Query$GetClassStudentSettings({
    String? operationName,
    required Variables$Query$GetClassStudentSettings variables,
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
          document: documentNodeQueryGetClassStudentSettings,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetClassStudentSettings,
        );
}

class FetchMoreOptions$Query$GetClassStudentSettings
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetClassStudentSettings({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetClassStudentSettings variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetClassStudentSettings,
        );
}

extension ClientExtension$Query$GetClassStudentSettings
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetClassStudentSettings>>
      query$GetClassStudentSettings(
              Options$Query$GetClassStudentSettings options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetClassStudentSettings>
      watchQuery$GetClassStudentSettings(
              WatchOptions$Query$GetClassStudentSettings options) =>
          this.watchQuery(options);
  void writeQuery$GetClassStudentSettings({
    required Query$GetClassStudentSettings data,
    required Variables$Query$GetClassStudentSettings variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetClassStudentSettings),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetClassStudentSettings? readQuery$GetClassStudentSettings({
    required Variables$Query$GetClassStudentSettings variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetClassStudentSettings),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetClassStudentSettings.fromJson(result);
  }
}

class Query$GetClassStudentSettings$classStudentSettings {
  Query$GetClassStudentSettings$classStudentSettings({
    required this.code,
    required this.students,
    required this.$__typename,
  });

  factory Query$GetClassStudentSettings$classStudentSettings.fromJson(
      Map<String, dynamic> json) {
    final l$code = json['code'];
    final l$students = json['students'];
    final l$$__typename = json['__typename'];
    return Query$GetClassStudentSettings$classStudentSettings(
      code: (l$code as String),
      students: (l$students as List<dynamic>)
          .map((e) =>
              Query$GetClassStudentSettings$classStudentSettings$students
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final List<Query$GetClassStudentSettings$classStudentSettings$students>
      students;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$students = students;
    _resultData['students'] = l$students.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$students = students;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      Object.hashAll(l$students.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetClassStudentSettings$classStudentSettings) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$students = students;
    final lOther$students = other.students;
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetClassStudentSettings$classStudentSettings
    on Query$GetClassStudentSettings$classStudentSettings {
  CopyWith$Query$GetClassStudentSettings$classStudentSettings<
          Query$GetClassStudentSettings$classStudentSettings>
      get copyWith =>
          CopyWith$Query$GetClassStudentSettings$classStudentSettings(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetClassStudentSettings$classStudentSettings<
    TRes> {
  factory CopyWith$Query$GetClassStudentSettings$classStudentSettings(
    Query$GetClassStudentSettings$classStudentSettings instance,
    TRes Function(Query$GetClassStudentSettings$classStudentSettings) then,
  ) = _CopyWithImpl$Query$GetClassStudentSettings$classStudentSettings;

  factory CopyWith$Query$GetClassStudentSettings$classStudentSettings.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetClassStudentSettings$classStudentSettings;

  TRes call({
    String? code,
    List<Query$GetClassStudentSettings$classStudentSettings$students>? students,
    String? $__typename,
  });
  TRes students(
      Iterable<Query$GetClassStudentSettings$classStudentSettings$students> Function(
              Iterable<
                  CopyWith$Query$GetClassStudentSettings$classStudentSettings$students<
                      Query$GetClassStudentSettings$classStudentSettings$students>>)
          _fn);
}

class _CopyWithImpl$Query$GetClassStudentSettings$classStudentSettings<TRes>
    implements
        CopyWith$Query$GetClassStudentSettings$classStudentSettings<TRes> {
  _CopyWithImpl$Query$GetClassStudentSettings$classStudentSettings(
    this._instance,
    this._then,
  );

  final Query$GetClassStudentSettings$classStudentSettings _instance;

  final TRes Function(Query$GetClassStudentSettings$classStudentSettings) _then;

  static const _undefined = {};

  TRes call({
    Object? code = _undefined,
    Object? students = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetClassStudentSettings$classStudentSettings(
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        students: students == _undefined || students == null
            ? _instance.students
            : (students as List<
                Query$GetClassStudentSettings$classStudentSettings$students>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes students(
          Iterable<Query$GetClassStudentSettings$classStudentSettings$students> Function(
                  Iterable<
                      CopyWith$Query$GetClassStudentSettings$classStudentSettings$students<
                          Query$GetClassStudentSettings$classStudentSettings$students>>)
              _fn) =>
      call(
          students: _fn(_instance.students.map((e) =>
              CopyWith$Query$GetClassStudentSettings$classStudentSettings$students(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetClassStudentSettings$classStudentSettings<TRes>
    implements
        CopyWith$Query$GetClassStudentSettings$classStudentSettings<TRes> {
  _CopyWithStubImpl$Query$GetClassStudentSettings$classStudentSettings(
      this._res);

  TRes _res;

  call({
    String? code,
    List<Query$GetClassStudentSettings$classStudentSettings$students>? students,
    String? $__typename,
  }) =>
      _res;
  students(_fn) => _res;
}

class Query$GetClassStudentSettings$classStudentSettings$students {
  Query$GetClassStudentSettings$classStudentSettings$students({
    required this.settingsUser,
    required this.$__typename,
  });

  factory Query$GetClassStudentSettings$classStudentSettings$students.fromJson(
      Map<String, dynamic> json) {
    final l$settingsUser = json['settingsUser'];
    final l$$__typename = json['__typename'];
    return Query$GetClassStudentSettings$classStudentSettings$students(
      settingsUser:
          Query$GetClassStudentSettings$classStudentSettings$students$settingsUser
              .fromJson((l$settingsUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetClassStudentSettings$classStudentSettings$students$settingsUser
      settingsUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$settingsUser = settingsUser;
    _resultData['settingsUser'] = l$settingsUser.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$settingsUser = settingsUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$settingsUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetClassStudentSettings$classStudentSettings$students) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$settingsUser = settingsUser;
    final lOther$settingsUser = other.settingsUser;
    if (l$settingsUser != lOther$settingsUser) {
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

extension UtilityExtension$Query$GetClassStudentSettings$classStudentSettings$students
    on Query$GetClassStudentSettings$classStudentSettings$students {
  CopyWith$Query$GetClassStudentSettings$classStudentSettings$students<
          Query$GetClassStudentSettings$classStudentSettings$students>
      get copyWith =>
          CopyWith$Query$GetClassStudentSettings$classStudentSettings$students(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetClassStudentSettings$classStudentSettings$students<
    TRes> {
  factory CopyWith$Query$GetClassStudentSettings$classStudentSettings$students(
    Query$GetClassStudentSettings$classStudentSettings$students instance,
    TRes Function(Query$GetClassStudentSettings$classStudentSettings$students)
        then,
  ) = _CopyWithImpl$Query$GetClassStudentSettings$classStudentSettings$students;

  factory CopyWith$Query$GetClassStudentSettings$classStudentSettings$students.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetClassStudentSettings$classStudentSettings$students;

  TRes call({
    Query$GetClassStudentSettings$classStudentSettings$students$settingsUser?
        settingsUser,
    String? $__typename,
  });
  CopyWith$Query$GetClassStudentSettings$classStudentSettings$students$settingsUser<
      TRes> get settingsUser;
}

class _CopyWithImpl$Query$GetClassStudentSettings$classStudentSettings$students<
        TRes>
    implements
        CopyWith$Query$GetClassStudentSettings$classStudentSettings$students<
            TRes> {
  _CopyWithImpl$Query$GetClassStudentSettings$classStudentSettings$students(
    this._instance,
    this._then,
  );

  final Query$GetClassStudentSettings$classStudentSettings$students _instance;

  final TRes Function(
      Query$GetClassStudentSettings$classStudentSettings$students) _then;

  static const _undefined = {};

  TRes call({
    Object? settingsUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetClassStudentSettings$classStudentSettings$students(
        settingsUser: settingsUser == _undefined || settingsUser == null
            ? _instance.settingsUser
            : (settingsUser
                as Query$GetClassStudentSettings$classStudentSettings$students$settingsUser),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetClassStudentSettings$classStudentSettings$students$settingsUser<
      TRes> get settingsUser {
    final local$settingsUser = _instance.settingsUser;
    return CopyWith$Query$GetClassStudentSettings$classStudentSettings$students$settingsUser(
        local$settingsUser, (e) => call(settingsUser: e));
  }
}

class _CopyWithStubImpl$Query$GetClassStudentSettings$classStudentSettings$students<
        TRes>
    implements
        CopyWith$Query$GetClassStudentSettings$classStudentSettings$students<
            TRes> {
  _CopyWithStubImpl$Query$GetClassStudentSettings$classStudentSettings$students(
      this._res);

  TRes _res;

  call({
    Query$GetClassStudentSettings$classStudentSettings$students$settingsUser?
        settingsUser,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetClassStudentSettings$classStudentSettings$students$settingsUser<
          TRes>
      get settingsUser =>
          CopyWith$Query$GetClassStudentSettings$classStudentSettings$students$settingsUser
              .stub(_res);
}

class Query$GetClassStudentSettings$classStudentSettings$students$settingsUser {
  Query$GetClassStudentSettings$classStudentSettings$students$settingsUser({
    required this.id,
    required this.$__typename,
  });

  factory Query$GetClassStudentSettings$classStudentSettings$students$settingsUser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetClassStudentSettings$classStudentSettings$students$settingsUser(
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
            is Query$GetClassStudentSettings$classStudentSettings$students$settingsUser) ||
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

extension UtilityExtension$Query$GetClassStudentSettings$classStudentSettings$students$settingsUser
    on Query$GetClassStudentSettings$classStudentSettings$students$settingsUser {
  CopyWith$Query$GetClassStudentSettings$classStudentSettings$students$settingsUser<
          Query$GetClassStudentSettings$classStudentSettings$students$settingsUser>
      get copyWith =>
          CopyWith$Query$GetClassStudentSettings$classStudentSettings$students$settingsUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetClassStudentSettings$classStudentSettings$students$settingsUser<
    TRes> {
  factory CopyWith$Query$GetClassStudentSettings$classStudentSettings$students$settingsUser(
    Query$GetClassStudentSettings$classStudentSettings$students$settingsUser
        instance,
    TRes Function(
            Query$GetClassStudentSettings$classStudentSettings$students$settingsUser)
        then,
  ) = _CopyWithImpl$Query$GetClassStudentSettings$classStudentSettings$students$settingsUser;

  factory CopyWith$Query$GetClassStudentSettings$classStudentSettings$students$settingsUser.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetClassStudentSettings$classStudentSettings$students$settingsUser;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetClassStudentSettings$classStudentSettings$students$settingsUser<
        TRes>
    implements
        CopyWith$Query$GetClassStudentSettings$classStudentSettings$students$settingsUser<
            TRes> {
  _CopyWithImpl$Query$GetClassStudentSettings$classStudentSettings$students$settingsUser(
    this._instance,
    this._then,
  );

  final Query$GetClassStudentSettings$classStudentSettings$students$settingsUser
      _instance;

  final TRes Function(
          Query$GetClassStudentSettings$classStudentSettings$students$settingsUser)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetClassStudentSettings$classStudentSettings$students$settingsUser(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetClassStudentSettings$classStudentSettings$students$settingsUser<
        TRes>
    implements
        CopyWith$Query$GetClassStudentSettings$classStudentSettings$students$settingsUser<
            TRes> {
  _CopyWithStubImpl$Query$GetClassStudentSettings$classStudentSettings$students$settingsUser(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$RemoveStudentFromClass {
  factory Variables$Mutation$RemoveStudentFromClass({
    required String classId,
    required String studentId,
  }) =>
      Variables$Mutation$RemoveStudentFromClass._({
        r'classId': classId,
        r'studentId': studentId,
      });

  Variables$Mutation$RemoveStudentFromClass._(this._$data);

  factory Variables$Mutation$RemoveStudentFromClass.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    final l$studentId = data['studentId'];
    result$data['studentId'] = (l$studentId as String);
    return Variables$Mutation$RemoveStudentFromClass._(result$data);
  }

  Map<String, dynamic> _$data;

  String get classId => (_$data['classId'] as String);
  String get studentId => (_$data['studentId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$classId = classId;
    result$data['classId'] = l$classId;
    final l$studentId = studentId;
    result$data['studentId'] = l$studentId;
    return result$data;
  }

  CopyWith$Variables$Mutation$RemoveStudentFromClass<
          Variables$Mutation$RemoveStudentFromClass>
      get copyWith => CopyWith$Variables$Mutation$RemoveStudentFromClass(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$RemoveStudentFromClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classId = classId;
    final lOther$classId = other.classId;
    if (l$classId != lOther$classId) {
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
    final l$classId = classId;
    final l$studentId = studentId;
    return Object.hashAll([
      l$classId,
      l$studentId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$RemoveStudentFromClass<TRes> {
  factory CopyWith$Variables$Mutation$RemoveStudentFromClass(
    Variables$Mutation$RemoveStudentFromClass instance,
    TRes Function(Variables$Mutation$RemoveStudentFromClass) then,
  ) = _CopyWithImpl$Variables$Mutation$RemoveStudentFromClass;

  factory CopyWith$Variables$Mutation$RemoveStudentFromClass.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$RemoveStudentFromClass;

  TRes call({
    String? classId,
    String? studentId,
  });
}

class _CopyWithImpl$Variables$Mutation$RemoveStudentFromClass<TRes>
    implements CopyWith$Variables$Mutation$RemoveStudentFromClass<TRes> {
  _CopyWithImpl$Variables$Mutation$RemoveStudentFromClass(
    this._instance,
    this._then,
  );

  final Variables$Mutation$RemoveStudentFromClass _instance;

  final TRes Function(Variables$Mutation$RemoveStudentFromClass) _then;

  static const _undefined = {};

  TRes call({
    Object? classId = _undefined,
    Object? studentId = _undefined,
  }) =>
      _then(Variables$Mutation$RemoveStudentFromClass._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
        if (studentId != _undefined && studentId != null)
          'studentId': (studentId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$RemoveStudentFromClass<TRes>
    implements CopyWith$Variables$Mutation$RemoveStudentFromClass<TRes> {
  _CopyWithStubImpl$Variables$Mutation$RemoveStudentFromClass(this._res);

  TRes _res;

  call({
    String? classId,
    String? studentId,
  }) =>
      _res;
}

class Mutation$RemoveStudentFromClass {
  Mutation$RemoveStudentFromClass({
    required this.removeStudentFromClass,
    required this.$__typename,
  });

  factory Mutation$RemoveStudentFromClass.fromJson(Map<String, dynamic> json) {
    final l$removeStudentFromClass = json['removeStudentFromClass'];
    final l$$__typename = json['__typename'];
    return Mutation$RemoveStudentFromClass(
      removeStudentFromClass:
          Mutation$RemoveStudentFromClass$removeStudentFromClass.fromJson(
              (l$removeStudentFromClass as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$RemoveStudentFromClass$removeStudentFromClass
      removeStudentFromClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$removeStudentFromClass = removeStudentFromClass;
    _resultData['removeStudentFromClass'] = l$removeStudentFromClass.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$removeStudentFromClass = removeStudentFromClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$removeStudentFromClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$RemoveStudentFromClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$removeStudentFromClass = removeStudentFromClass;
    final lOther$removeStudentFromClass = other.removeStudentFromClass;
    if (l$removeStudentFromClass != lOther$removeStudentFromClass) {
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

extension UtilityExtension$Mutation$RemoveStudentFromClass
    on Mutation$RemoveStudentFromClass {
  CopyWith$Mutation$RemoveStudentFromClass<Mutation$RemoveStudentFromClass>
      get copyWith => CopyWith$Mutation$RemoveStudentFromClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RemoveStudentFromClass<TRes> {
  factory CopyWith$Mutation$RemoveStudentFromClass(
    Mutation$RemoveStudentFromClass instance,
    TRes Function(Mutation$RemoveStudentFromClass) then,
  ) = _CopyWithImpl$Mutation$RemoveStudentFromClass;

  factory CopyWith$Mutation$RemoveStudentFromClass.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RemoveStudentFromClass;

  TRes call({
    Mutation$RemoveStudentFromClass$removeStudentFromClass?
        removeStudentFromClass,
    String? $__typename,
  });
  CopyWith$Mutation$RemoveStudentFromClass$removeStudentFromClass<TRes>
      get removeStudentFromClass;
}

class _CopyWithImpl$Mutation$RemoveStudentFromClass<TRes>
    implements CopyWith$Mutation$RemoveStudentFromClass<TRes> {
  _CopyWithImpl$Mutation$RemoveStudentFromClass(
    this._instance,
    this._then,
  );

  final Mutation$RemoveStudentFromClass _instance;

  final TRes Function(Mutation$RemoveStudentFromClass) _then;

  static const _undefined = {};

  TRes call({
    Object? removeStudentFromClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RemoveStudentFromClass(
        removeStudentFromClass: removeStudentFromClass == _undefined ||
                removeStudentFromClass == null
            ? _instance.removeStudentFromClass
            : (removeStudentFromClass
                as Mutation$RemoveStudentFromClass$removeStudentFromClass),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$RemoveStudentFromClass$removeStudentFromClass<TRes>
      get removeStudentFromClass {
    final local$removeStudentFromClass = _instance.removeStudentFromClass;
    return CopyWith$Mutation$RemoveStudentFromClass$removeStudentFromClass(
        local$removeStudentFromClass, (e) => call(removeStudentFromClass: e));
  }
}

class _CopyWithStubImpl$Mutation$RemoveStudentFromClass<TRes>
    implements CopyWith$Mutation$RemoveStudentFromClass<TRes> {
  _CopyWithStubImpl$Mutation$RemoveStudentFromClass(this._res);

  TRes _res;

  call({
    Mutation$RemoveStudentFromClass$removeStudentFromClass?
        removeStudentFromClass,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$RemoveStudentFromClass$removeStudentFromClass<TRes>
      get removeStudentFromClass =>
          CopyWith$Mutation$RemoveStudentFromClass$removeStudentFromClass.stub(
              _res);
}

const documentNodeMutationRemoveStudentFromClass = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'RemoveStudentFromClass'),
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
        variable: VariableNode(name: NameNode(value: 'studentId')),
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
        name: NameNode(value: 'removeStudentFromClass'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'classID'),
            value: VariableNode(name: NameNode(value: 'classId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'studentID'),
            value: VariableNode(name: NameNode(value: 'studentId')),
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
            name: NameNode(value: 'year'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
Mutation$RemoveStudentFromClass _parserFn$Mutation$RemoveStudentFromClass(
        Map<String, dynamic> data) =>
    Mutation$RemoveStudentFromClass.fromJson(data);
typedef OnMutationCompleted$Mutation$RemoveStudentFromClass = FutureOr<void>
    Function(
  dynamic,
  Mutation$RemoveStudentFromClass?,
);

class Options$Mutation$RemoveStudentFromClass
    extends graphql.MutationOptions<Mutation$RemoveStudentFromClass> {
  Options$Mutation$RemoveStudentFromClass({
    String? operationName,
    required Variables$Mutation$RemoveStudentFromClass variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$RemoveStudentFromClass? onCompleted,
    graphql.OnMutationUpdate<Mutation$RemoveStudentFromClass>? update,
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
                        : _parserFn$Mutation$RemoveStudentFromClass(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationRemoveStudentFromClass,
          parserFn: _parserFn$Mutation$RemoveStudentFromClass,
        );

  final OnMutationCompleted$Mutation$RemoveStudentFromClass?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$RemoveStudentFromClass
    extends graphql.WatchQueryOptions<Mutation$RemoveStudentFromClass> {
  WatchOptions$Mutation$RemoveStudentFromClass({
    String? operationName,
    required Variables$Mutation$RemoveStudentFromClass variables,
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
          document: documentNodeMutationRemoveStudentFromClass,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$RemoveStudentFromClass,
        );
}

extension ClientExtension$Mutation$RemoveStudentFromClass
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$RemoveStudentFromClass>>
      mutate$RemoveStudentFromClass(
              Options$Mutation$RemoveStudentFromClass options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$RemoveStudentFromClass>
      watchMutation$RemoveStudentFromClass(
              WatchOptions$Mutation$RemoveStudentFromClass options) =>
          this.watchMutation(options);
}

class Mutation$RemoveStudentFromClass$removeStudentFromClass {
  Mutation$RemoveStudentFromClass$removeStudentFromClass({
    required this.id,
    required this.name,
    required this.year,
    required this.$__typename,
  });

  factory Mutation$RemoveStudentFromClass$removeStudentFromClass.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$year = json['year'];
    final l$$__typename = json['__typename'];
    return Mutation$RemoveStudentFromClass$removeStudentFromClass(
      id: (l$id as String),
      name: (l$name as String),
      year:
          Mutation$RemoveStudentFromClass$removeStudentFromClass$year.fromJson(
              (l$year as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final Mutation$RemoveStudentFromClass$removeStudentFromClass$year year;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$year = year;
    _resultData['year'] = l$year.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$year = year;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$year,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$RemoveStudentFromClass$removeStudentFromClass) ||
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
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
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

extension UtilityExtension$Mutation$RemoveStudentFromClass$removeStudentFromClass
    on Mutation$RemoveStudentFromClass$removeStudentFromClass {
  CopyWith$Mutation$RemoveStudentFromClass$removeStudentFromClass<
          Mutation$RemoveStudentFromClass$removeStudentFromClass>
      get copyWith =>
          CopyWith$Mutation$RemoveStudentFromClass$removeStudentFromClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RemoveStudentFromClass$removeStudentFromClass<
    TRes> {
  factory CopyWith$Mutation$RemoveStudentFromClass$removeStudentFromClass(
    Mutation$RemoveStudentFromClass$removeStudentFromClass instance,
    TRes Function(Mutation$RemoveStudentFromClass$removeStudentFromClass) then,
  ) = _CopyWithImpl$Mutation$RemoveStudentFromClass$removeStudentFromClass;

  factory CopyWith$Mutation$RemoveStudentFromClass$removeStudentFromClass.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RemoveStudentFromClass$removeStudentFromClass;

  TRes call({
    String? id,
    String? name,
    Mutation$RemoveStudentFromClass$removeStudentFromClass$year? year,
    String? $__typename,
  });
  CopyWith$Mutation$RemoveStudentFromClass$removeStudentFromClass$year<TRes>
      get year;
}

class _CopyWithImpl$Mutation$RemoveStudentFromClass$removeStudentFromClass<TRes>
    implements
        CopyWith$Mutation$RemoveStudentFromClass$removeStudentFromClass<TRes> {
  _CopyWithImpl$Mutation$RemoveStudentFromClass$removeStudentFromClass(
    this._instance,
    this._then,
  );

  final Mutation$RemoveStudentFromClass$removeStudentFromClass _instance;

  final TRes Function(Mutation$RemoveStudentFromClass$removeStudentFromClass)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? year = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RemoveStudentFromClass$removeStudentFromClass(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        year: year == _undefined || year == null
            ? _instance.year
            : (year
                as Mutation$RemoveStudentFromClass$removeStudentFromClass$year),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$RemoveStudentFromClass$removeStudentFromClass$year<TRes>
      get year {
    final local$year = _instance.year;
    return CopyWith$Mutation$RemoveStudentFromClass$removeStudentFromClass$year(
        local$year, (e) => call(year: e));
  }
}

class _CopyWithStubImpl$Mutation$RemoveStudentFromClass$removeStudentFromClass<
        TRes>
    implements
        CopyWith$Mutation$RemoveStudentFromClass$removeStudentFromClass<TRes> {
  _CopyWithStubImpl$Mutation$RemoveStudentFromClass$removeStudentFromClass(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    Mutation$RemoveStudentFromClass$removeStudentFromClass$year? year,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$RemoveStudentFromClass$removeStudentFromClass$year<TRes>
      get year =>
          CopyWith$Mutation$RemoveStudentFromClass$removeStudentFromClass$year
              .stub(_res);
}

class Mutation$RemoveStudentFromClass$removeStudentFromClass$year {
  Mutation$RemoveStudentFromClass$removeStudentFromClass$year({
    required this.title,
    required this.$__typename,
  });

  factory Mutation$RemoveStudentFromClass$removeStudentFromClass$year.fromJson(
      Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Mutation$RemoveStudentFromClass$removeStudentFromClass$year(
      title: (l$title as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$RemoveStudentFromClass$removeStudentFromClass$year) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$RemoveStudentFromClass$removeStudentFromClass$year
    on Mutation$RemoveStudentFromClass$removeStudentFromClass$year {
  CopyWith$Mutation$RemoveStudentFromClass$removeStudentFromClass$year<
          Mutation$RemoveStudentFromClass$removeStudentFromClass$year>
      get copyWith =>
          CopyWith$Mutation$RemoveStudentFromClass$removeStudentFromClass$year(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RemoveStudentFromClass$removeStudentFromClass$year<
    TRes> {
  factory CopyWith$Mutation$RemoveStudentFromClass$removeStudentFromClass$year(
    Mutation$RemoveStudentFromClass$removeStudentFromClass$year instance,
    TRes Function(Mutation$RemoveStudentFromClass$removeStudentFromClass$year)
        then,
  ) = _CopyWithImpl$Mutation$RemoveStudentFromClass$removeStudentFromClass$year;

  factory CopyWith$Mutation$RemoveStudentFromClass$removeStudentFromClass$year.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RemoveStudentFromClass$removeStudentFromClass$year;

  TRes call({
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$RemoveStudentFromClass$removeStudentFromClass$year<
        TRes>
    implements
        CopyWith$Mutation$RemoveStudentFromClass$removeStudentFromClass$year<
            TRes> {
  _CopyWithImpl$Mutation$RemoveStudentFromClass$removeStudentFromClass$year(
    this._instance,
    this._then,
  );

  final Mutation$RemoveStudentFromClass$removeStudentFromClass$year _instance;

  final TRes Function(
      Mutation$RemoveStudentFromClass$removeStudentFromClass$year) _then;

  static const _undefined = {};

  TRes call({
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RemoveStudentFromClass$removeStudentFromClass$year(
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$RemoveStudentFromClass$removeStudentFromClass$year<
        TRes>
    implements
        CopyWith$Mutation$RemoveStudentFromClass$removeStudentFromClass$year<
            TRes> {
  _CopyWithStubImpl$Mutation$RemoveStudentFromClass$removeStudentFromClass$year(
      this._res);

  TRes _res;

  call({
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeleteClass {
  factory Variables$Mutation$DeleteClass({required String deleteClassId}) =>
      Variables$Mutation$DeleteClass._({
        r'deleteClassId': deleteClassId,
      });

  Variables$Mutation$DeleteClass._(this._$data);

  factory Variables$Mutation$DeleteClass.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$deleteClassId = data['deleteClassId'];
    result$data['deleteClassId'] = (l$deleteClassId as String);
    return Variables$Mutation$DeleteClass._(result$data);
  }

  Map<String, dynamic> _$data;

  String get deleteClassId => (_$data['deleteClassId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$deleteClassId = deleteClassId;
    result$data['deleteClassId'] = l$deleteClassId;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteClass<Variables$Mutation$DeleteClass>
      get copyWith => CopyWith$Variables$Mutation$DeleteClass(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteClassId = deleteClassId;
    final lOther$deleteClassId = other.deleteClassId;
    if (l$deleteClassId != lOther$deleteClassId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$deleteClassId = deleteClassId;
    return Object.hashAll([l$deleteClassId]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteClass<TRes> {
  factory CopyWith$Variables$Mutation$DeleteClass(
    Variables$Mutation$DeleteClass instance,
    TRes Function(Variables$Mutation$DeleteClass) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteClass;

  factory CopyWith$Variables$Mutation$DeleteClass.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteClass;

  TRes call({String? deleteClassId});
}

class _CopyWithImpl$Variables$Mutation$DeleteClass<TRes>
    implements CopyWith$Variables$Mutation$DeleteClass<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteClass(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteClass _instance;

  final TRes Function(Variables$Mutation$DeleteClass) _then;

  static const _undefined = {};

  TRes call({Object? deleteClassId = _undefined}) =>
      _then(Variables$Mutation$DeleteClass._({
        ..._instance._$data,
        if (deleteClassId != _undefined && deleteClassId != null)
          'deleteClassId': (deleteClassId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteClass<TRes>
    implements CopyWith$Variables$Mutation$DeleteClass<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteClass(this._res);

  TRes _res;

  call({String? deleteClassId}) => _res;
}

class Mutation$DeleteClass {
  Mutation$DeleteClass({
    required this.deleteClass,
    required this.$__typename,
  });

  factory Mutation$DeleteClass.fromJson(Map<String, dynamic> json) {
    final l$deleteClass = json['deleteClass'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteClass(
      deleteClass: (l$deleteClass as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String deleteClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteClass = deleteClass;
    _resultData['deleteClass'] = l$deleteClass;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteClass = deleteClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteClass) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteClass = deleteClass;
    final lOther$deleteClass = other.deleteClass;
    if (l$deleteClass != lOther$deleteClass) {
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

extension UtilityExtension$Mutation$DeleteClass on Mutation$DeleteClass {
  CopyWith$Mutation$DeleteClass<Mutation$DeleteClass> get copyWith =>
      CopyWith$Mutation$DeleteClass(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteClass<TRes> {
  factory CopyWith$Mutation$DeleteClass(
    Mutation$DeleteClass instance,
    TRes Function(Mutation$DeleteClass) then,
  ) = _CopyWithImpl$Mutation$DeleteClass;

  factory CopyWith$Mutation$DeleteClass.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteClass;

  TRes call({
    String? deleteClass,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteClass<TRes>
    implements CopyWith$Mutation$DeleteClass<TRes> {
  _CopyWithImpl$Mutation$DeleteClass(
    this._instance,
    this._then,
  );

  final Mutation$DeleteClass _instance;

  final TRes Function(Mutation$DeleteClass) _then;

  static const _undefined = {};

  TRes call({
    Object? deleteClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteClass(
        deleteClass: deleteClass == _undefined || deleteClass == null
            ? _instance.deleteClass
            : (deleteClass as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteClass<TRes>
    implements CopyWith$Mutation$DeleteClass<TRes> {
  _CopyWithStubImpl$Mutation$DeleteClass(this._res);

  TRes _res;

  call({
    String? deleteClass,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationDeleteClass = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteClass'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'deleteClassId')),
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
        name: NameNode(value: 'deleteClass'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'deleteClassId')),
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
]);
Mutation$DeleteClass _parserFn$Mutation$DeleteClass(
        Map<String, dynamic> data) =>
    Mutation$DeleteClass.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteClass = FutureOr<void> Function(
  dynamic,
  Mutation$DeleteClass?,
);

class Options$Mutation$DeleteClass
    extends graphql.MutationOptions<Mutation$DeleteClass> {
  Options$Mutation$DeleteClass({
    String? operationName,
    required Variables$Mutation$DeleteClass variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteClass? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteClass>? update,
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
                    data == null ? null : _parserFn$Mutation$DeleteClass(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteClass,
          parserFn: _parserFn$Mutation$DeleteClass,
        );

  final OnMutationCompleted$Mutation$DeleteClass? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteClass
    extends graphql.WatchQueryOptions<Mutation$DeleteClass> {
  WatchOptions$Mutation$DeleteClass({
    String? operationName,
    required Variables$Mutation$DeleteClass variables,
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
          document: documentNodeMutationDeleteClass,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteClass,
        );
}

extension ClientExtension$Mutation$DeleteClass on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteClass>> mutate$DeleteClass(
          Options$Mutation$DeleteClass options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteClass> watchMutation$DeleteClass(
          WatchOptions$Mutation$DeleteClass options) =>
      this.watchMutation(options);
}

class Variables$Query$GetRegions {
  factory Variables$Query$GetRegions({Input$GetAllOptions? options}) =>
      Variables$Query$GetRegions._({
        if (options != null) r'options': options,
      });

  Variables$Query$GetRegions._(this._$data);

  factory Variables$Query$GetRegions.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('options')) {
      final l$options = data['options'];
      result$data['options'] = l$options == null
          ? null
          : Input$GetAllOptions.fromJson((l$options as Map<String, dynamic>));
    }
    return Variables$Query$GetRegions._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GetAllOptions? get options =>
      (_$data['options'] as Input$GetAllOptions?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('options')) {
      final l$options = options;
      result$data['options'] = l$options?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetRegions<Variables$Query$GetRegions>
      get copyWith => CopyWith$Variables$Query$GetRegions(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetRegions) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$options = options;
    return Object.hashAll(
        [_$data.containsKey('options') ? l$options : const {}]);
  }
}

abstract class CopyWith$Variables$Query$GetRegions<TRes> {
  factory CopyWith$Variables$Query$GetRegions(
    Variables$Query$GetRegions instance,
    TRes Function(Variables$Query$GetRegions) then,
  ) = _CopyWithImpl$Variables$Query$GetRegions;

  factory CopyWith$Variables$Query$GetRegions.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetRegions;

  TRes call({Input$GetAllOptions? options});
}

class _CopyWithImpl$Variables$Query$GetRegions<TRes>
    implements CopyWith$Variables$Query$GetRegions<TRes> {
  _CopyWithImpl$Variables$Query$GetRegions(
    this._instance,
    this._then,
  );

  final Variables$Query$GetRegions _instance;

  final TRes Function(Variables$Query$GetRegions) _then;

  static const _undefined = {};

  TRes call({Object? options = _undefined}) =>
      _then(Variables$Query$GetRegions._({
        ..._instance._$data,
        if (options != _undefined) 'options': (options as Input$GetAllOptions?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetRegions<TRes>
    implements CopyWith$Variables$Query$GetRegions<TRes> {
  _CopyWithStubImpl$Variables$Query$GetRegions(this._res);

  TRes _res;

  call({Input$GetAllOptions? options}) => _res;
}

class Query$GetRegions {
  Query$GetRegions({
    required this.allRegions,
    required this.$__typename,
  });

  factory Query$GetRegions.fromJson(Map<String, dynamic> json) {
    final l$allRegions = json['allRegions'];
    final l$$__typename = json['__typename'];
    return Query$GetRegions(
      allRegions: (l$allRegions as List<dynamic>)
          .map((e) =>
              Query$GetRegions$allRegions.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetRegions$allRegions> allRegions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allRegions = allRegions;
    _resultData['allRegions'] = l$allRegions.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allRegions = allRegions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$allRegions.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetRegions) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$allRegions = allRegions;
    final lOther$allRegions = other.allRegions;
    if (l$allRegions.length != lOther$allRegions.length) {
      return false;
    }
    for (int i = 0; i < l$allRegions.length; i++) {
      final l$allRegions$entry = l$allRegions[i];
      final lOther$allRegions$entry = lOther$allRegions[i];
      if (l$allRegions$entry != lOther$allRegions$entry) {
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

extension UtilityExtension$Query$GetRegions on Query$GetRegions {
  CopyWith$Query$GetRegions<Query$GetRegions> get copyWith =>
      CopyWith$Query$GetRegions(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetRegions<TRes> {
  factory CopyWith$Query$GetRegions(
    Query$GetRegions instance,
    TRes Function(Query$GetRegions) then,
  ) = _CopyWithImpl$Query$GetRegions;

  factory CopyWith$Query$GetRegions.stub(TRes res) =
      _CopyWithStubImpl$Query$GetRegions;

  TRes call({
    List<Query$GetRegions$allRegions>? allRegions,
    String? $__typename,
  });
  TRes allRegions(
      Iterable<Query$GetRegions$allRegions> Function(
              Iterable<
                  CopyWith$Query$GetRegions$allRegions<
                      Query$GetRegions$allRegions>>)
          _fn);
}

class _CopyWithImpl$Query$GetRegions<TRes>
    implements CopyWith$Query$GetRegions<TRes> {
  _CopyWithImpl$Query$GetRegions(
    this._instance,
    this._then,
  );

  final Query$GetRegions _instance;

  final TRes Function(Query$GetRegions) _then;

  static const _undefined = {};

  TRes call({
    Object? allRegions = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetRegions(
        allRegions: allRegions == _undefined || allRegions == null
            ? _instance.allRegions
            : (allRegions as List<Query$GetRegions$allRegions>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes allRegions(
          Iterable<Query$GetRegions$allRegions> Function(
                  Iterable<
                      CopyWith$Query$GetRegions$allRegions<
                          Query$GetRegions$allRegions>>)
              _fn) =>
      call(
          allRegions: _fn(_instance.allRegions
              .map((e) => CopyWith$Query$GetRegions$allRegions(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetRegions<TRes>
    implements CopyWith$Query$GetRegions<TRes> {
  _CopyWithStubImpl$Query$GetRegions(this._res);

  TRes _res;

  call({
    List<Query$GetRegions$allRegions>? allRegions,
    String? $__typename,
  }) =>
      _res;
  allRegions(_fn) => _res;
}

const documentNodeQueryGetRegions = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetRegions'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'options')),
        type: NamedTypeNode(
          name: NameNode(value: 'GetAllOptions'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'allRegions'),
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
            name: NameNode(value: 'title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'defaultTimeZone'),
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
Query$GetRegions _parserFn$Query$GetRegions(Map<String, dynamic> data) =>
    Query$GetRegions.fromJson(data);

class Options$Query$GetRegions extends graphql.QueryOptions<Query$GetRegions> {
  Options$Query$GetRegions({
    String? operationName,
    Variables$Query$GetRegions? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryGetRegions,
          parserFn: _parserFn$Query$GetRegions,
        );
}

class WatchOptions$Query$GetRegions
    extends graphql.WatchQueryOptions<Query$GetRegions> {
  WatchOptions$Query$GetRegions({
    String? operationName,
    Variables$Query$GetRegions? variables,
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
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryGetRegions,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetRegions,
        );
}

class FetchMoreOptions$Query$GetRegions extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetRegions({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetRegions? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetRegions,
        );
}

extension ClientExtension$Query$GetRegions on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetRegions>> query$GetRegions(
          [Options$Query$GetRegions? options]) async =>
      await this.query(options ?? Options$Query$GetRegions());
  graphql.ObservableQuery<Query$GetRegions> watchQuery$GetRegions(
          [WatchOptions$Query$GetRegions? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetRegions());
  void writeQuery$GetRegions({
    required Query$GetRegions data,
    Variables$Query$GetRegions? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetRegions),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetRegions? readQuery$GetRegions({
    Variables$Query$GetRegions? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetRegions),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetRegions.fromJson(result);
  }
}

class Query$GetRegions$allRegions {
  Query$GetRegions$allRegions({
    required this.id,
    required this.title,
    required this.defaultTimeZone,
    required this.$__typename,
  });

  factory Query$GetRegions$allRegions.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$defaultTimeZone = json['defaultTimeZone'];
    final l$$__typename = json['__typename'];
    return Query$GetRegions$allRegions(
      id: (l$id as String),
      title: (l$title as String),
      defaultTimeZone: (l$defaultTimeZone as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String defaultTimeZone;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$defaultTimeZone = defaultTimeZone;
    _resultData['defaultTimeZone'] = l$defaultTimeZone;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$defaultTimeZone = defaultTimeZone;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$defaultTimeZone,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetRegions$allRegions) ||
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
    final l$defaultTimeZone = defaultTimeZone;
    final lOther$defaultTimeZone = other.defaultTimeZone;
    if (l$defaultTimeZone != lOther$defaultTimeZone) {
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

extension UtilityExtension$Query$GetRegions$allRegions
    on Query$GetRegions$allRegions {
  CopyWith$Query$GetRegions$allRegions<Query$GetRegions$allRegions>
      get copyWith => CopyWith$Query$GetRegions$allRegions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetRegions$allRegions<TRes> {
  factory CopyWith$Query$GetRegions$allRegions(
    Query$GetRegions$allRegions instance,
    TRes Function(Query$GetRegions$allRegions) then,
  ) = _CopyWithImpl$Query$GetRegions$allRegions;

  factory CopyWith$Query$GetRegions$allRegions.stub(TRes res) =
      _CopyWithStubImpl$Query$GetRegions$allRegions;

  TRes call({
    String? id,
    String? title,
    String? defaultTimeZone,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetRegions$allRegions<TRes>
    implements CopyWith$Query$GetRegions$allRegions<TRes> {
  _CopyWithImpl$Query$GetRegions$allRegions(
    this._instance,
    this._then,
  );

  final Query$GetRegions$allRegions _instance;

  final TRes Function(Query$GetRegions$allRegions) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? defaultTimeZone = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetRegions$allRegions(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        defaultTimeZone:
            defaultTimeZone == _undefined || defaultTimeZone == null
                ? _instance.defaultTimeZone
                : (defaultTimeZone as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetRegions$allRegions<TRes>
    implements CopyWith$Query$GetRegions$allRegions<TRes> {
  _CopyWithStubImpl$Query$GetRegions$allRegions(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? defaultTimeZone,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$CreateSchool {
  factory Variables$Mutation$CreateSchool(
          {required Input$CreateSchoolInput input}) =>
      Variables$Mutation$CreateSchool._({
        r'input': input,
      });

  Variables$Mutation$CreateSchool._(this._$data);

  factory Variables$Mutation$CreateSchool.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$CreateSchoolInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$CreateSchool._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateSchoolInput get input =>
      (_$data['input'] as Input$CreateSchoolInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateSchool<Variables$Mutation$CreateSchool>
      get copyWith => CopyWith$Variables$Mutation$CreateSchool(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateSchool) ||
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

abstract class CopyWith$Variables$Mutation$CreateSchool<TRes> {
  factory CopyWith$Variables$Mutation$CreateSchool(
    Variables$Mutation$CreateSchool instance,
    TRes Function(Variables$Mutation$CreateSchool) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateSchool;

  factory CopyWith$Variables$Mutation$CreateSchool.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateSchool;

  TRes call({Input$CreateSchoolInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateSchool<TRes>
    implements CopyWith$Variables$Mutation$CreateSchool<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateSchool(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateSchool _instance;

  final TRes Function(Variables$Mutation$CreateSchool) _then;

  static const _undefined = {};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CreateSchool._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$CreateSchoolInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateSchool<TRes>
    implements CopyWith$Variables$Mutation$CreateSchool<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateSchool(this._res);

  TRes _res;

  call({Input$CreateSchoolInput? input}) => _res;
}

class Mutation$CreateSchool {
  Mutation$CreateSchool({
    required this.createSchool,
    required this.$__typename,
  });

  factory Mutation$CreateSchool.fromJson(Map<String, dynamic> json) {
    final l$createSchool = json['createSchool'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateSchool(
      createSchool: Mutation$CreateSchool$createSchool.fromJson(
          (l$createSchool as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateSchool$createSchool createSchool;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createSchool = createSchool;
    _resultData['createSchool'] = l$createSchool.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createSchool = createSchool;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createSchool,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateSchool) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createSchool = createSchool;
    final lOther$createSchool = other.createSchool;
    if (l$createSchool != lOther$createSchool) {
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

extension UtilityExtension$Mutation$CreateSchool on Mutation$CreateSchool {
  CopyWith$Mutation$CreateSchool<Mutation$CreateSchool> get copyWith =>
      CopyWith$Mutation$CreateSchool(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateSchool<TRes> {
  factory CopyWith$Mutation$CreateSchool(
    Mutation$CreateSchool instance,
    TRes Function(Mutation$CreateSchool) then,
  ) = _CopyWithImpl$Mutation$CreateSchool;

  factory CopyWith$Mutation$CreateSchool.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateSchool;

  TRes call({
    Mutation$CreateSchool$createSchool? createSchool,
    String? $__typename,
  });
  CopyWith$Mutation$CreateSchool$createSchool<TRes> get createSchool;
}

class _CopyWithImpl$Mutation$CreateSchool<TRes>
    implements CopyWith$Mutation$CreateSchool<TRes> {
  _CopyWithImpl$Mutation$CreateSchool(
    this._instance,
    this._then,
  );

  final Mutation$CreateSchool _instance;

  final TRes Function(Mutation$CreateSchool) _then;

  static const _undefined = {};

  TRes call({
    Object? createSchool = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateSchool(
        createSchool: createSchool == _undefined || createSchool == null
            ? _instance.createSchool
            : (createSchool as Mutation$CreateSchool$createSchool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$CreateSchool$createSchool<TRes> get createSchool {
    final local$createSchool = _instance.createSchool;
    return CopyWith$Mutation$CreateSchool$createSchool(
        local$createSchool, (e) => call(createSchool: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateSchool<TRes>
    implements CopyWith$Mutation$CreateSchool<TRes> {
  _CopyWithStubImpl$Mutation$CreateSchool(this._res);

  TRes _res;

  call({
    Mutation$CreateSchool$createSchool? createSchool,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$CreateSchool$createSchool<TRes> get createSchool =>
      CopyWith$Mutation$CreateSchool$createSchool.stub(_res);
}

const documentNodeMutationCreateSchool = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateSchool'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateSchoolInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createSchool'),
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
            name: NameNode(value: 'regionID'),
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
Mutation$CreateSchool _parserFn$Mutation$CreateSchool(
        Map<String, dynamic> data) =>
    Mutation$CreateSchool.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateSchool = FutureOr<void> Function(
  dynamic,
  Mutation$CreateSchool?,
);

class Options$Mutation$CreateSchool
    extends graphql.MutationOptions<Mutation$CreateSchool> {
  Options$Mutation$CreateSchool({
    String? operationName,
    required Variables$Mutation$CreateSchool variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateSchool? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateSchool>? update,
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
                    data == null ? null : _parserFn$Mutation$CreateSchool(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateSchool,
          parserFn: _parserFn$Mutation$CreateSchool,
        );

  final OnMutationCompleted$Mutation$CreateSchool? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateSchool
    extends graphql.WatchQueryOptions<Mutation$CreateSchool> {
  WatchOptions$Mutation$CreateSchool({
    String? operationName,
    required Variables$Mutation$CreateSchool variables,
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
          document: documentNodeMutationCreateSchool,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateSchool,
        );
}

extension ClientExtension$Mutation$CreateSchool on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateSchool>> mutate$CreateSchool(
          Options$Mutation$CreateSchool options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateSchool> watchMutation$CreateSchool(
          WatchOptions$Mutation$CreateSchool options) =>
      this.watchMutation(options);
}

class Mutation$CreateSchool$createSchool {
  Mutation$CreateSchool$createSchool({
    required this.id,
    required this.name,
    required this.regionID,
    required this.$__typename,
  });

  factory Mutation$CreateSchool$createSchool.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$regionID = json['regionID'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateSchool$createSchool(
      id: (l$id as String),
      name: (l$name as String),
      regionID: (l$regionID as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String regionID;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$regionID = regionID;
    _resultData['regionID'] = l$regionID;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$regionID = regionID;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$regionID,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateSchool$createSchool) ||
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
    final l$regionID = regionID;
    final lOther$regionID = other.regionID;
    if (l$regionID != lOther$regionID) {
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

extension UtilityExtension$Mutation$CreateSchool$createSchool
    on Mutation$CreateSchool$createSchool {
  CopyWith$Mutation$CreateSchool$createSchool<
          Mutation$CreateSchool$createSchool>
      get copyWith => CopyWith$Mutation$CreateSchool$createSchool(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateSchool$createSchool<TRes> {
  factory CopyWith$Mutation$CreateSchool$createSchool(
    Mutation$CreateSchool$createSchool instance,
    TRes Function(Mutation$CreateSchool$createSchool) then,
  ) = _CopyWithImpl$Mutation$CreateSchool$createSchool;

  factory CopyWith$Mutation$CreateSchool$createSchool.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateSchool$createSchool;

  TRes call({
    String? id,
    String? name,
    String? regionID,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateSchool$createSchool<TRes>
    implements CopyWith$Mutation$CreateSchool$createSchool<TRes> {
  _CopyWithImpl$Mutation$CreateSchool$createSchool(
    this._instance,
    this._then,
  );

  final Mutation$CreateSchool$createSchool _instance;

  final TRes Function(Mutation$CreateSchool$createSchool) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? regionID = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateSchool$createSchool(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        regionID: regionID == _undefined || regionID == null
            ? _instance.regionID
            : (regionID as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateSchool$createSchool<TRes>
    implements CopyWith$Mutation$CreateSchool$createSchool<TRes> {
  _CopyWithStubImpl$Mutation$CreateSchool$createSchool(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? regionID,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$AddClass {
  factory Variables$Mutation$AddClass({required Input$AddClassInput input}) =>
      Variables$Mutation$AddClass._({
        r'input': input,
      });

  Variables$Mutation$AddClass._(this._$data);

  factory Variables$Mutation$AddClass.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$AddClassInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$AddClass._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AddClassInput get input => (_$data['input'] as Input$AddClassInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$AddClass<Variables$Mutation$AddClass>
      get copyWith => CopyWith$Variables$Mutation$AddClass(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$AddClass) ||
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

abstract class CopyWith$Variables$Mutation$AddClass<TRes> {
  factory CopyWith$Variables$Mutation$AddClass(
    Variables$Mutation$AddClass instance,
    TRes Function(Variables$Mutation$AddClass) then,
  ) = _CopyWithImpl$Variables$Mutation$AddClass;

  factory CopyWith$Variables$Mutation$AddClass.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddClass;

  TRes call({Input$AddClassInput? input});
}

class _CopyWithImpl$Variables$Mutation$AddClass<TRes>
    implements CopyWith$Variables$Mutation$AddClass<TRes> {
  _CopyWithImpl$Variables$Mutation$AddClass(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AddClass _instance;

  final TRes Function(Variables$Mutation$AddClass) _then;

  static const _undefined = {};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$AddClass._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$AddClassInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$AddClass<TRes>
    implements CopyWith$Variables$Mutation$AddClass<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddClass(this._res);

  TRes _res;

  call({Input$AddClassInput? input}) => _res;
}

class Mutation$AddClass {
  Mutation$AddClass({
    required this.addClass,
    required this.$__typename,
  });

  factory Mutation$AddClass.fromJson(Map<String, dynamic> json) {
    final l$addClass = json['addClass'];
    final l$$__typename = json['__typename'];
    return Mutation$AddClass(
      addClass: Mutation$AddClass$addClass.fromJson(
          (l$addClass as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AddClass$addClass addClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addClass = addClass;
    _resultData['addClass'] = l$addClass.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addClass = addClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$addClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$AddClass) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$addClass = addClass;
    final lOther$addClass = other.addClass;
    if (l$addClass != lOther$addClass) {
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

extension UtilityExtension$Mutation$AddClass on Mutation$AddClass {
  CopyWith$Mutation$AddClass<Mutation$AddClass> get copyWith =>
      CopyWith$Mutation$AddClass(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddClass<TRes> {
  factory CopyWith$Mutation$AddClass(
    Mutation$AddClass instance,
    TRes Function(Mutation$AddClass) then,
  ) = _CopyWithImpl$Mutation$AddClass;

  factory CopyWith$Mutation$AddClass.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddClass;

  TRes call({
    Mutation$AddClass$addClass? addClass,
    String? $__typename,
  });
  CopyWith$Mutation$AddClass$addClass<TRes> get addClass;
}

class _CopyWithImpl$Mutation$AddClass<TRes>
    implements CopyWith$Mutation$AddClass<TRes> {
  _CopyWithImpl$Mutation$AddClass(
    this._instance,
    this._then,
  );

  final Mutation$AddClass _instance;

  final TRes Function(Mutation$AddClass) _then;

  static const _undefined = {};

  TRes call({
    Object? addClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$AddClass(
        addClass: addClass == _undefined || addClass == null
            ? _instance.addClass
            : (addClass as Mutation$AddClass$addClass),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$AddClass$addClass<TRes> get addClass {
    final local$addClass = _instance.addClass;
    return CopyWith$Mutation$AddClass$addClass(
        local$addClass, (e) => call(addClass: e));
  }
}

class _CopyWithStubImpl$Mutation$AddClass<TRes>
    implements CopyWith$Mutation$AddClass<TRes> {
  _CopyWithStubImpl$Mutation$AddClass(this._res);

  TRes _res;

  call({
    Mutation$AddClass$addClass? addClass,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$AddClass$addClass<TRes> get addClass =>
      CopyWith$Mutation$AddClass$addClass.stub(_res);
}

const documentNodeMutationAddClass = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'AddClass'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'AddClassInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'addClass'),
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
Mutation$AddClass _parserFn$Mutation$AddClass(Map<String, dynamic> data) =>
    Mutation$AddClass.fromJson(data);
typedef OnMutationCompleted$Mutation$AddClass = FutureOr<void> Function(
  dynamic,
  Mutation$AddClass?,
);

class Options$Mutation$AddClass
    extends graphql.MutationOptions<Mutation$AddClass> {
  Options$Mutation$AddClass({
    String? operationName,
    required Variables$Mutation$AddClass variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$AddClass? onCompleted,
    graphql.OnMutationUpdate<Mutation$AddClass>? update,
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
                    data == null ? null : _parserFn$Mutation$AddClass(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAddClass,
          parserFn: _parserFn$Mutation$AddClass,
        );

  final OnMutationCompleted$Mutation$AddClass? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$AddClass
    extends graphql.WatchQueryOptions<Mutation$AddClass> {
  WatchOptions$Mutation$AddClass({
    String? operationName,
    required Variables$Mutation$AddClass variables,
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
          document: documentNodeMutationAddClass,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$AddClass,
        );
}

extension ClientExtension$Mutation$AddClass on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$AddClass>> mutate$AddClass(
          Options$Mutation$AddClass options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$AddClass> watchMutation$AddClass(
          WatchOptions$Mutation$AddClass options) =>
      this.watchMutation(options);
}

class Mutation$AddClass$addClass {
  Mutation$AddClass$addClass({
    required this.id,
    required this.$__typename,
  });

  factory Mutation$AddClass$addClass.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$AddClass$addClass(
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
    if (!(other is Mutation$AddClass$addClass) ||
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

extension UtilityExtension$Mutation$AddClass$addClass
    on Mutation$AddClass$addClass {
  CopyWith$Mutation$AddClass$addClass<Mutation$AddClass$addClass>
      get copyWith => CopyWith$Mutation$AddClass$addClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$AddClass$addClass<TRes> {
  factory CopyWith$Mutation$AddClass$addClass(
    Mutation$AddClass$addClass instance,
    TRes Function(Mutation$AddClass$addClass) then,
  ) = _CopyWithImpl$Mutation$AddClass$addClass;

  factory CopyWith$Mutation$AddClass$addClass.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddClass$addClass;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$AddClass$addClass<TRes>
    implements CopyWith$Mutation$AddClass$addClass<TRes> {
  _CopyWithImpl$Mutation$AddClass$addClass(
    this._instance,
    this._then,
  );

  final Mutation$AddClass$addClass _instance;

  final TRes Function(Mutation$AddClass$addClass) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$AddClass$addClass(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$AddClass$addClass<TRes>
    implements CopyWith$Mutation$AddClass$addClass<TRes> {
  _CopyWithStubImpl$Mutation$AddClass$addClass(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetClasses {
  Query$GetClasses({
    required this.getClassesTeacher,
    required this.$__typename,
  });

  factory Query$GetClasses.fromJson(Map<String, dynamic> json) {
    final l$getClassesTeacher = json['getClassesTeacher'];
    final l$$__typename = json['__typename'];
    return Query$GetClasses(
      getClassesTeacher: Query$GetClasses$getClassesTeacher.fromJson(
          (l$getClassesTeacher as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetClasses$getClassesTeacher getClassesTeacher;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getClassesTeacher = getClassesTeacher;
    _resultData['getClassesTeacher'] = l$getClassesTeacher.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getClassesTeacher = getClassesTeacher;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$getClassesTeacher,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetClasses) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$getClassesTeacher = getClassesTeacher;
    final lOther$getClassesTeacher = other.getClassesTeacher;
    if (l$getClassesTeacher != lOther$getClassesTeacher) {
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

extension UtilityExtension$Query$GetClasses on Query$GetClasses {
  CopyWith$Query$GetClasses<Query$GetClasses> get copyWith =>
      CopyWith$Query$GetClasses(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetClasses<TRes> {
  factory CopyWith$Query$GetClasses(
    Query$GetClasses instance,
    TRes Function(Query$GetClasses) then,
  ) = _CopyWithImpl$Query$GetClasses;

  factory CopyWith$Query$GetClasses.stub(TRes res) =
      _CopyWithStubImpl$Query$GetClasses;

  TRes call({
    Query$GetClasses$getClassesTeacher? getClassesTeacher,
    String? $__typename,
  });
  CopyWith$Query$GetClasses$getClassesTeacher<TRes> get getClassesTeacher;
}

class _CopyWithImpl$Query$GetClasses<TRes>
    implements CopyWith$Query$GetClasses<TRes> {
  _CopyWithImpl$Query$GetClasses(
    this._instance,
    this._then,
  );

  final Query$GetClasses _instance;

  final TRes Function(Query$GetClasses) _then;

  static const _undefined = {};

  TRes call({
    Object? getClassesTeacher = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetClasses(
        getClassesTeacher:
            getClassesTeacher == _undefined || getClassesTeacher == null
                ? _instance.getClassesTeacher
                : (getClassesTeacher as Query$GetClasses$getClassesTeacher),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetClasses$getClassesTeacher<TRes> get getClassesTeacher {
    final local$getClassesTeacher = _instance.getClassesTeacher;
    return CopyWith$Query$GetClasses$getClassesTeacher(
        local$getClassesTeacher, (e) => call(getClassesTeacher: e));
  }
}

class _CopyWithStubImpl$Query$GetClasses<TRes>
    implements CopyWith$Query$GetClasses<TRes> {
  _CopyWithStubImpl$Query$GetClasses(this._res);

  TRes _res;

  call({
    Query$GetClasses$getClassesTeacher? getClassesTeacher,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetClasses$getClassesTeacher<TRes> get getClassesTeacher =>
      CopyWith$Query$GetClasses$getClassesTeacher.stub(_res);
}

const documentNodeQueryGetClasses = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetClasses'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'teacher'),
        alias: NameNode(value: 'getClassesTeacher'),
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'school'),
            alias: NameNode(value: 'getClassesSchool'),
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'allClasses'),
                alias: NameNode(value: 'teacherClasses'),
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
                    name: NameNode(value: 'name'),
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
                    name: NameNode(value: 'students'),
                    alias: NameNode(value: 'teacherStudents'),
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'user'),
                        alias: NameNode(value: 'teacherStudentsUser'),
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
Query$GetClasses _parserFn$Query$GetClasses(Map<String, dynamic> data) =>
    Query$GetClasses.fromJson(data);

class Options$Query$GetClasses extends graphql.QueryOptions<Query$GetClasses> {
  Options$Query$GetClasses({
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
          document: documentNodeQueryGetClasses,
          parserFn: _parserFn$Query$GetClasses,
        );
}

class WatchOptions$Query$GetClasses
    extends graphql.WatchQueryOptions<Query$GetClasses> {
  WatchOptions$Query$GetClasses({
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
          document: documentNodeQueryGetClasses,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetClasses,
        );
}

class FetchMoreOptions$Query$GetClasses extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetClasses({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetClasses,
        );
}

extension ClientExtension$Query$GetClasses on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetClasses>> query$GetClasses(
          [Options$Query$GetClasses? options]) async =>
      await this.query(options ?? Options$Query$GetClasses());
  graphql.ObservableQuery<Query$GetClasses> watchQuery$GetClasses(
          [WatchOptions$Query$GetClasses? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetClasses());
  void writeQuery$GetClasses({
    required Query$GetClasses data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetClasses)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetClasses? readQuery$GetClasses({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetClasses)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetClasses.fromJson(result);
  }
}

class Query$GetClasses$getClassesTeacher {
  Query$GetClasses$getClassesTeacher({
    this.getClassesSchool,
    required this.$__typename,
  });

  factory Query$GetClasses$getClassesTeacher.fromJson(
      Map<String, dynamic> json) {
    final l$getClassesSchool = json['getClassesSchool'];
    final l$$__typename = json['__typename'];
    return Query$GetClasses$getClassesTeacher(
      getClassesSchool: l$getClassesSchool == null
          ? null
          : Query$GetClasses$getClassesTeacher$getClassesSchool.fromJson(
              (l$getClassesSchool as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetClasses$getClassesTeacher$getClassesSchool? getClassesSchool;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getClassesSchool = getClassesSchool;
    _resultData['getClassesSchool'] = l$getClassesSchool?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getClassesSchool = getClassesSchool;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$getClassesSchool,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetClasses$getClassesTeacher) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$getClassesSchool = getClassesSchool;
    final lOther$getClassesSchool = other.getClassesSchool;
    if (l$getClassesSchool != lOther$getClassesSchool) {
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

extension UtilityExtension$Query$GetClasses$getClassesTeacher
    on Query$GetClasses$getClassesTeacher {
  CopyWith$Query$GetClasses$getClassesTeacher<
          Query$GetClasses$getClassesTeacher>
      get copyWith => CopyWith$Query$GetClasses$getClassesTeacher(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetClasses$getClassesTeacher<TRes> {
  factory CopyWith$Query$GetClasses$getClassesTeacher(
    Query$GetClasses$getClassesTeacher instance,
    TRes Function(Query$GetClasses$getClassesTeacher) then,
  ) = _CopyWithImpl$Query$GetClasses$getClassesTeacher;

  factory CopyWith$Query$GetClasses$getClassesTeacher.stub(TRes res) =
      _CopyWithStubImpl$Query$GetClasses$getClassesTeacher;

  TRes call({
    Query$GetClasses$getClassesTeacher$getClassesSchool? getClassesSchool,
    String? $__typename,
  });
  CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool<TRes>
      get getClassesSchool;
}

class _CopyWithImpl$Query$GetClasses$getClassesTeacher<TRes>
    implements CopyWith$Query$GetClasses$getClassesTeacher<TRes> {
  _CopyWithImpl$Query$GetClasses$getClassesTeacher(
    this._instance,
    this._then,
  );

  final Query$GetClasses$getClassesTeacher _instance;

  final TRes Function(Query$GetClasses$getClassesTeacher) _then;

  static const _undefined = {};

  TRes call({
    Object? getClassesSchool = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetClasses$getClassesTeacher(
        getClassesSchool: getClassesSchool == _undefined
            ? _instance.getClassesSchool
            : (getClassesSchool
                as Query$GetClasses$getClassesTeacher$getClassesSchool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool<TRes>
      get getClassesSchool {
    final local$getClassesSchool = _instance.getClassesSchool;
    return local$getClassesSchool == null
        ? CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool.stub(
            _then(_instance))
        : CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool(
            local$getClassesSchool, (e) => call(getClassesSchool: e));
  }
}

class _CopyWithStubImpl$Query$GetClasses$getClassesTeacher<TRes>
    implements CopyWith$Query$GetClasses$getClassesTeacher<TRes> {
  _CopyWithStubImpl$Query$GetClasses$getClassesTeacher(this._res);

  TRes _res;

  call({
    Query$GetClasses$getClassesTeacher$getClassesSchool? getClassesSchool,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool<TRes>
      get getClassesSchool =>
          CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool.stub(
              _res);
}

class Query$GetClasses$getClassesTeacher$getClassesSchool {
  Query$GetClasses$getClassesTeacher$getClassesSchool({
    required this.teacherClasses,
    required this.$__typename,
  });

  factory Query$GetClasses$getClassesTeacher$getClassesSchool.fromJson(
      Map<String, dynamic> json) {
    final l$teacherClasses = json['teacherClasses'];
    final l$$__typename = json['__typename'];
    return Query$GetClasses$getClassesTeacher$getClassesSchool(
      teacherClasses: (l$teacherClasses as List<dynamic>)
          .map((e) =>
              Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses>
      teacherClasses;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$teacherClasses = teacherClasses;
    _resultData['teacherClasses'] =
        l$teacherClasses.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$teacherClasses = teacherClasses;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$teacherClasses.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetClasses$getClassesTeacher$getClassesSchool) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$teacherClasses = teacherClasses;
    final lOther$teacherClasses = other.teacherClasses;
    if (l$teacherClasses.length != lOther$teacherClasses.length) {
      return false;
    }
    for (int i = 0; i < l$teacherClasses.length; i++) {
      final l$teacherClasses$entry = l$teacherClasses[i];
      final lOther$teacherClasses$entry = lOther$teacherClasses[i];
      if (l$teacherClasses$entry != lOther$teacherClasses$entry) {
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

extension UtilityExtension$Query$GetClasses$getClassesTeacher$getClassesSchool
    on Query$GetClasses$getClassesTeacher$getClassesSchool {
  CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool<
          Query$GetClasses$getClassesTeacher$getClassesSchool>
      get copyWith =>
          CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool<
    TRes> {
  factory CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool(
    Query$GetClasses$getClassesTeacher$getClassesSchool instance,
    TRes Function(Query$GetClasses$getClassesTeacher$getClassesSchool) then,
  ) = _CopyWithImpl$Query$GetClasses$getClassesTeacher$getClassesSchool;

  factory CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetClasses$getClassesTeacher$getClassesSchool;

  TRes call({
    List<Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses>?
        teacherClasses,
    String? $__typename,
  });
  TRes teacherClasses(
      Iterable<Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses> Function(
              Iterable<
                  CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses<
                      Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses>>)
          _fn);
}

class _CopyWithImpl$Query$GetClasses$getClassesTeacher$getClassesSchool<TRes>
    implements
        CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool<TRes> {
  _CopyWithImpl$Query$GetClasses$getClassesTeacher$getClassesSchool(
    this._instance,
    this._then,
  );

  final Query$GetClasses$getClassesTeacher$getClassesSchool _instance;

  final TRes Function(Query$GetClasses$getClassesTeacher$getClassesSchool)
      _then;

  static const _undefined = {};

  TRes call({
    Object? teacherClasses = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetClasses$getClassesTeacher$getClassesSchool(
        teacherClasses: teacherClasses == _undefined || teacherClasses == null
            ? _instance.teacherClasses
            : (teacherClasses as List<
                Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes teacherClasses(
          Iterable<Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses> Function(
                  Iterable<
                      CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses<
                          Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses>>)
              _fn) =>
      call(
          teacherClasses: _fn(_instance.teacherClasses.map((e) =>
              CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetClasses$getClassesTeacher$getClassesSchool<
        TRes>
    implements
        CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool<TRes> {
  _CopyWithStubImpl$Query$GetClasses$getClassesTeacher$getClassesSchool(
      this._res);

  TRes _res;

  call({
    List<Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses>?
        teacherClasses,
    String? $__typename,
  }) =>
      _res;
  teacherClasses(_fn) => _res;
}

class Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses {
  Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses({
    required this.id,
    required this.name,
    required this.code,
    required this.teacherStudents,
    required this.$__typename,
  });

  factory Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$code = json['code'];
    final l$teacherStudents = json['teacherStudents'];
    final l$$__typename = json['__typename'];
    return Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses(
      id: (l$id as String),
      name: (l$name as String),
      code: (l$code as String),
      teacherStudents: (l$teacherStudents as List<dynamic>)
          .map((e) =>
              Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String code;

  final List<
          Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents>
      teacherStudents;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$teacherStudents = teacherStudents;
    _resultData['teacherStudents'] =
        l$teacherStudents.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$code = code;
    final l$teacherStudents = teacherStudents;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$code,
      Object.hashAll(l$teacherStudents.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses) ||
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
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$teacherStudents = teacherStudents;
    final lOther$teacherStudents = other.teacherStudents;
    if (l$teacherStudents.length != lOther$teacherStudents.length) {
      return false;
    }
    for (int i = 0; i < l$teacherStudents.length; i++) {
      final l$teacherStudents$entry = l$teacherStudents[i];
      final lOther$teacherStudents$entry = lOther$teacherStudents[i];
      if (l$teacherStudents$entry != lOther$teacherStudents$entry) {
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

extension UtilityExtension$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses
    on Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses {
  CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses<
          Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses>
      get copyWith =>
          CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses<
    TRes> {
  factory CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses(
    Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses instance,
    TRes Function(
            Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses)
        then,
  ) = _CopyWithImpl$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses;

  factory CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses;

  TRes call({
    String? id,
    String? name,
    String? code,
    List<Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents>?
        teacherStudents,
    String? $__typename,
  });
  TRes teacherStudents(
      Iterable<Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents> Function(
              Iterable<
                  CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents<
                      Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents>>)
          _fn);
}

class _CopyWithImpl$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses<
        TRes>
    implements
        CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses<
            TRes> {
  _CopyWithImpl$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses(
    this._instance,
    this._then,
  );

  final Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses
      _instance;

  final TRes Function(
      Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? code = _undefined,
    Object? teacherStudents = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        teacherStudents: teacherStudents == _undefined ||
                teacherStudents == null
            ? _instance.teacherStudents
            : (teacherStudents as List<
                Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes teacherStudents(
          Iterable<Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents> Function(
                  Iterable<
                      CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents<
                          Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents>>)
              _fn) =>
      call(
          teacherStudents: _fn(_instance.teacherStudents.map((e) =>
              CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses<
        TRes>
    implements
        CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses<
            TRes> {
  _CopyWithStubImpl$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? code,
    List<Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents>?
        teacherStudents,
    String? $__typename,
  }) =>
      _res;
  teacherStudents(_fn) => _res;
}

class Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents {
  Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents({
    required this.teacherStudentsUser,
    required this.$__typename,
  });

  factory Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents.fromJson(
      Map<String, dynamic> json) {
    final l$teacherStudentsUser = json['teacherStudentsUser'];
    final l$$__typename = json['__typename'];
    return Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents(
      teacherStudentsUser:
          Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser
              .fromJson((l$teacherStudentsUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser
      teacherStudentsUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$teacherStudentsUser = teacherStudentsUser;
    _resultData['teacherStudentsUser'] = l$teacherStudentsUser.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$teacherStudentsUser = teacherStudentsUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$teacherStudentsUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$teacherStudentsUser = teacherStudentsUser;
    final lOther$teacherStudentsUser = other.teacherStudentsUser;
    if (l$teacherStudentsUser != lOther$teacherStudentsUser) {
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

extension UtilityExtension$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents
    on Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents {
  CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents<
          Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents>
      get copyWith =>
          CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents<
    TRes> {
  factory CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents(
    Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents
        instance,
    TRes Function(
            Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents)
        then,
  ) = _CopyWithImpl$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents;

  factory CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents;

  TRes call({
    Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser?
        teacherStudentsUser,
    String? $__typename,
  });
  CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser<
      TRes> get teacherStudentsUser;
}

class _CopyWithImpl$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents<
        TRes>
    implements
        CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents<
            TRes> {
  _CopyWithImpl$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents(
    this._instance,
    this._then,
  );

  final Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents
      _instance;

  final TRes Function(
          Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents)
      _then;

  static const _undefined = {};

  TRes call({
    Object? teacherStudentsUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents(
        teacherStudentsUser: teacherStudentsUser == _undefined ||
                teacherStudentsUser == null
            ? _instance.teacherStudentsUser
            : (teacherStudentsUser
                as Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser<
      TRes> get teacherStudentsUser {
    final local$teacherStudentsUser = _instance.teacherStudentsUser;
    return CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser(
        local$teacherStudentsUser, (e) => call(teacherStudentsUser: e));
  }
}

class _CopyWithStubImpl$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents<
        TRes>
    implements
        CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents<
            TRes> {
  _CopyWithStubImpl$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents(
      this._res);

  TRes _res;

  call({
    Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser?
        teacherStudentsUser,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser<
          TRes>
      get teacherStudentsUser =>
          CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser
              .stub(_res);
}

class Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser {
  Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser({
    required this.id,
    required this.$__typename,
  });

  factory Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser(
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
            is Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser) ||
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

extension UtilityExtension$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser
    on Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser {
  CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser<
          Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser>
      get copyWith =>
          CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser<
    TRes> {
  factory CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser(
    Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser
        instance,
    TRes Function(
            Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser)
        then,
  ) = _CopyWithImpl$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser;

  factory CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser<
        TRes>
    implements
        CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser<
            TRes> {
  _CopyWithImpl$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser(
    this._instance,
    this._then,
  );

  final Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser
      _instance;

  final TRes Function(
          Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser<
        TRes>
    implements
        CopyWith$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser<
            TRes> {
  _CopyWithStubImpl$Query$GetClasses$getClassesTeacher$getClassesSchool$teacherClasses$teacherStudents$teacherStudentsUser(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetNewClass {
  factory Variables$Query$GetNewClass({required String classId}) =>
      Variables$Query$GetNewClass._({
        r'classId': classId,
      });

  Variables$Query$GetNewClass._(this._$data);

  factory Variables$Query$GetNewClass.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    return Variables$Query$GetNewClass._(result$data);
  }

  Map<String, dynamic> _$data;

  String get classId => (_$data['classId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$classId = classId;
    result$data['classId'] = l$classId;
    return result$data;
  }

  CopyWith$Variables$Query$GetNewClass<Variables$Query$GetNewClass>
      get copyWith => CopyWith$Variables$Query$GetNewClass(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetNewClass) ||
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

abstract class CopyWith$Variables$Query$GetNewClass<TRes> {
  factory CopyWith$Variables$Query$GetNewClass(
    Variables$Query$GetNewClass instance,
    TRes Function(Variables$Query$GetNewClass) then,
  ) = _CopyWithImpl$Variables$Query$GetNewClass;

  factory CopyWith$Variables$Query$GetNewClass.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetNewClass;

  TRes call({String? classId});
}

class _CopyWithImpl$Variables$Query$GetNewClass<TRes>
    implements CopyWith$Variables$Query$GetNewClass<TRes> {
  _CopyWithImpl$Variables$Query$GetNewClass(
    this._instance,
    this._then,
  );

  final Variables$Query$GetNewClass _instance;

  final TRes Function(Variables$Query$GetNewClass) _then;

  static const _undefined = {};

  TRes call({Object? classId = _undefined}) =>
      _then(Variables$Query$GetNewClass._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetNewClass<TRes>
    implements CopyWith$Variables$Query$GetNewClass<TRes> {
  _CopyWithStubImpl$Variables$Query$GetNewClass(this._res);

  TRes _res;

  call({String? classId}) => _res;
}

class Query$GetNewClass {
  Query$GetNewClass({
    required this.newClass,
    required this.$__typename,
  });

  factory Query$GetNewClass.fromJson(Map<String, dynamic> json) {
    final l$newClass = json['newClass'];
    final l$$__typename = json['__typename'];
    return Query$GetNewClass(
      newClass: Query$GetNewClass$newClass.fromJson(
          (l$newClass as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetNewClass$newClass newClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$newClass = newClass;
    _resultData['newClass'] = l$newClass.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$newClass = newClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$newClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetNewClass) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$newClass = newClass;
    final lOther$newClass = other.newClass;
    if (l$newClass != lOther$newClass) {
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

extension UtilityExtension$Query$GetNewClass on Query$GetNewClass {
  CopyWith$Query$GetNewClass<Query$GetNewClass> get copyWith =>
      CopyWith$Query$GetNewClass(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetNewClass<TRes> {
  factory CopyWith$Query$GetNewClass(
    Query$GetNewClass instance,
    TRes Function(Query$GetNewClass) then,
  ) = _CopyWithImpl$Query$GetNewClass;

  factory CopyWith$Query$GetNewClass.stub(TRes res) =
      _CopyWithStubImpl$Query$GetNewClass;

  TRes call({
    Query$GetNewClass$newClass? newClass,
    String? $__typename,
  });
  CopyWith$Query$GetNewClass$newClass<TRes> get newClass;
}

class _CopyWithImpl$Query$GetNewClass<TRes>
    implements CopyWith$Query$GetNewClass<TRes> {
  _CopyWithImpl$Query$GetNewClass(
    this._instance,
    this._then,
  );

  final Query$GetNewClass _instance;

  final TRes Function(Query$GetNewClass) _then;

  static const _undefined = {};

  TRes call({
    Object? newClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetNewClass(
        newClass: newClass == _undefined || newClass == null
            ? _instance.newClass
            : (newClass as Query$GetNewClass$newClass),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetNewClass$newClass<TRes> get newClass {
    final local$newClass = _instance.newClass;
    return CopyWith$Query$GetNewClass$newClass(
        local$newClass, (e) => call(newClass: e));
  }
}

class _CopyWithStubImpl$Query$GetNewClass<TRes>
    implements CopyWith$Query$GetNewClass<TRes> {
  _CopyWithStubImpl$Query$GetNewClass(this._res);

  TRes _res;

  call({
    Query$GetNewClass$newClass? newClass,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetNewClass$newClass<TRes> get newClass =>
      CopyWith$Query$GetNewClass$newClass.stub(_res);
}

const documentNodeQueryGetNewClass = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetNewClass'),
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
        alias: NameNode(value: 'newClass'),
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
            name: NameNode(value: 'name'),
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
            name: NameNode(value: 'students'),
            alias: NameNode(value: 'newClassStudents'),
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'user'),
                alias: NameNode(value: 'newClassUser'),
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
]);
Query$GetNewClass _parserFn$Query$GetNewClass(Map<String, dynamic> data) =>
    Query$GetNewClass.fromJson(data);

class Options$Query$GetNewClass
    extends graphql.QueryOptions<Query$GetNewClass> {
  Options$Query$GetNewClass({
    String? operationName,
    required Variables$Query$GetNewClass variables,
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
          document: documentNodeQueryGetNewClass,
          parserFn: _parserFn$Query$GetNewClass,
        );
}

class WatchOptions$Query$GetNewClass
    extends graphql.WatchQueryOptions<Query$GetNewClass> {
  WatchOptions$Query$GetNewClass({
    String? operationName,
    required Variables$Query$GetNewClass variables,
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
          document: documentNodeQueryGetNewClass,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetNewClass,
        );
}

class FetchMoreOptions$Query$GetNewClass extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetNewClass({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetNewClass variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetNewClass,
        );
}

extension ClientExtension$Query$GetNewClass on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetNewClass>> query$GetNewClass(
          Options$Query$GetNewClass options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetNewClass> watchQuery$GetNewClass(
          WatchOptions$Query$GetNewClass options) =>
      this.watchQuery(options);
  void writeQuery$GetNewClass({
    required Query$GetNewClass data,
    required Variables$Query$GetNewClass variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetNewClass),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetNewClass? readQuery$GetNewClass({
    required Variables$Query$GetNewClass variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetNewClass),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetNewClass.fromJson(result);
  }
}

class Query$GetNewClass$newClass {
  Query$GetNewClass$newClass({
    required this.id,
    required this.name,
    required this.code,
    required this.newClassStudents,
    required this.$__typename,
  });

  factory Query$GetNewClass$newClass.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$code = json['code'];
    final l$newClassStudents = json['newClassStudents'];
    final l$$__typename = json['__typename'];
    return Query$GetNewClass$newClass(
      id: (l$id as String),
      name: (l$name as String),
      code: (l$code as String),
      newClassStudents: (l$newClassStudents as List<dynamic>)
          .map((e) => Query$GetNewClass$newClass$newClassStudents.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String code;

  final List<Query$GetNewClass$newClass$newClassStudents> newClassStudents;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$newClassStudents = newClassStudents;
    _resultData['newClassStudents'] =
        l$newClassStudents.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$code = code;
    final l$newClassStudents = newClassStudents;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$code,
      Object.hashAll(l$newClassStudents.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetNewClass$newClass) ||
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
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$newClassStudents = newClassStudents;
    final lOther$newClassStudents = other.newClassStudents;
    if (l$newClassStudents.length != lOther$newClassStudents.length) {
      return false;
    }
    for (int i = 0; i < l$newClassStudents.length; i++) {
      final l$newClassStudents$entry = l$newClassStudents[i];
      final lOther$newClassStudents$entry = lOther$newClassStudents[i];
      if (l$newClassStudents$entry != lOther$newClassStudents$entry) {
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

extension UtilityExtension$Query$GetNewClass$newClass
    on Query$GetNewClass$newClass {
  CopyWith$Query$GetNewClass$newClass<Query$GetNewClass$newClass>
      get copyWith => CopyWith$Query$GetNewClass$newClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetNewClass$newClass<TRes> {
  factory CopyWith$Query$GetNewClass$newClass(
    Query$GetNewClass$newClass instance,
    TRes Function(Query$GetNewClass$newClass) then,
  ) = _CopyWithImpl$Query$GetNewClass$newClass;

  factory CopyWith$Query$GetNewClass$newClass.stub(TRes res) =
      _CopyWithStubImpl$Query$GetNewClass$newClass;

  TRes call({
    String? id,
    String? name,
    String? code,
    List<Query$GetNewClass$newClass$newClassStudents>? newClassStudents,
    String? $__typename,
  });
  TRes newClassStudents(
      Iterable<Query$GetNewClass$newClass$newClassStudents> Function(
              Iterable<
                  CopyWith$Query$GetNewClass$newClass$newClassStudents<
                      Query$GetNewClass$newClass$newClassStudents>>)
          _fn);
}

class _CopyWithImpl$Query$GetNewClass$newClass<TRes>
    implements CopyWith$Query$GetNewClass$newClass<TRes> {
  _CopyWithImpl$Query$GetNewClass$newClass(
    this._instance,
    this._then,
  );

  final Query$GetNewClass$newClass _instance;

  final TRes Function(Query$GetNewClass$newClass) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? code = _undefined,
    Object? newClassStudents = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetNewClass$newClass(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        newClassStudents:
            newClassStudents == _undefined || newClassStudents == null
                ? _instance.newClassStudents
                : (newClassStudents
                    as List<Query$GetNewClass$newClass$newClassStudents>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes newClassStudents(
          Iterable<Query$GetNewClass$newClass$newClassStudents> Function(
                  Iterable<
                      CopyWith$Query$GetNewClass$newClass$newClassStudents<
                          Query$GetNewClass$newClass$newClassStudents>>)
              _fn) =>
      call(
          newClassStudents: _fn(_instance.newClassStudents
              .map((e) => CopyWith$Query$GetNewClass$newClass$newClassStudents(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetNewClass$newClass<TRes>
    implements CopyWith$Query$GetNewClass$newClass<TRes> {
  _CopyWithStubImpl$Query$GetNewClass$newClass(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? code,
    List<Query$GetNewClass$newClass$newClassStudents>? newClassStudents,
    String? $__typename,
  }) =>
      _res;
  newClassStudents(_fn) => _res;
}

class Query$GetNewClass$newClass$newClassStudents {
  Query$GetNewClass$newClass$newClassStudents({
    required this.newClassUser,
    required this.$__typename,
  });

  factory Query$GetNewClass$newClass$newClassStudents.fromJson(
      Map<String, dynamic> json) {
    final l$newClassUser = json['newClassUser'];
    final l$$__typename = json['__typename'];
    return Query$GetNewClass$newClass$newClassStudents(
      newClassUser:
          Query$GetNewClass$newClass$newClassStudents$newClassUser.fromJson(
              (l$newClassUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetNewClass$newClass$newClassStudents$newClassUser newClassUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$newClassUser = newClassUser;
    _resultData['newClassUser'] = l$newClassUser.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$newClassUser = newClassUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$newClassUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetNewClass$newClass$newClassStudents) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$newClassUser = newClassUser;
    final lOther$newClassUser = other.newClassUser;
    if (l$newClassUser != lOther$newClassUser) {
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

extension UtilityExtension$Query$GetNewClass$newClass$newClassStudents
    on Query$GetNewClass$newClass$newClassStudents {
  CopyWith$Query$GetNewClass$newClass$newClassStudents<
          Query$GetNewClass$newClass$newClassStudents>
      get copyWith => CopyWith$Query$GetNewClass$newClass$newClassStudents(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetNewClass$newClass$newClassStudents<TRes> {
  factory CopyWith$Query$GetNewClass$newClass$newClassStudents(
    Query$GetNewClass$newClass$newClassStudents instance,
    TRes Function(Query$GetNewClass$newClass$newClassStudents) then,
  ) = _CopyWithImpl$Query$GetNewClass$newClass$newClassStudents;

  factory CopyWith$Query$GetNewClass$newClass$newClassStudents.stub(TRes res) =
      _CopyWithStubImpl$Query$GetNewClass$newClass$newClassStudents;

  TRes call({
    Query$GetNewClass$newClass$newClassStudents$newClassUser? newClassUser,
    String? $__typename,
  });
  CopyWith$Query$GetNewClass$newClass$newClassStudents$newClassUser<TRes>
      get newClassUser;
}

class _CopyWithImpl$Query$GetNewClass$newClass$newClassStudents<TRes>
    implements CopyWith$Query$GetNewClass$newClass$newClassStudents<TRes> {
  _CopyWithImpl$Query$GetNewClass$newClass$newClassStudents(
    this._instance,
    this._then,
  );

  final Query$GetNewClass$newClass$newClassStudents _instance;

  final TRes Function(Query$GetNewClass$newClass$newClassStudents) _then;

  static const _undefined = {};

  TRes call({
    Object? newClassUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetNewClass$newClass$newClassStudents(
        newClassUser: newClassUser == _undefined || newClassUser == null
            ? _instance.newClassUser
            : (newClassUser
                as Query$GetNewClass$newClass$newClassStudents$newClassUser),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetNewClass$newClass$newClassStudents$newClassUser<TRes>
      get newClassUser {
    final local$newClassUser = _instance.newClassUser;
    return CopyWith$Query$GetNewClass$newClass$newClassStudents$newClassUser(
        local$newClassUser, (e) => call(newClassUser: e));
  }
}

class _CopyWithStubImpl$Query$GetNewClass$newClass$newClassStudents<TRes>
    implements CopyWith$Query$GetNewClass$newClass$newClassStudents<TRes> {
  _CopyWithStubImpl$Query$GetNewClass$newClass$newClassStudents(this._res);

  TRes _res;

  call({
    Query$GetNewClass$newClass$newClassStudents$newClassUser? newClassUser,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetNewClass$newClass$newClassStudents$newClassUser<TRes>
      get newClassUser =>
          CopyWith$Query$GetNewClass$newClass$newClassStudents$newClassUser
              .stub(_res);
}

class Query$GetNewClass$newClass$newClassStudents$newClassUser {
  Query$GetNewClass$newClass$newClassStudents$newClassUser({
    required this.id,
    required this.$__typename,
  });

  factory Query$GetNewClass$newClass$newClassStudents$newClassUser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetNewClass$newClass$newClassStudents$newClassUser(
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
    if (!(other is Query$GetNewClass$newClass$newClassStudents$newClassUser) ||
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

extension UtilityExtension$Query$GetNewClass$newClass$newClassStudents$newClassUser
    on Query$GetNewClass$newClass$newClassStudents$newClassUser {
  CopyWith$Query$GetNewClass$newClass$newClassStudents$newClassUser<
          Query$GetNewClass$newClass$newClassStudents$newClassUser>
      get copyWith =>
          CopyWith$Query$GetNewClass$newClass$newClassStudents$newClassUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetNewClass$newClass$newClassStudents$newClassUser<
    TRes> {
  factory CopyWith$Query$GetNewClass$newClass$newClassStudents$newClassUser(
    Query$GetNewClass$newClass$newClassStudents$newClassUser instance,
    TRes Function(Query$GetNewClass$newClass$newClassStudents$newClassUser)
        then,
  ) = _CopyWithImpl$Query$GetNewClass$newClass$newClassStudents$newClassUser;

  factory CopyWith$Query$GetNewClass$newClass$newClassStudents$newClassUser.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetNewClass$newClass$newClassStudents$newClassUser;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetNewClass$newClass$newClassStudents$newClassUser<
        TRes>
    implements
        CopyWith$Query$GetNewClass$newClass$newClassStudents$newClassUser<
            TRes> {
  _CopyWithImpl$Query$GetNewClass$newClass$newClassStudents$newClassUser(
    this._instance,
    this._then,
  );

  final Query$GetNewClass$newClass$newClassStudents$newClassUser _instance;

  final TRes Function(Query$GetNewClass$newClass$newClassStudents$newClassUser)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetNewClass$newClass$newClassStudents$newClassUser(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetNewClass$newClass$newClassStudents$newClassUser<
        TRes>
    implements
        CopyWith$Query$GetNewClass$newClass$newClassStudents$newClassUser<
            TRes> {
  _CopyWithStubImpl$Query$GetNewClass$newClass$newClassStudents$newClassUser(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetClassItemInfo {
  factory Variables$Query$GetClassItemInfo({required String classId}) =>
      Variables$Query$GetClassItemInfo._({
        r'classId': classId,
      });

  Variables$Query$GetClassItemInfo._(this._$data);

  factory Variables$Query$GetClassItemInfo.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    return Variables$Query$GetClassItemInfo._(result$data);
  }

  Map<String, dynamic> _$data;

  String get classId => (_$data['classId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$classId = classId;
    result$data['classId'] = l$classId;
    return result$data;
  }

  CopyWith$Variables$Query$GetClassItemInfo<Variables$Query$GetClassItemInfo>
      get copyWith => CopyWith$Variables$Query$GetClassItemInfo(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetClassItemInfo) ||
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

abstract class CopyWith$Variables$Query$GetClassItemInfo<TRes> {
  factory CopyWith$Variables$Query$GetClassItemInfo(
    Variables$Query$GetClassItemInfo instance,
    TRes Function(Variables$Query$GetClassItemInfo) then,
  ) = _CopyWithImpl$Variables$Query$GetClassItemInfo;

  factory CopyWith$Variables$Query$GetClassItemInfo.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetClassItemInfo;

  TRes call({String? classId});
}

class _CopyWithImpl$Variables$Query$GetClassItemInfo<TRes>
    implements CopyWith$Variables$Query$GetClassItemInfo<TRes> {
  _CopyWithImpl$Variables$Query$GetClassItemInfo(
    this._instance,
    this._then,
  );

  final Variables$Query$GetClassItemInfo _instance;

  final TRes Function(Variables$Query$GetClassItemInfo) _then;

  static const _undefined = {};

  TRes call({Object? classId = _undefined}) =>
      _then(Variables$Query$GetClassItemInfo._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetClassItemInfo<TRes>
    implements CopyWith$Variables$Query$GetClassItemInfo<TRes> {
  _CopyWithStubImpl$Variables$Query$GetClassItemInfo(this._res);

  TRes _res;

  call({String? classId}) => _res;
}

class Query$GetClassItemInfo {
  Query$GetClassItemInfo({
    required this.updatedClass,
    required this.$__typename,
  });

  factory Query$GetClassItemInfo.fromJson(Map<String, dynamic> json) {
    final l$updatedClass = json['updatedClass'];
    final l$$__typename = json['__typename'];
    return Query$GetClassItemInfo(
      updatedClass: Query$GetClassItemInfo$updatedClass.fromJson(
          (l$updatedClass as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetClassItemInfo$updatedClass updatedClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updatedClass = updatedClass;
    _resultData['updatedClass'] = l$updatedClass.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updatedClass = updatedClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updatedClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetClassItemInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updatedClass = updatedClass;
    final lOther$updatedClass = other.updatedClass;
    if (l$updatedClass != lOther$updatedClass) {
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

extension UtilityExtension$Query$GetClassItemInfo on Query$GetClassItemInfo {
  CopyWith$Query$GetClassItemInfo<Query$GetClassItemInfo> get copyWith =>
      CopyWith$Query$GetClassItemInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetClassItemInfo<TRes> {
  factory CopyWith$Query$GetClassItemInfo(
    Query$GetClassItemInfo instance,
    TRes Function(Query$GetClassItemInfo) then,
  ) = _CopyWithImpl$Query$GetClassItemInfo;

  factory CopyWith$Query$GetClassItemInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetClassItemInfo;

  TRes call({
    Query$GetClassItemInfo$updatedClass? updatedClass,
    String? $__typename,
  });
  CopyWith$Query$GetClassItemInfo$updatedClass<TRes> get updatedClass;
}

class _CopyWithImpl$Query$GetClassItemInfo<TRes>
    implements CopyWith$Query$GetClassItemInfo<TRes> {
  _CopyWithImpl$Query$GetClassItemInfo(
    this._instance,
    this._then,
  );

  final Query$GetClassItemInfo _instance;

  final TRes Function(Query$GetClassItemInfo) _then;

  static const _undefined = {};

  TRes call({
    Object? updatedClass = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetClassItemInfo(
        updatedClass: updatedClass == _undefined || updatedClass == null
            ? _instance.updatedClass
            : (updatedClass as Query$GetClassItemInfo$updatedClass),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetClassItemInfo$updatedClass<TRes> get updatedClass {
    final local$updatedClass = _instance.updatedClass;
    return CopyWith$Query$GetClassItemInfo$updatedClass(
        local$updatedClass, (e) => call(updatedClass: e));
  }
}

class _CopyWithStubImpl$Query$GetClassItemInfo<TRes>
    implements CopyWith$Query$GetClassItemInfo<TRes> {
  _CopyWithStubImpl$Query$GetClassItemInfo(this._res);

  TRes _res;

  call({
    Query$GetClassItemInfo$updatedClass? updatedClass,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetClassItemInfo$updatedClass<TRes> get updatedClass =>
      CopyWith$Query$GetClassItemInfo$updatedClass.stub(_res);
}

const documentNodeQueryGetClassItemInfo = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetClassItemInfo'),
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
        alias: NameNode(value: 'updatedClass'),
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
            name: NameNode(value: 'name'),
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
Query$GetClassItemInfo _parserFn$Query$GetClassItemInfo(
        Map<String, dynamic> data) =>
    Query$GetClassItemInfo.fromJson(data);

class Options$Query$GetClassItemInfo
    extends graphql.QueryOptions<Query$GetClassItemInfo> {
  Options$Query$GetClassItemInfo({
    String? operationName,
    required Variables$Query$GetClassItemInfo variables,
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
          document: documentNodeQueryGetClassItemInfo,
          parserFn: _parserFn$Query$GetClassItemInfo,
        );
}

class WatchOptions$Query$GetClassItemInfo
    extends graphql.WatchQueryOptions<Query$GetClassItemInfo> {
  WatchOptions$Query$GetClassItemInfo({
    String? operationName,
    required Variables$Query$GetClassItemInfo variables,
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
          document: documentNodeQueryGetClassItemInfo,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetClassItemInfo,
        );
}

class FetchMoreOptions$Query$GetClassItemInfo extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetClassItemInfo({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetClassItemInfo variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetClassItemInfo,
        );
}

extension ClientExtension$Query$GetClassItemInfo on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetClassItemInfo>> query$GetClassItemInfo(
          Options$Query$GetClassItemInfo options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetClassItemInfo> watchQuery$GetClassItemInfo(
          WatchOptions$Query$GetClassItemInfo options) =>
      this.watchQuery(options);
  void writeQuery$GetClassItemInfo({
    required Query$GetClassItemInfo data,
    required Variables$Query$GetClassItemInfo variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetClassItemInfo),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetClassItemInfo? readQuery$GetClassItemInfo({
    required Variables$Query$GetClassItemInfo variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetClassItemInfo),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetClassItemInfo.fromJson(result);
  }
}

class Query$GetClassItemInfo$updatedClass {
  Query$GetClassItemInfo$updatedClass({
    required this.id,
    required this.name,
    required this.code,
    required this.$__typename,
  });

  factory Query$GetClassItemInfo$updatedClass.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Query$GetClassItemInfo$updatedClass(
      id: (l$id as String),
      name: (l$name as String),
      code: (l$code as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$code,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetClassItemInfo$updatedClass) ||
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

extension UtilityExtension$Query$GetClassItemInfo$updatedClass
    on Query$GetClassItemInfo$updatedClass {
  CopyWith$Query$GetClassItemInfo$updatedClass<
          Query$GetClassItemInfo$updatedClass>
      get copyWith => CopyWith$Query$GetClassItemInfo$updatedClass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetClassItemInfo$updatedClass<TRes> {
  factory CopyWith$Query$GetClassItemInfo$updatedClass(
    Query$GetClassItemInfo$updatedClass instance,
    TRes Function(Query$GetClassItemInfo$updatedClass) then,
  ) = _CopyWithImpl$Query$GetClassItemInfo$updatedClass;

  factory CopyWith$Query$GetClassItemInfo$updatedClass.stub(TRes res) =
      _CopyWithStubImpl$Query$GetClassItemInfo$updatedClass;

  TRes call({
    String? id,
    String? name,
    String? code,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetClassItemInfo$updatedClass<TRes>
    implements CopyWith$Query$GetClassItemInfo$updatedClass<TRes> {
  _CopyWithImpl$Query$GetClassItemInfo$updatedClass(
    this._instance,
    this._then,
  );

  final Query$GetClassItemInfo$updatedClass _instance;

  final TRes Function(Query$GetClassItemInfo$updatedClass) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetClassItemInfo$updatedClass(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetClassItemInfo$updatedClass<TRes>
    implements CopyWith$Query$GetClassItemInfo$updatedClass<TRes> {
  _CopyWithStubImpl$Query$GetClassItemInfo$updatedClass(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? code,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetUserRoles {
  Query$GetUserRoles({
    required this.userRoles,
    required this.$__typename,
  });

  factory Query$GetUserRoles.fromJson(Map<String, dynamic> json) {
    final l$userRoles = json['userRoles'];
    final l$$__typename = json['__typename'];
    return Query$GetUserRoles(
      userRoles: Query$GetUserRoles$userRoles.fromJson(
          (l$userRoles as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetUserRoles$userRoles userRoles;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userRoles = userRoles;
    _resultData['userRoles'] = l$userRoles.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userRoles = userRoles;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userRoles,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetUserRoles) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$userRoles = userRoles;
    final lOther$userRoles = other.userRoles;
    if (l$userRoles != lOther$userRoles) {
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

extension UtilityExtension$Query$GetUserRoles on Query$GetUserRoles {
  CopyWith$Query$GetUserRoles<Query$GetUserRoles> get copyWith =>
      CopyWith$Query$GetUserRoles(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetUserRoles<TRes> {
  factory CopyWith$Query$GetUserRoles(
    Query$GetUserRoles instance,
    TRes Function(Query$GetUserRoles) then,
  ) = _CopyWithImpl$Query$GetUserRoles;

  factory CopyWith$Query$GetUserRoles.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserRoles;

  TRes call({
    Query$GetUserRoles$userRoles? userRoles,
    String? $__typename,
  });
  CopyWith$Query$GetUserRoles$userRoles<TRes> get userRoles;
}

class _CopyWithImpl$Query$GetUserRoles<TRes>
    implements CopyWith$Query$GetUserRoles<TRes> {
  _CopyWithImpl$Query$GetUserRoles(
    this._instance,
    this._then,
  );

  final Query$GetUserRoles _instance;

  final TRes Function(Query$GetUserRoles) _then;

  static const _undefined = {};

  TRes call({
    Object? userRoles = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserRoles(
        userRoles: userRoles == _undefined || userRoles == null
            ? _instance.userRoles
            : (userRoles as Query$GetUserRoles$userRoles),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetUserRoles$userRoles<TRes> get userRoles {
    final local$userRoles = _instance.userRoles;
    return CopyWith$Query$GetUserRoles$userRoles(
        local$userRoles, (e) => call(userRoles: e));
  }
}

class _CopyWithStubImpl$Query$GetUserRoles<TRes>
    implements CopyWith$Query$GetUserRoles<TRes> {
  _CopyWithStubImpl$Query$GetUserRoles(this._res);

  TRes _res;

  call({
    Query$GetUserRoles$userRoles? userRoles,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetUserRoles$userRoles<TRes> get userRoles =>
      CopyWith$Query$GetUserRoles$userRoles.stub(_res);
}

const documentNodeQueryGetUserRoles = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetUserRoles'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'user'),
        alias: NameNode(value: 'userRoles'),
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
            name: NameNode(value: 'roles'),
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
Query$GetUserRoles _parserFn$Query$GetUserRoles(Map<String, dynamic> data) =>
    Query$GetUserRoles.fromJson(data);

class Options$Query$GetUserRoles
    extends graphql.QueryOptions<Query$GetUserRoles> {
  Options$Query$GetUserRoles({
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
          document: documentNodeQueryGetUserRoles,
          parserFn: _parserFn$Query$GetUserRoles,
        );
}

class WatchOptions$Query$GetUserRoles
    extends graphql.WatchQueryOptions<Query$GetUserRoles> {
  WatchOptions$Query$GetUserRoles({
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
          document: documentNodeQueryGetUserRoles,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetUserRoles,
        );
}

class FetchMoreOptions$Query$GetUserRoles extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetUserRoles(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetUserRoles,
        );
}

extension ClientExtension$Query$GetUserRoles on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetUserRoles>> query$GetUserRoles(
          [Options$Query$GetUserRoles? options]) async =>
      await this.query(options ?? Options$Query$GetUserRoles());
  graphql.ObservableQuery<Query$GetUserRoles> watchQuery$GetUserRoles(
          [WatchOptions$Query$GetUserRoles? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetUserRoles());
  void writeQuery$GetUserRoles({
    required Query$GetUserRoles data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetUserRoles)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetUserRoles? readQuery$GetUserRoles({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetUserRoles)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetUserRoles.fromJson(result);
  }
}

class Query$GetUserRoles$userRoles {
  Query$GetUserRoles$userRoles({
    required this.id,
    required this.roles,
    required this.$__typename,
  });

  factory Query$GetUserRoles$userRoles.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$roles = json['roles'];
    final l$$__typename = json['__typename'];
    return Query$GetUserRoles$userRoles(
      id: (l$id as String),
      roles: (l$roles as List<dynamic>)
          .map((e) => fromJson$Enum$UserRole((e as String)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final List<Enum$UserRole> roles;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$roles = roles;
    _resultData['roles'] = l$roles.map((e) => toJson$Enum$UserRole(e)).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$roles = roles;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$roles.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetUserRoles$userRoles) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$roles = roles;
    final lOther$roles = other.roles;
    if (l$roles.length != lOther$roles.length) {
      return false;
    }
    for (int i = 0; i < l$roles.length; i++) {
      final l$roles$entry = l$roles[i];
      final lOther$roles$entry = lOther$roles[i];
      if (l$roles$entry != lOther$roles$entry) {
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

extension UtilityExtension$Query$GetUserRoles$userRoles
    on Query$GetUserRoles$userRoles {
  CopyWith$Query$GetUserRoles$userRoles<Query$GetUserRoles$userRoles>
      get copyWith => CopyWith$Query$GetUserRoles$userRoles(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserRoles$userRoles<TRes> {
  factory CopyWith$Query$GetUserRoles$userRoles(
    Query$GetUserRoles$userRoles instance,
    TRes Function(Query$GetUserRoles$userRoles) then,
  ) = _CopyWithImpl$Query$GetUserRoles$userRoles;

  factory CopyWith$Query$GetUserRoles$userRoles.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserRoles$userRoles;

  TRes call({
    String? id,
    List<Enum$UserRole>? roles,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUserRoles$userRoles<TRes>
    implements CopyWith$Query$GetUserRoles$userRoles<TRes> {
  _CopyWithImpl$Query$GetUserRoles$userRoles(
    this._instance,
    this._then,
  );

  final Query$GetUserRoles$userRoles _instance;

  final TRes Function(Query$GetUserRoles$userRoles) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? roles = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserRoles$userRoles(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        roles: roles == _undefined || roles == null
            ? _instance.roles
            : (roles as List<Enum$UserRole>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetUserRoles$userRoles<TRes>
    implements CopyWith$Query$GetUserRoles$userRoles<TRes> {
  _CopyWithStubImpl$Query$GetUserRoles$userRoles(this._res);

  TRes _res;

  call({
    String? id,
    List<Enum$UserRole>? roles,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetStudents {
  factory Variables$Query$GetStudents({required String classId}) =>
      Variables$Query$GetStudents._({
        r'classId': classId,
      });

  Variables$Query$GetStudents._(this._$data);

  factory Variables$Query$GetStudents.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = (l$classId as String);
    return Variables$Query$GetStudents._(result$data);
  }

  Map<String, dynamic> _$data;

  String get classId => (_$data['classId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$classId = classId;
    result$data['classId'] = l$classId;
    return result$data;
  }

  CopyWith$Variables$Query$GetStudents<Variables$Query$GetStudents>
      get copyWith => CopyWith$Variables$Query$GetStudents(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetStudents) ||
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

abstract class CopyWith$Variables$Query$GetStudents<TRes> {
  factory CopyWith$Variables$Query$GetStudents(
    Variables$Query$GetStudents instance,
    TRes Function(Variables$Query$GetStudents) then,
  ) = _CopyWithImpl$Variables$Query$GetStudents;

  factory CopyWith$Variables$Query$GetStudents.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetStudents;

  TRes call({String? classId});
}

class _CopyWithImpl$Variables$Query$GetStudents<TRes>
    implements CopyWith$Variables$Query$GetStudents<TRes> {
  _CopyWithImpl$Variables$Query$GetStudents(
    this._instance,
    this._then,
  );

  final Variables$Query$GetStudents _instance;

  final TRes Function(Variables$Query$GetStudents) _then;

  static const _undefined = {};

  TRes call({Object? classId = _undefined}) =>
      _then(Variables$Query$GetStudents._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetStudents<TRes>
    implements CopyWith$Variables$Query$GetStudents<TRes> {
  _CopyWithStubImpl$Variables$Query$GetStudents(this._res);

  TRes _res;

  call({String? classId}) => _res;
}

class Query$GetStudents {
  Query$GetStudents({
    required this.$class,
    required this.$__typename,
  });

  factory Query$GetStudents.fromJson(Map<String, dynamic> json) {
    final l$$class = json['class'];
    final l$$__typename = json['__typename'];
    return Query$GetStudents(
      $class:
          Query$GetStudents$class.fromJson((l$$class as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetStudents$class $class;

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
    if (!(other is Query$GetStudents) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetStudents on Query$GetStudents {
  CopyWith$Query$GetStudents<Query$GetStudents> get copyWith =>
      CopyWith$Query$GetStudents(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStudents<TRes> {
  factory CopyWith$Query$GetStudents(
    Query$GetStudents instance,
    TRes Function(Query$GetStudents) then,
  ) = _CopyWithImpl$Query$GetStudents;

  factory CopyWith$Query$GetStudents.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStudents;

  TRes call({
    Query$GetStudents$class? $class,
    String? $__typename,
  });
  CopyWith$Query$GetStudents$class<TRes> get $class;
}

class _CopyWithImpl$Query$GetStudents<TRes>
    implements CopyWith$Query$GetStudents<TRes> {
  _CopyWithImpl$Query$GetStudents(
    this._instance,
    this._then,
  );

  final Query$GetStudents _instance;

  final TRes Function(Query$GetStudents) _then;

  static const _undefined = {};

  TRes call({
    Object? $class = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetStudents(
        $class: $class == _undefined || $class == null
            ? _instance.$class
            : ($class as Query$GetStudents$class),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetStudents$class<TRes> get $class {
    final local$$class = _instance.$class;
    return CopyWith$Query$GetStudents$class(
        local$$class, (e) => call($class: e));
  }
}

class _CopyWithStubImpl$Query$GetStudents<TRes>
    implements CopyWith$Query$GetStudents<TRes> {
  _CopyWithStubImpl$Query$GetStudents(this._res);

  TRes _res;

  call({
    Query$GetStudents$class? $class,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetStudents$class<TRes> get $class =>
      CopyWith$Query$GetStudents$class.stub(_res);
}

const documentNodeQueryGetStudents = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetStudents'),
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
            name: NameNode(value: 'students'),
            alias: NameNode(value: 'classStudents'),
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'user'),
                alias: NameNode(value: 'classUser'),
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
]);
Query$GetStudents _parserFn$Query$GetStudents(Map<String, dynamic> data) =>
    Query$GetStudents.fromJson(data);

class Options$Query$GetStudents
    extends graphql.QueryOptions<Query$GetStudents> {
  Options$Query$GetStudents({
    String? operationName,
    required Variables$Query$GetStudents variables,
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
          document: documentNodeQueryGetStudents,
          parserFn: _parserFn$Query$GetStudents,
        );
}

class WatchOptions$Query$GetStudents
    extends graphql.WatchQueryOptions<Query$GetStudents> {
  WatchOptions$Query$GetStudents({
    String? operationName,
    required Variables$Query$GetStudents variables,
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
          document: documentNodeQueryGetStudents,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetStudents,
        );
}

class FetchMoreOptions$Query$GetStudents extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetStudents({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetStudents variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetStudents,
        );
}

extension ClientExtension$Query$GetStudents on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetStudents>> query$GetStudents(
          Options$Query$GetStudents options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetStudents> watchQuery$GetStudents(
          WatchOptions$Query$GetStudents options) =>
      this.watchQuery(options);
  void writeQuery$GetStudents({
    required Query$GetStudents data,
    required Variables$Query$GetStudents variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetStudents),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetStudents? readQuery$GetStudents({
    required Variables$Query$GetStudents variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetStudents),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetStudents.fromJson(result);
  }
}

class Query$GetStudents$class {
  Query$GetStudents$class({
    required this.classStudents,
    required this.$__typename,
  });

  factory Query$GetStudents$class.fromJson(Map<String, dynamic> json) {
    final l$classStudents = json['classStudents'];
    final l$$__typename = json['__typename'];
    return Query$GetStudents$class(
      classStudents: (l$classStudents as List<dynamic>)
          .map((e) => Query$GetStudents$class$classStudents.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetStudents$class$classStudents> classStudents;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$classStudents = classStudents;
    _resultData['classStudents'] =
        l$classStudents.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$classStudents = classStudents;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$classStudents.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetStudents$class) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classStudents = classStudents;
    final lOther$classStudents = other.classStudents;
    if (l$classStudents.length != lOther$classStudents.length) {
      return false;
    }
    for (int i = 0; i < l$classStudents.length; i++) {
      final l$classStudents$entry = l$classStudents[i];
      final lOther$classStudents$entry = lOther$classStudents[i];
      if (l$classStudents$entry != lOther$classStudents$entry) {
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

extension UtilityExtension$Query$GetStudents$class on Query$GetStudents$class {
  CopyWith$Query$GetStudents$class<Query$GetStudents$class> get copyWith =>
      CopyWith$Query$GetStudents$class(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStudents$class<TRes> {
  factory CopyWith$Query$GetStudents$class(
    Query$GetStudents$class instance,
    TRes Function(Query$GetStudents$class) then,
  ) = _CopyWithImpl$Query$GetStudents$class;

  factory CopyWith$Query$GetStudents$class.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStudents$class;

  TRes call({
    List<Query$GetStudents$class$classStudents>? classStudents,
    String? $__typename,
  });
  TRes classStudents(
      Iterable<Query$GetStudents$class$classStudents> Function(
              Iterable<
                  CopyWith$Query$GetStudents$class$classStudents<
                      Query$GetStudents$class$classStudents>>)
          _fn);
}

class _CopyWithImpl$Query$GetStudents$class<TRes>
    implements CopyWith$Query$GetStudents$class<TRes> {
  _CopyWithImpl$Query$GetStudents$class(
    this._instance,
    this._then,
  );

  final Query$GetStudents$class _instance;

  final TRes Function(Query$GetStudents$class) _then;

  static const _undefined = {};

  TRes call({
    Object? classStudents = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetStudents$class(
        classStudents: classStudents == _undefined || classStudents == null
            ? _instance.classStudents
            : (classStudents as List<Query$GetStudents$class$classStudents>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes classStudents(
          Iterable<Query$GetStudents$class$classStudents> Function(
                  Iterable<
                      CopyWith$Query$GetStudents$class$classStudents<
                          Query$GetStudents$class$classStudents>>)
              _fn) =>
      call(
          classStudents: _fn(_instance.classStudents
              .map((e) => CopyWith$Query$GetStudents$class$classStudents(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetStudents$class<TRes>
    implements CopyWith$Query$GetStudents$class<TRes> {
  _CopyWithStubImpl$Query$GetStudents$class(this._res);

  TRes _res;

  call({
    List<Query$GetStudents$class$classStudents>? classStudents,
    String? $__typename,
  }) =>
      _res;
  classStudents(_fn) => _res;
}

class Query$GetStudents$class$classStudents {
  Query$GetStudents$class$classStudents({
    required this.classUser,
    required this.$__typename,
  });

  factory Query$GetStudents$class$classStudents.fromJson(
      Map<String, dynamic> json) {
    final l$classUser = json['classUser'];
    final l$$__typename = json['__typename'];
    return Query$GetStudents$class$classStudents(
      classUser: Query$GetStudents$class$classStudents$classUser.fromJson(
          (l$classUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetStudents$class$classStudents$classUser classUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$classUser = classUser;
    _resultData['classUser'] = l$classUser.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$classUser = classUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$classUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetStudents$class$classStudents) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classUser = classUser;
    final lOther$classUser = other.classUser;
    if (l$classUser != lOther$classUser) {
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

extension UtilityExtension$Query$GetStudents$class$classStudents
    on Query$GetStudents$class$classStudents {
  CopyWith$Query$GetStudents$class$classStudents<
          Query$GetStudents$class$classStudents>
      get copyWith => CopyWith$Query$GetStudents$class$classStudents(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetStudents$class$classStudents<TRes> {
  factory CopyWith$Query$GetStudents$class$classStudents(
    Query$GetStudents$class$classStudents instance,
    TRes Function(Query$GetStudents$class$classStudents) then,
  ) = _CopyWithImpl$Query$GetStudents$class$classStudents;

  factory CopyWith$Query$GetStudents$class$classStudents.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStudents$class$classStudents;

  TRes call({
    Query$GetStudents$class$classStudents$classUser? classUser,
    String? $__typename,
  });
  CopyWith$Query$GetStudents$class$classStudents$classUser<TRes> get classUser;
}

class _CopyWithImpl$Query$GetStudents$class$classStudents<TRes>
    implements CopyWith$Query$GetStudents$class$classStudents<TRes> {
  _CopyWithImpl$Query$GetStudents$class$classStudents(
    this._instance,
    this._then,
  );

  final Query$GetStudents$class$classStudents _instance;

  final TRes Function(Query$GetStudents$class$classStudents) _then;

  static const _undefined = {};

  TRes call({
    Object? classUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetStudents$class$classStudents(
        classUser: classUser == _undefined || classUser == null
            ? _instance.classUser
            : (classUser as Query$GetStudents$class$classStudents$classUser),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetStudents$class$classStudents$classUser<TRes> get classUser {
    final local$classUser = _instance.classUser;
    return CopyWith$Query$GetStudents$class$classStudents$classUser(
        local$classUser, (e) => call(classUser: e));
  }
}

class _CopyWithStubImpl$Query$GetStudents$class$classStudents<TRes>
    implements CopyWith$Query$GetStudents$class$classStudents<TRes> {
  _CopyWithStubImpl$Query$GetStudents$class$classStudents(this._res);

  TRes _res;

  call({
    Query$GetStudents$class$classStudents$classUser? classUser,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetStudents$class$classStudents$classUser<TRes>
      get classUser =>
          CopyWith$Query$GetStudents$class$classStudents$classUser.stub(_res);
}

class Query$GetStudents$class$classStudents$classUser {
  Query$GetStudents$class$classStudents$classUser({
    required this.id,
    required this.$__typename,
  });

  factory Query$GetStudents$class$classStudents$classUser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetStudents$class$classStudents$classUser(
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
    if (!(other is Query$GetStudents$class$classStudents$classUser) ||
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

extension UtilityExtension$Query$GetStudents$class$classStudents$classUser
    on Query$GetStudents$class$classStudents$classUser {
  CopyWith$Query$GetStudents$class$classStudents$classUser<
          Query$GetStudents$class$classStudents$classUser>
      get copyWith => CopyWith$Query$GetStudents$class$classStudents$classUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetStudents$class$classStudents$classUser<TRes> {
  factory CopyWith$Query$GetStudents$class$classStudents$classUser(
    Query$GetStudents$class$classStudents$classUser instance,
    TRes Function(Query$GetStudents$class$classStudents$classUser) then,
  ) = _CopyWithImpl$Query$GetStudents$class$classStudents$classUser;

  factory CopyWith$Query$GetStudents$class$classStudents$classUser.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetStudents$class$classStudents$classUser;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetStudents$class$classStudents$classUser<TRes>
    implements CopyWith$Query$GetStudents$class$classStudents$classUser<TRes> {
  _CopyWithImpl$Query$GetStudents$class$classStudents$classUser(
    this._instance,
    this._then,
  );

  final Query$GetStudents$class$classStudents$classUser _instance;

  final TRes Function(Query$GetStudents$class$classStudents$classUser) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetStudents$class$classStudents$classUser(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetStudents$class$classStudents$classUser<TRes>
    implements CopyWith$Query$GetStudents$class$classStudents$classUser<TRes> {
  _CopyWithStubImpl$Query$GetStudents$class$classStudents$classUser(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetUpcomingAssessments {
  factory Variables$Query$GetUpcomingAssessments({required String studentId}) =>
      Variables$Query$GetUpcomingAssessments._({
        r'studentId': studentId,
      });

  Variables$Query$GetUpcomingAssessments._(this._$data);

  factory Variables$Query$GetUpcomingAssessments.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$studentId = data['studentId'];
    result$data['studentId'] = (l$studentId as String);
    return Variables$Query$GetUpcomingAssessments._(result$data);
  }

  Map<String, dynamic> _$data;

  String get studentId => (_$data['studentId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$studentId = studentId;
    result$data['studentId'] = l$studentId;
    return result$data;
  }

  CopyWith$Variables$Query$GetUpcomingAssessments<
          Variables$Query$GetUpcomingAssessments>
      get copyWith => CopyWith$Variables$Query$GetUpcomingAssessments(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetUpcomingAssessments) ||
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

abstract class CopyWith$Variables$Query$GetUpcomingAssessments<TRes> {
  factory CopyWith$Variables$Query$GetUpcomingAssessments(
    Variables$Query$GetUpcomingAssessments instance,
    TRes Function(Variables$Query$GetUpcomingAssessments) then,
  ) = _CopyWithImpl$Variables$Query$GetUpcomingAssessments;

  factory CopyWith$Variables$Query$GetUpcomingAssessments.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetUpcomingAssessments;

  TRes call({String? studentId});
}

class _CopyWithImpl$Variables$Query$GetUpcomingAssessments<TRes>
    implements CopyWith$Variables$Query$GetUpcomingAssessments<TRes> {
  _CopyWithImpl$Variables$Query$GetUpcomingAssessments(
    this._instance,
    this._then,
  );

  final Variables$Query$GetUpcomingAssessments _instance;

  final TRes Function(Variables$Query$GetUpcomingAssessments) _then;

  static const _undefined = {};

  TRes call({Object? studentId = _undefined}) =>
      _then(Variables$Query$GetUpcomingAssessments._({
        ..._instance._$data,
        if (studentId != _undefined && studentId != null)
          'studentId': (studentId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetUpcomingAssessments<TRes>
    implements CopyWith$Variables$Query$GetUpcomingAssessments<TRes> {
  _CopyWithStubImpl$Variables$Query$GetUpcomingAssessments(this._res);

  TRes _res;

  call({String? studentId}) => _res;
}

class Query$GetUpcomingAssessments {
  Query$GetUpcomingAssessments({
    required this.student,
    required this.$__typename,
  });

  factory Query$GetUpcomingAssessments.fromJson(Map<String, dynamic> json) {
    final l$student = json['student'];
    final l$$__typename = json['__typename'];
    return Query$GetUpcomingAssessments(
      student: Query$GetUpcomingAssessments$student.fromJson(
          (l$student as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetUpcomingAssessments$student student;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$student = student;
    _resultData['student'] = l$student.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$student = student;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$student,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetUpcomingAssessments) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$student = student;
    final lOther$student = other.student;
    if (l$student != lOther$student) {
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

extension UtilityExtension$Query$GetUpcomingAssessments
    on Query$GetUpcomingAssessments {
  CopyWith$Query$GetUpcomingAssessments<Query$GetUpcomingAssessments>
      get copyWith => CopyWith$Query$GetUpcomingAssessments(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUpcomingAssessments<TRes> {
  factory CopyWith$Query$GetUpcomingAssessments(
    Query$GetUpcomingAssessments instance,
    TRes Function(Query$GetUpcomingAssessments) then,
  ) = _CopyWithImpl$Query$GetUpcomingAssessments;

  factory CopyWith$Query$GetUpcomingAssessments.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUpcomingAssessments;

  TRes call({
    Query$GetUpcomingAssessments$student? student,
    String? $__typename,
  });
  CopyWith$Query$GetUpcomingAssessments$student<TRes> get student;
}

class _CopyWithImpl$Query$GetUpcomingAssessments<TRes>
    implements CopyWith$Query$GetUpcomingAssessments<TRes> {
  _CopyWithImpl$Query$GetUpcomingAssessments(
    this._instance,
    this._then,
  );

  final Query$GetUpcomingAssessments _instance;

  final TRes Function(Query$GetUpcomingAssessments) _then;

  static const _undefined = {};

  TRes call({
    Object? student = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUpcomingAssessments(
        student: student == _undefined || student == null
            ? _instance.student
            : (student as Query$GetUpcomingAssessments$student),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetUpcomingAssessments$student<TRes> get student {
    final local$student = _instance.student;
    return CopyWith$Query$GetUpcomingAssessments$student(
        local$student, (e) => call(student: e));
  }
}

class _CopyWithStubImpl$Query$GetUpcomingAssessments<TRes>
    implements CopyWith$Query$GetUpcomingAssessments<TRes> {
  _CopyWithStubImpl$Query$GetUpcomingAssessments(this._res);

  TRes _res;

  call({
    Query$GetUpcomingAssessments$student? student,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetUpcomingAssessments$student<TRes> get student =>
      CopyWith$Query$GetUpcomingAssessments$student.stub(_res);
}

const documentNodeQueryGetUpcomingAssessments = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetUpcomingAssessments'),
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
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'studentId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'upcomingTests'),
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
                name: NameNode(value: 'session'),
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
                    name: NameNode(value: 'startAt'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'duration'),
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
Query$GetUpcomingAssessments _parserFn$Query$GetUpcomingAssessments(
        Map<String, dynamic> data) =>
    Query$GetUpcomingAssessments.fromJson(data);

class Options$Query$GetUpcomingAssessments
    extends graphql.QueryOptions<Query$GetUpcomingAssessments> {
  Options$Query$GetUpcomingAssessments({
    String? operationName,
    required Variables$Query$GetUpcomingAssessments variables,
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
          document: documentNodeQueryGetUpcomingAssessments,
          parserFn: _parserFn$Query$GetUpcomingAssessments,
        );
}

class WatchOptions$Query$GetUpcomingAssessments
    extends graphql.WatchQueryOptions<Query$GetUpcomingAssessments> {
  WatchOptions$Query$GetUpcomingAssessments({
    String? operationName,
    required Variables$Query$GetUpcomingAssessments variables,
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
          document: documentNodeQueryGetUpcomingAssessments,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetUpcomingAssessments,
        );
}

class FetchMoreOptions$Query$GetUpcomingAssessments
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetUpcomingAssessments({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetUpcomingAssessments variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetUpcomingAssessments,
        );
}

extension ClientExtension$Query$GetUpcomingAssessments
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetUpcomingAssessments>>
      query$GetUpcomingAssessments(
              Options$Query$GetUpcomingAssessments options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetUpcomingAssessments>
      watchQuery$GetUpcomingAssessments(
              WatchOptions$Query$GetUpcomingAssessments options) =>
          this.watchQuery(options);
  void writeQuery$GetUpcomingAssessments({
    required Query$GetUpcomingAssessments data,
    required Variables$Query$GetUpcomingAssessments variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetUpcomingAssessments),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetUpcomingAssessments? readQuery$GetUpcomingAssessments({
    required Variables$Query$GetUpcomingAssessments variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetUpcomingAssessments),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetUpcomingAssessments.fromJson(result);
  }
}

class Query$GetUpcomingAssessments$student {
  Query$GetUpcomingAssessments$student({
    this.upcomingTests,
    required this.$__typename,
  });

  factory Query$GetUpcomingAssessments$student.fromJson(
      Map<String, dynamic> json) {
    final l$upcomingTests = json['upcomingTests'];
    final l$$__typename = json['__typename'];
    return Query$GetUpcomingAssessments$student(
      upcomingTests: (l$upcomingTests as List<dynamic>?)
          ?.map((e) =>
              Query$GetUpcomingAssessments$student$upcomingTests.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetUpcomingAssessments$student$upcomingTests>? upcomingTests;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$upcomingTests = upcomingTests;
    _resultData['upcomingTests'] =
        l$upcomingTests?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$upcomingTests = upcomingTests;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$upcomingTests == null
          ? null
          : Object.hashAll(l$upcomingTests.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetUpcomingAssessments$student) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$upcomingTests = upcomingTests;
    final lOther$upcomingTests = other.upcomingTests;
    if (l$upcomingTests != null && lOther$upcomingTests != null) {
      if (l$upcomingTests.length != lOther$upcomingTests.length) {
        return false;
      }
      for (int i = 0; i < l$upcomingTests.length; i++) {
        final l$upcomingTests$entry = l$upcomingTests[i];
        final lOther$upcomingTests$entry = lOther$upcomingTests[i];
        if (l$upcomingTests$entry != lOther$upcomingTests$entry) {
          return false;
        }
      }
    } else if (l$upcomingTests != lOther$upcomingTests) {
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

extension UtilityExtension$Query$GetUpcomingAssessments$student
    on Query$GetUpcomingAssessments$student {
  CopyWith$Query$GetUpcomingAssessments$student<
          Query$GetUpcomingAssessments$student>
      get copyWith => CopyWith$Query$GetUpcomingAssessments$student(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUpcomingAssessments$student<TRes> {
  factory CopyWith$Query$GetUpcomingAssessments$student(
    Query$GetUpcomingAssessments$student instance,
    TRes Function(Query$GetUpcomingAssessments$student) then,
  ) = _CopyWithImpl$Query$GetUpcomingAssessments$student;

  factory CopyWith$Query$GetUpcomingAssessments$student.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUpcomingAssessments$student;

  TRes call({
    List<Query$GetUpcomingAssessments$student$upcomingTests>? upcomingTests,
    String? $__typename,
  });
  TRes upcomingTests(
      Iterable<Query$GetUpcomingAssessments$student$upcomingTests>? Function(
              Iterable<
                  CopyWith$Query$GetUpcomingAssessments$student$upcomingTests<
                      Query$GetUpcomingAssessments$student$upcomingTests>>?)
          _fn);
}

class _CopyWithImpl$Query$GetUpcomingAssessments$student<TRes>
    implements CopyWith$Query$GetUpcomingAssessments$student<TRes> {
  _CopyWithImpl$Query$GetUpcomingAssessments$student(
    this._instance,
    this._then,
  );

  final Query$GetUpcomingAssessments$student _instance;

  final TRes Function(Query$GetUpcomingAssessments$student) _then;

  static const _undefined = {};

  TRes call({
    Object? upcomingTests = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUpcomingAssessments$student(
        upcomingTests: upcomingTests == _undefined
            ? _instance.upcomingTests
            : (upcomingTests
                as List<Query$GetUpcomingAssessments$student$upcomingTests>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes upcomingTests(
          Iterable<Query$GetUpcomingAssessments$student$upcomingTests>? Function(
                  Iterable<
                      CopyWith$Query$GetUpcomingAssessments$student$upcomingTests<
                          Query$GetUpcomingAssessments$student$upcomingTests>>?)
              _fn) =>
      call(
          upcomingTests: _fn(_instance.upcomingTests?.map((e) =>
              CopyWith$Query$GetUpcomingAssessments$student$upcomingTests(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Query$GetUpcomingAssessments$student<TRes>
    implements CopyWith$Query$GetUpcomingAssessments$student<TRes> {
  _CopyWithStubImpl$Query$GetUpcomingAssessments$student(this._res);

  TRes _res;

  call({
    List<Query$GetUpcomingAssessments$student$upcomingTests>? upcomingTests,
    String? $__typename,
  }) =>
      _res;
  upcomingTests(_fn) => _res;
}

class Query$GetUpcomingAssessments$student$upcomingTests {
  Query$GetUpcomingAssessments$student$upcomingTests({
    required this.id,
    this.session,
    required this.$__typename,
  });

  factory Query$GetUpcomingAssessments$student$upcomingTests.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$session = json['session'];
    final l$$__typename = json['__typename'];
    return Query$GetUpcomingAssessments$student$upcomingTests(
      id: (l$id as String),
      session: l$session == null
          ? null
          : Query$GetUpcomingAssessments$student$upcomingTests$session.fromJson(
              (l$session as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Query$GetUpcomingAssessments$student$upcomingTests$session? session;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$session = session;
    _resultData['session'] = l$session?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$session = session;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$session,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetUpcomingAssessments$student$upcomingTests) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$session = session;
    final lOther$session = other.session;
    if (l$session != lOther$session) {
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

extension UtilityExtension$Query$GetUpcomingAssessments$student$upcomingTests
    on Query$GetUpcomingAssessments$student$upcomingTests {
  CopyWith$Query$GetUpcomingAssessments$student$upcomingTests<
          Query$GetUpcomingAssessments$student$upcomingTests>
      get copyWith =>
          CopyWith$Query$GetUpcomingAssessments$student$upcomingTests(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUpcomingAssessments$student$upcomingTests<
    TRes> {
  factory CopyWith$Query$GetUpcomingAssessments$student$upcomingTests(
    Query$GetUpcomingAssessments$student$upcomingTests instance,
    TRes Function(Query$GetUpcomingAssessments$student$upcomingTests) then,
  ) = _CopyWithImpl$Query$GetUpcomingAssessments$student$upcomingTests;

  factory CopyWith$Query$GetUpcomingAssessments$student$upcomingTests.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetUpcomingAssessments$student$upcomingTests;

  TRes call({
    String? id,
    Query$GetUpcomingAssessments$student$upcomingTests$session? session,
    String? $__typename,
  });
  CopyWith$Query$GetUpcomingAssessments$student$upcomingTests$session<TRes>
      get session;
}

class _CopyWithImpl$Query$GetUpcomingAssessments$student$upcomingTests<TRes>
    implements
        CopyWith$Query$GetUpcomingAssessments$student$upcomingTests<TRes> {
  _CopyWithImpl$Query$GetUpcomingAssessments$student$upcomingTests(
    this._instance,
    this._then,
  );

  final Query$GetUpcomingAssessments$student$upcomingTests _instance;

  final TRes Function(Query$GetUpcomingAssessments$student$upcomingTests) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? session = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUpcomingAssessments$student$upcomingTests(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        session: session == _undefined
            ? _instance.session
            : (session
                as Query$GetUpcomingAssessments$student$upcomingTests$session?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetUpcomingAssessments$student$upcomingTests$session<TRes>
      get session {
    final local$session = _instance.session;
    return local$session == null
        ? CopyWith$Query$GetUpcomingAssessments$student$upcomingTests$session
            .stub(_then(_instance))
        : CopyWith$Query$GetUpcomingAssessments$student$upcomingTests$session(
            local$session, (e) => call(session: e));
  }
}

class _CopyWithStubImpl$Query$GetUpcomingAssessments$student$upcomingTests<TRes>
    implements
        CopyWith$Query$GetUpcomingAssessments$student$upcomingTests<TRes> {
  _CopyWithStubImpl$Query$GetUpcomingAssessments$student$upcomingTests(
      this._res);

  TRes _res;

  call({
    String? id,
    Query$GetUpcomingAssessments$student$upcomingTests$session? session,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetUpcomingAssessments$student$upcomingTests$session<TRes>
      get session =>
          CopyWith$Query$GetUpcomingAssessments$student$upcomingTests$session
              .stub(_res);
}

class Query$GetUpcomingAssessments$student$upcomingTests$session {
  Query$GetUpcomingAssessments$student$upcomingTests$session({
    required this.id,
    required this.startAt,
    required this.duration,
    required this.name,
    required this.$__typename,
  });

  factory Query$GetUpcomingAssessments$student$upcomingTests$session.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$startAt = json['startAt'];
    final l$duration = json['duration'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetUpcomingAssessments$student$upcomingTests$session(
      id: (l$id as String),
      startAt: dateTimeFromRFC3339Nano(l$startAt),
      duration: durationFromNanoseconds(l$duration),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime startAt;

  final Duration duration;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$startAt = startAt;
    _resultData['startAt'] = dateTimeToUtcToIso8601(l$startAt);
    final l$duration = duration;
    _resultData['duration'] = durationToNanoseconds(l$duration);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$startAt = startAt;
    final l$duration = duration;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$startAt,
      l$duration,
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
            is Query$GetUpcomingAssessments$student$upcomingTests$session) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$startAt = startAt;
    final lOther$startAt = other.startAt;
    if (l$startAt != lOther$startAt) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
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

extension UtilityExtension$Query$GetUpcomingAssessments$student$upcomingTests$session
    on Query$GetUpcomingAssessments$student$upcomingTests$session {
  CopyWith$Query$GetUpcomingAssessments$student$upcomingTests$session<
          Query$GetUpcomingAssessments$student$upcomingTests$session>
      get copyWith =>
          CopyWith$Query$GetUpcomingAssessments$student$upcomingTests$session(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUpcomingAssessments$student$upcomingTests$session<
    TRes> {
  factory CopyWith$Query$GetUpcomingAssessments$student$upcomingTests$session(
    Query$GetUpcomingAssessments$student$upcomingTests$session instance,
    TRes Function(Query$GetUpcomingAssessments$student$upcomingTests$session)
        then,
  ) = _CopyWithImpl$Query$GetUpcomingAssessments$student$upcomingTests$session;

  factory CopyWith$Query$GetUpcomingAssessments$student$upcomingTests$session.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetUpcomingAssessments$student$upcomingTests$session;

  TRes call({
    String? id,
    DateTime? startAt,
    Duration? duration,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUpcomingAssessments$student$upcomingTests$session<
        TRes>
    implements
        CopyWith$Query$GetUpcomingAssessments$student$upcomingTests$session<
            TRes> {
  _CopyWithImpl$Query$GetUpcomingAssessments$student$upcomingTests$session(
    this._instance,
    this._then,
  );

  final Query$GetUpcomingAssessments$student$upcomingTests$session _instance;

  final TRes Function(
      Query$GetUpcomingAssessments$student$upcomingTests$session) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? startAt = _undefined,
    Object? duration = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUpcomingAssessments$student$upcomingTests$session(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        startAt: startAt == _undefined || startAt == null
            ? _instance.startAt
            : (startAt as DateTime),
        duration: duration == _undefined || duration == null
            ? _instance.duration
            : (duration as Duration),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetUpcomingAssessments$student$upcomingTests$session<
        TRes>
    implements
        CopyWith$Query$GetUpcomingAssessments$student$upcomingTests$session<
            TRes> {
  _CopyWithStubImpl$Query$GetUpcomingAssessments$student$upcomingTests$session(
      this._res);

  TRes _res;

  call({
    String? id,
    DateTime? startAt,
    Duration? duration,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$StartStudentAssessment {
  factory Variables$Mutation$StartStudentAssessment({required String testId}) =>
      Variables$Mutation$StartStudentAssessment._({
        r'testId': testId,
      });

  Variables$Mutation$StartStudentAssessment._(this._$data);

  factory Variables$Mutation$StartStudentAssessment.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$testId = data['testId'];
    result$data['testId'] = (l$testId as String);
    return Variables$Mutation$StartStudentAssessment._(result$data);
  }

  Map<String, dynamic> _$data;

  String get testId => (_$data['testId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$testId = testId;
    result$data['testId'] = l$testId;
    return result$data;
  }

  CopyWith$Variables$Mutation$StartStudentAssessment<
          Variables$Mutation$StartStudentAssessment>
      get copyWith => CopyWith$Variables$Mutation$StartStudentAssessment(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$StartStudentAssessment) ||
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

abstract class CopyWith$Variables$Mutation$StartStudentAssessment<TRes> {
  factory CopyWith$Variables$Mutation$StartStudentAssessment(
    Variables$Mutation$StartStudentAssessment instance,
    TRes Function(Variables$Mutation$StartStudentAssessment) then,
  ) = _CopyWithImpl$Variables$Mutation$StartStudentAssessment;

  factory CopyWith$Variables$Mutation$StartStudentAssessment.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$StartStudentAssessment;

  TRes call({String? testId});
}

class _CopyWithImpl$Variables$Mutation$StartStudentAssessment<TRes>
    implements CopyWith$Variables$Mutation$StartStudentAssessment<TRes> {
  _CopyWithImpl$Variables$Mutation$StartStudentAssessment(
    this._instance,
    this._then,
  );

  final Variables$Mutation$StartStudentAssessment _instance;

  final TRes Function(Variables$Mutation$StartStudentAssessment) _then;

  static const _undefined = {};

  TRes call({Object? testId = _undefined}) =>
      _then(Variables$Mutation$StartStudentAssessment._({
        ..._instance._$data,
        if (testId != _undefined && testId != null)
          'testId': (testId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$StartStudentAssessment<TRes>
    implements CopyWith$Variables$Mutation$StartStudentAssessment<TRes> {
  _CopyWithStubImpl$Variables$Mutation$StartStudentAssessment(this._res);

  TRes _res;

  call({String? testId}) => _res;
}

class Mutation$StartStudentAssessment {
  Mutation$StartStudentAssessment({
    required this.startExistingTest,
    required this.$__typename,
  });

  factory Mutation$StartStudentAssessment.fromJson(Map<String, dynamic> json) {
    final l$startExistingTest = json['startExistingTest'];
    final l$$__typename = json['__typename'];
    return Mutation$StartStudentAssessment(
      startExistingTest:
          Mutation$StartStudentAssessment$startExistingTest.fromJson(
              (l$startExistingTest as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$StartStudentAssessment$startExistingTest startExistingTest;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$startExistingTest = startExistingTest;
    _resultData['startExistingTest'] = l$startExistingTest.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$startExistingTest = startExistingTest;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$startExistingTest,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$StartStudentAssessment) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$startExistingTest = startExistingTest;
    final lOther$startExistingTest = other.startExistingTest;
    if (l$startExistingTest != lOther$startExistingTest) {
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

extension UtilityExtension$Mutation$StartStudentAssessment
    on Mutation$StartStudentAssessment {
  CopyWith$Mutation$StartStudentAssessment<Mutation$StartStudentAssessment>
      get copyWith => CopyWith$Mutation$StartStudentAssessment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$StartStudentAssessment<TRes> {
  factory CopyWith$Mutation$StartStudentAssessment(
    Mutation$StartStudentAssessment instance,
    TRes Function(Mutation$StartStudentAssessment) then,
  ) = _CopyWithImpl$Mutation$StartStudentAssessment;

  factory CopyWith$Mutation$StartStudentAssessment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$StartStudentAssessment;

  TRes call({
    Mutation$StartStudentAssessment$startExistingTest? startExistingTest,
    String? $__typename,
  });
  CopyWith$Mutation$StartStudentAssessment$startExistingTest<TRes>
      get startExistingTest;
}

class _CopyWithImpl$Mutation$StartStudentAssessment<TRes>
    implements CopyWith$Mutation$StartStudentAssessment<TRes> {
  _CopyWithImpl$Mutation$StartStudentAssessment(
    this._instance,
    this._then,
  );

  final Mutation$StartStudentAssessment _instance;

  final TRes Function(Mutation$StartStudentAssessment) _then;

  static const _undefined = {};

  TRes call({
    Object? startExistingTest = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$StartStudentAssessment(
        startExistingTest:
            startExistingTest == _undefined || startExistingTest == null
                ? _instance.startExistingTest
                : (startExistingTest
                    as Mutation$StartStudentAssessment$startExistingTest),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$StartStudentAssessment$startExistingTest<TRes>
      get startExistingTest {
    final local$startExistingTest = _instance.startExistingTest;
    return CopyWith$Mutation$StartStudentAssessment$startExistingTest(
        local$startExistingTest, (e) => call(startExistingTest: e));
  }
}

class _CopyWithStubImpl$Mutation$StartStudentAssessment<TRes>
    implements CopyWith$Mutation$StartStudentAssessment<TRes> {
  _CopyWithStubImpl$Mutation$StartStudentAssessment(this._res);

  TRes _res;

  call({
    Mutation$StartStudentAssessment$startExistingTest? startExistingTest,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$StartStudentAssessment$startExistingTest<TRes>
      get startExistingTest =>
          CopyWith$Mutation$StartStudentAssessment$startExistingTest.stub(_res);
}

const documentNodeMutationStartStudentAssessment = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'StartStudentAssessment'),
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
        name: NameNode(value: 'startExistingTest'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'testID'),
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
            name: NameNode(value: 'paused'),
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
Mutation$StartStudentAssessment _parserFn$Mutation$StartStudentAssessment(
        Map<String, dynamic> data) =>
    Mutation$StartStudentAssessment.fromJson(data);
typedef OnMutationCompleted$Mutation$StartStudentAssessment = FutureOr<void>
    Function(
  dynamic,
  Mutation$StartStudentAssessment?,
);

class Options$Mutation$StartStudentAssessment
    extends graphql.MutationOptions<Mutation$StartStudentAssessment> {
  Options$Mutation$StartStudentAssessment({
    String? operationName,
    required Variables$Mutation$StartStudentAssessment variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$StartStudentAssessment? onCompleted,
    graphql.OnMutationUpdate<Mutation$StartStudentAssessment>? update,
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
                        : _parserFn$Mutation$StartStudentAssessment(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationStartStudentAssessment,
          parserFn: _parserFn$Mutation$StartStudentAssessment,
        );

  final OnMutationCompleted$Mutation$StartStudentAssessment?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$StartStudentAssessment
    extends graphql.WatchQueryOptions<Mutation$StartStudentAssessment> {
  WatchOptions$Mutation$StartStudentAssessment({
    String? operationName,
    required Variables$Mutation$StartStudentAssessment variables,
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
          document: documentNodeMutationStartStudentAssessment,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$StartStudentAssessment,
        );
}

extension ClientExtension$Mutation$StartStudentAssessment
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$StartStudentAssessment>>
      mutate$StartStudentAssessment(
              Options$Mutation$StartStudentAssessment options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$StartStudentAssessment>
      watchMutation$StartStudentAssessment(
              WatchOptions$Mutation$StartStudentAssessment options) =>
          this.watchMutation(options);
}

class Mutation$StartStudentAssessment$startExistingTest {
  Mutation$StartStudentAssessment$startExistingTest({
    required this.id,
    required this.paused,
    this.startedAt,
    required this.$__typename,
  });

  factory Mutation$StartStudentAssessment$startExistingTest.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$paused = json['paused'];
    final l$startedAt = json['startedAt'];
    final l$$__typename = json['__typename'];
    return Mutation$StartStudentAssessment$startExistingTest(
      id: (l$id as String),
      paused: (l$paused as bool),
      startedAt:
          l$startedAt == null ? null : dateTimeFromRFC3339Nano(l$startedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final bool paused;

  final DateTime? startedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$paused = paused;
    _resultData['paused'] = l$paused;
    final l$startedAt = startedAt;
    _resultData['startedAt'] =
        l$startedAt == null ? null : dateTimeToUtcToIso8601(l$startedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$paused = paused;
    final l$startedAt = startedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$paused,
      l$startedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$StartStudentAssessment$startExistingTest) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$paused = paused;
    final lOther$paused = other.paused;
    if (l$paused != lOther$paused) {
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

extension UtilityExtension$Mutation$StartStudentAssessment$startExistingTest
    on Mutation$StartStudentAssessment$startExistingTest {
  CopyWith$Mutation$StartStudentAssessment$startExistingTest<
          Mutation$StartStudentAssessment$startExistingTest>
      get copyWith =>
          CopyWith$Mutation$StartStudentAssessment$startExistingTest(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$StartStudentAssessment$startExistingTest<
    TRes> {
  factory CopyWith$Mutation$StartStudentAssessment$startExistingTest(
    Mutation$StartStudentAssessment$startExistingTest instance,
    TRes Function(Mutation$StartStudentAssessment$startExistingTest) then,
  ) = _CopyWithImpl$Mutation$StartStudentAssessment$startExistingTest;

  factory CopyWith$Mutation$StartStudentAssessment$startExistingTest.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$StartStudentAssessment$startExistingTest;

  TRes call({
    String? id,
    bool? paused,
    DateTime? startedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$StartStudentAssessment$startExistingTest<TRes>
    implements
        CopyWith$Mutation$StartStudentAssessment$startExistingTest<TRes> {
  _CopyWithImpl$Mutation$StartStudentAssessment$startExistingTest(
    this._instance,
    this._then,
  );

  final Mutation$StartStudentAssessment$startExistingTest _instance;

  final TRes Function(Mutation$StartStudentAssessment$startExistingTest) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? paused = _undefined,
    Object? startedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$StartStudentAssessment$startExistingTest(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        paused: paused == _undefined || paused == null
            ? _instance.paused
            : (paused as bool),
        startedAt: startedAt == _undefined
            ? _instance.startedAt
            : (startedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$StartStudentAssessment$startExistingTest<TRes>
    implements
        CopyWith$Mutation$StartStudentAssessment$startExistingTest<TRes> {
  _CopyWithStubImpl$Mutation$StartStudentAssessment$startExistingTest(
      this._res);

  TRes _res;

  call({
    String? id,
    bool? paused,
    DateTime? startedAt,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetActiveTestForStudent {
  factory Variables$Query$GetActiveTestForStudent(
          {required String studentId}) =>
      Variables$Query$GetActiveTestForStudent._({
        r'studentId': studentId,
      });

  Variables$Query$GetActiveTestForStudent._(this._$data);

  factory Variables$Query$GetActiveTestForStudent.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$studentId = data['studentId'];
    result$data['studentId'] = (l$studentId as String);
    return Variables$Query$GetActiveTestForStudent._(result$data);
  }

  Map<String, dynamic> _$data;

  String get studentId => (_$data['studentId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$studentId = studentId;
    result$data['studentId'] = l$studentId;
    return result$data;
  }

  CopyWith$Variables$Query$GetActiveTestForStudent<
          Variables$Query$GetActiveTestForStudent>
      get copyWith => CopyWith$Variables$Query$GetActiveTestForStudent(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetActiveTestForStudent) ||
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

abstract class CopyWith$Variables$Query$GetActiveTestForStudent<TRes> {
  factory CopyWith$Variables$Query$GetActiveTestForStudent(
    Variables$Query$GetActiveTestForStudent instance,
    TRes Function(Variables$Query$GetActiveTestForStudent) then,
  ) = _CopyWithImpl$Variables$Query$GetActiveTestForStudent;

  factory CopyWith$Variables$Query$GetActiveTestForStudent.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetActiveTestForStudent;

  TRes call({String? studentId});
}

class _CopyWithImpl$Variables$Query$GetActiveTestForStudent<TRes>
    implements CopyWith$Variables$Query$GetActiveTestForStudent<TRes> {
  _CopyWithImpl$Variables$Query$GetActiveTestForStudent(
    this._instance,
    this._then,
  );

  final Variables$Query$GetActiveTestForStudent _instance;

  final TRes Function(Variables$Query$GetActiveTestForStudent) _then;

  static const _undefined = {};

  TRes call({Object? studentId = _undefined}) =>
      _then(Variables$Query$GetActiveTestForStudent._({
        ..._instance._$data,
        if (studentId != _undefined && studentId != null)
          'studentId': (studentId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetActiveTestForStudent<TRes>
    implements CopyWith$Variables$Query$GetActiveTestForStudent<TRes> {
  _CopyWithStubImpl$Variables$Query$GetActiveTestForStudent(this._res);

  TRes _res;

  call({String? studentId}) => _res;
}

class Query$GetActiveTestForStudent {
  Query$GetActiveTestForStudent({
    required this.activeTestStudent,
    required this.$__typename,
  });

  factory Query$GetActiveTestForStudent.fromJson(Map<String, dynamic> json) {
    final l$activeTestStudent = json['activeTestStudent'];
    final l$$__typename = json['__typename'];
    return Query$GetActiveTestForStudent(
      activeTestStudent:
          Query$GetActiveTestForStudent$activeTestStudent.fromJson(
              (l$activeTestStudent as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetActiveTestForStudent$activeTestStudent activeTestStudent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$activeTestStudent = activeTestStudent;
    _resultData['activeTestStudent'] = l$activeTestStudent.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$activeTestStudent = activeTestStudent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$activeTestStudent,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetActiveTestForStudent) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$activeTestStudent = activeTestStudent;
    final lOther$activeTestStudent = other.activeTestStudent;
    if (l$activeTestStudent != lOther$activeTestStudent) {
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

extension UtilityExtension$Query$GetActiveTestForStudent
    on Query$GetActiveTestForStudent {
  CopyWith$Query$GetActiveTestForStudent<Query$GetActiveTestForStudent>
      get copyWith => CopyWith$Query$GetActiveTestForStudent(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActiveTestForStudent<TRes> {
  factory CopyWith$Query$GetActiveTestForStudent(
    Query$GetActiveTestForStudent instance,
    TRes Function(Query$GetActiveTestForStudent) then,
  ) = _CopyWithImpl$Query$GetActiveTestForStudent;

  factory CopyWith$Query$GetActiveTestForStudent.stub(TRes res) =
      _CopyWithStubImpl$Query$GetActiveTestForStudent;

  TRes call({
    Query$GetActiveTestForStudent$activeTestStudent? activeTestStudent,
    String? $__typename,
  });
  CopyWith$Query$GetActiveTestForStudent$activeTestStudent<TRes>
      get activeTestStudent;
}

class _CopyWithImpl$Query$GetActiveTestForStudent<TRes>
    implements CopyWith$Query$GetActiveTestForStudent<TRes> {
  _CopyWithImpl$Query$GetActiveTestForStudent(
    this._instance,
    this._then,
  );

  final Query$GetActiveTestForStudent _instance;

  final TRes Function(Query$GetActiveTestForStudent) _then;

  static const _undefined = {};

  TRes call({
    Object? activeTestStudent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActiveTestForStudent(
        activeTestStudent:
            activeTestStudent == _undefined || activeTestStudent == null
                ? _instance.activeTestStudent
                : (activeTestStudent
                    as Query$GetActiveTestForStudent$activeTestStudent),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetActiveTestForStudent$activeTestStudent<TRes>
      get activeTestStudent {
    final local$activeTestStudent = _instance.activeTestStudent;
    return CopyWith$Query$GetActiveTestForStudent$activeTestStudent(
        local$activeTestStudent, (e) => call(activeTestStudent: e));
  }
}

class _CopyWithStubImpl$Query$GetActiveTestForStudent<TRes>
    implements CopyWith$Query$GetActiveTestForStudent<TRes> {
  _CopyWithStubImpl$Query$GetActiveTestForStudent(this._res);

  TRes _res;

  call({
    Query$GetActiveTestForStudent$activeTestStudent? activeTestStudent,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetActiveTestForStudent$activeTestStudent<TRes>
      get activeTestStudent =>
          CopyWith$Query$GetActiveTestForStudent$activeTestStudent.stub(_res);
}

const documentNodeQueryGetActiveTestForStudent = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetActiveTestForStudent'),
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
        alias: NameNode(value: 'activeTestStudent'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'studentId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'activeTest'),
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
                name: NameNode(value: 'session'),
                alias: NameNode(value: 'activeTestSession'),
                arguments: [],
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
Query$GetActiveTestForStudent _parserFn$Query$GetActiveTestForStudent(
        Map<String, dynamic> data) =>
    Query$GetActiveTestForStudent.fromJson(data);

class Options$Query$GetActiveTestForStudent
    extends graphql.QueryOptions<Query$GetActiveTestForStudent> {
  Options$Query$GetActiveTestForStudent({
    String? operationName,
    required Variables$Query$GetActiveTestForStudent variables,
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
          document: documentNodeQueryGetActiveTestForStudent,
          parserFn: _parserFn$Query$GetActiveTestForStudent,
        );
}

class WatchOptions$Query$GetActiveTestForStudent
    extends graphql.WatchQueryOptions<Query$GetActiveTestForStudent> {
  WatchOptions$Query$GetActiveTestForStudent({
    String? operationName,
    required Variables$Query$GetActiveTestForStudent variables,
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
          document: documentNodeQueryGetActiveTestForStudent,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetActiveTestForStudent,
        );
}

class FetchMoreOptions$Query$GetActiveTestForStudent
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetActiveTestForStudent({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetActiveTestForStudent variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetActiveTestForStudent,
        );
}

extension ClientExtension$Query$GetActiveTestForStudent
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetActiveTestForStudent>>
      query$GetActiveTestForStudent(
              Options$Query$GetActiveTestForStudent options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetActiveTestForStudent>
      watchQuery$GetActiveTestForStudent(
              WatchOptions$Query$GetActiveTestForStudent options) =>
          this.watchQuery(options);
  void writeQuery$GetActiveTestForStudent({
    required Query$GetActiveTestForStudent data,
    required Variables$Query$GetActiveTestForStudent variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetActiveTestForStudent),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetActiveTestForStudent? readQuery$GetActiveTestForStudent({
    required Variables$Query$GetActiveTestForStudent variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetActiveTestForStudent),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetActiveTestForStudent.fromJson(result);
  }
}

class Query$GetActiveTestForStudent$activeTestStudent {
  Query$GetActiveTestForStudent$activeTestStudent({
    this.activeTest,
    required this.$__typename,
  });

  factory Query$GetActiveTestForStudent$activeTestStudent.fromJson(
      Map<String, dynamic> json) {
    final l$activeTest = json['activeTest'];
    final l$$__typename = json['__typename'];
    return Query$GetActiveTestForStudent$activeTestStudent(
      activeTest: l$activeTest == null
          ? null
          : Query$GetActiveTestForStudent$activeTestStudent$activeTest.fromJson(
              (l$activeTest as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetActiveTestForStudent$activeTestStudent$activeTest? activeTest;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$activeTest = activeTest;
    _resultData['activeTest'] = l$activeTest?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$activeTest = activeTest;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$activeTest,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetActiveTestForStudent$activeTestStudent) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$activeTest = activeTest;
    final lOther$activeTest = other.activeTest;
    if (l$activeTest != lOther$activeTest) {
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

extension UtilityExtension$Query$GetActiveTestForStudent$activeTestStudent
    on Query$GetActiveTestForStudent$activeTestStudent {
  CopyWith$Query$GetActiveTestForStudent$activeTestStudent<
          Query$GetActiveTestForStudent$activeTestStudent>
      get copyWith => CopyWith$Query$GetActiveTestForStudent$activeTestStudent(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActiveTestForStudent$activeTestStudent<TRes> {
  factory CopyWith$Query$GetActiveTestForStudent$activeTestStudent(
    Query$GetActiveTestForStudent$activeTestStudent instance,
    TRes Function(Query$GetActiveTestForStudent$activeTestStudent) then,
  ) = _CopyWithImpl$Query$GetActiveTestForStudent$activeTestStudent;

  factory CopyWith$Query$GetActiveTestForStudent$activeTestStudent.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActiveTestForStudent$activeTestStudent;

  TRes call({
    Query$GetActiveTestForStudent$activeTestStudent$activeTest? activeTest,
    String? $__typename,
  });
  CopyWith$Query$GetActiveTestForStudent$activeTestStudent$activeTest<TRes>
      get activeTest;
}

class _CopyWithImpl$Query$GetActiveTestForStudent$activeTestStudent<TRes>
    implements CopyWith$Query$GetActiveTestForStudent$activeTestStudent<TRes> {
  _CopyWithImpl$Query$GetActiveTestForStudent$activeTestStudent(
    this._instance,
    this._then,
  );

  final Query$GetActiveTestForStudent$activeTestStudent _instance;

  final TRes Function(Query$GetActiveTestForStudent$activeTestStudent) _then;

  static const _undefined = {};

  TRes call({
    Object? activeTest = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActiveTestForStudent$activeTestStudent(
        activeTest: activeTest == _undefined
            ? _instance.activeTest
            : (activeTest
                as Query$GetActiveTestForStudent$activeTestStudent$activeTest?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetActiveTestForStudent$activeTestStudent$activeTest<TRes>
      get activeTest {
    final local$activeTest = _instance.activeTest;
    return local$activeTest == null
        ? CopyWith$Query$GetActiveTestForStudent$activeTestStudent$activeTest
            .stub(_then(_instance))
        : CopyWith$Query$GetActiveTestForStudent$activeTestStudent$activeTest(
            local$activeTest, (e) => call(activeTest: e));
  }
}

class _CopyWithStubImpl$Query$GetActiveTestForStudent$activeTestStudent<TRes>
    implements CopyWith$Query$GetActiveTestForStudent$activeTestStudent<TRes> {
  _CopyWithStubImpl$Query$GetActiveTestForStudent$activeTestStudent(this._res);

  TRes _res;

  call({
    Query$GetActiveTestForStudent$activeTestStudent$activeTest? activeTest,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetActiveTestForStudent$activeTestStudent$activeTest<TRes>
      get activeTest =>
          CopyWith$Query$GetActiveTestForStudent$activeTestStudent$activeTest
              .stub(_res);
}

class Query$GetActiveTestForStudent$activeTestStudent$activeTest {
  Query$GetActiveTestForStudent$activeTestStudent$activeTest({
    required this.id,
    this.activeTestSession,
    required this.$__typename,
  });

  factory Query$GetActiveTestForStudent$activeTestStudent$activeTest.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$activeTestSession = json['activeTestSession'];
    final l$$__typename = json['__typename'];
    return Query$GetActiveTestForStudent$activeTestStudent$activeTest(
      id: (l$id as String),
      activeTestSession: l$activeTestSession == null
          ? null
          : Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession
              .fromJson((l$activeTestSession as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession?
      activeTestSession;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$activeTestSession = activeTestSession;
    _resultData['activeTestSession'] = l$activeTestSession?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$activeTestSession = activeTestSession;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$activeTestSession,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetActiveTestForStudent$activeTestStudent$activeTest) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$activeTestSession = activeTestSession;
    final lOther$activeTestSession = other.activeTestSession;
    if (l$activeTestSession != lOther$activeTestSession) {
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

extension UtilityExtension$Query$GetActiveTestForStudent$activeTestStudent$activeTest
    on Query$GetActiveTestForStudent$activeTestStudent$activeTest {
  CopyWith$Query$GetActiveTestForStudent$activeTestStudent$activeTest<
          Query$GetActiveTestForStudent$activeTestStudent$activeTest>
      get copyWith =>
          CopyWith$Query$GetActiveTestForStudent$activeTestStudent$activeTest(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActiveTestForStudent$activeTestStudent$activeTest<
    TRes> {
  factory CopyWith$Query$GetActiveTestForStudent$activeTestStudent$activeTest(
    Query$GetActiveTestForStudent$activeTestStudent$activeTest instance,
    TRes Function(Query$GetActiveTestForStudent$activeTestStudent$activeTest)
        then,
  ) = _CopyWithImpl$Query$GetActiveTestForStudent$activeTestStudent$activeTest;

  factory CopyWith$Query$GetActiveTestForStudent$activeTestStudent$activeTest.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActiveTestForStudent$activeTestStudent$activeTest;

  TRes call({
    String? id,
    Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession?
        activeTestSession,
    String? $__typename,
  });
  CopyWith$Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession<
      TRes> get activeTestSession;
}

class _CopyWithImpl$Query$GetActiveTestForStudent$activeTestStudent$activeTest<
        TRes>
    implements
        CopyWith$Query$GetActiveTestForStudent$activeTestStudent$activeTest<
            TRes> {
  _CopyWithImpl$Query$GetActiveTestForStudent$activeTestStudent$activeTest(
    this._instance,
    this._then,
  );

  final Query$GetActiveTestForStudent$activeTestStudent$activeTest _instance;

  final TRes Function(
      Query$GetActiveTestForStudent$activeTestStudent$activeTest) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? activeTestSession = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActiveTestForStudent$activeTestStudent$activeTest(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        activeTestSession: activeTestSession == _undefined
            ? _instance.activeTestSession
            : (activeTestSession
                as Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession<
      TRes> get activeTestSession {
    final local$activeTestSession = _instance.activeTestSession;
    return local$activeTestSession == null
        ? CopyWith$Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession
            .stub(_then(_instance))
        : CopyWith$Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession(
            local$activeTestSession, (e) => call(activeTestSession: e));
  }
}

class _CopyWithStubImpl$Query$GetActiveTestForStudent$activeTestStudent$activeTest<
        TRes>
    implements
        CopyWith$Query$GetActiveTestForStudent$activeTestStudent$activeTest<
            TRes> {
  _CopyWithStubImpl$Query$GetActiveTestForStudent$activeTestStudent$activeTest(
      this._res);

  TRes _res;

  call({
    String? id,
    Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession?
        activeTestSession,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession<
          TRes>
      get activeTestSession =>
          CopyWith$Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession
              .stub(_res);
}

class Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession {
  Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession({
    required this.status,
    required this.$__typename,
  });

  factory Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession.fromJson(
      Map<String, dynamic> json) {
    final l$status = json['status'];
    final l$$__typename = json['__typename'];
    return Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession(
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
    if (!(other
            is Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession) ||
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

extension UtilityExtension$Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession
    on Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession {
  CopyWith$Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession<
          Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession>
      get copyWith =>
          CopyWith$Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession<
    TRes> {
  factory CopyWith$Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession(
    Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession
        instance,
    TRes Function(
            Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession)
        then,
  ) = _CopyWithImpl$Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession;

  factory CopyWith$Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession;

  TRes call({
    Enum$DiagnosticTestSessionStatus? status,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession<
        TRes>
    implements
        CopyWith$Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession<
            TRes> {
  _CopyWithImpl$Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession(
    this._instance,
    this._then,
  );

  final Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession
      _instance;

  final TRes Function(
          Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession)
      _then;

  static const _undefined = {};

  TRes call({
    Object? status = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession(
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$DiagnosticTestSessionStatus),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession<
        TRes>
    implements
        CopyWith$Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession<
            TRes> {
  _CopyWithStubImpl$Query$GetActiveTestForStudent$activeTestStudent$activeTest$activeTestSession(
      this._res);

  TRes _res;

  call({
    Enum$DiagnosticTestSessionStatus? status,
    String? $__typename,
  }) =>
      _res;
}
