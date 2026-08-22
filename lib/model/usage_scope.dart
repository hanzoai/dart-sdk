//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class UsageScope {
  /// Returns a new [UsageScope] instance.
  UsageScope({
    this.org,
    this.user,
  });
  /// Org is the IAM org slug the rows were read under — the validated principal's, never a client header.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  /// User is the caller's own subject, whose linked-account rows the accounts block carries. Absent on a read that is org-scoped only.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UsageScope &&
    other.org == org &&
    other.user == user;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (org == null ? 0 : org!.hashCode) +
    (user == null ? 0 : user!.hashCode);

  @override
  String toString() => 'UsageScope[org=$org, user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    return json;
  }

  /// Returns a new [UsageScope] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UsageScope? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UsageScope[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UsageScope[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UsageScope(
        org: mapValueOfType<String>(json, r'org'),
        user: mapValueOfType<String>(json, r'user'),
      );
    }
    return null;
  }

  static List<UsageScope> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UsageScope>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UsageScope.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UsageScope> mapFromJson(dynamic json) {
    final map = <String, UsageScope>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UsageScope.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UsageScope-objects as value to a dart map
  static Map<String, List<UsageScope>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UsageScope>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UsageScope.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

