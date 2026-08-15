//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BotView {
  /// Returns a new [BotView] instance.
  BotView({
    this.agent,
    this.binding,
    this.createdTime,
    this.gpu,
    this.id,
    this.image,
    this.mem,
    this.name,
    this.os,
    this.privateIp,
    this.provider,
    this.publicIp,
    this.region,
    this.status,
    this.type,
    this.vcpu,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? agent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AgentBinding? binding;

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
  String? gpu;

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
  String? image;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mem;

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
  String? os;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? privateIp;

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
  String? region;

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
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vcpu;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BotView &&
    other.agent == agent &&
    other.binding == binding &&
    other.createdTime == createdTime &&
    other.gpu == gpu &&
    other.id == id &&
    other.image == image &&
    other.mem == mem &&
    other.name == name &&
    other.os == os &&
    other.privateIp == privateIp &&
    other.provider == provider &&
    other.publicIp == publicIp &&
    other.region == region &&
    other.status == status &&
    other.type == type &&
    other.vcpu == vcpu;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (agent == null ? 0 : agent!.hashCode) +
    (binding == null ? 0 : binding!.hashCode) +
    (createdTime == null ? 0 : createdTime!.hashCode) +
    (gpu == null ? 0 : gpu!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (mem == null ? 0 : mem!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (os == null ? 0 : os!.hashCode) +
    (privateIp == null ? 0 : privateIp!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (publicIp == null ? 0 : publicIp!.hashCode) +
    (region == null ? 0 : region!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (vcpu == null ? 0 : vcpu!.hashCode);

  @override
  String toString() => 'BotView[agent=$agent, binding=$binding, createdTime=$createdTime, gpu=$gpu, id=$id, image=$image, mem=$mem, name=$name, os=$os, privateIp=$privateIp, provider=$provider, publicIp=$publicIp, region=$region, status=$status, type=$type, vcpu=$vcpu]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.agent != null) {
      json[r'agent'] = this.agent;
    } else {
      json[r'agent'] = null;
    }
    if (this.binding != null) {
      json[r'binding'] = this.binding;
    } else {
      json[r'binding'] = null;
    }
    if (this.createdTime != null) {
      json[r'createdTime'] = this.createdTime;
    } else {
      json[r'createdTime'] = null;
    }
    if (this.gpu != null) {
      json[r'gpu'] = this.gpu;
    } else {
      json[r'gpu'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.mem != null) {
      json[r'mem'] = this.mem;
    } else {
      json[r'mem'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.os != null) {
      json[r'os'] = this.os;
    } else {
      json[r'os'] = null;
    }
    if (this.privateIp != null) {
      json[r'privateIp'] = this.privateIp;
    } else {
      json[r'privateIp'] = null;
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
    if (this.region != null) {
      json[r'region'] = this.region;
    } else {
      json[r'region'] = null;
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
    if (this.vcpu != null) {
      json[r'vcpu'] = this.vcpu;
    } else {
      json[r'vcpu'] = null;
    }
    return json;
  }

  /// Returns a new [BotView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BotView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BotView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BotView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BotView(
        agent: mapValueOfType<String>(json, r'agent'),
        binding: AgentBinding.fromJson(json[r'binding']),
        createdTime: mapValueOfType<String>(json, r'createdTime'),
        gpu: mapValueOfType<String>(json, r'gpu'),
        id: mapValueOfType<String>(json, r'id'),
        image: mapValueOfType<String>(json, r'image'),
        mem: mapValueOfType<String>(json, r'mem'),
        name: mapValueOfType<String>(json, r'name'),
        os: mapValueOfType<String>(json, r'os'),
        privateIp: mapValueOfType<String>(json, r'privateIp'),
        provider: mapValueOfType<String>(json, r'provider'),
        publicIp: mapValueOfType<String>(json, r'publicIp'),
        region: mapValueOfType<String>(json, r'region'),
        status: mapValueOfType<String>(json, r'status'),
        type: mapValueOfType<String>(json, r'type'),
        vcpu: mapValueOfType<int>(json, r'vcpu'),
      );
    }
    return null;
  }

  static List<BotView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BotView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BotView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BotView> mapFromJson(dynamic json) {
    final map = <String, BotView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BotView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BotView-objects as value to a dart map
  static Map<String, List<BotView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BotView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BotView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

