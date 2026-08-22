//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class StepSettings {
  /// Returns a new [StepSettings] instance.
  StepSettings({
    this.actionName,
    this.input = const {},
    this.pieceName,
    this.pieceVersion,
    this.triggerName,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? actionName;

  Map<String, Object> input;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pieceName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pieceVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? triggerName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StepSettings &&
    other.actionName == actionName &&
    _deepEquality.equals(other.input, input) &&
    other.pieceName == pieceName &&
    other.pieceVersion == pieceVersion &&
    other.triggerName == triggerName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (actionName == null ? 0 : actionName!.hashCode) +
    (input.hashCode) +
    (pieceName == null ? 0 : pieceName!.hashCode) +
    (pieceVersion == null ? 0 : pieceVersion!.hashCode) +
    (triggerName == null ? 0 : triggerName!.hashCode);

  @override
  String toString() => 'StepSettings[actionName=$actionName, input=$input, pieceName=$pieceName, pieceVersion=$pieceVersion, triggerName=$triggerName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.actionName != null) {
      json[r'actionName'] = this.actionName;
    } else {
      json[r'actionName'] = null;
    }
      json[r'input'] = this.input;
    if (this.pieceName != null) {
      json[r'pieceName'] = this.pieceName;
    } else {
      json[r'pieceName'] = null;
    }
    if (this.pieceVersion != null) {
      json[r'pieceVersion'] = this.pieceVersion;
    } else {
      json[r'pieceVersion'] = null;
    }
    if (this.triggerName != null) {
      json[r'triggerName'] = this.triggerName;
    } else {
      json[r'triggerName'] = null;
    }
    return json;
  }

  /// Returns a new [StepSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StepSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StepSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StepSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StepSettings(
        actionName: mapValueOfType<String>(json, r'actionName'),
        input: mapCastOfType<String, Object>(json, r'input') ?? const {},
        pieceName: mapValueOfType<String>(json, r'pieceName'),
        pieceVersion: mapValueOfType<String>(json, r'pieceVersion'),
        triggerName: mapValueOfType<String>(json, r'triggerName'),
      );
    }
    return null;
  }

  static List<StepSettings> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StepSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StepSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StepSettings> mapFromJson(dynamic json) {
    final map = <String, StepSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StepSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StepSettings-objects as value to a dart map
  static Map<String, List<StepSettings>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StepSettings>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StepSettings.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

