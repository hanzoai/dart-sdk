//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ConnectionView {
  /// Returns a new [ConnectionView] instance.
  ConnectionView({
    this.account,
    this.connectedAt,
    this.externalId,
    this.scopes = const [],
  });

  /// Account is the human label of the connected third-party account (the Slack team name, the GitHub org login). Provider-supplied and sanitized on ingest.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? account;

  /// ConnectedAt is when the connection was last (re)established, RFC 3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? connectedAt;

  /// ExternalID is the provider's own id for the account (Slack team.id, GitHub installation_id) — the value inbound webhooks are mapped back to this org by.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  /// Scopes are the permissions the provider granted. Never null; [] when none.
  List<String> scopes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectionView &&
    other.account == account &&
    other.connectedAt == connectedAt &&
    other.externalId == externalId &&
    _deepEquality.equals(other.scopes, scopes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (connectedAt == null ? 0 : connectedAt!.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (scopes.hashCode);

  @override
  String toString() => 'ConnectionView[account=$account, connectedAt=$connectedAt, externalId=$externalId, scopes=$scopes]';

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
    if (this.externalId != null) {
      json[r'externalId'] = this.externalId;
    } else {
      json[r'externalId'] = null;
    }
      json[r'scopes'] = this.scopes;
    return json;
  }

  /// Returns a new [ConnectionView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnectionView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConnectionView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConnectionView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConnectionView(
        account: mapValueOfType<String>(json, r'account'),
        connectedAt: mapValueOfType<String>(json, r'connectedAt'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        scopes: json[r'scopes'] is Iterable
            ? (json[r'scopes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ConnectionView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectionView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectionView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnectionView> mapFromJson(dynamic json) {
    final map = <String, ConnectionView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectionView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnectionView-objects as value to a dart map
  static Map<String, List<ConnectionView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnectionView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConnectionView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

