//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ScoreConfigList {
  /// Returns a new [ScoreConfigList] instance.
  ScoreConfigList({
    this.data = const [],
  });
  /// Data is the caller org's rubrics, bounded by limit.
  List<ScoreConfigView> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScoreConfigList &&
    _deepEquality.equals(other.data, data);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode);

  @override
  String toString() => 'ScoreConfigList[data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [ScoreConfigList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScoreConfigList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScoreConfigList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScoreConfigList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScoreConfigList(
        data: ScoreConfigView.listFromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<ScoreConfigList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScoreConfigList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScoreConfigList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScoreConfigList> mapFromJson(dynamic json) {
    final map = <String, ScoreConfigList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScoreConfigList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScoreConfigList-objects as value to a dart map
  static Map<String, List<ScoreConfigList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScoreConfigList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScoreConfigList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

