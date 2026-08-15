//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class KindTotal {
  /// Returns a new [KindTotal] instance.
  KindTotal({
    this.costUsd,
    this.experiments,
    this.kind,
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
  int? experiments;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  @override
  bool operator ==(Object other) => identical(this, other) || other is KindTotal &&
    other.costUsd == costUsd &&
    other.experiments == experiments &&
    other.kind == kind;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (costUsd == null ? 0 : costUsd!.hashCode) +
    (experiments == null ? 0 : experiments!.hashCode) +
    (kind == null ? 0 : kind!.hashCode);

  @override
  String toString() => 'KindTotal[costUsd=$costUsd, experiments=$experiments, kind=$kind]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.costUsd != null) {
      json[r'cost_usd'] = this.costUsd;
    } else {
      json[r'cost_usd'] = null;
    }
    if (this.experiments != null) {
      json[r'experiments'] = this.experiments;
    } else {
      json[r'experiments'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    return json;
  }

  /// Returns a new [KindTotal] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static KindTotal? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "KindTotal[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "KindTotal[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return KindTotal(
        costUsd: num.parse('${json[r'cost_usd']}'),
        experiments: mapValueOfType<int>(json, r'experiments'),
        kind: mapValueOfType<String>(json, r'kind'),
      );
    }
    return null;
  }

  static List<KindTotal> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <KindTotal>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KindTotal.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, KindTotal> mapFromJson(dynamic json) {
    final map = <String, KindTotal>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = KindTotal.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of KindTotal-objects as value to a dart map
  static Map<String, List<KindTotal>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<KindTotal>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = KindTotal.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

