//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yCredentials {
  /// Returns a new [O11yCredentials] instance.
  O11yCredentials({
    this.ingestionKey,
    this.ingestionUrl,
    this.o11yApiKey,
    this.o11yApiUrl,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ingestionKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ingestionUrl;

  /// PAT
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? o11yApiKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? o11yApiUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yCredentials &&
    other.ingestionKey == ingestionKey &&
    other.ingestionUrl == ingestionUrl &&
    other.o11yApiKey == o11yApiKey &&
    other.o11yApiUrl == o11yApiUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ingestionKey == null ? 0 : ingestionKey!.hashCode) +
    (ingestionUrl == null ? 0 : ingestionUrl!.hashCode) +
    (o11yApiKey == null ? 0 : o11yApiKey!.hashCode) +
    (o11yApiUrl == null ? 0 : o11yApiUrl!.hashCode);

  @override
  String toString() => 'O11yCredentials[ingestionKey=$ingestionKey, ingestionUrl=$ingestionUrl, o11yApiKey=$o11yApiKey, o11yApiUrl=$o11yApiUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ingestionKey != null) {
      json[r'ingestionKey'] = this.ingestionKey;
    } else {
      json[r'ingestionKey'] = null;
    }
    if (this.ingestionUrl != null) {
      json[r'ingestionUrl'] = this.ingestionUrl;
    } else {
      json[r'ingestionUrl'] = null;
    }
    if (this.o11yApiKey != null) {
      json[r'o11yApiKey'] = this.o11yApiKey;
    } else {
      json[r'o11yApiKey'] = null;
    }
    if (this.o11yApiUrl != null) {
      json[r'o11yApiUrl'] = this.o11yApiUrl;
    } else {
      json[r'o11yApiUrl'] = null;
    }
    return json;
  }

  /// Returns a new [O11yCredentials] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yCredentials? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yCredentials[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yCredentials[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yCredentials(
        ingestionKey: mapValueOfType<String>(json, r'ingestionKey'),
        ingestionUrl: mapValueOfType<String>(json, r'ingestionUrl'),
        o11yApiKey: mapValueOfType<String>(json, r'o11yApiKey'),
        o11yApiUrl: mapValueOfType<String>(json, r'o11yApiUrl'),
      );
    }
    return null;
  }

  static List<O11yCredentials> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yCredentials>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yCredentials.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yCredentials> mapFromJson(dynamic json) {
    final map = <String, O11yCredentials>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yCredentials.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yCredentials-objects as value to a dart map
  static Map<String, List<O11yCredentials>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yCredentials>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yCredentials.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

