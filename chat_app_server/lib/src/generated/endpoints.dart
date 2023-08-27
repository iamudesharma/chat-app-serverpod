/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/channels.dart' as _i2;
import '../endpoints/example_endpoint.dart' as _i3;
import '../endpoints/users.dart' as _i4;
import 'package:chat_app_server/src/generated/users.dart' as _i5;
import 'package:serverpod_auth_server/module.dart' as _i6;
import 'package:serverpod_chat_server/module.dart' as _i7;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'channels': _i2.ChannelsEndpoint()
        ..initialize(
          server,
          'channels',
          null,
        ),
      'example': _i3.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'users': _i4.UsersEndpoint()
        ..initialize(
          server,
          'users',
          null,
        ),
    };
    connectors['channels'] = _i1.EndpointConnector(
      name: 'channels',
      endpoint: endpoints['channels']!,
      methodConnectors: {
        'getChannels': _i1.MethodConnector(
          name: 'getChannels',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['channels'] as _i2.ChannelsEndpoint).getChannels(
            session,
            params['id'],
          ),
        ),
        'addChannels': _i1.MethodConnector(
          name: 'addChannels',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['channels'] as _i2.ChannelsEndpoint).addChannels(
            session,
            id: params['id'],
          ),
        ),
      },
    );
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i3.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['users'] = _i1.EndpointConnector(
      name: 'users',
      endpoint: endpoints['users']!,
      methodConnectors: {
        'addUsers': _i1.MethodConnector(
          name: 'addUsers',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i5.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['users'] as _i4.UsersEndpoint).addUsers(
            session,
            user: params['user'],
          ),
        ),
        'getUsers': _i1.MethodConnector(
          name: 'getUsers',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['users'] as _i4.UsersEndpoint).getUsers(session),
        ),
        'getUsersByChannel': _i1.MethodConnector(
          name: 'getUsersByChannel',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['users'] as _i4.UsersEndpoint).getUsersByChannel(
            session,
            id: params['id'],
          ),
        ),
      },
    );
    modules['serverpod_auth'] = _i6.Endpoints()..initializeEndpoints(server);
    modules['serverpod_chat'] = _i7.Endpoints()..initializeEndpoints(server);
  }
}
