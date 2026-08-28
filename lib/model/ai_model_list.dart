//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AiModelList {
  /// Returns a new [AiModelList] instance.
  AiModelList({
    this.data = const [],
    this.models = const [],
    this.object,
  });
  List<AiModelInfo> data;

  List<AiModelInfo> models;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? object;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AiModelList &&
    _deepEquality.equals(other.data, data) &&
    _deepEquality.equals(other.models, models) &&
    other.object == object;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode) +
    (models.hashCode) +
    (object == null ? 0 : object!.hashCode);

  @override
  String toString() => 'AiModelList[data=$data, models=$models, object=$object]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
      json[r'models'] = this.models;
    if (this.object != null) {
      json[r'object'] = this.object;
    } else {
      json[r'object'] = null;
    }
    return json;
  }

  /// Returns a new [AiModelList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AiModelList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AiModelList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AiModelList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AiModelList(
        data: AiModelInfo.listFromJson(json[r'data']),
        models: AiModelInfo.listFromJson(json[r'models']),
        object: mapValueOfType<String>(json, r'object'),
      );
    }
    return null;
  }

  static List<AiModelList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AiModelList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AiModelList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AiModelList> mapFromJson(dynamic json) {
    final map = <String, AiModelList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AiModelList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AiModelList-objects as value to a dart map
  static Map<String, List<AiModelList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AiModelList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AiModelList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

