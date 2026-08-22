//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProjectsDomains {
  /// Returns a new [ProjectsDomains] instance.
  ProjectsDomains({
    this.claims = const [],
    this.domains = const [],
    this.org,
    this.slug,
  });
  /// Claims is one row per host — live, or pending with the DNS records it still owes.
  List<ProjectsDomain> claims;

  /// Domains are the hostnames that are VERIFIED and routing right now.
  List<String> domains;

  /// Org is the organisation that owns the site.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  /// Slug is the site the panel belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slug;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectsDomains &&
    _deepEquality.equals(other.claims, claims) &&
    _deepEquality.equals(other.domains, domains) &&
    other.org == org &&
    other.slug == slug;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (claims.hashCode) +
    (domains.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (slug == null ? 0 : slug!.hashCode);

  @override
  String toString() => 'ProjectsDomains[claims=$claims, domains=$domains, org=$org, slug=$slug]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'claims'] = this.claims;
      json[r'domains'] = this.domains;
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.slug != null) {
      json[r'slug'] = this.slug;
    } else {
      json[r'slug'] = null;
    }
    return json;
  }

  /// Returns a new [ProjectsDomains] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectsDomains? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectsDomains[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectsDomains[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectsDomains(
        claims: ProjectsDomain.listFromJson(json[r'claims']),
        domains: json[r'domains'] is Iterable
            ? (json[r'domains'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        org: mapValueOfType<String>(json, r'org'),
        slug: mapValueOfType<String>(json, r'slug'),
      );
    }
    return null;
  }

  static List<ProjectsDomains> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectsDomains>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectsDomains.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectsDomains> mapFromJson(dynamic json) {
    final map = <String, ProjectsDomains>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectsDomains.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectsDomains-objects as value to a dart map
  static Map<String, List<ProjectsDomains>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectsDomains>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectsDomains.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

