/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

/// Represents a chat channel.
class Channel extends _i1.SerializableEntity {
  Channel({
    this.id,
    required this.name,
    this.participants,
    required this.channel,
    this.createdAt,
    this.updatedAt,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  /// The name of the channel.
  String name;

  List<_i2.User>? participants;

  /// The id of the channel.
  String channel;

  DateTime? createdAt;

  DateTime? updatedAt;

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
}
