//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProjectsDomainsBind {
  /// Returns a new [ProjectsDomainsBind] instance.
  ProjectsDomainsBind({
    this.domains = const [],
    this.slug,
  });
  /// Domains are the custom hostnames to attach, in order. An empty list is a 400 rather than a clear — releasing a host is its own call.
  List<String> domains;

  /// Slug is the site the hosts attach to, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slug;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectsDomainsBind &&
    _deepEquality.equals(other.domains, domains) &&
    other.slug == slug;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domains.hashCode) +
    (slug == null ? 0 : slug!.hashCode);

  @override
  String toString() => 'ProjectsDomainsBind[domains=$domains, slug=$slug]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'domains'] = this.domains;
    if (this.slug != null) {
      json[r'slug'] = this.slug;
    } else {
      json[r'slug'] = null;
    }
    return json;
  }

  /// Returns a new [ProjectsDomainsBind] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectsDomainsBind? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectsDomainsBind[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectsDomainsBind[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectsDomainsBind(
        domains: json[r'domains'] is Iterable
            ? (json[r'domains'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        slug: mapValueOfType<String>(json, r'slug'),
      );
    }
    return null;
  }

  static List<ProjectsDomainsBind> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectsDomainsBind>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectsDomainsBind.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectsDomainsBind> mapFromJson(dynamic json) {
    final map = <String, ProjectsDomainsBind>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectsDomainsBind.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectsDomainsBind-objects as value to a dart map
  static Map<String, List<ProjectsDomainsBind>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectsDomainsBind>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectsDomainsBind.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

