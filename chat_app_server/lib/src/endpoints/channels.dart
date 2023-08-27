import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class ChannelsEndpoint extends Endpoint {
  Future<List<Channel>> getChannels(Session session, String id) async {
    try {
      final channel = await session.db.query("""
SELECT *
FROM "channel"
WHERE EXISTS (
SELECT 1
FROM json_array_elements_text("participants") AS participant_id
WHERE participant_id::text = $id
  );
   """);

      if (channel.isNotEmpty) {
        return channel[0] as List<Channel>;
      } else {
        return [];
      }
    } catch (e) {
      session.log('Error: $e');
      return [];
    }
  }

  Future<void> addChannels(Session session, {required String id}) async {
    // Get a list of all channels from the database

    final channel = Channel(
      channel: id,
      name: "test",
    );
    await Channel.insert(session, channel);
  }
}
