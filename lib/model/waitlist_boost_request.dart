//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class WaitlistBoostRequest {
  /// Returns a new [WaitlistBoostRequest] instance.
  WaitlistBoostRequest({
    this.email,
    this.points,
    this.reason,
    this.refCode,
    this.waitlist,
  });

  /// Email identifies the entry to boost. Either this or RefCode is required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// Points is how many points to award. Must be positive — this seam exists to move someone UP toward the cutoff.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? points;

  /// Reason is the operator's justification. Not sent to the engine; it is recorded on the audit row, which is the point of asking for it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  /// RefCode identifies the entry by its referral code, when the email is unknown.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refCode;

  /// Waitlist is the waitlist slug the grant lands on. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? waitlist;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WaitlistBoostRequest &&
    other.email == email &&
    other.points == points &&
    other.reason == reason &&
    other.refCode == refCode &&
    other.waitlist == waitlist;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email == null ? 0 : email!.hashCode) +
    (points == null ? 0 : points!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (refCode == null ? 0 : refCode!.hashCode) +
    (waitlist == null ? 0 : waitlist!.hashCode);

  @override
  String toString() => 'WaitlistBoostRequest[email=$email, points=$points, reason=$reason, refCode=$refCode, waitlist=$waitlist]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.points != null) {
      json[r'points'] = this.points;
    } else {
      json[r'points'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    if (this.refCode != null) {
      json[r'refCode'] = this.refCode;
    } else {
      json[r'refCode'] = null;
    }
    if (this.waitlist != null) {
      json[r'waitlist'] = this.waitlist;
    } else {
      json[r'waitlist'] = null;
    }
    return json;
  }

  /// Returns a new [WaitlistBoostRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WaitlistBoostRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WaitlistBoostRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WaitlistBoostRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WaitlistBoostRequest(
        email: mapValueOfType<String>(json, r'email'),
        points: mapValueOfType<int>(json, r'points'),
        reason: mapValueOfType<String>(json, r'reason'),
        refCode: mapValueOfType<String>(json, r'refCode'),
        waitlist: mapValueOfType<String>(json, r'waitlist'),
      );
    }
    return null;
  }

  static List<WaitlistBoostRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WaitlistBoostRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WaitlistBoostRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WaitlistBoostRequest> mapFromJson(dynamic json) {
    final map = <String, WaitlistBoostRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WaitlistBoostRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WaitlistBoostRequest-objects as value to a dart map
  static Map<String, List<WaitlistBoostRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WaitlistBoostRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WaitlistBoostRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

