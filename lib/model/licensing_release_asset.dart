//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LicensingReleaseAsset {
  /// Returns a new [LicensingReleaseAsset] instance.
  LicensingReleaseAsset({
    this.cosignCert,
    this.cosignSignature,
    this.downloadUrl,
    this.release,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cosignCert;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cosignSignature;

  /// DownloadURL is a short-lived signed URL to the artifact bytes. The scaffold returns the ArtifactRef as-is; production issues a signed URL.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? downloadUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LicensingRelease? release;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicensingReleaseAsset &&
    other.cosignCert == cosignCert &&
    other.cosignSignature == cosignSignature &&
    other.downloadUrl == downloadUrl &&
    other.release == release;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cosignCert == null ? 0 : cosignCert!.hashCode) +
    (cosignSignature == null ? 0 : cosignSignature!.hashCode) +
    (downloadUrl == null ? 0 : downloadUrl!.hashCode) +
    (release == null ? 0 : release!.hashCode);

  @override
  String toString() => 'LicensingReleaseAsset[cosignCert=$cosignCert, cosignSignature=$cosignSignature, downloadUrl=$downloadUrl, release=$release]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cosignCert != null) {
      json[r'cosign_cert'] = this.cosignCert;
    } else {
      json[r'cosign_cert'] = null;
    }
    if (this.cosignSignature != null) {
      json[r'cosign_signature'] = this.cosignSignature;
    } else {
      json[r'cosign_signature'] = null;
    }
    if (this.downloadUrl != null) {
      json[r'download_url'] = this.downloadUrl;
    } else {
      json[r'download_url'] = null;
    }
    if (this.release != null) {
      json[r'release'] = this.release;
    } else {
      json[r'release'] = null;
    }
    return json;
  }

  /// Returns a new [LicensingReleaseAsset] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicensingReleaseAsset? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LicensingReleaseAsset[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LicensingReleaseAsset[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LicensingReleaseAsset(
        cosignCert: mapValueOfType<String>(json, r'cosign_cert'),
        cosignSignature: mapValueOfType<String>(json, r'cosign_signature'),
        downloadUrl: mapValueOfType<String>(json, r'download_url'),
        release: LicensingRelease.fromJson(json[r'release']),
      );
    }
    return null;
  }

  static List<LicensingReleaseAsset> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicensingReleaseAsset>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicensingReleaseAsset.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicensingReleaseAsset> mapFromJson(dynamic json) {
    final map = <String, LicensingReleaseAsset>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicensingReleaseAsset.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicensingReleaseAsset-objects as value to a dart map
  static Map<String, List<LicensingReleaseAsset>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicensingReleaseAsset>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicensingReleaseAsset.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

