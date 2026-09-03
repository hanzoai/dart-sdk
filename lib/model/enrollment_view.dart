//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EnrollmentView {
  /// Returns a new [EnrollmentView] instance.
  EnrollmentView({
    this.expiresAt,
    this.jwt,
  });
  /// ExpiresAt is when the un-used token lapses, RFC 3339.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? expiresAt;

  /// JWT is the one-time enrollment token the device presents ONCE to join the fabric (zt edge enroll / zt-edge-tunnel enroll). Spent or lapsed, it authenticates nothing; this surface stores it nowhere.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? jwt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EnrollmentView &&
    other.expiresAt == expiresAt &&
    other.jwt == jwt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (jwt == null ? 0 : jwt!.hashCode);

  @override
  String toString() => 'EnrollmentView[expiresAt=$expiresAt, jwt=$jwt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt;
    } else {
      json[r'expiresAt'] = null;
    }
    if (this.jwt != null) {
      json[r'jwt'] = this.jwt;
    } else {
      json[r'jwt'] = null;
    }
    return json;
  }

  /// Returns a new [EnrollmentView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EnrollmentView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EnrollmentView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EnrollmentView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EnrollmentView(
        expiresAt: mapValueOfType<String>(json, r'expiresAt'),
        jwt: mapValueOfType<String>(json, r'jwt'),
      );
    }
    return null;
  }

  static List<EnrollmentView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EnrollmentView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EnrollmentView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EnrollmentView> mapFromJson(dynamic json) {
    final map = <String, EnrollmentView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EnrollmentView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EnrollmentView-objects as value to a dart map
  static Map<String, List<EnrollmentView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EnrollmentView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EnrollmentView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

