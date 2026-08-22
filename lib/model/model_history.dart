//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ModelHistory {
  /// Returns a new [ModelHistory] instance.
  ModelHistory({
    this.model,
    this.points = const [],
    this.trend,
  });
  /// Model is the system these runs measured.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  /// Points is every run, oldest first.
  List<RunPoint> points;

  /// Trend is the change from the first run to the last, absent when there has only been one. It answers the question a list of points makes you compute.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? trend;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelHistory &&
    other.model == model &&
    _deepEquality.equals(other.points, points) &&
    other.trend == trend;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (model == null ? 0 : model!.hashCode) +
    (points.hashCode) +
    (trend == null ? 0 : trend!.hashCode);

  @override
  String toString() => 'ModelHistory[model=$model, points=$points, trend=$trend]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
      json[r'points'] = this.points;
    if (this.trend != null) {
      json[r'trend'] = this.trend;
    } else {
      json[r'trend'] = null;
    }
    return json;
  }

  /// Returns a new [ModelHistory] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelHistory? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelHistory[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelHistory[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelHistory(
        model: mapValueOfType<String>(json, r'model'),
        points: RunPoint.listFromJson(json[r'points']),
        trend: num.parse('${json[r'trend']}'),
      );
    }
    return null;
  }

  static List<ModelHistory> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelHistory>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelHistory.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelHistory> mapFromJson(dynamic json) {
    final map = <String, ModelHistory>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelHistory.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelHistory-objects as value to a dart map
  static Map<String, List<ModelHistory>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelHistory>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelHistory.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

