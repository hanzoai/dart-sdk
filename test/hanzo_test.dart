// The whole contract of a generated client: it reaches the right origin, and it
// presents the credential the document asks for. Everything else here is
// projection and is gated by `dart analyze`.
import 'package:hanzoai/hanzoai.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';

/// Answers every request with `body` and remembers the last one.
MockClient recording(List<http.BaseRequest> seen, {String body = '{}'}) =>
    MockClient((request) async {
      seen.add(request);
      return http.Response(body, 200, headers: {'content-type': 'application/json'});
    });

void main() {
  test('defaults to the Hanzo Cloud origin', () {
    expect(hanzo().basePath, 'https://api.hanzo.ai');
    expect(hanzo(base: 'http://localhost:8080').basePath, 'http://localhost:8080');
  });

  test('sends no credential when none is given', () async {
    final seen = <http.BaseRequest>[];
    final client = hanzo()..client = recording(seen);

    await ModelsApi(client).getModelsWithHttpInfo();

    expect(seen.single.url.path, '/v1/models');
    expect(seen.single.headers.containsKey('Authorization'), isFalse);
  });

  test('presents the token as a bearer credential', () async {
    final seen = <http.BaseRequest>[];
    final client = hanzo(token: 'sk-not-a-real-key')..client = recording(seen);

    await ModelsApi(client).getModelsWithHttpInfo();

    expect(seen.single.headers['Authorization'], 'Bearer sk-not-a-real-key');
  });

  test('decodes a typed response', () async {
    final seen = <http.BaseRequest>[];
    final client = hanzo(token: 'sk-not-a-real-key')
      ..client = recording(seen, body: '{"keys":[{"type":"secret","prefix":"sk-abc"}]}');

    final keys = await KeysApi(client).getKeys();

    expect(seen.single.url.path, '/v1/keys');
    expect(keys!.keys.single.type, 'secret');
    expect(keys.keys.single.prefix, 'sk-abc');
  });
}
