//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DevicePollOut {
  /// Returns a new [DevicePollOut] instance.
  DevicePollOut({
    this.connector,
    this.interval,
    this.status,
  });

  /// Connection is the connected connector. Present only on \"connected\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ConnView? connector;

  /// Interval is the seconds to wait before the next poll. Present only while pending, and it may rise when the provider asks the client to slow down.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? interval;

  /// Status is the flow's state. \"pending\" means poll again after Interval.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DevicePollOut &&
    other.connector == connector &&
    other.interval == interval &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (connector == null ? 0 : connector!.hashCode) +
    (interval == null ? 0 : interval!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'DevicePollOut[connector=$connector, interval=$interval, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.connector != null) {
      json[r'connector'] = this.connector;
    } else {
      json[r'connector'] = null;
    }
    if (this.interval != null) {
      json[r'interval'] = this.interval;
    } else {
      json[r'interval'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [DevicePollOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DevicePollOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DevicePollOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DevicePollOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DevicePollOut(
        connector: ConnView.fromJson(json[r'connector']),
        interval: mapValueOfType<int>(json, r'interval'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<DevicePollOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePollOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePollOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DevicePollOut> mapFromJson(dynamic json) {
    final map = <String, DevicePollOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DevicePollOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DevicePollOut-objects as value to a dart map
  static Map<String, List<DevicePollOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DevicePollOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DevicePollOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

