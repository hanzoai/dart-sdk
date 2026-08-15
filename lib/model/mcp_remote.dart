//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class MCPRemote {
  /// Returns a new [MCPRemote] instance.
  MCPRemote({
    this.transport,
    this.url,
  });

  /// Transport is \"streamable-http\" or \"sse\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? transport;

  /// URL is the endpoint.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MCPRemote &&
    other.transport == transport &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (transport == null ? 0 : transport!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'MCPRemote[transport=$transport, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.transport != null) {
      json[r'transport'] = this.transport;
    } else {
      json[r'transport'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [MCPRemote] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MCPRemote? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MCPRemote[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MCPRemote[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MCPRemote(
        transport: mapValueOfType<String>(json, r'transport'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<MCPRemote> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MCPRemote>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MCPRemote.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MCPRemote> mapFromJson(dynamic json) {
    final map = <String, MCPRemote>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MCPRemote.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MCPRemote-objects as value to a dart map
  static Map<String, List<MCPRemote>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MCPRemote>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MCPRemote.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

