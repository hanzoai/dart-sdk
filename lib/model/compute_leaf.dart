//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ComputeLeaf {
  /// Returns a new [ComputeLeaf] instance.
  ComputeLeaf({
    this.active,
    this.app,
    this.kind,
    this.lastTs,
    this.machines,
    this.org,
    this.project,
    this.spendCents,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? active;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? app;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastTs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? machines;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? spendCents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ComputeLeaf &&
    other.active == active &&
    other.app == app &&
    other.kind == kind &&
    other.lastTs == lastTs &&
    other.machines == machines &&
    other.org == org &&
    other.project == project &&
    other.spendCents == spendCents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (active == null ? 0 : active!.hashCode) +
    (app == null ? 0 : app!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (lastTs == null ? 0 : lastTs!.hashCode) +
    (machines == null ? 0 : machines!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (spendCents == null ? 0 : spendCents!.hashCode);

  @override
  String toString() => 'ComputeLeaf[active=$active, app=$app, kind=$kind, lastTs=$lastTs, machines=$machines, org=$org, project=$project, spendCents=$spendCents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.app != null) {
      json[r'app'] = this.app;
    } else {
      json[r'app'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.lastTs != null) {
      json[r'lastTs'] = this.lastTs;
    } else {
      json[r'lastTs'] = null;
    }
    if (this.machines != null) {
      json[r'machines'] = this.machines;
    } else {
      json[r'machines'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    if (this.spendCents != null) {
      json[r'spendCents'] = this.spendCents;
    } else {
      json[r'spendCents'] = null;
    }
    return json;
  }

  /// Returns a new [ComputeLeaf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ComputeLeaf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ComputeLeaf[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ComputeLeaf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ComputeLeaf(
        active: mapValueOfType<int>(json, r'active'),
        app: mapValueOfType<String>(json, r'app'),
        kind: mapValueOfType<String>(json, r'kind'),
        lastTs: mapValueOfType<String>(json, r'lastTs'),
        machines: mapValueOfType<int>(json, r'machines'),
        org: mapValueOfType<String>(json, r'org'),
        project: mapValueOfType<String>(json, r'project'),
        spendCents: mapValueOfType<int>(json, r'spendCents'),
      );
    }
    return null;
  }

  static List<ComputeLeaf> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ComputeLeaf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ComputeLeaf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ComputeLeaf> mapFromJson(dynamic json) {
    final map = <String, ComputeLeaf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ComputeLeaf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ComputeLeaf-objects as value to a dart map
  static Map<String, List<ComputeLeaf>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ComputeLeaf>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ComputeLeaf.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

