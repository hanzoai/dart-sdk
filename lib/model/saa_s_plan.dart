//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SaaSPlan {
  /// Returns a new [SaaSPlan] instance.
  SaaSPlan({
    this.active,
    this.category,
    this.mrrCents,
    this.name,
    this.plan,
    this.seats,
    this.trialing,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? active;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mrrCents;

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
  String? plan;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? seats;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? trialing;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SaaSPlan &&
    other.active == active &&
    other.category == category &&
    other.mrrCents == mrrCents &&
    other.name == name &&
    other.plan == plan &&
    other.seats == seats &&
    other.trialing == trialing;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (active == null ? 0 : active!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (mrrCents == null ? 0 : mrrCents!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (plan == null ? 0 : plan!.hashCode) +
    (seats == null ? 0 : seats!.hashCode) +
    (trialing == null ? 0 : trialing!.hashCode);

  @override
  String toString() => 'SaaSPlan[active=$active, category=$category, mrrCents=$mrrCents, name=$name, plan=$plan, seats=$seats, trialing=$trialing]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.mrrCents != null) {
      json[r'mrrCents'] = this.mrrCents;
    } else {
      json[r'mrrCents'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.plan != null) {
      json[r'plan'] = this.plan;
    } else {
      json[r'plan'] = null;
    }
    if (this.seats != null) {
      json[r'seats'] = this.seats;
    } else {
      json[r'seats'] = null;
    }
    if (this.trialing != null) {
      json[r'trialing'] = this.trialing;
    } else {
      json[r'trialing'] = null;
    }
    return json;
  }

  /// Returns a new [SaaSPlan] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SaaSPlan? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SaaSPlan[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SaaSPlan[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SaaSPlan(
        active: mapValueOfType<int>(json, r'active'),
        category: mapValueOfType<String>(json, r'category'),
        mrrCents: mapValueOfType<int>(json, r'mrrCents'),
        name: mapValueOfType<String>(json, r'name'),
        plan: mapValueOfType<String>(json, r'plan'),
        seats: mapValueOfType<int>(json, r'seats'),
        trialing: mapValueOfType<int>(json, r'trialing'),
      );
    }
    return null;
  }

  static List<SaaSPlan> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SaaSPlan>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SaaSPlan.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SaaSPlan> mapFromJson(dynamic json) {
    final map = <String, SaaSPlan>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SaaSPlan.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SaaSPlan-objects as value to a dart map
  static Map<String, List<SaaSPlan>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SaaSPlan>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SaaSPlan.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

