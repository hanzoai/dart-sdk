//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class UserOptinView {
  /// Returns a new [UserOptinView] instance.
  UserOptinView({
    this.canSet,
    this.handle,
    this.listed,
  });

  /// CanSet is false when the caller's ledger identity cannot be resolved (no user name on the principal). Writing the preference would fail, so hide the control.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? canSet;

  /// Handle is the display name on the caller's listed row. Empty when they never chose one; opting in without a handle sets it to their username, so a listed row is never blank.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? handle;

  /// Listed is true when the caller's board row is published under Handle to other viewers. False — the default for anyone who never opted in — anonymizes the row; the metric still counts, only the name is withheld.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? listed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserOptinView &&
    other.canSet == canSet &&
    other.handle == handle &&
    other.listed == listed;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (canSet == null ? 0 : canSet!.hashCode) +
    (handle == null ? 0 : handle!.hashCode) +
    (listed == null ? 0 : listed!.hashCode);

  @override
  String toString() => 'UserOptinView[canSet=$canSet, handle=$handle, listed=$listed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.canSet != null) {
      json[r'canSet'] = this.canSet;
    } else {
      json[r'canSet'] = null;
    }
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

  /// Returns a new [UserOptinView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserOptinView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserOptinView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserOptinView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserOptinView(
        canSet: mapValueOfType<bool>(json, r'canSet'),
        handle: mapValueOfType<String>(json, r'handle'),
        listed: mapValueOfType<bool>(json, r'listed'),
      );
    }
    return null;
  }

  static List<UserOptinView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserOptinView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserOptinView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserOptinView> mapFromJson(dynamic json) {
    final map = <String, UserOptinView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserOptinView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserOptinView-objects as value to a dart map
  static Map<String, List<UserOptinView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserOptinView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserOptinView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

