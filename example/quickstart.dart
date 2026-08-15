// The README quickstart, as a file that compiles. `dart analyze` covers
// example/, so the front door cannot rot away from the client.
//
// Swap the literal for a real key and it runs; example/keys.dart is the same
// call reading one from the environment.
import 'package:hanzoai/hanzoai.dart';

Future<void> main() async {
  final client = hanzo(token: 'sk-...');

  final keys = await KeysApi(client).getKeys();
  for (final key in keys!.keys) {
    print('${key.type} created ${key.createdAt}');
  }
}
