//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DigitaloceanSnapshot {
  /// Returns a new [DigitaloceanSnapshot] instance.
  DigitaloceanSnapshot({
    this.ID,
    this.name,
    this.sizeGiB,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ID;

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
  int? sizeGiB;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DigitaloceanSnapshot &&
    other.ID == ID &&
    other.name == name &&
    other.sizeGiB == sizeGiB;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ID == null ? 0 : ID!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (sizeGiB == null ? 0 : sizeGiB!.hashCode);

  @override
  String toString() => 'DigitaloceanSnapshot[ID=$ID, name=$name, sizeGiB=$sizeGiB]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ID != null) {
      json[r'ID'] = this.ID;
    } else {
      json[r'ID'] = null;
    }
    if (this.name != null) {
      json[r'Name'] = this.name;
    } else {
      json[r'Name'] = null;
    }
    if (this.sizeGiB != null) {
      json[r'SizeGiB'] = this.sizeGiB;
    } else {
      json[r'SizeGiB'] = null;
    }
    return json;
  }

  /// Returns a new [DigitaloceanSnapshot] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DigitaloceanSnapshot? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DigitaloceanSnapshot[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DigitaloceanSnapshot[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DigitaloceanSnapshot(
        ID: mapValueOfType<String>(json, r'ID'),
        name: mapValueOfType<String>(json, r'Name'),
        sizeGiB: mapValueOfType<int>(json, r'SizeGiB'),
      );
    }
    return null;
  }

  static List<DigitaloceanSnapshot> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DigitaloceanSnapshot>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DigitaloceanSnapshot.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DigitaloceanSnapshot> mapFromJson(dynamic json) {
    final map = <String, DigitaloceanSnapshot>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DigitaloceanSnapshot.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DigitaloceanSnapshot-objects as value to a dart map
  static Map<String, List<DigitaloceanSnapshot>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DigitaloceanSnapshot>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DigitaloceanSnapshot.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

