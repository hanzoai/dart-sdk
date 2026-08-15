//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AimRunStat {
  /// Returns a new [AimRunStat] instance.
  AimRunStat({
    this.avgValue,
    this.dataset,
    this.lastTs,
    this.runName,
    this.scores,
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
  String? dataset;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastTs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? runName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? scores;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AimRunStat &&
    other.avgValue == avgValue &&
    other.dataset == dataset &&
    other.lastTs == lastTs &&
    other.runName == runName &&
    other.scores == scores;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (avgValue == null ? 0 : avgValue!.hashCode) +
    (dataset == null ? 0 : dataset!.hashCode) +
    (lastTs == null ? 0 : lastTs!.hashCode) +
    (runName == null ? 0 : runName!.hashCode) +
    (scores == null ? 0 : scores!.hashCode);

  @override
  String toString() => 'AimRunStat[avgValue=$avgValue, dataset=$dataset, lastTs=$lastTs, runName=$runName, scores=$scores]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.avgValue != null) {
      json[r'avgValue'] = this.avgValue;
    } else {
      json[r'avgValue'] = null;
    }
    if (this.dataset != null) {
      json[r'dataset'] = this.dataset;
    } else {
      json[r'dataset'] = null;
    }
    if (this.lastTs != null) {
      json[r'lastTs'] = this.lastTs;
    } else {
      json[r'lastTs'] = null;
    }
    if (this.runName != null) {
      json[r'runName'] = this.runName;
    } else {
      json[r'runName'] = null;
    }
    if (this.scores != null) {
      json[r'scores'] = this.scores;
    } else {
      json[r'scores'] = null;
    }
    return json;
  }

  /// Returns a new [AimRunStat] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AimRunStat? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AimRunStat[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AimRunStat[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AimRunStat(
        avgValue: num.parse('${json[r'avgValue']}'),
        dataset: mapValueOfType<String>(json, r'dataset'),
        lastTs: mapValueOfType<String>(json, r'lastTs'),
        runName: mapValueOfType<String>(json, r'runName'),
        scores: mapValueOfType<int>(json, r'scores'),
      );
    }
    return null;
  }

  static List<AimRunStat> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AimRunStat>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AimRunStat.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AimRunStat> mapFromJson(dynamic json) {
    final map = <String, AimRunStat>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AimRunStat.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AimRunStat-objects as value to a dart map
  static Map<String, List<AimRunStat>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AimRunStat>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AimRunStat.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

