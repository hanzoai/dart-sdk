//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DeployRecord {
  /// Returns a new [DeployRecord] instance.
  DeployRecord({
    this.created,
    this.createdAt,
    this.deployId,
    this.reason,
    this.recorded,
    this.self,
  });
  /// Created reports whether this call recorded a new attribution edge (201) or found an existing one (200). Absent when nothing was recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? created;

  /// CreatedAt is when the edge was first recorded, in unix seconds. Absent when nothing was recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// DeployID is the attribution edge's handle. Absent when nothing was recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deployId;

  /// Reason says why nothing was attributed. Present only when recorded is false.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  /// Recorded reports whether the deploy was attributed to an author at all. False is the ordinary answer for a project built from no repository, or from one no author has verified — never an error, so a deploy path can fire this unconditionally.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? recorded;

  /// Self reports that the deploying org IS the author's org. Such a deploy is recorded for provenance but excluded from accrual. Absent when nothing was recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? self;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeployRecord &&
    other.created == created &&
    other.createdAt == createdAt &&
    other.deployId == deployId &&
    other.reason == reason &&
    other.recorded == recorded &&
    other.self == self;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created == null ? 0 : created!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (deployId == null ? 0 : deployId!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (recorded == null ? 0 : recorded!.hashCode) +
    (self == null ? 0 : self!.hashCode);

  @override
  String toString() => 'DeployRecord[created=$created, createdAt=$createdAt, deployId=$deployId, reason=$reason, recorded=$recorded, self=$self]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.deployId != null) {
      json[r'deployId'] = this.deployId;
    } else {
      json[r'deployId'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    if (this.recorded != null) {
      json[r'recorded'] = this.recorded;
    } else {
      json[r'recorded'] = null;
    }
    if (this.self != null) {
      json[r'self'] = this.self;
    } else {
      json[r'self'] = null;
    }
    return json;
  }

  /// Returns a new [DeployRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeployRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeployRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeployRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeployRecord(
        created: mapValueOfType<bool>(json, r'created'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        deployId: mapValueOfType<String>(json, r'deployId'),
        reason: mapValueOfType<String>(json, r'reason'),
        recorded: mapValueOfType<bool>(json, r'recorded'),
        self: mapValueOfType<bool>(json, r'self'),
      );
    }
    return null;
  }

  static List<DeployRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeployRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeployRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeployRecord> mapFromJson(dynamic json) {
    final map = <String, DeployRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeployRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeployRecord-objects as value to a dart map
  static Map<String, List<DeployRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeployRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeployRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

