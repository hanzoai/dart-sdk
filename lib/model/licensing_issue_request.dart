//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LicensingIssueRequest {
  /// Returns a new [LicensingIssueRequest] instance.
  LicensingIssueRequest({
    this.fingerprint,
    this.holder,
    required this.product,
    this.release,
    this.signals,
    this.ttlSeconds,
  });

  /// Fingerprint is a previously-registered device binding value, as returned by POST /v1/licensing/fingerprint. Leave it empty and pass Signals to bind the device at issue time instead.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fingerprint;

  /// Holder overrides who the token is issued to; defaults to the caller's own validated subject. It NAMES the token's bearer and grants nothing on its own — the entitlement checked is always the caller's org's.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? holder;

  /// Product is the licensed commerce product the caller wants a token for.
  String product;

  /// Release scopes the token to one signed binary release, recorded as a \"release:<id>\" feature so a single bad release can be revoked on its own.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? release;

  /// Signals binds the device at issue time, as an alternative to a pre-registered fingerprint. The raw signals are never stored or echoed — they are folded immediately into the one-way binding value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LicensingDeviceSignals? signals;

  /// TTLSeconds requests a token lifetime in seconds. It is clamped to the deployment maximum AND to the entitlement's own expiry — a token never outlives the subscription that paid for it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ttlSeconds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicensingIssueRequest &&
    other.fingerprint == fingerprint &&
    other.holder == holder &&
    other.product == product &&
    other.release == release &&
    other.signals == signals &&
    other.ttlSeconds == ttlSeconds;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fingerprint == null ? 0 : fingerprint!.hashCode) +
    (holder == null ? 0 : holder!.hashCode) +
    (product.hashCode) +
    (release == null ? 0 : release!.hashCode) +
    (signals == null ? 0 : signals!.hashCode) +
    (ttlSeconds == null ? 0 : ttlSeconds!.hashCode);

  @override
  String toString() => 'LicensingIssueRequest[fingerprint=$fingerprint, holder=$holder, product=$product, release=$release, signals=$signals, ttlSeconds=$ttlSeconds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.fingerprint != null) {
      json[r'fingerprint'] = this.fingerprint;
    } else {
      json[r'fingerprint'] = null;
    }
    if (this.holder != null) {
      json[r'holder'] = this.holder;
    } else {
      json[r'holder'] = null;
    }
      json[r'product'] = this.product;
    if (this.release != null) {
      json[r'release'] = this.release;
    } else {
      json[r'release'] = null;
    }
    if (this.signals != null) {
      json[r'signals'] = this.signals;
    } else {
      json[r'signals'] = null;
    }
    if (this.ttlSeconds != null) {
      json[r'ttl_seconds'] = this.ttlSeconds;
    } else {
      json[r'ttl_seconds'] = null;
    }
    return json;
  }

  /// Returns a new [LicensingIssueRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicensingIssueRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LicensingIssueRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LicensingIssueRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LicensingIssueRequest(
        fingerprint: mapValueOfType<String>(json, r'fingerprint'),
        holder: mapValueOfType<String>(json, r'holder'),
        product: mapValueOfType<String>(json, r'product')!,
        release: mapValueOfType<String>(json, r'release'),
        signals: LicensingDeviceSignals.fromJson(json[r'signals']),
        ttlSeconds: mapValueOfType<int>(json, r'ttl_seconds'),
      );
    }
    return null;
  }

  static List<LicensingIssueRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicensingIssueRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicensingIssueRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicensingIssueRequest> mapFromJson(dynamic json) {
    final map = <String, LicensingIssueRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicensingIssueRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicensingIssueRequest-objects as value to a dart map
  static Map<String, List<LicensingIssueRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicensingIssueRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicensingIssueRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'product',
  };
}

