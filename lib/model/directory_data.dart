//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DirectoryData {
  /// Returns a new [DirectoryData] instance.
  DirectoryData({
    this.affiliates = const [],
    this.summary,
  });

  /// Affiliates is one row per affiliate across the whole fleet, ORG EXPOSED, oldest first and bounded by the request's limit.
  List<AdminAffiliateView> affiliates;

  /// Summary tallies exactly the rows above — not the whole table — so a limit that truncates the page truncates the tally with it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Totals? summary;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DirectoryData &&
    _deepEquality.equals(other.affiliates, affiliates) &&
    other.summary == summary;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (affiliates.hashCode) +
    (summary == null ? 0 : summary!.hashCode);

  @override
  String toString() => 'DirectoryData[affiliates=$affiliates, summary=$summary]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'affiliates'] = this.affiliates;
    if (this.summary != null) {
      json[r'summary'] = this.summary;
    } else {
      json[r'summary'] = null;
    }
    return json;
  }

  /// Returns a new [DirectoryData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DirectoryData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DirectoryData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DirectoryData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DirectoryData(
        affiliates: AdminAffiliateView.listFromJson(json[r'affiliates']),
        summary: Totals.fromJson(json[r'summary']),
      );
    }
    return null;
  }

  static List<DirectoryData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DirectoryData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DirectoryData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DirectoryData> mapFromJson(dynamic json) {
    final map = <String, DirectoryData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DirectoryData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DirectoryData-objects as value to a dart map
  static Map<String, List<DirectoryData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DirectoryData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DirectoryData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

