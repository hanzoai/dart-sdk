//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LicensingReleaseList {
  /// Returns a new [LicensingReleaseList] instance.
  LicensingReleaseList({
    this.releases = const [],
  });
  /// Releases is the published releases, always an array and never null.
  List<LicensingRelease> releases;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicensingReleaseList &&
    _deepEquality.equals(other.releases, releases);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (releases.hashCode);

  @override
  String toString() => 'LicensingReleaseList[releases=$releases]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'releases'] = this.releases;
    return json;
  }

  /// Returns a new [LicensingReleaseList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicensingReleaseList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LicensingReleaseList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LicensingReleaseList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LicensingReleaseList(
        releases: LicensingRelease.listFromJson(json[r'releases']),
      );
    }
    return null;
  }

  static List<LicensingReleaseList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicensingReleaseList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicensingReleaseList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicensingReleaseList> mapFromJson(dynamic json) {
    final map = <String, LicensingReleaseList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicensingReleaseList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicensingReleaseList-objects as value to a dart map
  static Map<String, List<LicensingReleaseList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicensingReleaseList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicensingReleaseList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

