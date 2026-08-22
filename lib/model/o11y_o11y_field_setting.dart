//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yFieldSetting {
  /// Returns a new [O11yO11yFieldSetting] instance.
  O11yO11yFieldSetting({
    required this.dataType,
    this.index,
    this.indexGranularity,
    required this.name,
    this.selected,
    required this.type,
  });
  /// DataType is the field's data type, e.g. string, int64, float64, bool. Required.
  String dataType;

  /// Index is the index expression to put on the column, e.g. minmax, set(N), bloom_filter(P), tokenbf_v1(S,H,SEED). Empty keeps the default.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? index;

  /// IndexGranularity is the index granularity in rows.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? indexGranularity;

  /// Name is the field to tune. Required.
  String name;

  /// Selected materializes the field as its own column when true.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? selected;

  /// Type is where the field lives: attributes or resources. Required.
  String type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yFieldSetting &&
    other.dataType == dataType &&
    other.index == index &&
    other.indexGranularity == indexGranularity &&
    other.name == name &&
    other.selected == selected &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dataType.hashCode) +
    (index == null ? 0 : index!.hashCode) +
    (indexGranularity == null ? 0 : indexGranularity!.hashCode) +
    (name.hashCode) +
    (selected == null ? 0 : selected!.hashCode) +
    (type.hashCode);

  @override
  String toString() => 'O11yO11yFieldSetting[dataType=$dataType, index=$index, indexGranularity=$indexGranularity, name=$name, selected=$selected, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'dataType'] = this.dataType;
    if (this.index != null) {
      json[r'index'] = this.index;
    } else {
      json[r'index'] = null;
    }
    if (this.indexGranularity != null) {
      json[r'indexGranularity'] = this.indexGranularity;
    } else {
      json[r'indexGranularity'] = null;
    }
      json[r'name'] = this.name;
    if (this.selected != null) {
      json[r'selected'] = this.selected;
    } else {
      json[r'selected'] = null;
    }
      json[r'type'] = this.type;
    return json;
  }

  /// Returns a new [O11yO11yFieldSetting] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yFieldSetting? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yFieldSetting[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yFieldSetting[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yFieldSetting(
        dataType: mapValueOfType<String>(json, r'dataType')!,
        index: mapValueOfType<String>(json, r'index'),
        indexGranularity: mapValueOfType<int>(json, r'indexGranularity'),
        name: mapValueOfType<String>(json, r'name')!,
        selected: mapValueOfType<bool>(json, r'selected'),
        type: mapValueOfType<String>(json, r'type')!,
      );
    }
    return null;
  }

  static List<O11yO11yFieldSetting> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yFieldSetting>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yFieldSetting.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yFieldSetting> mapFromJson(dynamic json) {
    final map = <String, O11yO11yFieldSetting>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yFieldSetting.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yFieldSetting-objects as value to a dart map
  static Map<String, List<O11yO11yFieldSetting>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yFieldSetting>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yFieldSetting.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'dataType',
    'name',
    'type',
  };
}

