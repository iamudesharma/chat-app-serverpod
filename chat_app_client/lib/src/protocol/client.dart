/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:chat_app_client/src/protocol/channel.dart' as _i3;
import 'package:chat_app_client/src/protocol/users.dart' as _i4;
import 'package:serverpod_auth_client/module.dart' as _i5;
import 'package:serverpod_chat_client/module.dart' as _i6;
import 'dart:io' as _i7;
import 'protocol.dart' as _i8;

class _EndpointChannels extends _i1.EndpointRef {
  _EndpointChannels(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'channels';

  _i2.Future<List<_i3.Channel>> getChannels(String id) =>
      caller.callServerEndpoint<List<_i3.Channel>>(
        'channels',
        'getChannels',
        {'id': id},
      );

  _i2.Future<void> addChannels({required String id}) =>
      caller.callServerEndpoint<void>(
        'channels',
        'addChannels',
        {'id': id},
      );
}

class _EndpointExample extends _i1.EndpointRef {
  _EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

class _EndpointUsers extends _i1.EndpointRef {
  _EndpointUsers(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'users';

  _i2.Future<void> addUsers({required _i4.User user}) =>
      caller.callServerEndpoint<void>(
        'users',
        'addUsers',
        {'user': user},
      );

  _i2.Future<List<_i4.User>?> getUsers() =>
      caller.callServerEndpoint<List<_i4.User>?>(
        'users',
        'getUsers',
        {},
      );

  _i2.Future<_i4.User?> getUsersByChannel({required String id}) =>
      caller.callServerEndpoint<_i4.User?>(
        'users',
        'getUsersByChannel',
        {'id': id},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i5.Caller(client);
    chat = _i6.Caller(client);
  }

  late final _i5.Caller auth;

  late final _i6.Caller chat;
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i7.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i8.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    channels = _EndpointChannels(this);
    example = _EndpointExample(this);
    users = _EndpointUsers(this);
    modules = _Modules(this);
  }

  late final _EndpointChannels channels;

  late final _EndpointExample example;

  late final _EndpointUsers users;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'channels': channels,
        'example': example,
        'users': users,
      };
  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {
        'auth': modules.auth,
        'chat': modules.chat,
      };
}
