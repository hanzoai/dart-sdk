//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AffiliateData {
  /// Returns a new [AffiliateData] instance.
  AffiliateData({
    this.affiliate,
  });

  /// Affiliate is the row as it stands AFTER the action that returned it. Its referredCount is 0 here: these single-affiliate answers do not run the count.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AdminAffiliateView? affiliate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AffiliateData &&
    other.affiliate == affiliate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (affiliate == null ? 0 : affiliate!.hashCode);

  @override
  String toString() => 'AffiliateData[affiliate=$affiliate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.affiliate != null) {
      json[r'affiliate'] = this.affiliate;
    } else {
      json[r'affiliate'] = null;
    }
    return json;
  }

  /// Returns a new [AffiliateData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AffiliateData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AffiliateData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AffiliateData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AffiliateData(
        affiliate: AdminAffiliateView.fromJson(json[r'affiliate']),
      );
    }
    return null;
  }

  static List<AffiliateData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AffiliateData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AffiliateData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AffiliateData> mapFromJson(dynamic json) {
    final map = <String, AffiliateData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AffiliateData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AffiliateData-objects as value to a dart map
  static Map<String, List<AffiliateData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AffiliateData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AffiliateData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

