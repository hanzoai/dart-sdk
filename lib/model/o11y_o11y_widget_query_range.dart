//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yWidgetQueryRange {
  /// Returns a new [O11yO11yWidgetQueryRange] instance.
  O11yO11yWidgetQueryRange({
    this.data,
    this.meta,
    this.type,
    this.warning,
  });

  Object? data;

  Object? meta;

  /// Type is the request type the result answers, e.g. time_series, scalar.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  Object? warning;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yWidgetQueryRange &&
    other.data == data &&
    other.meta == meta &&
    other.type == type &&
    other.warning == warning;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data == null ? 0 : data!.hashCode) +
    (meta == null ? 0 : meta!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (warning == null ? 0 : warning!.hashCode);

  @override
  String toString() => 'O11yO11yWidgetQueryRange[data=$data, meta=$meta, type=$type, warning=$warning]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    if (this.meta != null) {
      json[r'meta'] = this.meta;
    } else {
      json[r'meta'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.warning != null) {
      json[r'warning'] = this.warning;
    } else {
      json[r'warning'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yWidgetQueryRange] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yWidgetQueryRange? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yWidgetQueryRange[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yWidgetQueryRange[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yWidgetQueryRange(
        data: mapValueOfType<Object>(json, r'data'),
        meta: mapValueOfType<Object>(json, r'meta'),
        type: mapValueOfType<String>(json, r'type'),
        warning: mapValueOfType<Object>(json, r'warning'),
      );
    }
    return null;
  }

  static List<O11yO11yWidgetQueryRange> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yWidgetQueryRange>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yWidgetQueryRange.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yWidgetQueryRange> mapFromJson(dynamic json) {
    final map = <String, O11yO11yWidgetQueryRange>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yWidgetQueryRange.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yWidgetQueryRange-objects as value to a dart map
  static Map<String, List<O11yO11yWidgetQueryRange>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yWidgetQueryRange>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yWidgetQueryRange.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

