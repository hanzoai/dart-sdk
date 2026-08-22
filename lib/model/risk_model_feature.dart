//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskModelFeature {
  /// Returns a new [RiskModelFeature] instance.
  RiskModelFeature({
    this.blind,
    this.citation,
    this.indicator,
    this.name,
    this.neutral,
    this.severity,
    this.typology,
    this.unit,
    this.window,
  });
  /// Blind is how often this dimension took that neutral value for THIS organisation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? blind;

  /// Citation is where those words come from, so the claim is checkable rather than asserted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? citation;

  /// Indicator is the supervisor's own words for the thing being looked for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? indicator;

  /// Name is the dimension.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Neutral is the value the coordinate takes when the data cannot support it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? neutral;

  /// Severity is how much weight an alert on it carries.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? severity;

  /// Typology is the pattern this dimension detects.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? typology;

  /// Unit is how to read the raw number, which is what turns a coordinate into a sentence an investigator can put in a file.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unit;

  /// Window is the sliding aggregate it reads.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? window;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskModelFeature &&
    other.blind == blind &&
    other.citation == citation &&
    other.indicator == indicator &&
    other.name == name &&
    other.neutral == neutral &&
    other.severity == severity &&
    other.typology == typology &&
    other.unit == unit &&
    other.window == window;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (blind == null ? 0 : blind!.hashCode) +
    (citation == null ? 0 : citation!.hashCode) +
    (indicator == null ? 0 : indicator!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (neutral == null ? 0 : neutral!.hashCode) +
    (severity == null ? 0 : severity!.hashCode) +
    (typology == null ? 0 : typology!.hashCode) +
    (unit == null ? 0 : unit!.hashCode) +
    (window == null ? 0 : window!.hashCode);

  @override
  String toString() => 'RiskModelFeature[blind=$blind, citation=$citation, indicator=$indicator, name=$name, neutral=$neutral, severity=$severity, typology=$typology, unit=$unit, window=$window]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.blind != null) {
      json[r'blind'] = this.blind;
    } else {
      json[r'blind'] = null;
    }
    if (this.citation != null) {
      json[r'citation'] = this.citation;
    } else {
      json[r'citation'] = null;
    }
    if (this.indicator != null) {
      json[r'indicator'] = this.indicator;
    } else {
      json[r'indicator'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.neutral != null) {
      json[r'neutral'] = this.neutral;
    } else {
      json[r'neutral'] = null;
    }
    if (this.severity != null) {
      json[r'severity'] = this.severity;
    } else {
      json[r'severity'] = null;
    }
    if (this.typology != null) {
      json[r'typology'] = this.typology;
    } else {
      json[r'typology'] = null;
    }
    if (this.unit != null) {
      json[r'unit'] = this.unit;
    } else {
      json[r'unit'] = null;
    }
    if (this.window != null) {
      json[r'window'] = this.window;
    } else {
      json[r'window'] = null;
    }
    return json;
  }

  /// Returns a new [RiskModelFeature] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskModelFeature? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskModelFeature[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskModelFeature[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskModelFeature(
        blind: mapValueOfType<int>(json, r'blind'),
        citation: mapValueOfType<String>(json, r'citation'),
        indicator: mapValueOfType<String>(json, r'indicator'),
        name: mapValueOfType<String>(json, r'name'),
        neutral: num.parse('${json[r'neutral']}'),
        severity: mapValueOfType<String>(json, r'severity'),
        typology: mapValueOfType<String>(json, r'typology'),
        unit: mapValueOfType<String>(json, r'unit'),
        window: mapValueOfType<String>(json, r'window'),
      );
    }
    return null;
  }

  static List<RiskModelFeature> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskModelFeature>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskModelFeature.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskModelFeature> mapFromJson(dynamic json) {
    final map = <String, RiskModelFeature>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskModelFeature.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskModelFeature-objects as value to a dart map
  static Map<String, List<RiskModelFeature>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskModelFeature>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskModelFeature.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

