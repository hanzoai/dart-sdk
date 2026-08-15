//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LicensingIssueResponse {
  /// Returns a new [LicensingIssueResponse] instance.
  LicensingIssueResponse({
    this.appId,
    this.exp,
    this.features = const [],
    this.fingerprintBound,
    this.holder,
    this.nonce,
    this.token,
  });

  /// AppID is the brand this token runs under (\"hanzo\" | \"lux\" | \"zoo\"). The engine refuses a token whose app_id is not the one it was built for.
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

  /// Features are the capability grants copied verbatim from the plan the org bought. The engine enforces exactly these.
  List<String> features;

  /// Bound reports whether a device fingerprint was folded into the token. An unbound token runs on any machine; a bound one runs only on the machine it was bound to.
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

  /// Nonce uniquely identifies this token, and is what a per-token revocation names.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nonce;

  /// Token is the signed license, `base64url(payload).base64url(ed25519_sig)`. It is the credential the engine runs on — treat it as a secret.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? token;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicensingIssueResponse &&
    other.appId == appId &&
    other.exp == exp &&
    _deepEquality.equals(other.features, features) &&
    other.fingerprintBound == fingerprintBound &&
    other.holder == holder &&
    other.nonce == nonce &&
    other.token == token;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (appId == null ? 0 : appId!.hashCode) +
    (exp == null ? 0 : exp!.hashCode) +
    (features.hashCode) +
    (fingerprintBound == null ? 0 : fingerprintBound!.hashCode) +
    (holder == null ? 0 : holder!.hashCode) +
    (nonce == null ? 0 : nonce!.hashCode) +
    (token == null ? 0 : token!.hashCode);

  @override
  String toString() => 'LicensingIssueResponse[appId=$appId, exp=$exp, features=$features, fingerprintBound=$fingerprintBound, holder=$holder, nonce=$nonce, token=$token]';

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
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
    return json;
  }

  /// Returns a new [LicensingIssueResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicensingIssueResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LicensingIssueResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LicensingIssueResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LicensingIssueResponse(
        appId: mapValueOfType<String>(json, r'app_id'),
        exp: mapValueOfType<int>(json, r'exp'),
        features: json[r'features'] is Iterable
            ? (json[r'features'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        fingerprintBound: mapValueOfType<bool>(json, r'fingerprint_bound'),
        holder: mapValueOfType<String>(json, r'holder'),
        nonce: mapValueOfType<String>(json, r'nonce'),
        token: mapValueOfType<String>(json, r'token'),
      );
    }
    return null;
  }

  static List<LicensingIssueResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicensingIssueResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicensingIssueResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicensingIssueResponse> mapFromJson(dynamic json) {
    final map = <String, LicensingIssueResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicensingIssueResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicensingIssueResponse-objects as value to a dart map
  static Map<String, List<LicensingIssueResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicensingIssueResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicensingIssueResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

