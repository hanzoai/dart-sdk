//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ScoreConfigView {
  /// Returns a new [ScoreConfigView] instance.
  ScoreConfigView({
    this.categories = const [],
    this.createdAt,
    this.dataType,
    this.maxValue,
    this.minValue,
    this.name,
    this.updatedAt,
  });

  /// Categories is the closed set of labels a CATEGORICAL score may carry.
  List<String> categories;

  /// CreatedAt is when the rubric was first declared.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// DataType is NUMERIC, CATEGORICAL or BOOLEAN, and is authoritative — a score recorded under this name cannot claim a different one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataType;

  /// MaxValue is the inclusive ceiling a NUMERIC score must stay under, absent when unbounded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? maxValue;

  /// MinValue is the inclusive floor a NUMERIC score must clear, absent when unbounded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? minValue;

  /// Name is the score name this rubric governs.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// UpdatedAt is when it last changed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScoreConfigView &&
    _deepEquality.equals(other.categories, categories) &&
    other.createdAt == createdAt &&
    other.dataType == dataType &&
    other.maxValue == maxValue &&
    other.minValue == minValue &&
    other.name == name &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (categories.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (dataType == null ? 0 : dataType!.hashCode) +
    (maxValue == null ? 0 : maxValue!.hashCode) +
    (minValue == null ? 0 : minValue!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'ScoreConfigView[categories=$categories, createdAt=$createdAt, dataType=$dataType, maxValue=$maxValue, minValue=$minValue, name=$name, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'categories'] = this.categories;
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
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
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [ScoreConfigView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScoreConfigView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScoreConfigView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScoreConfigView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScoreConfigView(
        categories: json[r'categories'] is Iterable
            ? (json[r'categories'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        dataType: mapValueOfType<String>(json, r'dataType'),
        maxValue: num.parse('${json[r'maxValue']}'),
        minValue: num.parse('${json[r'minValue']}'),
        name: mapValueOfType<String>(json, r'name'),
        updatedAt: mapValueOfType<String>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<ScoreConfigView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScoreConfigView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScoreConfigView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScoreConfigView> mapFromJson(dynamic json) {
    final map = <String, ScoreConfigView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScoreConfigView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScoreConfigView-objects as value to a dart map
  static Map<String, List<ScoreConfigView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScoreConfigView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScoreConfigView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

