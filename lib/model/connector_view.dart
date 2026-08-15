//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ConnectorView {
  /// Returns a new [ConnectorView] instance.
  ConnectorView({
    this.account,
    this.configured,
    this.docCount,
    this.error,
    this.kind,
    this.lastSync,
    this.provider,
    this.status,
  });

  /// Account names the connected external account. Absent until the org connects.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? account;

  /// Configured is true when this deployment holds OAuth credentials for the provider.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? configured;

  /// DocCount is the live count of this provider's documents in the org's store.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? docCount;

  /// Error is the last sync failure, if any. Absent until the org connects.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  /// Kind is \"native\" for a first-party Go connector, \"piece\" for a long-tail one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// LastSync is when the last pull finished. Absent until the org connects.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastSync;

  /// Provider is the connector's id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Status is connected, disconnected, syncing or error.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectorView &&
    other.account == account &&
    other.configured == configured &&
    other.docCount == docCount &&
    other.error == error &&
    other.kind == kind &&
    other.lastSync == lastSync &&
    other.provider == provider &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (configured == null ? 0 : configured!.hashCode) +
    (docCount == null ? 0 : docCount!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (lastSync == null ? 0 : lastSync!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'ConnectorView[account=$account, configured=$configured, docCount=$docCount, error=$error, kind=$kind, lastSync=$lastSync, provider=$provider, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.configured != null) {
      json[r'configured'] = this.configured;
    } else {
      json[r'configured'] = null;
    }
    if (this.docCount != null) {
      json[r'docCount'] = this.docCount;
    } else {
      json[r'docCount'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.lastSync != null) {
      json[r'lastSync'] = this.lastSync;
    } else {
      json[r'lastSync'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [ConnectorView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnectorView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConnectorView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConnectorView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConnectorView(
        account: mapValueOfType<String>(json, r'account'),
        configured: mapValueOfType<bool>(json, r'configured'),
        docCount: mapValueOfType<int>(json, r'docCount'),
        error: mapValueOfType<String>(json, r'error'),
        kind: mapValueOfType<String>(json, r'kind'),
        lastSync: mapValueOfType<String>(json, r'lastSync'),
        provider: mapValueOfType<String>(json, r'provider'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<ConnectorView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnectorView> mapFromJson(dynamic json) {
    final map = <String, ConnectorView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectorView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnectorView-objects as value to a dart map
  static Map<String, List<ConnectorView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnectorView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConnectorView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

