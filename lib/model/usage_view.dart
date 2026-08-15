//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class UsageView {
  /// Returns a new [UsageView] instance.
  UsageView({
    this.org,
    this.repos = const [],
    this.totalBytes,
  });

  /// Org the rollup is for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  /// Repos is every repo the org owns, across every project sub-scope.
  List<UsageRepo> repos;

  /// TotalBytes is the sum over Repos — the org's whole git footprint.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalBytes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UsageView &&
    other.org == org &&
    _deepEquality.equals(other.repos, repos) &&
    other.totalBytes == totalBytes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (org == null ? 0 : org!.hashCode) +
    (repos.hashCode) +
    (totalBytes == null ? 0 : totalBytes!.hashCode);

  @override
  String toString() => 'UsageView[org=$org, repos=$repos, totalBytes=$totalBytes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
      json[r'repos'] = this.repos;
    if (this.totalBytes != null) {
      json[r'totalBytes'] = this.totalBytes;
    } else {
      json[r'totalBytes'] = null;
    }
    return json;
  }

  /// Returns a new [UsageView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UsageView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UsageView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UsageView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UsageView(
        org: mapValueOfType<String>(json, r'org'),
        repos: UsageRepo.listFromJson(json[r'repos']),
        totalBytes: mapValueOfType<int>(json, r'totalBytes'),
      );
    }
    return null;
  }

  static List<UsageView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UsageView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UsageView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UsageView> mapFromJson(dynamic json) {
    final map = <String, UsageView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UsageView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UsageView-objects as value to a dart map
  static Map<String, List<UsageView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UsageView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UsageView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

