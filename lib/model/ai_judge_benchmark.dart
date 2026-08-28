//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AiJudgeBenchmark {
  /// Returns a new [AiJudgeBenchmark] instance.
  AiJudgeBenchmark({
    this.mfjp,
    this.naiveMean,
    this.singleAdversary,
    this.singleNoisy,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? mfjp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? naiveMean;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? singleAdversary;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? singleNoisy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AiJudgeBenchmark &&
    other.mfjp == mfjp &&
    other.naiveMean == naiveMean &&
    other.singleAdversary == singleAdversary &&
    other.singleNoisy == singleNoisy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (mfjp == null ? 0 : mfjp!.hashCode) +
    (naiveMean == null ? 0 : naiveMean!.hashCode) +
    (singleAdversary == null ? 0 : singleAdversary!.hashCode) +
    (singleNoisy == null ? 0 : singleNoisy!.hashCode);

  @override
  String toString() => 'AiJudgeBenchmark[mfjp=$mfjp, naiveMean=$naiveMean, singleAdversary=$singleAdversary, singleNoisy=$singleNoisy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.mfjp != null) {
      json[r'mfjp'] = this.mfjp;
    } else {
      json[r'mfjp'] = null;
    }
    if (this.naiveMean != null) {
      json[r'naiveMean'] = this.naiveMean;
    } else {
      json[r'naiveMean'] = null;
    }
    if (this.singleAdversary != null) {
      json[r'singleAdversary'] = this.singleAdversary;
    } else {
      json[r'singleAdversary'] = null;
    }
    if (this.singleNoisy != null) {
      json[r'singleNoisy'] = this.singleNoisy;
    } else {
      json[r'singleNoisy'] = null;
    }
    return json;
  }

  /// Returns a new [AiJudgeBenchmark] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AiJudgeBenchmark? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AiJudgeBenchmark[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AiJudgeBenchmark[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AiJudgeBenchmark(
        mfjp: num.parse('${json[r'mfjp']}'),
        naiveMean: num.parse('${json[r'naiveMean']}'),
        singleAdversary: num.parse('${json[r'singleAdversary']}'),
        singleNoisy: num.parse('${json[r'singleNoisy']}'),
      );
    }
    return null;
  }

  static List<AiJudgeBenchmark> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AiJudgeBenchmark>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AiJudgeBenchmark.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AiJudgeBenchmark> mapFromJson(dynamic json) {
    final map = <String, AiJudgeBenchmark>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AiJudgeBenchmark.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AiJudgeBenchmark-objects as value to a dart map
  static Map<String, List<AiJudgeBenchmark>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AiJudgeBenchmark>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AiJudgeBenchmark.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

