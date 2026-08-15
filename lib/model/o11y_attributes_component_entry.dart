//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yAttributesComponentEntry {
  /// Returns a new [O11yAttributesComponentEntry] instance.
  O11yAttributesComponentEntry({
    this.associatedComponent,
    this.attributes = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yAssociatedComponent? associatedComponent;

  List<String> attributes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yAttributesComponentEntry &&
    other.associatedComponent == associatedComponent &&
    _deepEquality.equals(other.attributes, attributes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (associatedComponent == null ? 0 : associatedComponent!.hashCode) +
    (attributes.hashCode);

  @override
  String toString() => 'O11yAttributesComponentEntry[associatedComponent=$associatedComponent, attributes=$attributes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.associatedComponent != null) {
      json[r'associatedComponent'] = this.associatedComponent;
    } else {
      json[r'associatedComponent'] = null;
    }
      json[r'attributes'] = this.attributes;
    return json;
  }

  /// Returns a new [O11yAttributesComponentEntry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yAttributesComponentEntry? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yAttributesComponentEntry[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yAttributesComponentEntry[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yAttributesComponentEntry(
        associatedComponent: O11yAssociatedComponent.fromJson(json[r'associatedComponent']),
        attributes: json[r'attributes'] is Iterable
            ? (json[r'attributes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<O11yAttributesComponentEntry> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yAttributesComponentEntry>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yAttributesComponentEntry.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yAttributesComponentEntry> mapFromJson(dynamic json) {
    final map = <String, O11yAttributesComponentEntry>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yAttributesComponentEntry.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yAttributesComponentEntry-objects as value to a dart map
  static Map<String, List<O11yAttributesComponentEntry>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yAttributesComponentEntry>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yAttributesComponentEntry.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

