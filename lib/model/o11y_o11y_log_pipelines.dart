//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yLogPipelines {
  /// Returns a new [O11yO11yLogPipelines] instance.
  O11yO11yLogPipelines({
    this.config,
    this.createdAt,
    this.createdBy,
    this.createdByName,
    this.deployResult,
    this.deploySequence,
    this.deployStatus,
    this.elementType,
    this.history = const [],
    this.id,
    this.lastHash,
    this.orgId,
    this.pipelines = const [],
    this.updatedAt,
    this.updatedBy,
    this.version,
  });

  /// Config is the rendered collector config the version deployed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? config;

  /// CreatedAt is when the version was created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// CreatedBy is the id of who created the version.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdBy;

  /// CreatedByName is the display name of who created the version.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdByName;

  /// DeployResult is the deployment's outcome message.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deployResult;

  /// DeploySequence orders this deployment among the version's deployments.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deploySequence;

  /// DeployStatus is where the deployment stands, e.g. dirty, deploying, deployed, in_progress, failed, unknown.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deployStatus;

  /// ElementType is the config element this version carries — log_pipelines.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? elementType;

  /// History is the recent version history, newest first.
  List<O11yO11yLogConfigVersion> history;

  /// ID is the version record's id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// LastHash is the deployed config's hash.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastHash;

  /// OrgID is the org the version belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orgId;

  /// Pipelines are the version's pipelines, in order.
  List<O11yO11yLogPipeline> pipelines;

  /// UpdatedAt is when the version last changed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  /// UpdatedBy is the id of who last changed it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedBy;

  /// Version is the config version number.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yLogPipelines &&
    other.config == config &&
    other.createdAt == createdAt &&
    other.createdBy == createdBy &&
    other.createdByName == createdByName &&
    other.deployResult == deployResult &&
    other.deploySequence == deploySequence &&
    other.deployStatus == deployStatus &&
    other.elementType == elementType &&
    _deepEquality.equals(other.history, history) &&
    other.id == id &&
    other.lastHash == lastHash &&
    other.orgId == orgId &&
    _deepEquality.equals(other.pipelines, pipelines) &&
    other.updatedAt == updatedAt &&
    other.updatedBy == updatedBy &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (config == null ? 0 : config!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (createdBy == null ? 0 : createdBy!.hashCode) +
    (createdByName == null ? 0 : createdByName!.hashCode) +
    (deployResult == null ? 0 : deployResult!.hashCode) +
    (deploySequence == null ? 0 : deploySequence!.hashCode) +
    (deployStatus == null ? 0 : deployStatus!.hashCode) +
    (elementType == null ? 0 : elementType!.hashCode) +
    (history.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (lastHash == null ? 0 : lastHash!.hashCode) +
    (orgId == null ? 0 : orgId!.hashCode) +
    (pipelines.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (updatedBy == null ? 0 : updatedBy!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'O11yO11yLogPipelines[config=$config, createdAt=$createdAt, createdBy=$createdBy, createdByName=$createdByName, deployResult=$deployResult, deploySequence=$deploySequence, deployStatus=$deployStatus, elementType=$elementType, history=$history, id=$id, lastHash=$lastHash, orgId=$orgId, pipelines=$pipelines, updatedAt=$updatedAt, updatedBy=$updatedBy, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.config != null) {
      json[r'config'] = this.config;
    } else {
      json[r'config'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.createdBy != null) {
      json[r'createdBy'] = this.createdBy;
    } else {
      json[r'createdBy'] = null;
    }
    if (this.createdByName != null) {
      json[r'createdByName'] = this.createdByName;
    } else {
      json[r'createdByName'] = null;
    }
    if (this.deployResult != null) {
      json[r'deployResult'] = this.deployResult;
    } else {
      json[r'deployResult'] = null;
    }
    if (this.deploySequence != null) {
      json[r'deploySequence'] = this.deploySequence;
    } else {
      json[r'deploySequence'] = null;
    }
    if (this.deployStatus != null) {
      json[r'deployStatus'] = this.deployStatus;
    } else {
      json[r'deployStatus'] = null;
    }
    if (this.elementType != null) {
      json[r'elementType'] = this.elementType;
    } else {
      json[r'elementType'] = null;
    }
      json[r'history'] = this.history;
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.lastHash != null) {
      json[r'lastHash'] = this.lastHash;
    } else {
      json[r'lastHash'] = null;
    }
    if (this.orgId != null) {
      json[r'orgId'] = this.orgId;
    } else {
      json[r'orgId'] = null;
    }
      json[r'pipelines'] = this.pipelines;
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.updatedBy != null) {
      json[r'updatedBy'] = this.updatedBy;
    } else {
      json[r'updatedBy'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yLogPipelines] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yLogPipelines? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yLogPipelines[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yLogPipelines[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yLogPipelines(
        config: mapValueOfType<String>(json, r'config'),
        createdAt: mapDateTime(json, r'createdAt', r''),
        createdBy: mapValueOfType<String>(json, r'createdBy'),
        createdByName: mapValueOfType<String>(json, r'createdByName'),
        deployResult: mapValueOfType<String>(json, r'deployResult'),
        deploySequence: mapValueOfType<int>(json, r'deploySequence'),
        deployStatus: mapValueOfType<String>(json, r'deployStatus'),
        elementType: mapValueOfType<String>(json, r'elementType'),
        history: O11yO11yLogConfigVersion.listFromJson(json[r'history']),
        id: mapValueOfType<String>(json, r'id'),
        lastHash: mapValueOfType<String>(json, r'lastHash'),
        orgId: mapValueOfType<String>(json, r'orgId'),
        pipelines: O11yO11yLogPipeline.listFromJson(json[r'pipelines']),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        updatedBy: mapValueOfType<String>(json, r'updatedBy'),
        version: mapValueOfType<int>(json, r'version'),
      );
    }
    return null;
  }

  static List<O11yO11yLogPipelines> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yLogPipelines>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yLogPipelines.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yLogPipelines> mapFromJson(dynamic json) {
    final map = <String, O11yO11yLogPipelines>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yLogPipelines.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yLogPipelines-objects as value to a dart map
  static Map<String, List<O11yO11yLogPipelines>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yLogPipelines>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yLogPipelines.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

