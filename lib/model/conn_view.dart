//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ConnView {
  /// Returns a new [ConnView] instance.
  ConnView({
    this.account,
    this.connectedAt,
    this.expiresAt,
    this.externalId,
    this.id,
    this.label,
    this.provider,
    this.scopes = const [],
  });
  /// Account is the provider's label for the connected account.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? account;

  /// ConnectedAt is when the connector was last (re)established, RFC 3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? connectedAt;

  /// ExpiresAt is when the access token expires, RFC 3339 UTC; empty for a non-expiring credential. Reading the token auto-rotates inside the window.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? expiresAt;

  /// ExternalID is the provider's own id for that account.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  /// ID is provider + \":\" + label — what every other connector route addresses.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Label is the caller's name for this connection (\"default\", \"work\").
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  /// Provider is the user-scoped provider's registry id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Scopes are the permissions the credential carries. Never null; [] when none.
  List<String> scopes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnView &&
    other.account == account &&
    other.connectedAt == connectedAt &&
    other.expiresAt == expiresAt &&
    other.externalId == externalId &&
    other.id == id &&
    other.label == label &&
    other.provider == provider &&
    _deepEquality.equals(other.scopes, scopes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (connectedAt == null ? 0 : connectedAt!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (scopes.hashCode);

  @override
  String toString() => 'ConnView[account=$account, connectedAt=$connectedAt, expiresAt=$expiresAt, externalId=$externalId, id=$id, label=$label, provider=$provider, scopes=$scopes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.connectedAt != null) {
      json[r'connectedAt'] = this.connectedAt;
    } else {
      json[r'connectedAt'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt;
    } else {
      json[r'expiresAt'] = null;
    }
    if (this.externalId != null) {
      json[r'externalId'] = this.externalId;
    } else {
      json[r'externalId'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
      json[r'scopes'] = this.scopes;
    return json;
  }

  /// Returns a new [ConnView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConnView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConnView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConnView(
        account: mapValueOfType<String>(json, r'account'),
        connectedAt: mapValueOfType<String>(json, r'connectedAt'),
        expiresAt: mapValueOfType<String>(json, r'expiresAt'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        id: mapValueOfType<String>(json, r'id'),
        label: mapValueOfType<String>(json, r'label'),
        provider: mapValueOfType<String>(json, r'provider'),
        scopes: json[r'scopes'] is Iterable
            ? (json[r'scopes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ConnView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnView> mapFromJson(dynamic json) {
    final map = <String, ConnView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnView-objects as value to a dart map
  static Map<String, List<ConnView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConnView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

