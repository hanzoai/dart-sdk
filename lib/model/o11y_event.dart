//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yEvent {
  /// Returns a new [O11yEvent] instance.
  O11yEvent({
    this.attributeMap = const {},
    this.isError,
    this.name,
    this.timeUnixNano,
  });
  Map<String, Object> attributeMap;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isError;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timeUnixNano;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yEvent &&
    _deepEquality.equals(other.attributeMap, attributeMap) &&
    other.isError == isError &&
    other.name == name &&
    other.timeUnixNano == timeUnixNano;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (attributeMap.hashCode) +
    (isError == null ? 0 : isError!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (timeUnixNano == null ? 0 : timeUnixNano!.hashCode);

  @override
  String toString() => 'O11yEvent[attributeMap=$attributeMap, isError=$isError, name=$name, timeUnixNano=$timeUnixNano]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'attributeMap'] = this.attributeMap;
    if (this.isError != null) {
      json[r'isError'] = this.isError;
    } else {
      json[r'isError'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.timeUnixNano != null) {
      json[r'timeUnixNano'] = this.timeUnixNano;
    } else {
      json[r'timeUnixNano'] = null;
    }
    return json;
  }

  /// Returns a new [O11yEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yEvent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yEvent(
        attributeMap: mapCastOfType<String, Object>(json, r'attributeMap') ?? const {},
        isError: mapValueOfType<bool>(json, r'isError'),
        name: mapValueOfType<String>(json, r'name'),
        timeUnixNano: mapValueOfType<int>(json, r'timeUnixNano'),
      );
    }
    return null;
  }

  static List<O11yEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yEvent> mapFromJson(dynamic json) {
    final map = <String, O11yEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yEvent-objects as value to a dart map
  static Map<String, List<O11yEvent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yEvent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

