//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LicensingFingerprintResponse {
  /// Returns a new [LicensingFingerprintResponse] instance.
  LicensingFingerprintResponse({
    this.fingerprint,
    this.version,
  });

  /// Fingerprint is the OPAQUE binding value to pass to POST /v1/licensing/issue. It is one-way: the raw signals cannot be recovered from it and are never echoed back.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fingerprint;

  /// Version is the binding algorithm revision, so a stored fingerprint stays recognizable across a recipe rotation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicensingFingerprintResponse &&
    other.fingerprint == fingerprint &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fingerprint == null ? 0 : fingerprint!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'LicensingFingerprintResponse[fingerprint=$fingerprint, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.fingerprint != null) {
      json[r'fingerprint'] = this.fingerprint;
    } else {
      json[r'fingerprint'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [LicensingFingerprintResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicensingFingerprintResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LicensingFingerprintResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LicensingFingerprintResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LicensingFingerprintResponse(
        fingerprint: mapValueOfType<String>(json, r'fingerprint'),
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<LicensingFingerprintResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicensingFingerprintResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicensingFingerprintResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicensingFingerprintResponse> mapFromJson(dynamic json) {
    final map = <String, LicensingFingerprintResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicensingFingerprintResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicensingFingerprintResponse-objects as value to a dart map
  static Map<String, List<LicensingFingerprintResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicensingFingerprintResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicensingFingerprintResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

