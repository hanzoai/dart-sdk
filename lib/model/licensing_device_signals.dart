//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LicensingDeviceSignals {
  /// Returns a new [LicensingDeviceSignals] instance.
  LicensingDeviceSignals({
    this.arch,
    this.cpuid,
    this.diskSerial,
    this.hostname,
    this.installId,
    this.machineId,
    this.macs = const [],
    this.os,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? arch;

  /// CPUID is a CPU/board identifier string.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cpuid;

  /// DiskSerial of the boot/root volume.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? diskSerial;

  /// Hostname is a weak signal, used only as a tiebreaker.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hostname;

  /// InstallID is a per-install random the agent persists locally on first run.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? installId;

  /// MachineID is a stable per-host id (e.g. /etc/machine-id, IOPlatformUUID, MachineGuid). Strongest single signal where present.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? machineId;

  /// MAC addresses of stable interfaces (order-insensitive; we sort).
  List<String> macs;

  /// OS / Arch coarse platform tags.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? os;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicensingDeviceSignals &&
    other.arch == arch &&
    other.cpuid == cpuid &&
    other.diskSerial == diskSerial &&
    other.hostname == hostname &&
    other.installId == installId &&
    other.machineId == machineId &&
    _deepEquality.equals(other.macs, macs) &&
    other.os == os;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (arch == null ? 0 : arch!.hashCode) +
    (cpuid == null ? 0 : cpuid!.hashCode) +
    (diskSerial == null ? 0 : diskSerial!.hashCode) +
    (hostname == null ? 0 : hostname!.hashCode) +
    (installId == null ? 0 : installId!.hashCode) +
    (machineId == null ? 0 : machineId!.hashCode) +
    (macs.hashCode) +
    (os == null ? 0 : os!.hashCode);

  @override
  String toString() => 'LicensingDeviceSignals[arch=$arch, cpuid=$cpuid, diskSerial=$diskSerial, hostname=$hostname, installId=$installId, machineId=$machineId, macs=$macs, os=$os]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.arch != null) {
      json[r'arch'] = this.arch;
    } else {
      json[r'arch'] = null;
    }
    if (this.cpuid != null) {
      json[r'cpuid'] = this.cpuid;
    } else {
      json[r'cpuid'] = null;
    }
    if (this.diskSerial != null) {
      json[r'disk_serial'] = this.diskSerial;
    } else {
      json[r'disk_serial'] = null;
    }
    if (this.hostname != null) {
      json[r'hostname'] = this.hostname;
    } else {
      json[r'hostname'] = null;
    }
    if (this.installId != null) {
      json[r'install_id'] = this.installId;
    } else {
      json[r'install_id'] = null;
    }
    if (this.machineId != null) {
      json[r'machine_id'] = this.machineId;
    } else {
      json[r'machine_id'] = null;
    }
      json[r'macs'] = this.macs;
    if (this.os != null) {
      json[r'os'] = this.os;
    } else {
      json[r'os'] = null;
    }
    return json;
  }

  /// Returns a new [LicensingDeviceSignals] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicensingDeviceSignals? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LicensingDeviceSignals[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LicensingDeviceSignals[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LicensingDeviceSignals(
        arch: mapValueOfType<String>(json, r'arch'),
        cpuid: mapValueOfType<String>(json, r'cpuid'),
        diskSerial: mapValueOfType<String>(json, r'disk_serial'),
        hostname: mapValueOfType<String>(json, r'hostname'),
        installId: mapValueOfType<String>(json, r'install_id'),
        machineId: mapValueOfType<String>(json, r'machine_id'),
        macs: json[r'macs'] is Iterable
            ? (json[r'macs'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        os: mapValueOfType<String>(json, r'os'),
      );
    }
    return null;
  }

  static List<LicensingDeviceSignals> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicensingDeviceSignals>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicensingDeviceSignals.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicensingDeviceSignals> mapFromJson(dynamic json) {
    final map = <String, LicensingDeviceSignals>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicensingDeviceSignals.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicensingDeviceSignals-objects as value to a dart map
  static Map<String, List<LicensingDeviceSignals>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicensingDeviceSignals>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicensingDeviceSignals.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

