//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Suppression {
  /// Returns a new [Suppression] instance.
  Suppression({
    this.address,
    this.channel,
    this.createdAt,
    this.reason,
  });
  /// Address is the recipient, normalized (lower-cased, trimmed) so an opt-out cannot be slipped past on a case or whitespace difference. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? address;

  /// Channel is the surface opted out of: email, sms, social, meta, google or tiktok. Empty means email. Opting out of one leaves the others reachable.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channel;

  /// CreatedAt is unix seconds, server-assigned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// Reason is a free-text note, capped at 1024 bytes. The public one-click endpoint records \"one-click unsubscribe\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Suppression &&
    other.address == address &&
    other.channel == channel &&
    other.createdAt == createdAt &&
    other.reason == reason;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (address == null ? 0 : address!.hashCode) +
    (channel == null ? 0 : channel!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (reason == null ? 0 : reason!.hashCode);

  @override
  String toString() => 'Suppression[address=$address, channel=$channel, createdAt=$createdAt, reason=$reason]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.channel != null) {
      json[r'channel'] = this.channel;
    } else {
      json[r'channel'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    return json;
  }

  /// Returns a new [Suppression] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Suppression? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Suppression[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Suppression[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Suppression(
        address: mapValueOfType<String>(json, r'address'),
        channel: mapValueOfType<String>(json, r'channel'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        reason: mapValueOfType<String>(json, r'reason'),
      );
    }
    return null;
  }

  static List<Suppression> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Suppression>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Suppression.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Suppression> mapFromJson(dynamic json) {
    final map = <String, Suppression>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Suppression.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Suppression-objects as value to a dart map
  static Map<String, List<Suppression>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Suppression>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Suppression.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

