//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CredentialIn {
  /// Returns a new [CredentialIn] instance.
  CredentialIn({
    this.accountId,
    this.label,
    this.oauth,
    this.provider,
    this.token,
  });

  /// AccountID scopes the credential where the provider's Verify needs one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  /// Label names this connection; empty means \"default\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  /// OAuth is a bundle the CLI already obtained through its own local PKCE flow. Present ⇒ the Adopt path; absent ⇒ the Token path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OauthBundleIn? oauth;

  /// Provider is the user-scoped provider's registry id, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Token is the customer-held credential for the Verify path. Read on STDIN by the CLI, never argv; never logged, echoed, or stored outside KMS.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? token;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CredentialIn &&
    other.accountId == accountId &&
    other.label == label &&
    other.oauth == oauth &&
    other.provider == provider &&
    other.token == token;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountId == null ? 0 : accountId!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (oauth == null ? 0 : oauth!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (token == null ? 0 : token!.hashCode);

  @override
  String toString() => 'CredentialIn[accountId=$accountId, label=$label, oauth=$oauth, provider=$provider, token=$token]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.oauth != null) {
      json[r'oauth'] = this.oauth;
    } else {
      json[r'oauth'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
    return json;
  }

  /// Returns a new [CredentialIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CredentialIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CredentialIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CredentialIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CredentialIn(
        accountId: mapValueOfType<String>(json, r'accountId'),
        label: mapValueOfType<String>(json, r'label'),
        oauth: OauthBundleIn.fromJson(json[r'oauth']),
        provider: mapValueOfType<String>(json, r'provider'),
        token: mapValueOfType<String>(json, r'token'),
      );
    }
    return null;
  }

  static List<CredentialIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CredentialIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CredentialIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CredentialIn> mapFromJson(dynamic json) {
    final map = <String, CredentialIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CredentialIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CredentialIn-objects as value to a dart map
  static Map<String, List<CredentialIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CredentialIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CredentialIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

