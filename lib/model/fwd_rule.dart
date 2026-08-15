//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FwdRule {
  /// Returns a new [FwdRule] instance.
  FwdRule({
    this.entryPort,
    this.entryProtocol,
    this.targetPort,
    this.targetProtocol,
  });

  /// EntryPort is the port the load balancer listens on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? entryPort;

  /// EntryProtocol is the protocol the load balancer listens with (http, https, tcp).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entryProtocol;

  /// TargetPort is the backend port traffic is forwarded to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? targetPort;

  /// TargetProtocol is the protocol used to reach the backend droplets.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? targetProtocol;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FwdRule &&
    other.entryPort == entryPort &&
    other.entryProtocol == entryProtocol &&
    other.targetPort == targetPort &&
    other.targetProtocol == targetProtocol;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryPort == null ? 0 : entryPort!.hashCode) +
    (entryProtocol == null ? 0 : entryProtocol!.hashCode) +
    (targetPort == null ? 0 : targetPort!.hashCode) +
    (targetProtocol == null ? 0 : targetProtocol!.hashCode);

  @override
  String toString() => 'FwdRule[entryPort=$entryPort, entryProtocol=$entryProtocol, targetPort=$targetPort, targetProtocol=$targetProtocol]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.entryPort != null) {
      json[r'entry_port'] = this.entryPort;
    } else {
      json[r'entry_port'] = null;
    }
    if (this.entryProtocol != null) {
      json[r'entry_protocol'] = this.entryProtocol;
    } else {
      json[r'entry_protocol'] = null;
    }
    if (this.targetPort != null) {
      json[r'target_port'] = this.targetPort;
    } else {
      json[r'target_port'] = null;
    }
    if (this.targetProtocol != null) {
      json[r'target_protocol'] = this.targetProtocol;
    } else {
      json[r'target_protocol'] = null;
    }
    return json;
  }

  /// Returns a new [FwdRule] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FwdRule? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FwdRule[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FwdRule[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FwdRule(
        entryPort: mapValueOfType<int>(json, r'entry_port'),
        entryProtocol: mapValueOfType<String>(json, r'entry_protocol'),
        targetPort: mapValueOfType<int>(json, r'target_port'),
        targetProtocol: mapValueOfType<String>(json, r'target_protocol'),
      );
    }
    return null;
  }

  static List<FwdRule> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FwdRule>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FwdRule.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FwdRule> mapFromJson(dynamic json) {
    final map = <String, FwdRule>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FwdRule.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FwdRule-objects as value to a dart map
  static Map<String, List<FwdRule>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FwdRule>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FwdRule.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

