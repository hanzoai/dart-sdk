//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamSetProfileInput {
  /// Returns a new [IamSetProfileInput] instance.
  IamSetProfileInput({
    this.displayName,
    this.favicon,
    this.name,
    this.owner,
    this.websiteUrl,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? favicon;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websiteUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamSetProfileInput &&
    other.displayName == displayName &&
    other.favicon == favicon &&
    other.name == name &&
    other.owner == owner &&
    other.websiteUrl == websiteUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (displayName == null ? 0 : displayName!.hashCode) +
    (favicon == null ? 0 : favicon!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (websiteUrl == null ? 0 : websiteUrl!.hashCode);

  @override
  String toString() => 'IamSetProfileInput[displayName=$displayName, favicon=$favicon, name=$name, owner=$owner, websiteUrl=$websiteUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.favicon != null) {
      json[r'favicon'] = this.favicon;
    } else {
      json[r'favicon'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.websiteUrl != null) {
      json[r'websiteUrl'] = this.websiteUrl;
    } else {
      json[r'websiteUrl'] = null;
    }
    return json;
  }

  /// Returns a new [IamSetProfileInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamSetProfileInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamSetProfileInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamSetProfileInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamSetProfileInput(
        displayName: mapValueOfType<String>(json, r'displayName'),
        favicon: mapValueOfType<String>(json, r'favicon'),
        name: mapValueOfType<String>(json, r'name'),
        owner: mapValueOfType<String>(json, r'owner'),
        websiteUrl: mapValueOfType<String>(json, r'websiteUrl'),
      );
    }
    return null;
  }

  static List<IamSetProfileInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamSetProfileInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamSetProfileInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamSetProfileInput> mapFromJson(dynamic json) {
    final map = <String, IamSetProfileInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamSetProfileInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamSetProfileInput-objects as value to a dart map
  static Map<String, List<IamSetProfileInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamSetProfileInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamSetProfileInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

