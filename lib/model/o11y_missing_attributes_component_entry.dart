//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yMissingAttributesComponentEntry {
  /// Returns a new [O11yMissingAttributesComponentEntry] instance.
  O11yMissingAttributesComponentEntry({
    this.associatedComponent,
    this.attributes = const [],
    this.documentationLink,
    this.message,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yAssociatedComponent? associatedComponent;

  List<String> attributes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? documentationLink;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yMissingAttributesComponentEntry &&
    other.associatedComponent == associatedComponent &&
    _deepEquality.equals(other.attributes, attributes) &&
    other.documentationLink == documentationLink &&
    other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (associatedComponent == null ? 0 : associatedComponent!.hashCode) +
    (attributes.hashCode) +
    (documentationLink == null ? 0 : documentationLink!.hashCode) +
    (message == null ? 0 : message!.hashCode);

  @override
  String toString() => 'O11yMissingAttributesComponentEntry[associatedComponent=$associatedComponent, attributes=$attributes, documentationLink=$documentationLink, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.associatedComponent != null) {
      json[r'associatedComponent'] = this.associatedComponent;
    } else {
      json[r'associatedComponent'] = null;
    }
      json[r'attributes'] = this.attributes;
    if (this.documentationLink != null) {
      json[r'documentationLink'] = this.documentationLink;
    } else {
      json[r'documentationLink'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    return json;
  }

  /// Returns a new [O11yMissingAttributesComponentEntry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yMissingAttributesComponentEntry? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yMissingAttributesComponentEntry[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yMissingAttributesComponentEntry[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yMissingAttributesComponentEntry(
        associatedComponent: O11yAssociatedComponent.fromJson(json[r'associatedComponent']),
        attributes: json[r'attributes'] is Iterable
            ? (json[r'attributes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        documentationLink: mapValueOfType<String>(json, r'documentationLink'),
        message: mapValueOfType<String>(json, r'message'),
      );
    }
    return null;
  }

  static List<O11yMissingAttributesComponentEntry> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yMissingAttributesComponentEntry>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yMissingAttributesComponentEntry.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yMissingAttributesComponentEntry> mapFromJson(dynamic json) {
    final map = <String, O11yMissingAttributesComponentEntry>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yMissingAttributesComponentEntry.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yMissingAttributesComponentEntry-objects as value to a dart map
  static Map<String, List<O11yMissingAttributesComponentEntry>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yMissingAttributesComponentEntry>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yMissingAttributesComponentEntry.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

