//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ScanDetail {
  /// Returns a new [ScanDetail] instance.
  ScanDetail({
    this.findings = const [],
    this.scan,
  });
  /// Findings is every finding on that scan, so the detail view is one round-trip.
  List<FindingView> findings;

  /// Scan is the summary.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ScanView? scan;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScanDetail &&
    _deepEquality.equals(other.findings, findings) &&
    other.scan == scan;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (findings.hashCode) +
    (scan == null ? 0 : scan!.hashCode);

  @override
  String toString() => 'ScanDetail[findings=$findings, scan=$scan]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'findings'] = this.findings;
    if (this.scan != null) {
      json[r'scan'] = this.scan;
    } else {
      json[r'scan'] = null;
    }
    return json;
  }

  /// Returns a new [ScanDetail] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScanDetail? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScanDetail[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScanDetail[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScanDetail(
        findings: FindingView.listFromJson(json[r'findings']),
        scan: ScanView.fromJson(json[r'scan']),
      );
    }
    return null;
  }

  static List<ScanDetail> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScanDetail>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScanDetail.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScanDetail> mapFromJson(dynamic json) {
    final map = <String, ScanDetail>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScanDetail.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScanDetail-objects as value to a dart map
  static Map<String, List<ScanDetail>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScanDetail>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScanDetail.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

