//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IndexVersion {
  /// Returns a new [IndexVersion] instance.
  IndexVersion({
    this.commitDate,
    this.commitSha,
    this.pkgVersion,
  });
  /// CommitDate is empty here: this surface is a dialect implementation, not a build of Meilisearch, so there is no upstream commit to date.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? commitDate;

  /// CommitSha names the implementation (`hanzo-cloud`) rather than a build hash, so a client logging it records which server answered instead of implying a Meilisearch release.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? commitSha;

  /// PkgVersion is this dialect implementation's own version.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pkgVersion;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IndexVersion &&
    other.commitDate == commitDate &&
    other.commitSha == commitSha &&
    other.pkgVersion == pkgVersion;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (commitDate == null ? 0 : commitDate!.hashCode) +
    (commitSha == null ? 0 : commitSha!.hashCode) +
    (pkgVersion == null ? 0 : pkgVersion!.hashCode);

  @override
  String toString() => 'IndexVersion[commitDate=$commitDate, commitSha=$commitSha, pkgVersion=$pkgVersion]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.commitDate != null) {
      json[r'commitDate'] = this.commitDate;
    } else {
      json[r'commitDate'] = null;
    }
    if (this.commitSha != null) {
      json[r'commitSha'] = this.commitSha;
    } else {
      json[r'commitSha'] = null;
    }
    if (this.pkgVersion != null) {
      json[r'pkgVersion'] = this.pkgVersion;
    } else {
      json[r'pkgVersion'] = null;
    }
    return json;
  }

  /// Returns a new [IndexVersion] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndexVersion? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IndexVersion[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IndexVersion[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndexVersion(
        commitDate: mapValueOfType<String>(json, r'commitDate'),
        commitSha: mapValueOfType<String>(json, r'commitSha'),
        pkgVersion: mapValueOfType<String>(json, r'pkgVersion'),
      );
    }
    return null;
  }

  static List<IndexVersion> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IndexVersion>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndexVersion.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndexVersion> mapFromJson(dynamic json) {
    final map = <String, IndexVersion>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndexVersion.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndexVersion-objects as value to a dart map
  static Map<String, List<IndexVersion>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IndexVersion>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IndexVersion.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

