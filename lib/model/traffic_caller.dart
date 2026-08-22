//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TrafficCaller {
  /// Returns a new [TrafficCaller] instance.
  TrafficCaller({
    this.action,
    this.cred,
    this.failures,
    this.heldUntil,
    this.paths,
    this.reason,
    this.requests,
  });
  /// Action is the verdict currently held against it, if any.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? action;

  /// Cred is the caller's key: a credential fingerprint (a per-process one-way digest, not a key) for a validated caller, and \"ip:<addr>\" for one that presented no credential we could validate.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cred;

  /// Failures is how many ended 401 or 403.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? failures;

  /// HeldUntil is when the held verdict lapses, unix seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? heldUntil;

  /// Paths is the approximate number of distinct paths it touched (max 64).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? paths;

  /// Reason is why that verdict was reached.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  /// Requests is its request count in the window.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? requests;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrafficCaller &&
    other.action == action &&
    other.cred == cred &&
    other.failures == failures &&
    other.heldUntil == heldUntil &&
    other.paths == paths &&
    other.reason == reason &&
    other.requests == requests;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (action == null ? 0 : action!.hashCode) +
    (cred == null ? 0 : cred!.hashCode) +
    (failures == null ? 0 : failures!.hashCode) +
    (heldUntil == null ? 0 : heldUntil!.hashCode) +
    (paths == null ? 0 : paths!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (requests == null ? 0 : requests!.hashCode);

  @override
  String toString() => 'TrafficCaller[action=$action, cred=$cred, failures=$failures, heldUntil=$heldUntil, paths=$paths, reason=$reason, requests=$requests]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
    if (this.cred != null) {
      json[r'cred'] = this.cred;
    } else {
      json[r'cred'] = null;
    }
    if (this.failures != null) {
      json[r'failures'] = this.failures;
    } else {
      json[r'failures'] = null;
    }
    if (this.heldUntil != null) {
      json[r'held_until'] = this.heldUntil;
    } else {
      json[r'held_until'] = null;
    }
    if (this.paths != null) {
      json[r'paths'] = this.paths;
    } else {
      json[r'paths'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    if (this.requests != null) {
      json[r'requests'] = this.requests;
    } else {
      json[r'requests'] = null;
    }
    return json;
  }

  /// Returns a new [TrafficCaller] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrafficCaller? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrafficCaller[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrafficCaller[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrafficCaller(
        action: mapValueOfType<String>(json, r'action'),
        cred: mapValueOfType<String>(json, r'cred'),
        failures: mapValueOfType<int>(json, r'failures'),
        heldUntil: mapValueOfType<int>(json, r'held_until'),
        paths: mapValueOfType<int>(json, r'paths'),
        reason: mapValueOfType<String>(json, r'reason'),
        requests: mapValueOfType<int>(json, r'requests'),
      );
    }
    return null;
  }

  static List<TrafficCaller> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrafficCaller>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrafficCaller.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrafficCaller> mapFromJson(dynamic json) {
    final map = <String, TrafficCaller>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrafficCaller.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrafficCaller-objects as value to a dart map
  static Map<String, List<TrafficCaller>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrafficCaller>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrafficCaller.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

