//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class HealthLens {
  /// Returns a new [HealthLens] instance.
  HealthLens({
    this.available,
    this.table,
  });

  /// Available reports whether that table exists in the warehouse right now.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? available;

  /// Table is the fully-qualified warehouse table the lens reads.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? table;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HealthLens &&
    other.available == available &&
    other.table == table;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (available == null ? 0 : available!.hashCode) +
    (table == null ? 0 : table!.hashCode);

  @override
  String toString() => 'HealthLens[available=$available, table=$table]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.available != null) {
      json[r'available'] = this.available;
    } else {
      json[r'available'] = null;
    }
    if (this.table != null) {
      json[r'table'] = this.table;
    } else {
      json[r'table'] = null;
    }
    return json;
  }

  /// Returns a new [HealthLens] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HealthLens? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HealthLens[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HealthLens[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HealthLens(
        available: mapValueOfType<bool>(json, r'available'),
        table: mapValueOfType<String>(json, r'table'),
      );
    }
    return null;
  }

  static List<HealthLens> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HealthLens>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HealthLens.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HealthLens> mapFromJson(dynamic json) {
    final map = <String, HealthLens>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HealthLens.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HealthLens-objects as value to a dart map
  static Map<String, List<HealthLens>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HealthLens>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HealthLens.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

