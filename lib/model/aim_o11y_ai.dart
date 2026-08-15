//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AimO11yAI {
  /// Returns a new [AimO11yAI] instance.
  AimO11yAI({
    this.costUsd,
    this.generations,
    this.latencyMsAvg,
    this.latencyMsP95,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? costUsd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? generations;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? latencyMsAvg;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? latencyMsP95;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AimO11yAI &&
    other.costUsd == costUsd &&
    other.generations == generations &&
    other.latencyMsAvg == latencyMsAvg &&
    other.latencyMsP95 == latencyMsP95;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (costUsd == null ? 0 : costUsd!.hashCode) +
    (generations == null ? 0 : generations!.hashCode) +
    (latencyMsAvg == null ? 0 : latencyMsAvg!.hashCode) +
    (latencyMsP95 == null ? 0 : latencyMsP95!.hashCode);

  @override
  String toString() => 'AimO11yAI[costUsd=$costUsd, generations=$generations, latencyMsAvg=$latencyMsAvg, latencyMsP95=$latencyMsP95]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.costUsd != null) {
      json[r'costUsd'] = this.costUsd;
    } else {
      json[r'costUsd'] = null;
    }
    if (this.generations != null) {
      json[r'generations'] = this.generations;
    } else {
      json[r'generations'] = null;
    }
    if (this.latencyMsAvg != null) {
      json[r'latencyMsAvg'] = this.latencyMsAvg;
    } else {
      json[r'latencyMsAvg'] = null;
    }
    if (this.latencyMsP95 != null) {
      json[r'latencyMsP95'] = this.latencyMsP95;
    } else {
      json[r'latencyMsP95'] = null;
    }
    return json;
  }

  /// Returns a new [AimO11yAI] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AimO11yAI? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AimO11yAI[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AimO11yAI[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AimO11yAI(
        costUsd: num.parse('${json[r'costUsd']}'),
        generations: mapValueOfType<int>(json, r'generations'),
        latencyMsAvg: num.parse('${json[r'latencyMsAvg']}'),
        latencyMsP95: num.parse('${json[r'latencyMsP95']}'),
      );
    }
    return null;
  }

  static List<AimO11yAI> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AimO11yAI>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AimO11yAI.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AimO11yAI> mapFromJson(dynamic json) {
    final map = <String, AimO11yAI>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AimO11yAI.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AimO11yAI-objects as value to a dart map
  static Map<String, List<AimO11yAI>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AimO11yAI>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AimO11yAI.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

