//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ResourceUsage {
  /// Returns a new [ResourceUsage] instance.
  ResourceUsage({
    this.costCents,
    this.cpuVcpuHours,
    this.memGbHours,
    this.storageIoBytes,
  });
  /// CostCents would be the window's spend in cents. Always null here — the money a run costs is the metering ledger's, joined by the run id, and repeating it from this side would be a second number that could disagree with the bill.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? costCents;

  /// CPUVcpuHours would be vCPU-hours over the window. Always null: this store holds agent definitions and run I/O, and nothing here meters a CPU. Null is the honest answer and 0 would be a claim.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? cpuVcpuHours;

  /// MemGbHours would be gigabyte-hours of memory. Always null, same reason.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? memGbHours;

  /// StorageIoBytes would be bytes moved to and from storage. Always null, same reason.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? storageIoBytes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResourceUsage &&
    other.costCents == costCents &&
    other.cpuVcpuHours == cpuVcpuHours &&
    other.memGbHours == memGbHours &&
    other.storageIoBytes == storageIoBytes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (costCents == null ? 0 : costCents!.hashCode) +
    (cpuVcpuHours == null ? 0 : cpuVcpuHours!.hashCode) +
    (memGbHours == null ? 0 : memGbHours!.hashCode) +
    (storageIoBytes == null ? 0 : storageIoBytes!.hashCode);

  @override
  String toString() => 'ResourceUsage[costCents=$costCents, cpuVcpuHours=$cpuVcpuHours, memGbHours=$memGbHours, storageIoBytes=$storageIoBytes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.costCents != null) {
      json[r'costCents'] = this.costCents;
    } else {
      json[r'costCents'] = null;
    }
    if (this.cpuVcpuHours != null) {
      json[r'cpuVcpuHours'] = this.cpuVcpuHours;
    } else {
      json[r'cpuVcpuHours'] = null;
    }
    if (this.memGbHours != null) {
      json[r'memGbHours'] = this.memGbHours;
    } else {
      json[r'memGbHours'] = null;
    }
    if (this.storageIoBytes != null) {
      json[r'storageIoBytes'] = this.storageIoBytes;
    } else {
      json[r'storageIoBytes'] = null;
    }
    return json;
  }

  /// Returns a new [ResourceUsage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ResourceUsage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ResourceUsage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ResourceUsage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ResourceUsage(
        costCents: num.parse('${json[r'costCents']}'),
        cpuVcpuHours: num.parse('${json[r'cpuVcpuHours']}'),
        memGbHours: num.parse('${json[r'memGbHours']}'),
        storageIoBytes: num.parse('${json[r'storageIoBytes']}'),
      );
    }
    return null;
  }

  static List<ResourceUsage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ResourceUsage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResourceUsage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ResourceUsage> mapFromJson(dynamic json) {
    final map = <String, ResourceUsage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ResourceUsage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ResourceUsage-objects as value to a dart map
  static Map<String, List<ResourceUsage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ResourceUsage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ResourceUsage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

