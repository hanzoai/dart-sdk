//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FlowTrigger {
  /// Returns a new [FlowTrigger] instance.
  FlowTrigger({
    this.displayName,
    this.name,
    this.nextAction,
    this.settings,
    this.strategy,
    this.type,
    this.valid,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

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
  FlowAction? nextAction;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StepSettings? settings;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? strategy;

  /// PIECE_TRIGGER | EMPTY
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? valid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FlowTrigger &&
    other.displayName == displayName &&
    other.name == name &&
    other.nextAction == nextAction &&
    other.settings == settings &&
    other.strategy == strategy &&
    other.type == type &&
    other.valid == valid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (displayName == null ? 0 : displayName!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (nextAction == null ? 0 : nextAction!.hashCode) +
    (settings == null ? 0 : settings!.hashCode) +
    (strategy == null ? 0 : strategy!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (valid == null ? 0 : valid!.hashCode);

  @override
  String toString() => 'FlowTrigger[displayName=$displayName, name=$name, nextAction=$nextAction, settings=$settings, strategy=$strategy, type=$type, valid=$valid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.nextAction != null) {
      json[r'nextAction'] = this.nextAction;
    } else {
      json[r'nextAction'] = null;
    }
    if (this.settings != null) {
      json[r'settings'] = this.settings;
    } else {
      json[r'settings'] = null;
    }
    if (this.strategy != null) {
      json[r'strategy'] = this.strategy;
    } else {
      json[r'strategy'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.valid != null) {
      json[r'valid'] = this.valid;
    } else {
      json[r'valid'] = null;
    }
    return json;
  }

  /// Returns a new [FlowTrigger] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FlowTrigger? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FlowTrigger[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FlowTrigger[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FlowTrigger(
        displayName: mapValueOfType<String>(json, r'displayName'),
        name: mapValueOfType<String>(json, r'name'),
        nextAction: FlowAction.fromJson(json[r'nextAction']),
        settings: StepSettings.fromJson(json[r'settings']),
        strategy: mapValueOfType<String>(json, r'strategy'),
        type: mapValueOfType<String>(json, r'type'),
        valid: mapValueOfType<bool>(json, r'valid'),
      );
    }
    return null;
  }

  static List<FlowTrigger> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FlowTrigger>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FlowTrigger.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FlowTrigger> mapFromJson(dynamic json) {
    final map = <String, FlowTrigger>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FlowTrigger.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FlowTrigger-objects as value to a dart map
  static Map<String, List<FlowTrigger>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FlowTrigger>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FlowTrigger.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

