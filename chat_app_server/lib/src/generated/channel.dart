/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;

/// Represents a chat channel.
class Channel extends _i1.TableRow {
  Channel({
    int? id,
    required this.name,
    this.participants,
    required this.channel,
    this.createdAt,
    this.updatedAt,
  }) : super(id);

  factory Channel.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Channel(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      participants: serializationManager
          .deserialize<List<_i2.User>?>(jsonSerialization['participants']),
      channel: serializationManager
          .deserialize<String>(jsonSerialization['channel']),
      createdAt: serializationManager
          .deserialize<DateTime?>(jsonSerialization['createdAt']),
      updatedAt: serializationManager
          .deserialize<DateTime?>(jsonSerialization['updatedAt']),
    );
  }

  static final t = ChannelTable();

  /// The name of the channel.
  String name;

  List<_i2.User>? participants;

  /// The id of the channel.
  String channel;

  DateTime? createdAt;

  DateTime? updatedAt;

  @override
  String get tableName => 'channel';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'participants': participants,
      'channel': channel,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'participants': participants,
      'channel': channel,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'name': name,
      'participants': participants,
      'channel': channel,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
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
      case 'participants':
        participants = value;
        return;
      case 'channel':
        channel = value;
        return;
      case 'createdAt':
        createdAt = value;
        return;
      case 'updatedAt':
        updatedAt = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Channel>> find(
    _i1.Session session, {
    ChannelExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Channel>(
      where: where != null ? where(Channel.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Channel?> findSingleRow(
    _i1.Session session, {
    ChannelExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Channel>(
      where: where != null ? where(Channel.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Channel?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Channel>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required ChannelExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Channel>(
      where: where(Channel.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Channel row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Channel row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Channel row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    ChannelExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Channel>(
      where: where != null ? where(Channel.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef ChannelExpressionBuilder = _i1.Expression Function(ChannelTable);

class ChannelTable extends _i1.Table {
  ChannelTable() : super(tableName: 'channel');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  /// The name of the channel.
  final name = _i1.ColumnString('name');

  final participants = _i1.ColumnSerializable('participants');

  /// The id of the channel.
  final channel = _i1.ColumnString('channel');

  final createdAt = _i1.ColumnDateTime('createdAt');

  final updatedAt = _i1.ColumnDateTime('updatedAt');

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        participants,
        channel,
        createdAt,
        updatedAt,
      ];
}

@Deprecated('Use ChannelTable.t instead.')
ChannelTable tChannel = ChannelTable();
