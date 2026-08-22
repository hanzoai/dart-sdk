//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LicensingPubkeyView {
  /// Returns a new [LicensingPubkeyView] instance.
  LicensingPubkeyView({
    this.alg,
    this.keys = const [],
    this.provider,
    this.publicKey,
    this.schema,
    this.tokenFormat,
  });
  /// Alg is always \"Ed25519\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? alg;

  /// Keys is the same key as a single-entry JWKS (OKP/Ed25519), for JWKS-shaped consumers.
  List<LicensingJWK> keys;

  /// Provider names the KMS holding the private half (\"local\" | \"aws\" | ...). \"local\" means a development key — never trust it in production.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// PublicKey is the 32-byte Ed25519 public key, standard base64. This is the form the engine embeds for offline verification.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? publicKey;

  /// Schema is the license payload schema version this key signs.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? schema;

  /// TokenFormat states the wire layout so an implementer can verify a token without this service's source.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tokenFormat;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicensingPubkeyView &&
    other.alg == alg &&
    _deepEquality.equals(other.keys, keys) &&
    other.provider == provider &&
    other.publicKey == publicKey &&
    other.schema == schema &&
    other.tokenFormat == tokenFormat;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (alg == null ? 0 : alg!.hashCode) +
    (keys.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (publicKey == null ? 0 : publicKey!.hashCode) +
    (schema == null ? 0 : schema!.hashCode) +
    (tokenFormat == null ? 0 : tokenFormat!.hashCode);

  @override
  String toString() => 'LicensingPubkeyView[alg=$alg, keys=$keys, provider=$provider, publicKey=$publicKey, schema=$schema, tokenFormat=$tokenFormat]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.alg != null) {
      json[r'alg'] = this.alg;
    } else {
      json[r'alg'] = null;
    }
      json[r'keys'] = this.keys;
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.publicKey != null) {
      json[r'public_key'] = this.publicKey;
    } else {
      json[r'public_key'] = null;
    }
    if (this.schema != null) {
      json[r'schema'] = this.schema;
    } else {
      json[r'schema'] = null;
    }
    if (this.tokenFormat != null) {
      json[r'token_format'] = this.tokenFormat;
    } else {
      json[r'token_format'] = null;
    }
    return json;
  }

  /// Returns a new [LicensingPubkeyView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicensingPubkeyView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LicensingPubkeyView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LicensingPubkeyView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LicensingPubkeyView(
        alg: mapValueOfType<String>(json, r'alg'),
        keys: LicensingJWK.listFromJson(json[r'keys']),
        provider: mapValueOfType<String>(json, r'provider'),
        publicKey: mapValueOfType<String>(json, r'public_key'),
        schema: mapValueOfType<int>(json, r'schema'),
        tokenFormat: mapValueOfType<String>(json, r'token_format'),
      );
    }
    return null;
  }

  static List<LicensingPubkeyView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicensingPubkeyView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicensingPubkeyView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicensingPubkeyView> mapFromJson(dynamic json) {
    final map = <String, LicensingPubkeyView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicensingPubkeyView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicensingPubkeyView-objects as value to a dart map
  static Map<String, List<LicensingPubkeyView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicensingPubkeyView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicensingPubkeyView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

