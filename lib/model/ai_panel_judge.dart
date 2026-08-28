//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AiPanelJudge {
  /// Returns a new [AiPanelJudge] instance.
  AiPanelJudge({
    this.mean,
    this.model,
    this.n,
    this.weight,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? mean;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? n;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? weight;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AiPanelJudge &&
    other.mean == mean &&
    other.model == model &&
    other.n == n &&
    other.weight == weight;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (mean == null ? 0 : mean!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (n == null ? 0 : n!.hashCode) +
    (weight == null ? 0 : weight!.hashCode);

  @override
  String toString() => 'AiPanelJudge[mean=$mean, model=$model, n=$n, weight=$weight]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.mean != null) {
      json[r'mean'] = this.mean;
    } else {
      json[r'mean'] = null;
    }
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
    if (this.n != null) {
      json[r'n'] = this.n;
    } else {
      json[r'n'] = null;
    }
    if (this.weight != null) {
      json[r'weight'] = this.weight;
    } else {
      json[r'weight'] = null;
    }
    return json;
  }

  /// Returns a new [AiPanelJudge] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AiPanelJudge? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AiPanelJudge[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AiPanelJudge[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AiPanelJudge(
        mean: num.parse('${json[r'mean']}'),
        model: mapValueOfType<String>(json, r'model'),
        n: mapValueOfType<int>(json, r'n'),
        weight: num.parse('${json[r'weight']}'),
      );
    }
    return null;
  }

  static List<AiPanelJudge> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AiPanelJudge>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AiPanelJudge.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AiPanelJudge> mapFromJson(dynamic json) {
    final map = <String, AiPanelJudge>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AiPanelJudge.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AiPanelJudge-objects as value to a dart map
  static Map<String, List<AiPanelJudge>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AiPanelJudge>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AiPanelJudge.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

