//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SubsystemTotals {
  /// Returns a new [SubsystemTotals] instance.
  SubsystemTotals({
    this.disabled,
    this.enabled,
    this.errorRate,
    this.errors,
    this.reporting,
    this.requests,
    this.subsystems,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? disabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? enabled;

  /// percent (0..100)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? errorRate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? errors;

  /// enabled AND served ≥1 traced request in the window
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? reporting;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? requests;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? subsystems;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SubsystemTotals &&
    other.disabled == disabled &&
    other.enabled == enabled &&
    other.errorRate == errorRate &&
    other.errors == errors &&
    other.reporting == reporting &&
    other.requests == requests &&
    other.subsystems == subsystems;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (disabled == null ? 0 : disabled!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode) +
    (errorRate == null ? 0 : errorRate!.hashCode) +
    (errors == null ? 0 : errors!.hashCode) +
    (reporting == null ? 0 : reporting!.hashCode) +
    (requests == null ? 0 : requests!.hashCode) +
    (subsystems == null ? 0 : subsystems!.hashCode);

  @override
  String toString() => 'SubsystemTotals[disabled=$disabled, enabled=$enabled, errorRate=$errorRate, errors=$errors, reporting=$reporting, requests=$requests, subsystems=$subsystems]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.disabled != null) {
      json[r'disabled'] = this.disabled;
    } else {
      json[r'disabled'] = null;
    }
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    if (this.errorRate != null) {
      json[r'errorRate'] = this.errorRate;
    } else {
      json[r'errorRate'] = null;
    }
    if (this.errors != null) {
      json[r'errors'] = this.errors;
    } else {
      json[r'errors'] = null;
    }
    if (this.reporting != null) {
      json[r'reporting'] = this.reporting;
    } else {
      json[r'reporting'] = null;
    }
    if (this.requests != null) {
      json[r'requests'] = this.requests;
    } else {
      json[r'requests'] = null;
    }
    if (this.subsystems != null) {
      json[r'subsystems'] = this.subsystems;
    } else {
      json[r'subsystems'] = null;
    }
    return json;
  }

  /// Returns a new [SubsystemTotals] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SubsystemTotals? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SubsystemTotals[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SubsystemTotals[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SubsystemTotals(
        disabled: mapValueOfType<int>(json, r'disabled'),
        enabled: mapValueOfType<int>(json, r'enabled'),
        errorRate: num.parse('${json[r'errorRate']}'),
        errors: mapValueOfType<int>(json, r'errors'),
        reporting: mapValueOfType<int>(json, r'reporting'),
        requests: mapValueOfType<int>(json, r'requests'),
        subsystems: mapValueOfType<int>(json, r'subsystems'),
      );
    }
    return null;
  }

  static List<SubsystemTotals> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubsystemTotals>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubsystemTotals.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SubsystemTotals> mapFromJson(dynamic json) {
    final map = <String, SubsystemTotals>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SubsystemTotals.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SubsystemTotals-objects as value to a dart map
  static Map<String, List<SubsystemTotals>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SubsystemTotals>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SubsystemTotals.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

