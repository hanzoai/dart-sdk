//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DeviceStartOut {
  /// Returns a new [DeviceStartOut] instance.
  DeviceStartOut({
    this.expiresAt,
    this.flow,
    this.interval,
    this.userCode,
    this.verifyUrl,
  });
  /// ExpiresAt is when the flow dies, RFC 3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? expiresAt;

  /// Flow is the id to poll with.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? flow;

  /// Interval is the seconds to wait between polls.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? interval;

  /// UserCode is the short code the user types at VerifyURL.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userCode;

  /// VerifyURL is the page the user opens to enter UserCode.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? verifyUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeviceStartOut &&
    other.expiresAt == expiresAt &&
    other.flow == flow &&
    other.interval == interval &&
    other.userCode == userCode &&
    other.verifyUrl == verifyUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (flow == null ? 0 : flow!.hashCode) +
    (interval == null ? 0 : interval!.hashCode) +
    (userCode == null ? 0 : userCode!.hashCode) +
    (verifyUrl == null ? 0 : verifyUrl!.hashCode);

  @override
  String toString() => 'DeviceStartOut[expiresAt=$expiresAt, flow=$flow, interval=$interval, userCode=$userCode, verifyUrl=$verifyUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt;
    } else {
      json[r'expiresAt'] = null;
    }
    if (this.flow != null) {
      json[r'flow'] = this.flow;
    } else {
      json[r'flow'] = null;
    }
    if (this.interval != null) {
      json[r'interval'] = this.interval;
    } else {
      json[r'interval'] = null;
    }
    if (this.userCode != null) {
      json[r'userCode'] = this.userCode;
    } else {
      json[r'userCode'] = null;
    }
    if (this.verifyUrl != null) {
      json[r'verifyUrl'] = this.verifyUrl;
    } else {
      json[r'verifyUrl'] = null;
    }
    return json;
  }

  /// Returns a new [DeviceStartOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeviceStartOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeviceStartOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeviceStartOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeviceStartOut(
        expiresAt: mapValueOfType<String>(json, r'expiresAt'),
        flow: mapValueOfType<String>(json, r'flow'),
        interval: mapValueOfType<int>(json, r'interval'),
        userCode: mapValueOfType<String>(json, r'userCode'),
        verifyUrl: mapValueOfType<String>(json, r'verifyUrl'),
      );
    }
    return null;
  }

  static List<DeviceStartOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeviceStartOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeviceStartOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeviceStartOut> mapFromJson(dynamic json) {
    final map = <String, DeviceStartOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeviceStartOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeviceStartOut-objects as value to a dart map
  static Map<String, List<DeviceStartOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeviceStartOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeviceStartOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

