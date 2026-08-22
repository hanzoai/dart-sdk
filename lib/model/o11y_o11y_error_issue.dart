//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yErrorIssue {
  /// Returns a new [O11yO11yErrorIssue] instance.
  O11yO11yErrorIssue({
    this.assignee,
    this.count,
    this.createdAt,
    this.culprit,
    this.environment,
    this.fingerprint,
    this.firstSeen,
    this.id,
    this.lastSeen,
    this.level,
    this.platform,
    this.regressed,
    this.release,
    this.resolvedAt,
    this.serviceName,
    this.status,
    this.type,
    this.updatedAt,
    this.value,
  });
  /// Assignee is who the issue is assigned to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? assignee;

  /// Count is how many occurrences have landed on the issue.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  /// CreatedAt is when the issue was first recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// Culprit is where it came from — the function or route blamed for it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? culprit;

  /// Environment is the deployment the issue was seen in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? environment;

  /// Fingerprint is the grouping key that puts like errors in one issue.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fingerprint;

  /// FirstSeen is when the earliest occurrence was recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? firstSeen;

  /// ID is the issue id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// LastSeen is when the latest was.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastSeen;

  /// Level is the issue's severity, e.g. error, warning, info.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? level;

  /// Platform is the reporting runtime, e.g. go, python, javascript.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? platform;

  /// Regressed marks an issue that reopened after being resolved.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? regressed;

  /// Release is the version that produced it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? release;

  /// ResolvedAt is when the issue was resolved, if it is.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? resolvedAt;

  /// ServiceName is the service that reported it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceName;

  /// Status is the lifecycle state: unresolved, resolved or ignored.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Type is the exception type.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// UpdatedAt is when the issue last changed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  /// Value is the exception value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yErrorIssue &&
    other.assignee == assignee &&
    other.count == count &&
    other.createdAt == createdAt &&
    other.culprit == culprit &&
    other.environment == environment &&
    other.fingerprint == fingerprint &&
    other.firstSeen == firstSeen &&
    other.id == id &&
    other.lastSeen == lastSeen &&
    other.level == level &&
    other.platform == platform &&
    other.regressed == regressed &&
    other.release == release &&
    other.resolvedAt == resolvedAt &&
    other.serviceName == serviceName &&
    other.status == status &&
    other.type == type &&
    other.updatedAt == updatedAt &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assignee == null ? 0 : assignee!.hashCode) +
    (count == null ? 0 : count!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (culprit == null ? 0 : culprit!.hashCode) +
    (environment == null ? 0 : environment!.hashCode) +
    (fingerprint == null ? 0 : fingerprint!.hashCode) +
    (firstSeen == null ? 0 : firstSeen!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (lastSeen == null ? 0 : lastSeen!.hashCode) +
    (level == null ? 0 : level!.hashCode) +
    (platform == null ? 0 : platform!.hashCode) +
    (regressed == null ? 0 : regressed!.hashCode) +
    (release == null ? 0 : release!.hashCode) +
    (resolvedAt == null ? 0 : resolvedAt!.hashCode) +
    (serviceName == null ? 0 : serviceName!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'O11yO11yErrorIssue[assignee=$assignee, count=$count, createdAt=$createdAt, culprit=$culprit, environment=$environment, fingerprint=$fingerprint, firstSeen=$firstSeen, id=$id, lastSeen=$lastSeen, level=$level, platform=$platform, regressed=$regressed, release=$release, resolvedAt=$resolvedAt, serviceName=$serviceName, status=$status, type=$type, updatedAt=$updatedAt, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.assignee != null) {
      json[r'assignee'] = this.assignee;
    } else {
      json[r'assignee'] = null;
    }
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.culprit != null) {
      json[r'culprit'] = this.culprit;
    } else {
      json[r'culprit'] = null;
    }
    if (this.environment != null) {
      json[r'environment'] = this.environment;
    } else {
      json[r'environment'] = null;
    }
    if (this.fingerprint != null) {
      json[r'fingerprint'] = this.fingerprint;
    } else {
      json[r'fingerprint'] = null;
    }
    if (this.firstSeen != null) {
      json[r'firstSeen'] = this.firstSeen!.toUtc().toIso8601String();
    } else {
      json[r'firstSeen'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.lastSeen != null) {
      json[r'lastSeen'] = this.lastSeen!.toUtc().toIso8601String();
    } else {
      json[r'lastSeen'] = null;
    }
    if (this.level != null) {
      json[r'level'] = this.level;
    } else {
      json[r'level'] = null;
    }
    if (this.platform != null) {
      json[r'platform'] = this.platform;
    } else {
      json[r'platform'] = null;
    }
    if (this.regressed != null) {
      json[r'regressed'] = this.regressed;
    } else {
      json[r'regressed'] = null;
    }
    if (this.release != null) {
      json[r'release'] = this.release;
    } else {
      json[r'release'] = null;
    }
    if (this.resolvedAt != null) {
      json[r'resolvedAt'] = this.resolvedAt!.toUtc().toIso8601String();
    } else {
      json[r'resolvedAt'] = null;
    }
    if (this.serviceName != null) {
      json[r'serviceName'] = this.serviceName;
    } else {
      json[r'serviceName'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yErrorIssue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yErrorIssue? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yErrorIssue[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yErrorIssue[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yErrorIssue(
        assignee: mapValueOfType<String>(json, r'assignee'),
        count: mapValueOfType<int>(json, r'count'),
        createdAt: mapDateTime(json, r'createdAt', r''),
        culprit: mapValueOfType<String>(json, r'culprit'),
        environment: mapValueOfType<String>(json, r'environment'),
        fingerprint: mapValueOfType<String>(json, r'fingerprint'),
        firstSeen: mapDateTime(json, r'firstSeen', r''),
        id: mapValueOfType<String>(json, r'id'),
        lastSeen: mapDateTime(json, r'lastSeen', r''),
        level: mapValueOfType<String>(json, r'level'),
        platform: mapValueOfType<String>(json, r'platform'),
        regressed: mapValueOfType<bool>(json, r'regressed'),
        release: mapValueOfType<String>(json, r'release'),
        resolvedAt: mapDateTime(json, r'resolvedAt', r''),
        serviceName: mapValueOfType<String>(json, r'serviceName'),
        status: mapValueOfType<String>(json, r'status'),
        type: mapValueOfType<String>(json, r'type'),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        value: mapValueOfType<String>(json, r'value'),
      );
    }
    return null;
  }

  static List<O11yO11yErrorIssue> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yErrorIssue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yErrorIssue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yErrorIssue> mapFromJson(dynamic json) {
    final map = <String, O11yO11yErrorIssue>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yErrorIssue.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yErrorIssue-objects as value to a dart map
  static Map<String, List<O11yO11yErrorIssue>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yErrorIssue>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yErrorIssue.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

