//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yReductionStats {
  /// Returns a new [O11yO11yReductionStats] instance.
  O11yO11yReductionStats({
    this.estimatedMonthlySavingsUsd,
    this.ingestedSamples,
    this.ingestedSeries,
    this.retainedSamples,
    this.retainedSeries,
  });

  /// EstimatedMonthlySavingsUsd is the estimated monthly savings, in USD.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? estimatedMonthlySavingsUsd;

  /// IngestedSamples is how many samples arrived across all rules.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ingestedSamples;

  /// IngestedSeries is how many series arrived across all rules.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ingestedSeries;

  /// RetainedSamples is how many of them were kept.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? retainedSamples;

  /// RetainedSeries is how many of them were kept.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? retainedSeries;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yReductionStats &&
    other.estimatedMonthlySavingsUsd == estimatedMonthlySavingsUsd &&
    other.ingestedSamples == ingestedSamples &&
    other.ingestedSeries == ingestedSeries &&
    other.retainedSamples == retainedSamples &&
    other.retainedSeries == retainedSeries;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (estimatedMonthlySavingsUsd == null ? 0 : estimatedMonthlySavingsUsd!.hashCode) +
    (ingestedSamples == null ? 0 : ingestedSamples!.hashCode) +
    (ingestedSeries == null ? 0 : ingestedSeries!.hashCode) +
    (retainedSamples == null ? 0 : retainedSamples!.hashCode) +
    (retainedSeries == null ? 0 : retainedSeries!.hashCode);

  @override
  String toString() => 'O11yO11yReductionStats[estimatedMonthlySavingsUsd=$estimatedMonthlySavingsUsd, ingestedSamples=$ingestedSamples, ingestedSeries=$ingestedSeries, retainedSamples=$retainedSamples, retainedSeries=$retainedSeries]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.estimatedMonthlySavingsUsd != null) {
      json[r'estimatedMonthlySavingsUsd'] = this.estimatedMonthlySavingsUsd;
    } else {
      json[r'estimatedMonthlySavingsUsd'] = null;
    }
    if (this.ingestedSamples != null) {
      json[r'ingestedSamples'] = this.ingestedSamples;
    } else {
      json[r'ingestedSamples'] = null;
    }
    if (this.ingestedSeries != null) {
      json[r'ingestedSeries'] = this.ingestedSeries;
    } else {
      json[r'ingestedSeries'] = null;
    }
    if (this.retainedSamples != null) {
      json[r'retainedSamples'] = this.retainedSamples;
    } else {
      json[r'retainedSamples'] = null;
    }
    if (this.retainedSeries != null) {
      json[r'retainedSeries'] = this.retainedSeries;
    } else {
      json[r'retainedSeries'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yReductionStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yReductionStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yReductionStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yReductionStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yReductionStats(
        estimatedMonthlySavingsUsd: num.parse('${json[r'estimatedMonthlySavingsUsd']}'),
        ingestedSamples: mapValueOfType<int>(json, r'ingestedSamples'),
        ingestedSeries: mapValueOfType<int>(json, r'ingestedSeries'),
        retainedSamples: mapValueOfType<int>(json, r'retainedSamples'),
        retainedSeries: mapValueOfType<int>(json, r'retainedSeries'),
      );
    }
    return null;
  }

  static List<O11yO11yReductionStats> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yReductionStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yReductionStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yReductionStats> mapFromJson(dynamic json) {
    final map = <String, O11yO11yReductionStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yReductionStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yReductionStats-objects as value to a dart map
  static Map<String, List<O11yO11yReductionStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yReductionStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yReductionStats.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

