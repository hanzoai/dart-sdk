//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FlowVersion {
  /// Returns a new [FlowVersion] instance.
  FlowVersion({
    this.created,
    this.displayName,
    this.flowId,
    this.id,
    this.schemaVersion,
    this.state,
    this.trigger,
    this.updated,
    this.valid,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? created;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? flowId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? schemaVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FlowTrigger? trigger;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? valid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FlowVersion &&
    other.created == created &&
    other.displayName == displayName &&
    other.flowId == flowId &&
    other.id == id &&
    other.schemaVersion == schemaVersion &&
    other.state == state &&
    other.trigger == trigger &&
    other.updated == updated &&
    other.valid == valid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created == null ? 0 : created!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (flowId == null ? 0 : flowId!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (state == null ? 0 : state!.hashCode) +
    (trigger == null ? 0 : trigger!.hashCode) +
    (updated == null ? 0 : updated!.hashCode) +
    (valid == null ? 0 : valid!.hashCode);

  @override
  String toString() => 'FlowVersion[created=$created, displayName=$displayName, flowId=$flowId, id=$id, schemaVersion=$schemaVersion, state=$state, trigger=$trigger, updated=$updated, valid=$valid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.flowId != null) {
      json[r'flowId'] = this.flowId;
    } else {
      json[r'flowId'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.schemaVersion != null) {
      json[r'schemaVersion'] = this.schemaVersion;
    } else {
      json[r'schemaVersion'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    if (this.trigger != null) {
      json[r'trigger'] = this.trigger;
    } else {
      json[r'trigger'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    if (this.valid != null) {
      json[r'valid'] = this.valid;
    } else {
      json[r'valid'] = null;
    }
    return json;
  }

  /// Returns a new [FlowVersion] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FlowVersion? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FlowVersion[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FlowVersion[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FlowVersion(
        created: mapValueOfType<int>(json, r'created'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        flowId: mapValueOfType<String>(json, r'flowId'),
        id: mapValueOfType<String>(json, r'id'),
        schemaVersion: mapValueOfType<String>(json, r'schemaVersion'),
        state: mapValueOfType<String>(json, r'state'),
        trigger: FlowTrigger.fromJson(json[r'trigger']),
        updated: mapValueOfType<int>(json, r'updated'),
        valid: mapValueOfType<bool>(json, r'valid'),
      );
    }
    return null;
  }

  static List<FlowVersion> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FlowVersion>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FlowVersion.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FlowVersion> mapFromJson(dynamic json) {
    final map = <String, FlowVersion>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FlowVersion.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FlowVersion-objects as value to a dart map
  static Map<String, List<FlowVersion>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FlowVersion>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FlowVersion.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

