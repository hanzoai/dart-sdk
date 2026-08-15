//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProviderInfo {
  /// Returns a new [ProviderInfo] instance.
  ProviderInfo({
    this.displayName,
    this.name,
  });

  /// DisplayName is the human label for the sign-in button; this deployment sends \"Hanzo\". Omitted from the body when empty.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  /// Name is the provider id, and it is the value that goes back in the URL to start a login: GET /v1/team/account/auth/{provider}. This deployment surfaces exactly one, \"openid\" — the hanzo.id door.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProviderInfo &&
    other.displayName == displayName &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (displayName == null ? 0 : displayName!.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'ProviderInfo[displayName=$displayName, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [ProviderInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProviderInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProviderInfo[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProviderInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProviderInfo(
        displayName: mapValueOfType<String>(json, r'displayName'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<ProviderInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProviderInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProviderInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProviderInfo> mapFromJson(dynamic json) {
    final map = <String, ProviderInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProviderInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProviderInfo-objects as value to a dart map
  static Map<String, List<ProviderInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProviderInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProviderInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

