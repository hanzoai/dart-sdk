//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ApprovePairingIn {
  /// Returns a new [ApprovePairingIn] instance.
  ApprovePairingIn({
    this.channel,
    this.code,
  });
  /// Channel is the transport the request came in on: discord, slack, teams, telegram or whatsapp.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channel;

  /// Code is the pairing code from GET /v1/channels/pairing. It is a capability: holding it is what authorises the approval, alongside org admin.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApprovePairingIn &&
    other.channel == channel &&
    other.code == code;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (channel == null ? 0 : channel!.hashCode) +
    (code == null ? 0 : code!.hashCode);

  @override
  String toString() => 'ApprovePairingIn[channel=$channel, code=$code]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.channel != null) {
      json[r'channel'] = this.channel;
    } else {
      json[r'channel'] = null;
    }
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    return json;
  }

  /// Returns a new [ApprovePairingIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApprovePairingIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ApprovePairingIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ApprovePairingIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ApprovePairingIn(
        channel: mapValueOfType<String>(json, r'channel'),
        code: mapValueOfType<String>(json, r'code'),
      );
    }
    return null;
  }

  static List<ApprovePairingIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApprovePairingIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApprovePairingIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApprovePairingIn> mapFromJson(dynamic json) {
    final map = <String, ApprovePairingIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApprovePairingIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApprovePairingIn-objects as value to a dart map
  static Map<String, List<ApprovePairingIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApprovePairingIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApprovePairingIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

