//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AimScoreStat {
  /// Returns a new [AimScoreStat] instance.
  AimScoreStat({
    this.avgValue,
    this.count,
    this.maxValue,
    this.minValue,
    this.name,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? avgValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? maxValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? minValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AimScoreStat &&
    other.avgValue == avgValue &&
    other.count == count &&
    other.maxValue == maxValue &&
    other.minValue == minValue &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (avgValue == null ? 0 : avgValue!.hashCode) +
    (count == null ? 0 : count!.hashCode) +
    (maxValue == null ? 0 : maxValue!.hashCode) +
    (minValue == null ? 0 : minValue!.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'AimScoreStat[avgValue=$avgValue, count=$count, maxValue=$maxValue, minValue=$minValue, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.avgValue != null) {
      json[r'avgValue'] = this.avgValue;
    } else {
      json[r'avgValue'] = null;
    }
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.maxValue != null) {
      json[r'maxValue'] = this.maxValue;
    } else {
      json[r'maxValue'] = null;
    }
    if (this.minValue != null) {
      json[r'minValue'] = this.minValue;
    } else {
      json[r'minValue'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [AimScoreStat] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AimScoreStat? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AimScoreStat[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AimScoreStat[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AimScoreStat(
        avgValue: num.parse('${json[r'avgValue']}'),
        count: mapValueOfType<int>(json, r'count'),
        maxValue: num.parse('${json[r'maxValue']}'),
        minValue: num.parse('${json[r'minValue']}'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<AimScoreStat> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AimScoreStat>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AimScoreStat.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AimScoreStat> mapFromJson(dynamic json) {
    final map = <String, AimScoreStat>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AimScoreStat.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AimScoreStat-objects as value to a dart map
  static Map<String, List<AimScoreStat>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AimScoreStat>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AimScoreStat.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

