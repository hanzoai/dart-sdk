//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GpuList {
  /// Returns a new [GpuList] instance.
  GpuList({
    this.gpus = const [],
  });
  /// GPUs is every accelerator the org has, from Visor GPU droplets and from BYO workers alike.
  List<GpuView> gpus;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GpuList &&
    _deepEquality.equals(other.gpus, gpus);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (gpus.hashCode);

  @override
  String toString() => 'GpuList[gpus=$gpus]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'gpus'] = this.gpus;
    return json;
  }

  /// Returns a new [GpuList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GpuList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GpuList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GpuList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GpuList(
        gpus: GpuView.listFromJson(json[r'gpus']),
      );
    }
    return null;
  }

  static List<GpuList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GpuList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GpuList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GpuList> mapFromJson(dynamic json) {
    final map = <String, GpuList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GpuList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GpuList-objects as value to a dart map
  static Map<String, List<GpuList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GpuList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GpuList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

