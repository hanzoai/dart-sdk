//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Funnel {
  /// Returns a new [Funnel] instance.
  Funnel({
    this.convertedOrgs,
    this.ratePct,
    this.referredOrgs,
  });

  /// ConvertedOrgs is how many distinct referred orgs have produced positive commission at least once — a referral that actually spent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? convertedOrgs;

  /// RatePct is convertedOrgs over referredOrgs as a PERCENTAGE, 0–100, and the one non-integer figure on this board. It is 0 when nothing has been referred yet, not undefined.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? ratePct;

  /// ReferredOrgs is how many attribution edges exist fleet-wide — one per referred org, first-touch, so it is also the count of distinct referred orgs.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? referredOrgs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Funnel &&
    other.convertedOrgs == convertedOrgs &&
    other.ratePct == ratePct &&
    other.referredOrgs == referredOrgs;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (convertedOrgs == null ? 0 : convertedOrgs!.hashCode) +
    (ratePct == null ? 0 : ratePct!.hashCode) +
    (referredOrgs == null ? 0 : referredOrgs!.hashCode);

  @override
  String toString() => 'Funnel[convertedOrgs=$convertedOrgs, ratePct=$ratePct, referredOrgs=$referredOrgs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.convertedOrgs != null) {
      json[r'convertedOrgs'] = this.convertedOrgs;
    } else {
      json[r'convertedOrgs'] = null;
    }
    if (this.ratePct != null) {
      json[r'ratePct'] = this.ratePct;
    } else {
      json[r'ratePct'] = null;
    }
    if (this.referredOrgs != null) {
      json[r'referredOrgs'] = this.referredOrgs;
    } else {
      json[r'referredOrgs'] = null;
    }
    return json;
  }

  /// Returns a new [Funnel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Funnel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Funnel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Funnel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Funnel(
        convertedOrgs: mapValueOfType<int>(json, r'convertedOrgs'),
        ratePct: num.parse('${json[r'ratePct']}'),
        referredOrgs: mapValueOfType<int>(json, r'referredOrgs'),
      );
    }
    return null;
  }

  static List<Funnel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Funnel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Funnel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Funnel> mapFromJson(dynamic json) {
    final map = <String, Funnel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Funnel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Funnel-objects as value to a dart map
  static Map<String, List<Funnel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Funnel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Funnel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

