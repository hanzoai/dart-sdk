//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LinearClaimIn {
  /// Returns a new [LinearClaimIn] instance.
  LinearClaimIn({
    this.secret,
  });
  /// Secret is the signing secret configured on the webhook in Linear. Claiming again with a new value rotates it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? secret;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LinearClaimIn &&
    other.secret == secret;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (secret == null ? 0 : secret!.hashCode);

  @override
  String toString() => 'LinearClaimIn[secret=$secret]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.secret != null) {
      json[r'secret'] = this.secret;
    } else {
      json[r'secret'] = null;
    }
    return json;
  }

  /// Returns a new [LinearClaimIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LinearClaimIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LinearClaimIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LinearClaimIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LinearClaimIn(
        secret: mapValueOfType<String>(json, r'secret'),
      );
    }
    return null;
  }

  static List<LinearClaimIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LinearClaimIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LinearClaimIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LinearClaimIn> mapFromJson(dynamic json) {
    final map = <String, LinearClaimIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LinearClaimIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LinearClaimIn-objects as value to a dart map
  static Map<String, List<LinearClaimIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LinearClaimIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LinearClaimIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

