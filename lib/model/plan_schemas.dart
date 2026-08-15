//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PlanSchemas {
  /// Returns a new [PlanSchemas] instance.
  PlanSchemas({
    this.entitlements,
    this.plan,
  });

  Object? entitlements;

  Object? plan;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PlanSchemas &&
    other.entitlements == entitlements &&
    other.plan == plan;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entitlements == null ? 0 : entitlements!.hashCode) +
    (plan == null ? 0 : plan!.hashCode);

  @override
  String toString() => 'PlanSchemas[entitlements=$entitlements, plan=$plan]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.entitlements != null) {
      json[r'entitlements'] = this.entitlements;
    } else {
      json[r'entitlements'] = null;
    }
    if (this.plan != null) {
      json[r'plan'] = this.plan;
    } else {
      json[r'plan'] = null;
    }
    return json;
  }

  /// Returns a new [PlanSchemas] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PlanSchemas? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PlanSchemas[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PlanSchemas[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PlanSchemas(
        entitlements: mapValueOfType<Object>(json, r'entitlements'),
        plan: mapValueOfType<Object>(json, r'plan'),
      );
    }
    return null;
  }

  static List<PlanSchemas> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PlanSchemas>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlanSchemas.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PlanSchemas> mapFromJson(dynamic json) {
    final map = <String, PlanSchemas>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PlanSchemas.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PlanSchemas-objects as value to a dart map
  static Map<String, List<PlanSchemas>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PlanSchemas>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PlanSchemas.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

