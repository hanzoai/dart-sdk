//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yDeployment {
  /// Returns a new [O11yDeployment] instance.
  O11yDeployment({
    this.instance,
    this.up,
  });
  /// Instance is the replica as the telemetry store labels it — the address the series was recorded against, which is what distinguishes two replicas of one service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? instance;

  /// Up is that replica's last reported state. Every target emits on every cycle, so a replica missing from the list is one the prober is not reporting at all, which is a different fact from down.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? up;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yDeployment &&
    other.instance == instance &&
    other.up == up;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (instance == null ? 0 : instance!.hashCode) +
    (up == null ? 0 : up!.hashCode);

  @override
  String toString() => 'O11yDeployment[instance=$instance, up=$up]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.instance != null) {
      json[r'instance'] = this.instance;
    } else {
      json[r'instance'] = null;
    }
    if (this.up != null) {
      json[r'up'] = this.up;
    } else {
      json[r'up'] = null;
    }
    return json;
  }

  /// Returns a new [O11yDeployment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yDeployment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yDeployment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yDeployment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yDeployment(
        instance: mapValueOfType<String>(json, r'instance'),
        up: mapValueOfType<bool>(json, r'up'),
      );
    }
    return null;
  }

  static List<O11yDeployment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yDeployment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yDeployment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yDeployment> mapFromJson(dynamic json) {
    final map = <String, O11yDeployment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yDeployment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yDeployment-objects as value to a dart map
  static Map<String, List<O11yDeployment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yDeployment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yDeployment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

