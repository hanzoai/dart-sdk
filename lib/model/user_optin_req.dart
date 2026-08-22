//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class UserOptinReq {
  /// Returns a new [UserOptinReq] instance.
  UserOptinReq({
    this.handle,
    this.listed,
  });
  /// Handle is the display name shown on a listed row: 1-40 characters of letters, digits, space, dot, underscore, apostrophe or hyphen. Left empty on a listing opt-in it defaults to the caller's username.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? handle;

  /// Listed publishes the caller's row to other viewers of the board when true, and anonymizes it when false.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? listed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserOptinReq &&
    other.handle == handle &&
    other.listed == listed;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (handle == null ? 0 : handle!.hashCode) +
    (listed == null ? 0 : listed!.hashCode);

  @override
  String toString() => 'UserOptinReq[handle=$handle, listed=$listed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.handle != null) {
      json[r'handle'] = this.handle;
    } else {
      json[r'handle'] = null;
    }
    if (this.listed != null) {
      json[r'listed'] = this.listed;
    } else {
      json[r'listed'] = null;
    }
    return json;
  }

  /// Returns a new [UserOptinReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserOptinReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserOptinReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserOptinReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserOptinReq(
        handle: mapValueOfType<String>(json, r'handle'),
        listed: mapValueOfType<bool>(json, r'listed'),
      );
    }
    return null;
  }

  static List<UserOptinReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserOptinReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserOptinReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserOptinReq> mapFromJson(dynamic json) {
    final map = <String, UserOptinReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserOptinReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserOptinReq-objects as value to a dart map
  static Map<String, List<UserOptinReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserOptinReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserOptinReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

