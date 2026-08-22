//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CreateServerReq {
  /// Returns a new [CreateServerReq] instance.
  CreateServerReq({
    this.authHeader,
    this.listing,
    this.name,
    this.secret,
    this.url,
  });
  /// AuthHeader is the request header the credential is injected into, e.g. \"Authorization\". Empty means the server needs no credential.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authHeader;

  /// Listing enables a CATALOG entry instead — the id from GET /v1/tools/catalog. The endpoint is the listing's own streamable-http remote, so a listing that only ships a stdio package is refused: there is nothing to reach yet.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? listing;

  /// Name labels the server for the org. Required with URL; with Listing it defaults to the listing's own title.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Secret is the credential VALUE. It is sealed into KMS under a per-org ref and never stored in SQLite, never listed, and never returned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? secret;

  /// URL is the server's JSON-RPC endpoint. It must be an http(s) URL naming a PUBLIC host: loopback, link-local, private and cloud-metadata addresses are refused here and again when the dialer connects.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateServerReq &&
    other.authHeader == authHeader &&
    other.listing == listing &&
    other.name == name &&
    other.secret == secret &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (authHeader == null ? 0 : authHeader!.hashCode) +
    (listing == null ? 0 : listing!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (secret == null ? 0 : secret!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'CreateServerReq[authHeader=$authHeader, listing=$listing, name=$name, secret=$secret, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.authHeader != null) {
      json[r'authHeader'] = this.authHeader;
    } else {
      json[r'authHeader'] = null;
    }
    if (this.listing != null) {
      json[r'listing'] = this.listing;
    } else {
      json[r'listing'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.secret != null) {
      json[r'secret'] = this.secret;
    } else {
      json[r'secret'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [CreateServerReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateServerReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateServerReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateServerReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateServerReq(
        authHeader: mapValueOfType<String>(json, r'authHeader'),
        listing: mapValueOfType<String>(json, r'listing'),
        name: mapValueOfType<String>(json, r'name'),
        secret: mapValueOfType<String>(json, r'secret'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<CreateServerReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateServerReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateServerReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateServerReq> mapFromJson(dynamic json) {
    final map = <String, CreateServerReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateServerReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateServerReq-objects as value to a dart map
  static Map<String, List<CreateServerReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateServerReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateServerReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

