//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LicensingVerifyResponse {
  /// Returns a new [LicensingVerifyResponse] instance.
  LicensingVerifyResponse({
    this.appId,
    this.exp,
    this.features = const [],
    this.fingerprintBound,
    this.holder,
    this.nonce,
    this.reason,
    this.revoked,
    this.valid,
  });
  /// AppID is the brand the token runs under.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? appId;

  /// Exp is the token's expiry, Unix seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? exp;

  /// Features are the capability grants the token carries.
  List<String> features;

  /// Bound reports that the token carries a device binding.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? fingerprintBound;

  /// Holder is who the token was issued to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? holder;

  /// Nonce uniquely identifies the token.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nonce;

  /// Reason says why an invalid token was rejected. Empty when Valid.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  /// Revoked reports that the signature was good but the token has been revoked.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? revoked;

  /// Valid is the single answer: signature, schema, expiry, app and revocation all passed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? valid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicensingVerifyResponse &&
    other.appId == appId &&
    other.exp == exp &&
    _deepEquality.equals(other.features, features) &&
    other.fingerprintBound == fingerprintBound &&
    other.holder == holder &&
    other.nonce == nonce &&
    other.reason == reason &&
    other.revoked == revoked &&
    other.valid == valid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (appId == null ? 0 : appId!.hashCode) +
    (exp == null ? 0 : exp!.hashCode) +
    (features.hashCode) +
    (fingerprintBound == null ? 0 : fingerprintBound!.hashCode) +
    (holder == null ? 0 : holder!.hashCode) +
    (nonce == null ? 0 : nonce!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (revoked == null ? 0 : revoked!.hashCode) +
    (valid == null ? 0 : valid!.hashCode);

  @override
  String toString() => 'LicensingVerifyResponse[appId=$appId, exp=$exp, features=$features, fingerprintBound=$fingerprintBound, holder=$holder, nonce=$nonce, reason=$reason, revoked=$revoked, valid=$valid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.appId != null) {
      json[r'app_id'] = this.appId;
    } else {
      json[r'app_id'] = null;
    }
    if (this.exp != null) {
      json[r'exp'] = this.exp;
    } else {
      json[r'exp'] = null;
    }
      json[r'features'] = this.features;
    if (this.fingerprintBound != null) {
      json[r'fingerprint_bound'] = this.fingerprintBound;
    } else {
      json[r'fingerprint_bound'] = null;
    }
    if (this.holder != null) {
      json[r'holder'] = this.holder;
    } else {
      json[r'holder'] = null;
    }
    if (this.nonce != null) {
      json[r'nonce'] = this.nonce;
    } else {
      json[r'nonce'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    if (this.revoked != null) {
      json[r'revoked'] = this.revoked;
    } else {
      json[r'revoked'] = null;
    }
    if (this.valid != null) {
      json[r'valid'] = this.valid;
    } else {
      json[r'valid'] = null;
    }
    return json;
  }

  /// Returns a new [LicensingVerifyResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicensingVerifyResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LicensingVerifyResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LicensingVerifyResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LicensingVerifyResponse(
        appId: mapValueOfType<String>(json, r'app_id'),
        exp: mapValueOfType<int>(json, r'exp'),
        features: json[r'features'] is Iterable
            ? (json[r'features'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        fingerprintBound: mapValueOfType<bool>(json, r'fingerprint_bound'),
        holder: mapValueOfType<String>(json, r'holder'),
        nonce: mapValueOfType<String>(json, r'nonce'),
        reason: mapValueOfType<String>(json, r'reason'),
        revoked: mapValueOfType<bool>(json, r'revoked'),
        valid: mapValueOfType<bool>(json, r'valid'),
      );
    }
    return null;
  }

  static List<LicensingVerifyResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicensingVerifyResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicensingVerifyResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicensingVerifyResponse> mapFromJson(dynamic json) {
    final map = <String, LicensingVerifyResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicensingVerifyResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicensingVerifyResponse-objects as value to a dart map
  static Map<String, List<LicensingVerifyResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicensingVerifyResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicensingVerifyResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

