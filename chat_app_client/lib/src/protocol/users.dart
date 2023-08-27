/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'package:serverpod_auth_client/module.dart' as _i2;

/// Represents a chat channel.
class User extends _i1.SerializableEntity {
  User({
    this.id,
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
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

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
}
