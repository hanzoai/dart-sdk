//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11ySignalConnectionStatus {
  /// Returns a new [O11ySignalConnectionStatus] instance.
  O11ySignalConnectionStatus({
    this.lastReceivedFrom,
    this.lastReceivedTsMs,
  });

  /// resource identifier
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastReceivedFrom;

  /// epoch milliseconds
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lastReceivedTsMs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11ySignalConnectionStatus &&
    other.lastReceivedFrom == lastReceivedFrom &&
    other.lastReceivedTsMs == lastReceivedTsMs;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (lastReceivedFrom == null ? 0 : lastReceivedFrom!.hashCode) +
    (lastReceivedTsMs == null ? 0 : lastReceivedTsMs!.hashCode);

  @override
  String toString() => 'O11ySignalConnectionStatus[lastReceivedFrom=$lastReceivedFrom, lastReceivedTsMs=$lastReceivedTsMs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.lastReceivedFrom != null) {
      json[r'last_received_from'] = this.lastReceivedFrom;
    } else {
      json[r'last_received_from'] = null;
    }
    if (this.lastReceivedTsMs != null) {
      json[r'last_received_ts_ms'] = this.lastReceivedTsMs;
    } else {
      json[r'last_received_ts_ms'] = null;
    }
    return json;
  }

  /// Returns a new [O11ySignalConnectionStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11ySignalConnectionStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11ySignalConnectionStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11ySignalConnectionStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11ySignalConnectionStatus(
        lastReceivedFrom: mapValueOfType<String>(json, r'last_received_from'),
        lastReceivedTsMs: mapValueOfType<int>(json, r'last_received_ts_ms'),
      );
    }
    return null;
  }

  static List<O11ySignalConnectionStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11ySignalConnectionStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11ySignalConnectionStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11ySignalConnectionStatus> mapFromJson(dynamic json) {
    final map = <String, O11ySignalConnectionStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11ySignalConnectionStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11ySignalConnectionStatus-objects as value to a dart map
  static Map<String, List<O11ySignalConnectionStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11ySignalConnectionStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11ySignalConnectionStatus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

