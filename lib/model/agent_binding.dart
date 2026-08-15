//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AgentBinding {
  /// Returns a new [AgentBinding] instance.
  AgentBinding({
    this.agentName,
    this.botVersion,
    this.createdTime,
    this.machineId,
    this.message,
    this.name,
    this.org,
    this.owner,
    this.provider,
    this.publicIp,
    this.status,
    this.updatedTime,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? agentName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? botVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? machineId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

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
  String? owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? publicIp;

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
  String? updatedTime;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentBinding &&
    other.agentName == agentName &&
    other.botVersion == botVersion &&
    other.createdTime == createdTime &&
    other.machineId == machineId &&
    other.message == message &&
    other.name == name &&
    other.org == org &&
    other.owner == owner &&
    other.provider == provider &&
    other.publicIp == publicIp &&
    other.status == status &&
    other.updatedTime == updatedTime;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (agentName == null ? 0 : agentName!.hashCode) +
    (botVersion == null ? 0 : botVersion!.hashCode) +
    (createdTime == null ? 0 : createdTime!.hashCode) +
    (machineId == null ? 0 : machineId!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (publicIp == null ? 0 : publicIp!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (updatedTime == null ? 0 : updatedTime!.hashCode);

  @override
  String toString() => 'AgentBinding[agentName=$agentName, botVersion=$botVersion, createdTime=$createdTime, machineId=$machineId, message=$message, name=$name, org=$org, owner=$owner, provider=$provider, publicIp=$publicIp, status=$status, updatedTime=$updatedTime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.agentName != null) {
      json[r'agentName'] = this.agentName;
    } else {
      json[r'agentName'] = null;
    }
    if (this.botVersion != null) {
      json[r'botVersion'] = this.botVersion;
    } else {
      json[r'botVersion'] = null;
    }
    if (this.createdTime != null) {
      json[r'createdTime'] = this.createdTime;
    } else {
      json[r'createdTime'] = null;
    }
    if (this.machineId != null) {
      json[r'machineId'] = this.machineId;
    } else {
      json[r'machineId'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.publicIp != null) {
      json[r'publicIp'] = this.publicIp;
    } else {
      json[r'publicIp'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.updatedTime != null) {
      json[r'updatedTime'] = this.updatedTime;
    } else {
      json[r'updatedTime'] = null;
    }
    return json;
  }

  /// Returns a new [AgentBinding] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentBinding? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgentBinding[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgentBinding[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgentBinding(
        agentName: mapValueOfType<String>(json, r'agentName'),
        botVersion: mapValueOfType<String>(json, r'botVersion'),
        createdTime: mapValueOfType<String>(json, r'createdTime'),
        machineId: mapValueOfType<String>(json, r'machineId'),
        message: mapValueOfType<String>(json, r'message'),
        name: mapValueOfType<String>(json, r'name'),
        org: mapValueOfType<String>(json, r'org'),
        owner: mapValueOfType<String>(json, r'owner'),
        provider: mapValueOfType<String>(json, r'provider'),
        publicIp: mapValueOfType<String>(json, r'publicIp'),
        status: mapValueOfType<String>(json, r'status'),
        updatedTime: mapValueOfType<String>(json, r'updatedTime'),
      );
    }
    return null;
  }

  static List<AgentBinding> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentBinding>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentBinding.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentBinding> mapFromJson(dynamic json) {
    final map = <String, AgentBinding>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentBinding.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentBinding-objects as value to a dart map
  static Map<String, List<AgentBinding>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentBinding>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentBinding.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

