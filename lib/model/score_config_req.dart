//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ScoreConfigReq {
  /// Returns a new [ScoreConfigReq] instance.
  ScoreConfigReq({
    this.categories = const [],
    this.dataType,
    this.maxValue,
    this.minValue,
    required this.name,
  });

  /// Categories is the closed set of labels a CATEGORICAL score may carry. A CATEGORICAL rubric with none is refused.
  List<String> categories;

  /// DataType is NUMERIC (the default), CATEGORICAL or BOOLEAN.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataType;

  /// MaxValue is the inclusive ceiling a NUMERIC score must stay under, finite.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? maxValue;

  /// MinValue is the inclusive floor a NUMERIC score must clear. It must be finite and must not exceed MaxValue.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? minValue;

  /// Name is the score name this rubric governs, matching ^[A-Za-z0-9][A-Za-z0-9._-]{0,63}$. The name is the key, so re-posting one replaces its rules.
  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScoreConfigReq &&
    _deepEquality.equals(other.categories, categories) &&
    other.dataType == dataType &&
    other.maxValue == maxValue &&
    other.minValue == minValue &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (categories.hashCode) +
    (dataType == null ? 0 : dataType!.hashCode) +
    (maxValue == null ? 0 : maxValue!.hashCode) +
    (minValue == null ? 0 : minValue!.hashCode) +
    (name.hashCode);

  @override
  String toString() => 'ScoreConfigReq[categories=$categories, dataType=$dataType, maxValue=$maxValue, minValue=$minValue, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'categories'] = this.categories;
    if (this.dataType != null) {
      json[r'dataType'] = this.dataType;
    } else {
      json[r'dataType'] = null;
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
      json[r'name'] = this.name;
    return json;
  }

  /// Returns a new [ScoreConfigReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScoreConfigReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScoreConfigReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScoreConfigReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScoreConfigReq(
        categories: json[r'categories'] is Iterable
            ? (json[r'categories'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        dataType: mapValueOfType<String>(json, r'dataType'),
        maxValue: num.parse('${json[r'maxValue']}'),
        minValue: num.parse('${json[r'minValue']}'),
        name: mapValueOfType<String>(json, r'name')!,
      );
    }
    return null;
  }

  static List<ScoreConfigReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScoreConfigReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScoreConfigReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScoreConfigReq> mapFromJson(dynamic json) {
    final map = <String, ScoreConfigReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScoreConfigReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScoreConfigReq-objects as value to a dart map
  static Map<String, List<ScoreConfigReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScoreConfigReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScoreConfigReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

