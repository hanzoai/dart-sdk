//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskCause {
  /// Returns a new [RiskCause] instance.
  RiskCause({
    this.baseline,
    this.citation,
    this.feature,
    this.indicator,
    this.observed,
    this.severity,
    this.share,
    this.typology,
    this.unit,
    this.without,
  });
  /// Baseline is the number it was measured against — always this organisation's own history, never a fixed limit and never another organisation's.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? baseline;

  /// Citation is where those words come from, so the claim is checkable rather than asserted — which is what a chargeback network or a regulator asks for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? citation;

  /// Feature is the dimension that contributed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? feature;

  /// Indicator is the supervisor's own words for the thing being looked for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? indicator;

  /// Observed is the raw number the coordinate was computed from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? observed;

  /// Severity is how much weight this dimension carries.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? severity;

  /// Share is this feature's part of the score, in [0,1]. Zero across every cause means no single feature accounts for the alert and the combination does; the causes are then ordered by how far each sits from unremarkable.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? share;

  /// Typology is the laundering or abuse pattern this dimension detects.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? typology;

  /// Unit is how to read Observed, which is what turns a coordinate into a sentence.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unit;

  /// Without is the score the same event would have received with this coordinate at its neutral value — the counterfactual itself.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? without;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskCause &&
    other.baseline == baseline &&
    other.citation == citation &&
    other.feature == feature &&
    other.indicator == indicator &&
    other.observed == observed &&
    other.severity == severity &&
    other.share == share &&
    other.typology == typology &&
    other.unit == unit &&
    other.without == without;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (baseline == null ? 0 : baseline!.hashCode) +
    (citation == null ? 0 : citation!.hashCode) +
    (feature == null ? 0 : feature!.hashCode) +
    (indicator == null ? 0 : indicator!.hashCode) +
    (observed == null ? 0 : observed!.hashCode) +
    (severity == null ? 0 : severity!.hashCode) +
    (share == null ? 0 : share!.hashCode) +
    (typology == null ? 0 : typology!.hashCode) +
    (unit == null ? 0 : unit!.hashCode) +
    (without == null ? 0 : without!.hashCode);

  @override
  String toString() => 'RiskCause[baseline=$baseline, citation=$citation, feature=$feature, indicator=$indicator, observed=$observed, severity=$severity, share=$share, typology=$typology, unit=$unit, without=$without]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.baseline != null) {
      json[r'baseline'] = this.baseline;
    } else {
      json[r'baseline'] = null;
    }
    if (this.citation != null) {
      json[r'citation'] = this.citation;
    } else {
      json[r'citation'] = null;
    }
    if (this.feature != null) {
      json[r'feature'] = this.feature;
    } else {
      json[r'feature'] = null;
    }
    if (this.indicator != null) {
      json[r'indicator'] = this.indicator;
    } else {
      json[r'indicator'] = null;
    }
    if (this.observed != null) {
      json[r'observed'] = this.observed;
    } else {
      json[r'observed'] = null;
    }
    if (this.severity != null) {
      json[r'severity'] = this.severity;
    } else {
      json[r'severity'] = null;
    }
    if (this.share != null) {
      json[r'share'] = this.share;
    } else {
      json[r'share'] = null;
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
    if (this.without != null) {
      json[r'without'] = this.without;
    } else {
      json[r'without'] = null;
    }
    return json;
  }

  /// Returns a new [RiskCause] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskCause? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskCause[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskCause[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskCause(
        baseline: mapValueOfType<double>(json, r'baseline'),
        citation: mapValueOfType<String>(json, r'citation'),
        feature: mapValueOfType<String>(json, r'feature'),
        indicator: mapValueOfType<String>(json, r'indicator'),
        observed: mapValueOfType<double>(json, r'observed'),
        severity: mapValueOfType<String>(json, r'severity'),
        share: mapValueOfType<double>(json, r'share'),
        typology: mapValueOfType<String>(json, r'typology'),
        unit: mapValueOfType<String>(json, r'unit'),
        without: mapValueOfType<double>(json, r'without'),
      );
    }
    return null;
  }

  static List<RiskCause> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskCause>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskCause.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskCause> mapFromJson(dynamic json) {
    final map = <String, RiskCause>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskCause.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskCause-objects as value to a dart map
  static Map<String, List<RiskCause>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskCause>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskCause.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

