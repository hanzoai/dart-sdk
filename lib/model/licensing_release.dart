//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LicensingRelease {
  /// Returns a new [LicensingRelease] instance.
  LicensingRelease({
    this.appId,
    this.artifactRef,
    this.cosignCert,
    this.cosignSignature,
    this.createdAt,
    this.id,
    this.minFeatures = const [],
    this.platform,
    this.product,
    this.sha256,
    this.version,
    this.yanked,
  });
  /// AppID scopes the release to an app build (\"hanzo\" | \"lux\" | \"zoo\").
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? appId;

  /// ArtifactRef is where the binary lives (object-store key / OCI ref / path).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? artifactRef;

  /// CosignCert is the cosign/Fulcio cert (keyless) or public key ref used to verify CosignSignature. The download response hands this to the client.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cosignCert;

  /// CosignSignature is the base64 cosign signature over the artifact digest.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cosignSignature;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// ID is the release identifier, e.g. \"engine-rocm-0.4.2-linux-amd64\". The accelerator belongs here — one product is built several ways — and never in Product below.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// MinFeatures, when set, are features the license must include to download.
  List<String> minFeatures;

  /// Platform is \"<os>/<arch>\", e.g. \"linux/amd64\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? platform;

  /// Product is the licensed product this artifact belongs to (commerce SKU): \"engine\" for every one of those builds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? product;

  /// SHA256 is the hex digest of the artifact (integrity + cosign subject).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sha256;

  /// Version is the semantic version of the binary.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  /// Yanked marks a pulled release (download refused; tokens may be revoked release-scoped too).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? yanked;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicensingRelease &&
    other.appId == appId &&
    other.artifactRef == artifactRef &&
    other.cosignCert == cosignCert &&
    other.cosignSignature == cosignSignature &&
    other.createdAt == createdAt &&
    other.id == id &&
    _deepEquality.equals(other.minFeatures, minFeatures) &&
    other.platform == platform &&
    other.product == product &&
    other.sha256 == sha256 &&
    other.version == version &&
    other.yanked == yanked;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (appId == null ? 0 : appId!.hashCode) +
    (artifactRef == null ? 0 : artifactRef!.hashCode) +
    (cosignCert == null ? 0 : cosignCert!.hashCode) +
    (cosignSignature == null ? 0 : cosignSignature!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (minFeatures.hashCode) +
    (platform == null ? 0 : platform!.hashCode) +
    (product == null ? 0 : product!.hashCode) +
    (sha256 == null ? 0 : sha256!.hashCode) +
    (version == null ? 0 : version!.hashCode) +
    (yanked == null ? 0 : yanked!.hashCode);

  @override
  String toString() => 'LicensingRelease[appId=$appId, artifactRef=$artifactRef, cosignCert=$cosignCert, cosignSignature=$cosignSignature, createdAt=$createdAt, id=$id, minFeatures=$minFeatures, platform=$platform, product=$product, sha256=$sha256, version=$version, yanked=$yanked]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.appId != null) {
      json[r'app_id'] = this.appId;
    } else {
      json[r'app_id'] = null;
    }
    if (this.artifactRef != null) {
      json[r'artifact_ref'] = this.artifactRef;
    } else {
      json[r'artifact_ref'] = null;
    }
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
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt;
    } else {
      json[r'created_at'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'min_features'] = this.minFeatures;
    if (this.platform != null) {
      json[r'platform'] = this.platform;
    } else {
      json[r'platform'] = null;
    }
    if (this.product != null) {
      json[r'product'] = this.product;
    } else {
      json[r'product'] = null;
    }
    if (this.sha256 != null) {
      json[r'sha256'] = this.sha256;
    } else {
      json[r'sha256'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    if (this.yanked != null) {
      json[r'yanked'] = this.yanked;
    } else {
      json[r'yanked'] = null;
    }
    return json;
  }

  /// Returns a new [LicensingRelease] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicensingRelease? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LicensingRelease[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LicensingRelease[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LicensingRelease(
        appId: mapValueOfType<String>(json, r'app_id'),
        artifactRef: mapValueOfType<String>(json, r'artifact_ref'),
        cosignCert: mapValueOfType<String>(json, r'cosign_cert'),
        cosignSignature: mapValueOfType<String>(json, r'cosign_signature'),
        createdAt: mapValueOfType<int>(json, r'created_at'),
        id: mapValueOfType<String>(json, r'id'),
        minFeatures: json[r'min_features'] is Iterable
            ? (json[r'min_features'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        platform: mapValueOfType<String>(json, r'platform'),
        product: mapValueOfType<String>(json, r'product'),
        sha256: mapValueOfType<String>(json, r'sha256'),
        version: mapValueOfType<String>(json, r'version'),
        yanked: mapValueOfType<bool>(json, r'yanked'),
      );
    }
    return null;
  }

  static List<LicensingRelease> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicensingRelease>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicensingRelease.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicensingRelease> mapFromJson(dynamic json) {
    final map = <String, LicensingRelease>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicensingRelease.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicensingRelease-objects as value to a dart map
  static Map<String, List<LicensingRelease>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicensingRelease>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicensingRelease.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

