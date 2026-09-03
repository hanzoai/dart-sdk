//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskOrgFeature {
  /// Returns a new [RiskOrgFeature] instance.
  RiskOrgFeature({
    this.blind,
    this.buckets,
    this.max,
    this.mean,
    this.name,
    this.present,
    this.source_,
    this.unit,
  });
  /// Blind is true when the dimension is present in no bucket at all: this organisation's surface does not carry it, and saying so is the difference between no risk and no data.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? blind;

  /// Buckets is how many five-minute buckets of this organisation's surface were measured.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? buckets;

  /// Max is the largest value it reached in the window.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? max;

  /// Mean is the dimension's average where it was present.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? mean;

  /// Name is the dimension as this API publishes it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Present is in how many of them the dimension carried a value at all.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? present;

  /// Source names the plane it is rolled up from, so a dimension that reads zero everywhere traces to a plane the organisation does not use rather than to a defect.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Unit is how to read the numbers below.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskOrgFeature &&
    other.blind == blind &&
    other.buckets == buckets &&
    other.max == max &&
    other.mean == mean &&
    other.name == name &&
    other.present == present &&
    other.source_ == source_ &&
    other.unit == unit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (blind == null ? 0 : blind!.hashCode) +
    (buckets == null ? 0 : buckets!.hashCode) +
    (max == null ? 0 : max!.hashCode) +
    (mean == null ? 0 : mean!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (present == null ? 0 : present!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (unit == null ? 0 : unit!.hashCode);

  @override
  String toString() => 'RiskOrgFeature[blind=$blind, buckets=$buckets, max=$max, mean=$mean, name=$name, present=$present, source_=$source_, unit=$unit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.blind != null) {
      json[r'blind'] = this.blind;
    } else {
      json[r'blind'] = null;
    }
    if (this.buckets != null) {
      json[r'buckets'] = this.buckets;
    } else {
      json[r'buckets'] = null;
    }
    if (this.max != null) {
      json[r'max'] = this.max;
    } else {
      json[r'max'] = null;
    }
    if (this.mean != null) {
      json[r'mean'] = this.mean;
    } else {
      json[r'mean'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.present != null) {
      json[r'present'] = this.present;
    } else {
      json[r'present'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.unit != null) {
      json[r'unit'] = this.unit;
    } else {
      json[r'unit'] = null;
    }
    return json;
  }

  /// Returns a new [RiskOrgFeature] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskOrgFeature? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskOrgFeature[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskOrgFeature[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskOrgFeature(
        blind: mapValueOfType<bool>(json, r'blind'),
        buckets: mapValueOfType<int>(json, r'buckets'),
        max: mapValueOfType<double>(json, r'max'),
        mean: mapValueOfType<double>(json, r'mean'),
        name: mapValueOfType<String>(json, r'name'),
        present: mapValueOfType<int>(json, r'present'),
        source_: mapValueOfType<String>(json, r'source'),
        unit: mapValueOfType<String>(json, r'unit'),
      );
    }
    return null;
  }

  static List<RiskOrgFeature> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskOrgFeature>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskOrgFeature.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskOrgFeature> mapFromJson(dynamic json) {
    final map = <String, RiskOrgFeature>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskOrgFeature.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskOrgFeature-objects as value to a dart map
  static Map<String, List<RiskOrgFeature>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskOrgFeature>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskOrgFeature.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

