//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Claim {
  /// Returns a new [Claim] instance.
  Claim({
    this.created,
    this.org,
    this.repo,
  });
  /// Created reports whether this call recorded a new claim (201) or found an existing one (200).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? created;

  /// Org is the verified owner-wide claim, present when an owner was claimed. It covers every repository the author publishes under that owner.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OrgView? org;

  /// Repo is the verified repository claim, present when a repository was claimed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AuthorRepo? repo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Claim &&
    other.created == created &&
    other.org == org &&
    other.repo == repo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created == null ? 0 : created!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (repo == null ? 0 : repo!.hashCode);

  @override
  String toString() => 'Claim[created=$created, org=$org, repo=$repo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    return json;
  }

  /// Returns a new [Claim] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Claim? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Claim[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Claim[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Claim(
        created: mapValueOfType<bool>(json, r'created'),
        org: OrgView.fromJson(json[r'org']),
        repo: AuthorRepo.fromJson(json[r'repo']),
      );
    }
    return null;
  }

  static List<Claim> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Claim>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Claim.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Claim> mapFromJson(dynamic json) {
    final map = <String, Claim>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Claim.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Claim-objects as value to a dart map
  static Map<String, List<Claim>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Claim>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Claim.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

