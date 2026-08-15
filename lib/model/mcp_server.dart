//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class MCPServer {
  /// Returns a new [MCPServer] instance.
  MCPServer({
    this.authHeader,
    this.createdAt,
    this.hasSecret,
    this.id,
    this.listing,
    this.name,
    this.org,
    this.source_,
    this.url,
  });

  /// AuthHeader is the request header the KMS-held credential is injected into, e.g. \"Authorization\". Absent when the server needs no credential.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authHeader;

  /// CreatedAt is when the server was registered, Unix seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// HasSecret is whether a credential is sealed in KMS for this server. The VALUE is never returned by any route.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasSecret;

  /// ID is the server's id within the org. It also PREFIXES every tool name the server contributes, which is what keeps two servers' \"search\" apart.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Listing is the catalog entry this server was enabled from, when it was. Empty means the org typed the URL in itself.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? listing;

  /// Name is the org's label for the server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Org is the org that registered the server — the validated caller's.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  /// Source is where the registration came from: \"catalog\" when it was enabled off the shelf, \"org\" when the org registered the URL itself. It is DERIVED from Listing rather than stored, because two columns for one fact is two chances to disagree.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// URL is the server's JSON-RPC endpoint. Always a public http(s) host: the registration boundary and the dialer both refuse anything else.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MCPServer &&
    other.authHeader == authHeader &&
    other.createdAt == createdAt &&
    other.hasSecret == hasSecret &&
    other.id == id &&
    other.listing == listing &&
    other.name == name &&
    other.org == org &&
    other.source_ == source_ &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (authHeader == null ? 0 : authHeader!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (hasSecret == null ? 0 : hasSecret!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (listing == null ? 0 : listing!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'MCPServer[authHeader=$authHeader, createdAt=$createdAt, hasSecret=$hasSecret, id=$id, listing=$listing, name=$name, org=$org, source_=$source_, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.authHeader != null) {
      json[r'authHeader'] = this.authHeader;
    } else {
      json[r'authHeader'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.hasSecret != null) {
      json[r'hasSecret'] = this.hasSecret;
    } else {
      json[r'hasSecret'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
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
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [MCPServer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MCPServer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MCPServer[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MCPServer[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MCPServer(
        authHeader: mapValueOfType<String>(json, r'authHeader'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        hasSecret: mapValueOfType<bool>(json, r'hasSecret'),
        id: mapValueOfType<String>(json, r'id'),
        listing: mapValueOfType<String>(json, r'listing'),
        name: mapValueOfType<String>(json, r'name'),
        org: mapValueOfType<String>(json, r'org'),
        source_: mapValueOfType<String>(json, r'source'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<MCPServer> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MCPServer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MCPServer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MCPServer> mapFromJson(dynamic json) {
    final map = <String, MCPServer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MCPServer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MCPServer-objects as value to a dart map
  static Map<String, List<MCPServer>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MCPServer>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MCPServer.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

