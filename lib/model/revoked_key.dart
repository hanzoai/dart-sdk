//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RevokedKey {
  /// Returns a new [RevokedKey] instance.
  RevokedKey({
    this.ok,
    this.type,
  });
  /// OK is true when the key was revoked. A failure is an error status, never a false here.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ok;

  /// Type is the key class that was revoked, resolved — so a caller that named nothing can see it revoked the secret key.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RevokedKey &&
    other.ok == ok &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ok == null ? 0 : ok!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'RevokedKey[ok=$ok, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ok != null) {
      json[r'ok'] = this.ok;
    } else {
      json[r'ok'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [RevokedKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RevokedKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RevokedKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RevokedKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RevokedKey(
        ok: mapValueOfType<bool>(json, r'ok'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<RevokedKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RevokedKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RevokedKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RevokedKey> mapFromJson(dynamic json) {
    final map = <String, RevokedKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RevokedKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RevokedKey-objects as value to a dart map
  static Map<String, List<RevokedKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RevokedKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RevokedKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

