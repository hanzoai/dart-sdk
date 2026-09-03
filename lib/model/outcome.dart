//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Outcome {
  /// Returns a new [Outcome] instance.
  Outcome({
    this.control,
    this.converted,
    this.exposed,
    this.lift,
    this.pValue,
    this.rate,
    this.significant,
    this.variant,
    this.z,
  });
  /// true on the baseline arm; its own lift and stats are zero
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? control;

  /// of those, how many fired the metric event
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? converted;

  /// subjects the arm enrolled — the denominator
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? exposed;

  /// relative to control: (rate-ctrl)/ctrl
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? lift;

  /// two-tailed p vs control
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? pValue;

  /// converted over exposed
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? rate;

  /// pValue < alpha
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? significant;

  /// the arm this row measures
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? variant;

  /// two-proportion z vs control
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? z;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Outcome &&
    other.control == control &&
    other.converted == converted &&
    other.exposed == exposed &&
    other.lift == lift &&
    other.pValue == pValue &&
    other.rate == rate &&
    other.significant == significant &&
    other.variant == variant &&
    other.z == z;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (control == null ? 0 : control!.hashCode) +
    (converted == null ? 0 : converted!.hashCode) +
    (exposed == null ? 0 : exposed!.hashCode) +
    (lift == null ? 0 : lift!.hashCode) +
    (pValue == null ? 0 : pValue!.hashCode) +
    (rate == null ? 0 : rate!.hashCode) +
    (significant == null ? 0 : significant!.hashCode) +
    (variant == null ? 0 : variant!.hashCode) +
    (z == null ? 0 : z!.hashCode);

  @override
  String toString() => 'Outcome[control=$control, converted=$converted, exposed=$exposed, lift=$lift, pValue=$pValue, rate=$rate, significant=$significant, variant=$variant, z=$z]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.control != null) {
      json[r'control'] = this.control;
    } else {
      json[r'control'] = null;
    }
    if (this.converted != null) {
      json[r'converted'] = this.converted;
    } else {
      json[r'converted'] = null;
    }
    if (this.exposed != null) {
      json[r'exposed'] = this.exposed;
    } else {
      json[r'exposed'] = null;
    }
    if (this.lift != null) {
      json[r'lift'] = this.lift;
    } else {
      json[r'lift'] = null;
    }
    if (this.pValue != null) {
      json[r'pValue'] = this.pValue;
    } else {
      json[r'pValue'] = null;
    }
    if (this.rate != null) {
      json[r'rate'] = this.rate;
    } else {
      json[r'rate'] = null;
    }
    if (this.significant != null) {
      json[r'significant'] = this.significant;
    } else {
      json[r'significant'] = null;
    }
    if (this.variant != null) {
      json[r'variant'] = this.variant;
    } else {
      json[r'variant'] = null;
    }
    if (this.z != null) {
      json[r'z'] = this.z;
    } else {
      json[r'z'] = null;
    }
    return json;
  }

  /// Returns a new [Outcome] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Outcome? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Outcome[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Outcome[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Outcome(
        control: mapValueOfType<bool>(json, r'control'),
        converted: mapValueOfType<int>(json, r'converted'),
        exposed: mapValueOfType<int>(json, r'exposed'),
        lift: mapValueOfType<double>(json, r'lift'),
        pValue: mapValueOfType<double>(json, r'pValue'),
        rate: mapValueOfType<double>(json, r'rate'),
        significant: mapValueOfType<bool>(json, r'significant'),
        variant: mapValueOfType<String>(json, r'variant'),
        z: mapValueOfType<double>(json, r'z'),
      );
    }
    return null;
  }

  static List<Outcome> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Outcome>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Outcome.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Outcome> mapFromJson(dynamic json) {
    final map = <String, Outcome>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Outcome.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Outcome-objects as value to a dart map
  static Map<String, List<Outcome>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Outcome>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Outcome.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

