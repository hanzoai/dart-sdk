//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yAPIKeyCreateIn {
  /// Returns a new [O11yO11yAPIKeyCreateIn] instance.
  O11yO11yAPIKeyCreateIn({
    this.expiresAt,
    this.name,
  });

  /// ExpiresAt is when the key stops working, as a unix timestamp in seconds. Zero means it never expires; a past timestamp is refused.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expiresAt;

  /// Name is the key's name: a lowercase letter followed by lowercase letters, digits or hyphens, at most 80 characters. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yAPIKeyCreateIn &&
    other.expiresAt == expiresAt &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'O11yO11yAPIKeyCreateIn[expiresAt=$expiresAt, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt;
    } else {
      json[r'expiresAt'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yAPIKeyCreateIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yAPIKeyCreateIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yAPIKeyCreateIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yAPIKeyCreateIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yAPIKeyCreateIn(
        expiresAt: mapValueOfType<int>(json, r'expiresAt'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<O11yO11yAPIKeyCreateIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yAPIKeyCreateIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yAPIKeyCreateIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yAPIKeyCreateIn> mapFromJson(dynamic json) {
    final map = <String, O11yO11yAPIKeyCreateIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yAPIKeyCreateIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yAPIKeyCreateIn-objects as value to a dart map
  static Map<String, List<O11yO11yAPIKeyCreateIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yAPIKeyCreateIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yAPIKeyCreateIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

