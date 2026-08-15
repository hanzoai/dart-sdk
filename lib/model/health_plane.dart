//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class HealthPlane {
  /// Returns a new [HealthPlane] instance.
  HealthPlane({
    this.bus,
    this.ready,
    this.reason,
    this.stream,
  });

  /// Bus is the address this process reaches the plane at.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bus;

  /// Ready reports whether an ingest would succeed right now. False is a 503.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ready;

  /// Reason is the plane's own failure text, present only when Ready is false.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  /// Stream is the JetStream stream every signal lands on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stream;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HealthPlane &&
    other.bus == bus &&
    other.ready == ready &&
    other.reason == reason &&
    other.stream == stream;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bus == null ? 0 : bus!.hashCode) +
    (ready == null ? 0 : ready!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (stream == null ? 0 : stream!.hashCode);

  @override
  String toString() => 'HealthPlane[bus=$bus, ready=$ready, reason=$reason, stream=$stream]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.bus != null) {
      json[r'bus'] = this.bus;
    } else {
      json[r'bus'] = null;
    }
    if (this.ready != null) {
      json[r'ready'] = this.ready;
    } else {
      json[r'ready'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    if (this.stream != null) {
      json[r'stream'] = this.stream;
    } else {
      json[r'stream'] = null;
    }
    return json;
  }

  /// Returns a new [HealthPlane] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HealthPlane? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HealthPlane[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HealthPlane[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HealthPlane(
        bus: mapValueOfType<String>(json, r'bus'),
        ready: mapValueOfType<bool>(json, r'ready'),
        reason: mapValueOfType<String>(json, r'reason'),
        stream: mapValueOfType<String>(json, r'stream'),
      );
    }
    return null;
  }

  static List<HealthPlane> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HealthPlane>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HealthPlane.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HealthPlane> mapFromJson(dynamic json) {
    final map = <String, HealthPlane>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HealthPlane.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HealthPlane-objects as value to a dart map
  static Map<String, List<HealthPlane>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HealthPlane>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HealthPlane.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

