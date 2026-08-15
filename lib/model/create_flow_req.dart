//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CreateFlowReq {
  /// Returns a new [CreateFlowReq] instance.
  CreateFlowReq({
    this.displayName,
    this.externalId,
    this.folderId,
    this.trigger,
  });

  /// DisplayName names the flow's initial draft version.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  /// ExternalID is the caller's own id for this flow. Optional.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  /// FolderID groups the flow in the builder's tree. Optional.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? folderId;

  /// Trigger is the root of the step tree — how the flow starts, and the action chain that follows. Optional: a flow may be created empty and edited later.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FlowTrigger? trigger;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateFlowReq &&
    other.displayName == displayName &&
    other.externalId == externalId &&
    other.folderId == folderId &&
    other.trigger == trigger;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (displayName == null ? 0 : displayName!.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (folderId == null ? 0 : folderId!.hashCode) +
    (trigger == null ? 0 : trigger!.hashCode);

  @override
  String toString() => 'CreateFlowReq[displayName=$displayName, externalId=$externalId, folderId=$folderId, trigger=$trigger]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.externalId != null) {
      json[r'externalId'] = this.externalId;
    } else {
      json[r'externalId'] = null;
    }
    if (this.folderId != null) {
      json[r'folderId'] = this.folderId;
    } else {
      json[r'folderId'] = null;
    }
    if (this.trigger != null) {
      json[r'trigger'] = this.trigger;
    } else {
      json[r'trigger'] = null;
    }
    return json;
  }

  /// Returns a new [CreateFlowReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateFlowReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateFlowReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateFlowReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateFlowReq(
        displayName: mapValueOfType<String>(json, r'displayName'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        folderId: mapValueOfType<String>(json, r'folderId'),
        trigger: FlowTrigger.fromJson(json[r'trigger']),
      );
    }
    return null;
  }

  static List<CreateFlowReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateFlowReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateFlowReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateFlowReq> mapFromJson(dynamic json) {
    final map = <String, CreateFlowReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateFlowReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateFlowReq-objects as value to a dart map
  static Map<String, List<CreateFlowReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateFlowReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateFlowReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

