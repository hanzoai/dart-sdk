//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yServiceMetadata {
  /// Returns a new [O11yServiceMetadata] instance.
  O11yServiceMetadata({
    this.enabled,
    this.icon,
    this.id,
    this.title,
  });
  /// if the service is enabled for the account
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? icon;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yServiceMetadata &&
    other.enabled == enabled &&
    other.icon == icon &&
    other.id == id &&
    other.title == title;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled == null ? 0 : enabled!.hashCode) +
    (icon == null ? 0 : icon!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (title == null ? 0 : title!.hashCode);

  @override
  String toString() => 'O11yServiceMetadata[enabled=$enabled, icon=$icon, id=$id, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    if (this.icon != null) {
      json[r'icon'] = this.icon;
    } else {
      json[r'icon'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    return json;
  }

  /// Returns a new [O11yServiceMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yServiceMetadata? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yServiceMetadata[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yServiceMetadata[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yServiceMetadata(
        enabled: mapValueOfType<bool>(json, r'enabled'),
        icon: mapValueOfType<String>(json, r'icon'),
        id: mapValueOfType<String>(json, r'id'),
        title: mapValueOfType<String>(json, r'title'),
      );
    }
    return null;
  }

  static List<O11yServiceMetadata> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yServiceMetadata>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yServiceMetadata.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yServiceMetadata> mapFromJson(dynamic json) {
    final map = <String, O11yServiceMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yServiceMetadata.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yServiceMetadata-objects as value to a dart map
  static Map<String, List<O11yServiceMetadata>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yServiceMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yServiceMetadata.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

