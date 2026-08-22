//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TrustCoverage {
  /// Returns a new [TrustCoverage] instance.
  TrustCoverage({
    this.controls,
    this.frameworks = const [],
    this.generated,
    this.version,
  });
  /// Controls is how the controls stand, independent of any framework.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TrustTally? controls;

  /// Frameworks is the per-framework counts.
  List<CoverRow> frameworks;

  /// Generated is when this was computed, unix milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? generated;

  /// Version is the embedded inventory's version.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrustCoverage &&
    other.controls == controls &&
    _deepEquality.equals(other.frameworks, frameworks) &&
    other.generated == generated &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (controls == null ? 0 : controls!.hashCode) +
    (frameworks.hashCode) +
    (generated == null ? 0 : generated!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'TrustCoverage[controls=$controls, frameworks=$frameworks, generated=$generated, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.controls != null) {
      json[r'controls'] = this.controls;
    } else {
      json[r'controls'] = null;
    }
      json[r'frameworks'] = this.frameworks;
    if (this.generated != null) {
      json[r'generated'] = this.generated;
    } else {
      json[r'generated'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [TrustCoverage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrustCoverage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrustCoverage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrustCoverage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrustCoverage(
        controls: TrustTally.fromJson(json[r'controls']),
        frameworks: CoverRow.listFromJson(json[r'frameworks']),
        generated: mapValueOfType<int>(json, r'generated'),
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<TrustCoverage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrustCoverage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrustCoverage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrustCoverage> mapFromJson(dynamic json) {
    final map = <String, TrustCoverage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrustCoverage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrustCoverage-objects as value to a dart map
  static Map<String, List<TrustCoverage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrustCoverage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrustCoverage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

