//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class VectorScore {
  /// Returns a new [VectorScore] instance.
  VectorScore({
    this.score,
    this.vector,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? score;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? vector;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VectorScore &&
    other.score == score &&
    other.vector == vector;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (score == null ? 0 : score!.hashCode) +
    (vector == null ? 0 : vector!.hashCode);

  @override
  String toString() => 'VectorScore[score=$score, vector=$vector]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    if (this.vector != null) {
      json[r'vector'] = this.vector;
    } else {
      json[r'vector'] = null;
    }
    return json;
  }

  /// Returns a new [VectorScore] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VectorScore? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VectorScore[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VectorScore[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VectorScore(
        score: num.parse('${json[r'score']}'),
        vector: mapValueOfType<String>(json, r'vector'),
      );
    }
    return null;
  }

  static List<VectorScore> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VectorScore>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VectorScore.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VectorScore> mapFromJson(dynamic json) {
    final map = <String, VectorScore>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VectorScore.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VectorScore-objects as value to a dart map
  static Map<String, List<VectorScore>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VectorScore>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VectorScore.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

