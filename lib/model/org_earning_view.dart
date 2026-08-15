//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class OrgEarningView {
  /// Returns a new [OrgEarningView] instance.
  OrgEarningView({
    this.commissionCents,
    this.referredOrg,
  });

  /// CommissionCents is what the caller earned from that org across ALL periods, in cents. Deliberately the caller's own share and nothing else: that org's spend and the margin on it are not restated here.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? commissionCents;

  /// ReferredOrg is the org slug this contribution came from — one the caller referred, directly or up to three levels down.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? referredOrg;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrgEarningView &&
    other.commissionCents == commissionCents &&
    other.referredOrg == referredOrg;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (commissionCents == null ? 0 : commissionCents!.hashCode) +
    (referredOrg == null ? 0 : referredOrg!.hashCode);

  @override
  String toString() => 'OrgEarningView[commissionCents=$commissionCents, referredOrg=$referredOrg]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.commissionCents != null) {
      json[r'commissionCents'] = this.commissionCents;
    } else {
      json[r'commissionCents'] = null;
    }
    if (this.referredOrg != null) {
      json[r'referredOrg'] = this.referredOrg;
    } else {
      json[r'referredOrg'] = null;
    }
    return json;
  }

  /// Returns a new [OrgEarningView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrgEarningView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrgEarningView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrgEarningView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrgEarningView(
        commissionCents: mapValueOfType<int>(json, r'commissionCents'),
        referredOrg: mapValueOfType<String>(json, r'referredOrg'),
      );
    }
    return null;
  }

  static List<OrgEarningView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrgEarningView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrgEarningView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrgEarningView> mapFromJson(dynamic json) {
    final map = <String, OrgEarningView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrgEarningView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrgEarningView-objects as value to a dart map
  static Map<String, List<OrgEarningView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrgEarningView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrgEarningView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

