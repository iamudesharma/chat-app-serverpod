import 'package:serverpod/server.dart';

import '../generated/users.dart';

class UsersEndpoint extends Endpoint {
  Future<void> addUsers(Session session, {required User user}) async {
    await User.insert(session, user);
  }

  Future<List<User>?> getUsers(
    Session session,
  ) async {
    final user = await User.find(session);

    if (user.isNotEmpty) {
      return user;
    } else {
      return [];
    }
  }

  Future<User?> getUsersByChannel(Session session, {required String id}) async {
    final user = await session.db.query("""
SELECT u.*
FROM "users" u
JOIN "channel" c ON c."id" = $id
CROSS JOIN json_array_elements_text(c."participants") AS participant_id
WHERE u."id" = (participant_id::text)::integer;
""");

    if (user.isNotEmpty) {
      return user[0][0];
    } else {
      return null;
    }
  }
}
