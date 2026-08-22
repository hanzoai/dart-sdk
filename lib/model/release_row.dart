//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ReleaseRow {
  /// Returns a new [ReleaseRow] instance.
  ReleaseRow({
    this.environment,
    this.id,
    this.name,
    this.releasedAt,
    this.status,
    this.version,
  });
  /// Environment is the deploy target the application names.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? environment;

  /// ID is the deployment's id — a release IS a deployment that reached the cluster.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Name is the application the release belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// ReleasedAt is when the deployment last changed, RFC3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? releasedAt;

  /// Status is deploying or live — the two states that mean released.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Version is the released image tag, or v<n> when the image carries none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReleaseRow &&
    other.environment == environment &&
    other.id == id &&
    other.name == name &&
    other.releasedAt == releasedAt &&
    other.status == status &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (environment == null ? 0 : environment!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (releasedAt == null ? 0 : releasedAt!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'ReleaseRow[environment=$environment, id=$id, name=$name, releasedAt=$releasedAt, status=$status, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.environment != null) {
      json[r'environment'] = this.environment;
    } else {
      json[r'environment'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.releasedAt != null) {
      json[r'releasedAt'] = this.releasedAt;
    } else {
      json[r'releasedAt'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [ReleaseRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReleaseRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReleaseRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReleaseRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReleaseRow(
        environment: mapValueOfType<String>(json, r'environment'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        releasedAt: mapValueOfType<String>(json, r'releasedAt'),
        status: mapValueOfType<String>(json, r'status'),
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<ReleaseRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReleaseRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReleaseRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReleaseRow> mapFromJson(dynamic json) {
    final map = <String, ReleaseRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReleaseRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReleaseRow-objects as value to a dart map
  static Map<String, List<ReleaseRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReleaseRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReleaseRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

