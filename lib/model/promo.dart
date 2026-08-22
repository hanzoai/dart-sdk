//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Promo {
  /// Returns a new [Promo] instance.
  Promo({
    this.active,
    this.code,
    this.createdAt,
    this.description,
    this.maxRedemptions,
    this.percentOff,
    this.plans,
    this.teamSeatCap,
  });
  /// Active is false for a promo that is no longer offered; an inactive promo quotes as ineligible and refuses to redeem.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? active;

  /// Code is the promo id, e.g. \"first1000\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  /// CreatedAt is unix seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// Description is the human-readable offer.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// MaxRedemptions is the hard fleet-wide cap; the redemption past it is declined.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxRedemptions;

  /// PercentOff is the discount applied to ONE month's list price.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? percentOff;

  /// Plans is the csv of eligible plan ids (\"pro,max,team\").
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? plans;

  /// TeamSeatCap is how many Team seats bill at the promo rate; seats beyond it bill at list.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? teamSeatCap;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Promo &&
    other.active == active &&
    other.code == code &&
    other.createdAt == createdAt &&
    other.description == description &&
    other.maxRedemptions == maxRedemptions &&
    other.percentOff == percentOff &&
    other.plans == plans &&
    other.teamSeatCap == teamSeatCap;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (active == null ? 0 : active!.hashCode) +
    (code == null ? 0 : code!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (maxRedemptions == null ? 0 : maxRedemptions!.hashCode) +
    (percentOff == null ? 0 : percentOff!.hashCode) +
    (plans == null ? 0 : plans!.hashCode) +
    (teamSeatCap == null ? 0 : teamSeatCap!.hashCode);

  @override
  String toString() => 'Promo[active=$active, code=$code, createdAt=$createdAt, description=$description, maxRedemptions=$maxRedemptions, percentOff=$percentOff, plans=$plans, teamSeatCap=$teamSeatCap]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.maxRedemptions != null) {
      json[r'maxRedemptions'] = this.maxRedemptions;
    } else {
      json[r'maxRedemptions'] = null;
    }
    if (this.percentOff != null) {
      json[r'percentOff'] = this.percentOff;
    } else {
      json[r'percentOff'] = null;
    }
    if (this.plans != null) {
      json[r'plans'] = this.plans;
    } else {
      json[r'plans'] = null;
    }
    if (this.teamSeatCap != null) {
      json[r'teamSeatCap'] = this.teamSeatCap;
    } else {
      json[r'teamSeatCap'] = null;
    }
    return json;
  }

  /// Returns a new [Promo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Promo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Promo[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Promo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Promo(
        active: mapValueOfType<bool>(json, r'active'),
        code: mapValueOfType<String>(json, r'code'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        description: mapValueOfType<String>(json, r'description'),
        maxRedemptions: mapValueOfType<int>(json, r'maxRedemptions'),
        percentOff: mapValueOfType<int>(json, r'percentOff'),
        plans: mapValueOfType<String>(json, r'plans'),
        teamSeatCap: mapValueOfType<int>(json, r'teamSeatCap'),
      );
    }
    return null;
  }

  static List<Promo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Promo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Promo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Promo> mapFromJson(dynamic json) {
    final map = <String, Promo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Promo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Promo-objects as value to a dart map
  static Map<String, List<Promo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Promo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Promo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

