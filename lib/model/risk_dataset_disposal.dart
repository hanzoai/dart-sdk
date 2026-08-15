//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskDatasetDisposal {
  /// Returns a new [RiskDatasetDisposal] instance.
  RiskDatasetDisposal({
    this.dataset,
    this.rows,
    this.versions,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataset;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rows;

  /// Versions is how many versions went, and Rows how many rows they held between them, as the register recorded them.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? versions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskDatasetDisposal &&
    other.dataset == dataset &&
    other.rows == rows &&
    other.versions == versions;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dataset == null ? 0 : dataset!.hashCode) +
    (rows == null ? 0 : rows!.hashCode) +
    (versions == null ? 0 : versions!.hashCode);

  @override
  String toString() => 'RiskDatasetDisposal[dataset=$dataset, rows=$rows, versions=$versions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.dataset != null) {
      json[r'dataset'] = this.dataset;
    } else {
      json[r'dataset'] = null;
    }
    if (this.rows != null) {
      json[r'rows'] = this.rows;
    } else {
      json[r'rows'] = null;
    }
    if (this.versions != null) {
      json[r'versions'] = this.versions;
    } else {
      json[r'versions'] = null;
    }
    return json;
  }

  /// Returns a new [RiskDatasetDisposal] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskDatasetDisposal? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskDatasetDisposal[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskDatasetDisposal[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskDatasetDisposal(
        dataset: mapValueOfType<String>(json, r'dataset'),
        rows: mapValueOfType<int>(json, r'rows'),
        versions: mapValueOfType<int>(json, r'versions'),
      );
    }
    return null;
  }

  static List<RiskDatasetDisposal> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskDatasetDisposal>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskDatasetDisposal.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskDatasetDisposal> mapFromJson(dynamic json) {
    final map = <String, RiskDatasetDisposal>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskDatasetDisposal.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskDatasetDisposal-objects as value to a dart map
  static Map<String, List<RiskDatasetDisposal>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskDatasetDisposal>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskDatasetDisposal.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

