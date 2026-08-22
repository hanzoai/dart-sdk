//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class OptinView {
  /// Returns a new [OptinView] instance.
  OptinView({
    this.org,
    this.user,
  });
  /// Org is the caller's org's listing preference on the cross-org board, and whether this caller is allowed to change it. It is read for every caller — a member sees where their org stands even though only an admin may edit it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OrgOptinView? org;

  /// User is the caller's OWN listing preference, and whether they may change it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserOptinView? user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OptinView &&
    other.org == org &&
    other.user == user;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (org == null ? 0 : org!.hashCode) +
    (user == null ? 0 : user!.hashCode);

  @override
  String toString() => 'OptinView[org=$org, user=$user]';

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

  /// Returns a new [OptinView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OptinView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OptinView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OptinView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OptinView(
        org: OrgOptinView.fromJson(json[r'org']),
        user: UserOptinView.fromJson(json[r'user']),
      );
    }
    return null;
  }

  static List<OptinView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OptinView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OptinView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OptinView> mapFromJson(dynamic json) {
    final map = <String, OptinView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OptinView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OptinView-objects as value to a dart map
  static Map<String, List<OptinView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OptinView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OptinView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

