//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FrameworkRow {
  /// Returns a new [FrameworkRow] instance.
  FrameworkRow({
    this.edition,
    this.framework,
    this.name,
    this.publisher,
    this.total,
    this.unit,
    this.units,
  });
  /// Edition is which edition this clause list is taken from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? edition;

  /// Framework is the framework id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? framework;

  /// Name is the published standard's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Publisher is who publishes it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? publisher;

  /// Total is how many clauses the standard publishes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  /// Unit is what one clause is; Units is its plural.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unit;

  /// Units is the plural of Unit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? units;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FrameworkRow &&
    other.edition == edition &&
    other.framework == framework &&
    other.name == name &&
    other.publisher == publisher &&
    other.total == total &&
    other.unit == unit &&
    other.units == units;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (edition == null ? 0 : edition!.hashCode) +
    (framework == null ? 0 : framework!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (publisher == null ? 0 : publisher!.hashCode) +
    (total == null ? 0 : total!.hashCode) +
    (unit == null ? 0 : unit!.hashCode) +
    (units == null ? 0 : units!.hashCode);

  @override
  String toString() => 'FrameworkRow[edition=$edition, framework=$framework, name=$name, publisher=$publisher, total=$total, unit=$unit, units=$units]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.edition != null) {
      json[r'edition'] = this.edition;
    } else {
      json[r'edition'] = null;
    }
    if (this.framework != null) {
      json[r'framework'] = this.framework;
    } else {
      json[r'framework'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.publisher != null) {
      json[r'publisher'] = this.publisher;
    } else {
      json[r'publisher'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    if (this.unit != null) {
      json[r'unit'] = this.unit;
    } else {
      json[r'unit'] = null;
    }
    if (this.units != null) {
      json[r'units'] = this.units;
    } else {
      json[r'units'] = null;
    }
    return json;
  }

  /// Returns a new [FrameworkRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FrameworkRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FrameworkRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FrameworkRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FrameworkRow(
        edition: mapValueOfType<String>(json, r'edition'),
        framework: mapValueOfType<String>(json, r'framework'),
        name: mapValueOfType<String>(json, r'name'),
        publisher: mapValueOfType<String>(json, r'publisher'),
        total: mapValueOfType<int>(json, r'total'),
        unit: mapValueOfType<String>(json, r'unit'),
        units: mapValueOfType<String>(json, r'units'),
      );
    }
    return null;
  }

  static List<FrameworkRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FrameworkRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FrameworkRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FrameworkRow> mapFromJson(dynamic json) {
    final map = <String, FrameworkRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FrameworkRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FrameworkRow-objects as value to a dart map
  static Map<String, List<FrameworkRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FrameworkRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FrameworkRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

