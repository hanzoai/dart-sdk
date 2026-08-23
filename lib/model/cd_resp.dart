//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CdResp {
  /// Returns a new [CdResp] instance.
  CdResp({
    this.applications = const [],
  });
  List<CDApp> applications;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CdResp &&
    _deepEquality.equals(other.applications, applications);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (applications.hashCode);

  @override
  String toString() => 'CdResp[applications=$applications]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'applications'] = this.applications;
    return json;
  }

  /// Returns a new [CdResp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CdResp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CdResp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CdResp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CdResp(
        applications: CDApp.listFromJson(json[r'applications']),
      );
    }
    return null;
  }

  static List<CdResp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CdResp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CdResp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CdResp> mapFromJson(dynamic json) {
    final map = <String, CdResp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CdResp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CdResp-objects as value to a dart map
  static Map<String, List<CdResp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CdResp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CdResp.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

