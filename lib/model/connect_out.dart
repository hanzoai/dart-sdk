//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ConnectOut {
  /// Returns a new [ConnectOut] instance.
  ConnectOut({
    this.account,
    this.authorizeUrl,
    this.connected,
    this.externalId,
    this.provider,
    this.scopes = const [],
  });

  /// Account is the account label the provider reported for the credential. apikey path only; a pointer because \"\" is a real answer the provider gave.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? account;

  /// AuthorizeURL is the provider consent URL to send the user to. OAuth path only.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authorizeUrl;

  /// Connected is true on the apikey path once the credential verified and sealed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? connected;

  /// ExternalID is the provider's account id for the credential. apikey path only.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  /// Provider is the connector's registry id. apikey path only.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Scopes are the permissions the credential carries. apikey path only; never null on that path ([] when the provider reported none).
  List<String> scopes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectOut &&
    other.account == account &&
    other.authorizeUrl == authorizeUrl &&
    other.connected == connected &&
    other.externalId == externalId &&
    other.provider == provider &&
    _deepEquality.equals(other.scopes, scopes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (authorizeUrl == null ? 0 : authorizeUrl!.hashCode) +
    (connected == null ? 0 : connected!.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (scopes.hashCode);

  @override
  String toString() => 'ConnectOut[account=$account, authorizeUrl=$authorizeUrl, connected=$connected, externalId=$externalId, provider=$provider, scopes=$scopes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.authorizeUrl != null) {
      json[r'authorizeUrl'] = this.authorizeUrl;
    } else {
      json[r'authorizeUrl'] = null;
    }
    if (this.connected != null) {
      json[r'connected'] = this.connected;
    } else {
      json[r'connected'] = null;
    }
    if (this.externalId != null) {
      json[r'externalId'] = this.externalId;
    } else {
      json[r'externalId'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
      json[r'scopes'] = this.scopes;
    return json;
  }

  /// Returns a new [ConnectOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnectOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConnectOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConnectOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConnectOut(
        account: mapValueOfType<String>(json, r'account'),
        authorizeUrl: mapValueOfType<String>(json, r'authorizeUrl'),
        connected: mapValueOfType<bool>(json, r'connected'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        provider: mapValueOfType<String>(json, r'provider'),
        scopes: json[r'scopes'] is Iterable
            ? (json[r'scopes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ConnectOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnectOut> mapFromJson(dynamic json) {
    final map = <String, ConnectOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnectOut-objects as value to a dart map
  static Map<String, List<ConnectOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnectOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConnectOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

