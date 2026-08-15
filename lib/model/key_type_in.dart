//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class KeyTypeIn {
  /// Returns a new [KeyTypeIn] instance.
  KeyTypeIn({
    this.limit = const [],
    this.type,
  });

  /// Limit narrows what the minted key may reach, as `kind:name` entries: `model:zen5`, `project:acme`, `product:commerce`, or `model:*` for a whole kind. It only ever NARROWS — a key can never reach further than the person who minted it — so an unrecognised kind costs availability, never privilege.  Omitted mints an unrestricted key, because that is what every key in the estate is today and a default that restricted would revoke all of them.  Example: {\"type\": \"secret\", \"limit\": [\"model:zen5\", \"project:acme\"]}
  List<String> limit;

  /// Type is the key class to act on: \"secret\" (sk-, session-equivalent, belongs on a server) or \"publishable\" (pk-, org-identifying, safe in a browser bundle). Omitted means secret, which is what every existing caller means.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is KeyTypeIn &&
    _deepEquality.equals(other.limit, limit) &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (limit.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'KeyTypeIn[limit=$limit, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'limit'] = this.limit;
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [KeyTypeIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static KeyTypeIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "KeyTypeIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "KeyTypeIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return KeyTypeIn(
        limit: json[r'limit'] is Iterable
            ? (json[r'limit'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<KeyTypeIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <KeyTypeIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KeyTypeIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, KeyTypeIn> mapFromJson(dynamic json) {
    final map = <String, KeyTypeIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = KeyTypeIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of KeyTypeIn-objects as value to a dart map
  static Map<String, List<KeyTypeIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<KeyTypeIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = KeyTypeIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

