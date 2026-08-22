//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LicensingFingerprintRequest {
  /// Returns a new [LicensingFingerprintRequest] instance.
  LicensingFingerprintRequest({
    this.signals,
  });
  /// Signals is the host material the client agent collected. Which fields actually participate in the binding is deliberately unspecified — send everything available and let the server decide.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LicensingDeviceSignals? signals;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicensingFingerprintRequest &&
    other.signals == signals;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (signals == null ? 0 : signals!.hashCode);

  @override
  String toString() => 'LicensingFingerprintRequest[signals=$signals]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.signals != null) {
      json[r'signals'] = this.signals;
    } else {
      json[r'signals'] = null;
    }
    return json;
  }

  /// Returns a new [LicensingFingerprintRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicensingFingerprintRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LicensingFingerprintRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LicensingFingerprintRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LicensingFingerprintRequest(
        signals: LicensingDeviceSignals.fromJson(json[r'signals']),
      );
    }
    return null;
  }

  static List<LicensingFingerprintRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicensingFingerprintRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicensingFingerprintRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicensingFingerprintRequest> mapFromJson(dynamic json) {
    final map = <String, LicensingFingerprintRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicensingFingerprintRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicensingFingerprintRequest-objects as value to a dart map
  static Map<String, List<LicensingFingerprintRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicensingFingerprintRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicensingFingerprintRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

