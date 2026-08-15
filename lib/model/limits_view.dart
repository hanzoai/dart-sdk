//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LimitsView {
  /// Returns a new [LimitsView] instance.
  LimitsView({
    this.limits,
    this.plan,
    this.unit,
  });

  /// Limits is the plan's decision.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LimitsBlock? limits;

  /// Plan echoes the plan id the limits were resolved for, after the empty-means- world-free default.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? plan;

  /// Unit names what the two rate numbers are counted in: requests/minute.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LimitsView &&
    other.limits == limits &&
    other.plan == plan &&
    other.unit == unit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (limits == null ? 0 : limits!.hashCode) +
    (plan == null ? 0 : plan!.hashCode) +
    (unit == null ? 0 : unit!.hashCode);

  @override
  String toString() => 'LimitsView[limits=$limits, plan=$plan, unit=$unit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.limits != null) {
      json[r'limits'] = this.limits;
    } else {
      json[r'limits'] = null;
    }
    if (this.plan != null) {
      json[r'plan'] = this.plan;
    } else {
      json[r'plan'] = null;
    }
    if (this.unit != null) {
      json[r'unit'] = this.unit;
    } else {
      json[r'unit'] = null;
    }
    return json;
  }

  /// Returns a new [LimitsView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LimitsView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LimitsView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LimitsView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LimitsView(
        limits: LimitsBlock.fromJson(json[r'limits']),
        plan: mapValueOfType<String>(json, r'plan'),
        unit: mapValueOfType<String>(json, r'unit'),
      );
    }
    return null;
  }

  static List<LimitsView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LimitsView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LimitsView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LimitsView> mapFromJson(dynamic json) {
    final map = <String, LimitsView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LimitsView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LimitsView-objects as value to a dart map
  static Map<String, List<LimitsView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LimitsView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LimitsView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

