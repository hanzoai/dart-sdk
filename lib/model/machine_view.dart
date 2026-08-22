//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class MachineView {
  /// Returns a new [MachineView] instance.
  MachineView({
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
  /// CreatedTime is when the machine came into being: the provider's own creation timestamp for a Visor machine, passed through in whatever form it states it, and for a BYO machine the RFC 3339 moment it first dialed in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdTime;

  /// GPU names the accelerators this machine holds (\"H100\", or \"2× NVIDIA GB10\" for a BYO machine reporting a matched pair). Empty means the machine is not a GPU machine — the size slug does not parse as one, or nvidia-smi found nothing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gpu;

  /// ID addresses this machine on the /v1/visor/machines/:id routes: the org-scoped NAME Visor keys a machine by, falling back to the provider id for a machine that has no name. A BYO machine's is the id it dialed in under.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Image is the OS image the machine booted from, as the provider names it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

  /// Mem is system RAM rendered for a human (\"8 GB\"), not a number to compute with. Empty when the provider's figure is ambiguous, or when the only figure available is a GPU slug's gb — that is VRAM, and reporting it as system RAM would be a fabrication. A BYO machine's RAM is on /v1/visor/fleet/workers.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mem;

  /// Name is the label to show a human — Visor's displayName, or the machine name when it carries none. A BYO machine's is its hostname. It is not an address: ID is what the routes take.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Os is the operating system on the machine — Visor's record for a provisioned one, the host's own report (linux, darwin, windows) for a BYO one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? os;

  /// PrivateIp is the address on the provider's own network, reachable from the org's other machines in the same region. Empty on the same terms as PublicIp.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? privateIp;

  /// Provider is the cloud that runs the machine (\"digitalocean\"), or \"byo\" for one the operator dialed in with `hanzo link`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// PublicIp is the internet-facing address the provider assigned. Empty while a machine is still provisioning, and empty for a BYO machine — it dials out from behind NAT, so no address is ever learned for it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? publicIp;

  /// Region is the provider region slug (\"sfo3\"), or the zone when the provider reports only that. \"on-prem\" for a BYO machine, which has no cloud region.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? region;

  /// Status is the lifecycle state in the PROVIDER's own words (\"active\", \"running\", \"off\"), passed through rather than mapped onto a vocabulary of ours. A BYO machine's is \"online\" or \"offline\", decided by whether its last heartbeat is within 90s.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Type is the provider SIZE SLUG the machine runs at (\"s-2vcpu-4gb\", \"gpu-h100x8-640gb\") — the value a launch asks for, and what Vcpu/Mem/GPU are read out of when the provider states them no other way. \"byo-gpu\" for a dialed-in machine, which was never bought from a size catalog.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// Vcpu is logical cores — the provider's own cpuSize when that is a clean integer, else the count read out of the size slug (4 from \"s-4vcpu-8gb\"). ABSENT, never 0, when neither says. A BYO machine leaves it absent here; its real core count is on GET /v1/visor/fleet/workers.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vcpu;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MachineView &&
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
  String toString() => 'MachineView[createdTime=$createdTime, gpu=$gpu, id=$id, image=$image, mem=$mem, name=$name, os=$os, privateIp=$privateIp, provider=$provider, publicIp=$publicIp, region=$region, status=$status, type=$type, vcpu=$vcpu]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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

  /// Returns a new [MachineView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MachineView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MachineView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MachineView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MachineView(
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

  static List<MachineView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MachineView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MachineView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MachineView> mapFromJson(dynamic json) {
    final map = <String, MachineView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MachineView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MachineView-objects as value to a dart map
  static Map<String, List<MachineView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MachineView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MachineView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

