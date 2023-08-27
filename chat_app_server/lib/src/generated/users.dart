/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_auth_server/module.dart' as _i2;

/// Represents a chat channel.
class User extends _i1.TableRow {
  User({
    int? id,
    required this.name,
    this.phone,
    this.createdAt,
    this.updatedAt,
    required this.userInfo,
    this.isOnline,
    this.lastOnline,
    this.latitude,
    this.longitude,
    this.profilePicture,
  }) : super(id);

  factory User.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return User(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      phone: serializationManager.deserialize<int?>(jsonSerialization['phone']),
      createdAt: serializationManager
          .deserialize<DateTime?>(jsonSerialization['createdAt']),
      updatedAt: serializationManager
          .deserialize<DateTime?>(jsonSerialization['updatedAt']),
      userInfo: serializationManager
          .deserialize<_i2.UserInfo>(jsonSerialization['userInfo']),
      isOnline: serializationManager
          .deserialize<bool?>(jsonSerialization['isOnline']),
      lastOnline: serializationManager
          .deserialize<DateTime?>(jsonSerialization['lastOnline']),
      latitude: serializationManager
          .deserialize<double?>(jsonSerialization['latitude']),
      longitude: serializationManager
          .deserialize<double?>(jsonSerialization['longitude']),
      profilePicture: serializationManager
          .deserialize<String?>(jsonSerialization['profilePicture']),
    );
  }

  static final t = UserTable();

  /// The name of the channel.
  String name;

  int? phone;

  DateTime? createdAt;

  DateTime? updatedAt;

  _i2.UserInfo userInfo;

  bool? isOnline;

  DateTime? lastOnline;

  double? latitude;

  double? longitude;

  String? profilePicture;

  @override
  String get tableName => 'users';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'userInfo': userInfo,
      'isOnline': isOnline,
      'lastOnline': lastOnline,
      'latitude': latitude,
      'longitude': longitude,
      'profilePicture': profilePicture,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'userInfo': userInfo,
      'isOnline': isOnline,
      'lastOnline': lastOnline,
      'latitude': latitude,
      'longitude': longitude,
      'profilePicture': profilePicture,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'userInfo': userInfo,
      'isOnline': isOnline,
      'lastOnline': lastOnline,
      'latitude': latitude,
      'longitude': longitude,
      'profilePicture': profilePicture,
    };
  }

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'name':
        name = value;
        return;
      case 'phone':
        phone = value;
        return;
      case 'createdAt':
        createdAt = value;
        return;
      case 'updatedAt':
        updatedAt = value;
        return;
      case 'userInfo':
        userInfo = value;
        return;
      case 'isOnline':
        isOnline = value;
        return;
      case 'lastOnline':
        lastOnline = value;
        return;
      case 'latitude':
        latitude = value;
        return;
      case 'longitude':
        longitude = value;
        return;
      case 'profilePicture':
        profilePicture = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<User>> find(
    _i1.Session session, {
    UserExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<User>(
      where: where != null ? where(User.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<User?> findSingleRow(
    _i1.Session session, {
    UserExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<User>(
      where: where != null ? where(User.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<User?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<User>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required UserExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<User>(
      where: where(User.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    UserExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<User>(
      where: where != null ? where(User.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef UserExpressionBuilder = _i1.Expression Function(UserTable);

class UserTable extends _i1.Table {
  UserTable() : super(tableName: 'users');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  /// The name of the channel.
  final name = _i1.ColumnString('name');

  final phone = _i1.ColumnInt('phone');

  final createdAt = _i1.ColumnDateTime('createdAt');

  final updatedAt = _i1.ColumnDateTime('updatedAt');

  final userInfo = _i1.ColumnSerializable('userInfo');

  final isOnline = _i1.ColumnBool('isOnline');

  final lastOnline = _i1.ColumnDateTime('lastOnline');

  final latitude = _i1.ColumnDouble('latitude');

  final longitude = _i1.ColumnDouble('longitude');

  final profilePicture = _i1.ColumnString('profilePicture');

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        phone,
        createdAt,
        updatedAt,
        userInfo,
        isOnline,
        lastOnline,
        latitude,
        longitude,
        profilePicture,
      ];
}

@Deprecated('Use UserTable.t instead.')
UserTable tUser = UserTable();
