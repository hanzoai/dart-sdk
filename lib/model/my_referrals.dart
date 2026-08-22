//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class MyReferrals {
  /// Returns a new [MyReferrals] instance.
  MyReferrals({
    this.code,
    this.counts,
    this.link,
    this.referrals = const [],
  });
  /// Code is the org's STABLE referral code — a deterministic function of the org id, so it never changes and never has to be stored to be reproduced.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  /// Counts tallies this org's referrals by status.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StatusCounts? counts;

  /// Link is the shareable signup link carrying the code, on the brand's own host.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? link;

  /// Referrals is one row per org that signed up with this code.
  List<MyReferralView> referrals;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MyReferrals &&
    other.code == code &&
    other.counts == counts &&
    other.link == link &&
    _deepEquality.equals(other.referrals, referrals);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code == null ? 0 : code!.hashCode) +
    (counts == null ? 0 : counts!.hashCode) +
    (link == null ? 0 : link!.hashCode) +
    (referrals.hashCode);

  @override
  String toString() => 'MyReferrals[code=$code, counts=$counts, link=$link, referrals=$referrals]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.counts != null) {
      json[r'counts'] = this.counts;
    } else {
      json[r'counts'] = null;
    }
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
      json[r'referrals'] = this.referrals;
    return json;
  }

  /// Returns a new [MyReferrals] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MyReferrals? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MyReferrals[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MyReferrals[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MyReferrals(
        code: mapValueOfType<String>(json, r'code'),
        counts: StatusCounts.fromJson(json[r'counts']),
        link: mapValueOfType<String>(json, r'link'),
        referrals: MyReferralView.listFromJson(json[r'referrals']),
      );
    }
    return null;
  }

  static List<MyReferrals> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MyReferrals>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MyReferrals.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MyReferrals> mapFromJson(dynamic json) {
    final map = <String, MyReferrals>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MyReferrals.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MyReferrals-objects as value to a dart map
  static Map<String, List<MyReferrals>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MyReferrals>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MyReferrals.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

