//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yAddItemsIn {
  /// Returns a new [O11yAddItemsIn] instance.
  O11yAddItemsIn({
    this.id,
    this.items = const [],
  });

  /// ID is the annotation queue to add to, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Items are the objects to enqueue for review, 1–200 per request. Each names exactly one object.
  List<O11yItemInput> items;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yAddItemsIn &&
    other.id == id &&
    _deepEquality.equals(other.items, items);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (items.hashCode);

  @override
  String toString() => 'O11yAddItemsIn[id=$id, items=$items]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'items'] = this.items;
    return json;
  }

  /// Returns a new [O11yAddItemsIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yAddItemsIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yAddItemsIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yAddItemsIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yAddItemsIn(
        id: mapValueOfType<String>(json, r'id'),
        items: O11yItemInput.listFromJson(json[r'items']),
      );
    }
    return null;
  }

  static List<O11yAddItemsIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yAddItemsIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yAddItemsIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yAddItemsIn> mapFromJson(dynamic json) {
    final map = <String, O11yAddItemsIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yAddItemsIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yAddItemsIn-objects as value to a dart map
  static Map<String, List<O11yAddItemsIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yAddItemsIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yAddItemsIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

