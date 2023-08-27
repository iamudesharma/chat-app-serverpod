/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'channel.dart' as _i2;
import 'example.dart' as _i3;
import 'users.dart' as _i4;
import 'protocol.dart' as _i5;
import 'package:chat_app_client/src/protocol/channel.dart' as _i6;
import 'package:chat_app_client/src/protocol/users.dart' as _i7;
import 'package:serverpod_auth_client/module.dart' as _i8;
import 'package:serverpod_chat_client/module.dart' as _i9;
export 'channel.dart';
export 'example.dart';
export 'users.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.Channel) {
      return _i2.Channel.fromJson(data, this) as T;
    }
    if (t == _i3.Example) {
      return _i3.Example.fromJson(data, this) as T;
    }
    if (t == _i4.User) {
      return _i4.User.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Channel?>()) {
      return (data != null ? _i2.Channel.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.Example?>()) {
      return (data != null ? _i3.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.User?>()) {
      return (data != null ? _i4.User.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<List<_i5.User>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i5.User>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i6.Channel>) {
      return (data as List).map((e) => deserialize<_i6.Channel>(e)).toList()
          as dynamic;
    }
    if (t == _i1.getType<List<_i7.User>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i7.User>(e)).toList()
          : null) as dynamic;
    }
    try {
      return _i8.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    try {
      return _i9.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i8.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    className = _i9.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_chat.$className';
    }
    if (data is _i2.Channel) {
      return 'Channel';
    }
    if (data is _i3.Example) {
      return 'Example';
    }
    if (data is _i4.User) {
      return 'User';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i8.Protocol().deserializeByClassName(data);
    }
    if (data['className'].startsWith('serverpod_chat.')) {
      data['className'] = data['className'].substring(15);
      return _i9.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'Channel') {
      return deserialize<_i2.Channel>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i3.Example>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i4.User>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
