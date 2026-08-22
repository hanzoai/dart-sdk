//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PlanInfo {
  /// Returns a new [PlanInfo] instance.
  PlanInfo({
    this.active,
    this.guestLimit,
    this.guests,
    this.plan,
    this.seats,
    this.upgradeUrl,
  });
  /// Active is whether that plan's entitlement is live.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? active;

  /// GuestLimit is the plan's team.guests cap, when the plan carries one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? guestLimit;

  /// Guests is how many of those seats are guests.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? guests;

  /// Plan is the licensed plan id, empty when it cannot be resolved here — an honest dash on the page, never a fabricated tier.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? plan;

  /// Seats is the org's distinct active human members.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? seats;

  /// UpgradeURL is where the page sends a caller who wants a bigger plan.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? upgradeUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PlanInfo &&
    other.active == active &&
    other.guestLimit == guestLimit &&
    other.guests == guests &&
    other.plan == plan &&
    other.seats == seats &&
    other.upgradeUrl == upgradeUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (active == null ? 0 : active!.hashCode) +
    (guestLimit == null ? 0 : guestLimit!.hashCode) +
    (guests == null ? 0 : guests!.hashCode) +
    (plan == null ? 0 : plan!.hashCode) +
    (seats == null ? 0 : seats!.hashCode) +
    (upgradeUrl == null ? 0 : upgradeUrl!.hashCode);

  @override
  String toString() => 'PlanInfo[active=$active, guestLimit=$guestLimit, guests=$guests, plan=$plan, seats=$seats, upgradeUrl=$upgradeUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.guestLimit != null) {
      json[r'guestLimit'] = this.guestLimit;
    } else {
      json[r'guestLimit'] = null;
    }
    if (this.guests != null) {
      json[r'guests'] = this.guests;
    } else {
      json[r'guests'] = null;
    }
    if (this.plan != null) {
      json[r'plan'] = this.plan;
    } else {
      json[r'plan'] = null;
    }
    if (this.seats != null) {
      json[r'seats'] = this.seats;
    } else {
      json[r'seats'] = null;
    }
    if (this.upgradeUrl != null) {
      json[r'upgradeUrl'] = this.upgradeUrl;
    } else {
      json[r'upgradeUrl'] = null;
    }
    return json;
  }

  /// Returns a new [PlanInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PlanInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PlanInfo[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PlanInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PlanInfo(
        active: mapValueOfType<bool>(json, r'active'),
        guestLimit: mapValueOfType<int>(json, r'guestLimit'),
        guests: mapValueOfType<int>(json, r'guests'),
        plan: mapValueOfType<String>(json, r'plan'),
        seats: mapValueOfType<int>(json, r'seats'),
        upgradeUrl: mapValueOfType<String>(json, r'upgradeUrl'),
      );
    }
    return null;
  }

  static List<PlanInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PlanInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlanInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PlanInfo> mapFromJson(dynamic json) {
    final map = <String, PlanInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PlanInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PlanInfo-objects as value to a dart map
  static Map<String, List<PlanInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PlanInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PlanInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

