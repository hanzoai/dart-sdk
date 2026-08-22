//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ByoWorker {
  /// Returns a new [ByoWorker] instance.
  ByoWorker({
    this.arch,
    this.capabilities = const [],
    this.cpuModel,
    this.cpus,
    this.cuda,
    this.driver,
    this.engine,
    this.firstSeen,
    this.gpus = const [],
    this.hip,
    this.hostname,
    this.id,
    this.jobQueue,
    this.lastHeartbeat,
    this.location,
    this.memory,
    this.os,
    this.provider,
    this.rocm,
    this.status,
    this.version,
  });
  /// Arch/CPUs/Memory are the connecting host's static CPU spec, mirrored from the registration: Arch is runtime.GOARCH (amd64 | arm64), Memory is total RAM in BYTES — the same fields a code-linked run-target carries, so the /v1/visor/fleet board renders a linked node's arch + cores + RAM like any other unit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? arch;

  /// Capabilities is what this worker offers the org: \"studio.render\" when the node can render, \"engine.serve\" when it serves a model endpoint. A node advertises one only once it can honour it, so an absent list means a node that has dialed in but is not ready to serve any of them yet.
  List<String> capabilities;

  /// CPUModel is the processor as the host names it (\"Apple M3 Max\"), for display.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cpuModel;

  /// CPUs is the host's logical core count.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cpus;

  /// Cuda is the host's CUDA toolkit version. NVIDIA hosts report it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cuda;

  /// Driver is the host's NVIDIA kernel driver version — distinct from Cuda, and the one that bounds which CUDA versions can run on this box.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? driver;

  /// Engine is the hanzo-engine model server this node runs, when it runs one (`hanzo link --serve-engine`). Absent means the node takes jobs but serves no model endpoint.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EngineAdvertisement? engine;

  /// FirstSeen is when this node first dialed in, RFC 3339 — the start of its presence record, which `hanzo unlink` ends.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstSeen;

  /// GPUs are the accelerators the host found on itself. Empty is a real answer: a CPU-only machine can dial in and take non-GPU work.
  List<ByoGPU> gpus;

  /// Hip is the host's HIP runtime version, the AMD counterpart to Cuda.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hip;

  /// Hostname is what the host calls itself. It equals ID for any hostname already in the [a-z0-9-] alphabet, and differs when sanitizing had to change it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hostname;

  /// ID is the node's id in the fleet — the sanitized hostname it registered under, which is also the `unit` its samples and its gpu-jobs lane key on. This is the id to use everywhere else on the compute surface.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// JobQueue is the tasks NAMESPACE this worker claims render jobs out of — \"gpu-jobs\" unless `hanzo link` was pointed at another. Within it, a job aimed at this node alone rides the task-queue value \"gpu:<id>\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? jobQueue;

  /// LastHeartbeat is the most recent beat this node sent, RFC 3339. It is what Status is computed from, so a reader can check the judgement.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastHeartbeat;

  /// Location is always \"on-prem\" — a machine that dialed in has no cloud region, and inventing one would put it somewhere it is not.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? location;

  /// Memory is the host's total RAM in BYTES.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? memory;

  /// Os is the host's operating system: linux, darwin or windows.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? os;

  /// Provider is always \"byo\": this machine is the operator's, not one Hanzo provisioned. It exists so a fold into the machines/GPUs pages says which rows are rented and which are the customer's own.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Rocm is the host's ROCm version. AMD hosts report it; empty otherwise.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rocm;

  /// Status is \"online\" when the last heartbeat landed within 90s, else \"offline\" — so it is a fact about heartbeat freshness, not about the box being powered on. A worker that has never beaten reads offline.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Version is the `hanzo` CLI version running on the node. It is what to check when a worker is missing a field a newer registration reports.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ByoWorker &&
    other.arch == arch &&
    _deepEquality.equals(other.capabilities, capabilities) &&
    other.cpuModel == cpuModel &&
    other.cpus == cpus &&
    other.cuda == cuda &&
    other.driver == driver &&
    other.engine == engine &&
    other.firstSeen == firstSeen &&
    _deepEquality.equals(other.gpus, gpus) &&
    other.hip == hip &&
    other.hostname == hostname &&
    other.id == id &&
    other.jobQueue == jobQueue &&
    other.lastHeartbeat == lastHeartbeat &&
    other.location == location &&
    other.memory == memory &&
    other.os == os &&
    other.provider == provider &&
    other.rocm == rocm &&
    other.status == status &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (arch == null ? 0 : arch!.hashCode) +
    (capabilities.hashCode) +
    (cpuModel == null ? 0 : cpuModel!.hashCode) +
    (cpus == null ? 0 : cpus!.hashCode) +
    (cuda == null ? 0 : cuda!.hashCode) +
    (driver == null ? 0 : driver!.hashCode) +
    (engine == null ? 0 : engine!.hashCode) +
    (firstSeen == null ? 0 : firstSeen!.hashCode) +
    (gpus.hashCode) +
    (hip == null ? 0 : hip!.hashCode) +
    (hostname == null ? 0 : hostname!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (jobQueue == null ? 0 : jobQueue!.hashCode) +
    (lastHeartbeat == null ? 0 : lastHeartbeat!.hashCode) +
    (location == null ? 0 : location!.hashCode) +
    (memory == null ? 0 : memory!.hashCode) +
    (os == null ? 0 : os!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (rocm == null ? 0 : rocm!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'ByoWorker[arch=$arch, capabilities=$capabilities, cpuModel=$cpuModel, cpus=$cpus, cuda=$cuda, driver=$driver, engine=$engine, firstSeen=$firstSeen, gpus=$gpus, hip=$hip, hostname=$hostname, id=$id, jobQueue=$jobQueue, lastHeartbeat=$lastHeartbeat, location=$location, memory=$memory, os=$os, provider=$provider, rocm=$rocm, status=$status, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.arch != null) {
      json[r'arch'] = this.arch;
    } else {
      json[r'arch'] = null;
    }
      json[r'capabilities'] = this.capabilities;
    if (this.cpuModel != null) {
      json[r'cpuModel'] = this.cpuModel;
    } else {
      json[r'cpuModel'] = null;
    }
    if (this.cpus != null) {
      json[r'cpus'] = this.cpus;
    } else {
      json[r'cpus'] = null;
    }
    if (this.cuda != null) {
      json[r'cuda'] = this.cuda;
    } else {
      json[r'cuda'] = null;
    }
    if (this.driver != null) {
      json[r'driver'] = this.driver;
    } else {
      json[r'driver'] = null;
    }
    if (this.engine != null) {
      json[r'engine'] = this.engine;
    } else {
      json[r'engine'] = null;
    }
    if (this.firstSeen != null) {
      json[r'firstSeen'] = this.firstSeen;
    } else {
      json[r'firstSeen'] = null;
    }
      json[r'gpus'] = this.gpus;
    if (this.hip != null) {
      json[r'hip'] = this.hip;
    } else {
      json[r'hip'] = null;
    }
    if (this.hostname != null) {
      json[r'hostname'] = this.hostname;
    } else {
      json[r'hostname'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.jobQueue != null) {
      json[r'jobQueue'] = this.jobQueue;
    } else {
      json[r'jobQueue'] = null;
    }
    if (this.lastHeartbeat != null) {
      json[r'lastHeartbeat'] = this.lastHeartbeat;
    } else {
      json[r'lastHeartbeat'] = null;
    }
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
    if (this.memory != null) {
      json[r'memory'] = this.memory;
    } else {
      json[r'memory'] = null;
    }
    if (this.os != null) {
      json[r'os'] = this.os;
    } else {
      json[r'os'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.rocm != null) {
      json[r'rocm'] = this.rocm;
    } else {
      json[r'rocm'] = null;
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

  /// Returns a new [ByoWorker] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ByoWorker? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ByoWorker[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ByoWorker[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ByoWorker(
        arch: mapValueOfType<String>(json, r'arch'),
        capabilities: json[r'capabilities'] is Iterable
            ? (json[r'capabilities'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        cpuModel: mapValueOfType<String>(json, r'cpuModel'),
        cpus: mapValueOfType<int>(json, r'cpus'),
        cuda: mapValueOfType<String>(json, r'cuda'),
        driver: mapValueOfType<String>(json, r'driver'),
        engine: EngineAdvertisement.fromJson(json[r'engine']),
        firstSeen: mapValueOfType<String>(json, r'firstSeen'),
        gpus: ByoGPU.listFromJson(json[r'gpus']),
        hip: mapValueOfType<String>(json, r'hip'),
        hostname: mapValueOfType<String>(json, r'hostname'),
        id: mapValueOfType<String>(json, r'id'),
        jobQueue: mapValueOfType<String>(json, r'jobQueue'),
        lastHeartbeat: mapValueOfType<String>(json, r'lastHeartbeat'),
        location: mapValueOfType<String>(json, r'location'),
        memory: mapValueOfType<int>(json, r'memory'),
        os: mapValueOfType<String>(json, r'os'),
        provider: mapValueOfType<String>(json, r'provider'),
        rocm: mapValueOfType<String>(json, r'rocm'),
        status: mapValueOfType<String>(json, r'status'),
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<ByoWorker> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ByoWorker>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ByoWorker.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ByoWorker> mapFromJson(dynamic json) {
    final map = <String, ByoWorker>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ByoWorker.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ByoWorker-objects as value to a dart map
  static Map<String, List<ByoWorker>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ByoWorker>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ByoWorker.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

