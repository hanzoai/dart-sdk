//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BaseView {
  /// Returns a new [BaseView] instance.
  BaseView({
    this.bytes,
    this.exists,
    this.org,
  });
  /// Bytes is the store's size on disk, present only once it exists. It is what this Base occupies, not a quota.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bytes;

  /// Exists reports whether this Base's store has been provisioned. False is an org nobody has stored anything for yet, which is a state to name rather than an error: the store is created the first time anything writes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? exists;

  /// Org is the org this Base belongs to. It is the address every other Base call is scoped by, and a Base has no name of its own.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BaseView &&
    other.bytes == bytes &&
    other.exists == exists &&
    other.org == org;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bytes == null ? 0 : bytes!.hashCode) +
    (exists == null ? 0 : exists!.hashCode) +
    (org == null ? 0 : org!.hashCode);

  @override
  String toString() => 'BaseView[bytes=$bytes, exists=$exists, org=$org]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.bytes != null) {
      json[r'bytes'] = this.bytes;
    } else {
      json[r'bytes'] = null;
    }
    if (this.exists != null) {
      json[r'exists'] = this.exists;
    } else {
      json[r'exists'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    return json;
  }

  /// Returns a new [BaseView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BaseView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BaseView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BaseView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BaseView(
        bytes: mapValueOfType<int>(json, r'bytes'),
        exists: mapValueOfType<bool>(json, r'exists'),
        org: mapValueOfType<String>(json, r'org'),
      );
    }
    return null;
  }

  static List<BaseView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BaseView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BaseView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BaseView> mapFromJson(dynamic json) {
    final map = <String, BaseView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BaseView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BaseView-objects as value to a dart map
  static Map<String, List<BaseView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BaseView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BaseView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

