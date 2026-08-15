//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProjectsDomain {
  /// Returns a new [ProjectsDomain] instance.
  ProjectsDomain({
    this.createdAt,
    this.detail,
    this.host,
    this.records = const [],
    this.status,
    this.url,
    this.verified,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? detail;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? host;

  List<DnsRecord> records;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? verified;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectsDomain &&
    other.createdAt == createdAt &&
    other.detail == detail &&
    other.host == host &&
    _deepEquality.equals(other.records, records) &&
    other.status == status &&
    other.url == url &&
    other.verified == verified;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (detail == null ? 0 : detail!.hashCode) +
    (host == null ? 0 : host!.hashCode) +
    (records.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (verified == null ? 0 : verified!.hashCode);

  @override
  String toString() => 'ProjectsDomain[createdAt=$createdAt, detail=$detail, host=$host, records=$records, status=$status, url=$url, verified=$verified]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.detail != null) {
      json[r'detail'] = this.detail;
    } else {
      json[r'detail'] = null;
    }
    if (this.host != null) {
      json[r'host'] = this.host;
    } else {
      json[r'host'] = null;
    }
      json[r'records'] = this.records;
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.verified != null) {
      json[r'verified'] = this.verified;
    } else {
      json[r'verified'] = null;
    }
    return json;
  }

  /// Returns a new [ProjectsDomain] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectsDomain? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectsDomain[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectsDomain[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectsDomain(
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        detail: mapValueOfType<String>(json, r'detail'),
        host: mapValueOfType<String>(json, r'host'),
        records: DnsRecord.listFromJson(json[r'records']),
        status: mapValueOfType<String>(json, r'status'),
        url: mapValueOfType<String>(json, r'url'),
        verified: mapValueOfType<bool>(json, r'verified'),
      );
    }
    return null;
  }

  static List<ProjectsDomain> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectsDomain>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectsDomain.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectsDomain> mapFromJson(dynamic json) {
    final map = <String, ProjectsDomain>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectsDomain.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectsDomain-objects as value to a dart map
  static Map<String, List<ProjectsDomain>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectsDomain>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectsDomain.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

