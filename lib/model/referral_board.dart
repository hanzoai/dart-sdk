//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ReferralBoard {
  /// Returns a new [ReferralBoard] instance.
  ReferralBoard({
    this.accrualByLevel,
    this.conversion,
    this.summary,
    this.topReferrers = const [],
  });

  /// AccrualByLevel splits the lifetime accrual across the three upline levels — how much of the liability comes from direct referrals versus the chain above.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LevelSplit? accrualByLevel;

  /// Conversion is the funnel: referred orgs against those that actually earned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Funnel? conversion;

  /// Summary is the fleet tally — population by status, and lifetime accrued, paid and still-owed commission.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Tally? summary;

  /// TopReferrers is the 25 affiliates with the most lifetime accrued commission, descending, orgs named.
  List<ReferrerRow> topReferrers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReferralBoard &&
    other.accrualByLevel == accrualByLevel &&
    other.conversion == conversion &&
    other.summary == summary &&
    _deepEquality.equals(other.topReferrers, topReferrers);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accrualByLevel == null ? 0 : accrualByLevel!.hashCode) +
    (conversion == null ? 0 : conversion!.hashCode) +
    (summary == null ? 0 : summary!.hashCode) +
    (topReferrers.hashCode);

  @override
  String toString() => 'ReferralBoard[accrualByLevel=$accrualByLevel, conversion=$conversion, summary=$summary, topReferrers=$topReferrers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accrualByLevel != null) {
      json[r'accrualByLevel'] = this.accrualByLevel;
    } else {
      json[r'accrualByLevel'] = null;
    }
    if (this.conversion != null) {
      json[r'conversion'] = this.conversion;
    } else {
      json[r'conversion'] = null;
    }
    if (this.summary != null) {
      json[r'summary'] = this.summary;
    } else {
      json[r'summary'] = null;
    }
      json[r'topReferrers'] = this.topReferrers;
    return json;
  }

  /// Returns a new [ReferralBoard] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReferralBoard? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReferralBoard[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReferralBoard[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReferralBoard(
        accrualByLevel: LevelSplit.fromJson(json[r'accrualByLevel']),
        conversion: Funnel.fromJson(json[r'conversion']),
        summary: Tally.fromJson(json[r'summary']),
        topReferrers: ReferrerRow.listFromJson(json[r'topReferrers']),
      );
    }
    return null;
  }

  static List<ReferralBoard> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReferralBoard>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReferralBoard.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReferralBoard> mapFromJson(dynamic json) {
    final map = <String, ReferralBoard>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReferralBoard.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReferralBoard-objects as value to a dart map
  static Map<String, List<ReferralBoard>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReferralBoard>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReferralBoard.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

