//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IngressTLS {
  /// Returns a new [IngressTLS] instance.
  IngressTLS({
    this.acmeDirectory,
    this.acmeEmail,
    this.config,
    this.edgeEnabled,
    this.managedHosts = const [],
    this.note,
    this.role,
  });

  /// ACMEDirectory is the ACME endpoint in use: the staging URL, or \"letsencrypt-production\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? acmeDirectory;

  /// ACMEEmail is the account email the PROCESS was started with (CLOUD_INGRESS_ACME_EMAIL), not the stored config's.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? acmeEmail;

  /// Config is the caller org's stored ACME intent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TLSConfig? config;

  /// EdgeEnabled is true when the edge listeners are actually bound.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? edgeEnabled;

  /// ManagedHosts is every host the ACME HostPolicy will issue a certificate for — the union across ALL orgs of TLS-marked routes and configured extraHosts, because one process holds one certificate cache.
  List<String> managedHosts;

  /// Note states which fields hot-apply and which need an edge restart.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? note;

  /// Role is \"edge\" when this instance binds the listeners, else \"app\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? role;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IngressTLS &&
    other.acmeDirectory == acmeDirectory &&
    other.acmeEmail == acmeEmail &&
    other.config == config &&
    other.edgeEnabled == edgeEnabled &&
    _deepEquality.equals(other.managedHosts, managedHosts) &&
    other.note == note &&
    other.role == role;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (acmeDirectory == null ? 0 : acmeDirectory!.hashCode) +
    (acmeEmail == null ? 0 : acmeEmail!.hashCode) +
    (config == null ? 0 : config!.hashCode) +
    (edgeEnabled == null ? 0 : edgeEnabled!.hashCode) +
    (managedHosts.hashCode) +
    (note == null ? 0 : note!.hashCode) +
    (role == null ? 0 : role!.hashCode);

  @override
  String toString() => 'IngressTLS[acmeDirectory=$acmeDirectory, acmeEmail=$acmeEmail, config=$config, edgeEnabled=$edgeEnabled, managedHosts=$managedHosts, note=$note, role=$role]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.acmeDirectory != null) {
      json[r'acmeDirectory'] = this.acmeDirectory;
    } else {
      json[r'acmeDirectory'] = null;
    }
    if (this.acmeEmail != null) {
      json[r'acmeEmail'] = this.acmeEmail;
    } else {
      json[r'acmeEmail'] = null;
    }
    if (this.config != null) {
      json[r'config'] = this.config;
    } else {
      json[r'config'] = null;
    }
    if (this.edgeEnabled != null) {
      json[r'edgeEnabled'] = this.edgeEnabled;
    } else {
      json[r'edgeEnabled'] = null;
    }
      json[r'managedHosts'] = this.managedHosts;
    if (this.note != null) {
      json[r'note'] = this.note;
    } else {
      json[r'note'] = null;
    }
    if (this.role != null) {
      json[r'role'] = this.role;
    } else {
      json[r'role'] = null;
    }
    return json;
  }

  /// Returns a new [IngressTLS] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IngressTLS? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IngressTLS[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IngressTLS[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IngressTLS(
        acmeDirectory: mapValueOfType<String>(json, r'acmeDirectory'),
        acmeEmail: mapValueOfType<String>(json, r'acmeEmail'),
        config: TLSConfig.fromJson(json[r'config']),
        edgeEnabled: mapValueOfType<bool>(json, r'edgeEnabled'),
        managedHosts: json[r'managedHosts'] is Iterable
            ? (json[r'managedHosts'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        note: mapValueOfType<String>(json, r'note'),
        role: mapValueOfType<String>(json, r'role'),
      );
    }
    return null;
  }

  static List<IngressTLS> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IngressTLS>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IngressTLS.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IngressTLS> mapFromJson(dynamic json) {
    final map = <String, IngressTLS>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IngressTLS.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IngressTLS-objects as value to a dart map
  static Map<String, List<IngressTLS>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IngressTLS>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IngressTLS.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

