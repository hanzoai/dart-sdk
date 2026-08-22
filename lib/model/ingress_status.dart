//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IngressStatus {
  /// Returns a new [IngressStatus] instance.
  IngressStatus({
    this.acmeCacheDir,
    this.acmeStaging,
    this.edgeEnabled,
    this.httpAddr,
    this.httpsAddr,
    this.liveHosts,
    this.proxy,
    this.role,
    this.tlsHosts,
  });
  /// ACMECacheDir is where autocert persists accounts and certificates.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? acmeCacheDir;

  /// ACMEStaging is true when certificates are issued from Let's Encrypt staging.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? acmeStaging;

  /// EdgeEnabled is true when the edge listeners are actually bound.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? edgeEnabled;

  /// HTTPAddr is the address the ACME HTTP-01 + HTTP router listens on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? httpAddr;

  /// HTTPSAddr is the address the SNI TLS terminator listens on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? httpsAddr;

  /// LiveHosts is how many hosts the compiled table routes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? liveHosts;

  /// Proxy names the reverse-proxy implementation behind every route.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? proxy;

  /// Role is \"edge\" when CLOUD_INGRESS_EDGE_ENABLED is set, else \"app\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? role;

  /// TLSHosts is how many hosts the ACME HostPolicy will issue a certificate for. NOT a subset of LiveHosts: an extraHost owns no route, and a TLS route naming a missing service is skipped while its host still wants a cert.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tlsHosts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IngressStatus &&
    other.acmeCacheDir == acmeCacheDir &&
    other.acmeStaging == acmeStaging &&
    other.edgeEnabled == edgeEnabled &&
    other.httpAddr == httpAddr &&
    other.httpsAddr == httpsAddr &&
    other.liveHosts == liveHosts &&
    other.proxy == proxy &&
    other.role == role &&
    other.tlsHosts == tlsHosts;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (acmeCacheDir == null ? 0 : acmeCacheDir!.hashCode) +
    (acmeStaging == null ? 0 : acmeStaging!.hashCode) +
    (edgeEnabled == null ? 0 : edgeEnabled!.hashCode) +
    (httpAddr == null ? 0 : httpAddr!.hashCode) +
    (httpsAddr == null ? 0 : httpsAddr!.hashCode) +
    (liveHosts == null ? 0 : liveHosts!.hashCode) +
    (proxy == null ? 0 : proxy!.hashCode) +
    (role == null ? 0 : role!.hashCode) +
    (tlsHosts == null ? 0 : tlsHosts!.hashCode);

  @override
  String toString() => 'IngressStatus[acmeCacheDir=$acmeCacheDir, acmeStaging=$acmeStaging, edgeEnabled=$edgeEnabled, httpAddr=$httpAddr, httpsAddr=$httpsAddr, liveHosts=$liveHosts, proxy=$proxy, role=$role, tlsHosts=$tlsHosts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.acmeCacheDir != null) {
      json[r'acmeCacheDir'] = this.acmeCacheDir;
    } else {
      json[r'acmeCacheDir'] = null;
    }
    if (this.acmeStaging != null) {
      json[r'acmeStaging'] = this.acmeStaging;
    } else {
      json[r'acmeStaging'] = null;
    }
    if (this.edgeEnabled != null) {
      json[r'edgeEnabled'] = this.edgeEnabled;
    } else {
      json[r'edgeEnabled'] = null;
    }
    if (this.httpAddr != null) {
      json[r'httpAddr'] = this.httpAddr;
    } else {
      json[r'httpAddr'] = null;
    }
    if (this.httpsAddr != null) {
      json[r'httpsAddr'] = this.httpsAddr;
    } else {
      json[r'httpsAddr'] = null;
    }
    if (this.liveHosts != null) {
      json[r'liveHosts'] = this.liveHosts;
    } else {
      json[r'liveHosts'] = null;
    }
    if (this.proxy != null) {
      json[r'proxy'] = this.proxy;
    } else {
      json[r'proxy'] = null;
    }
    if (this.role != null) {
      json[r'role'] = this.role;
    } else {
      json[r'role'] = null;
    }
    if (this.tlsHosts != null) {
      json[r'tlsHosts'] = this.tlsHosts;
    } else {
      json[r'tlsHosts'] = null;
    }
    return json;
  }

  /// Returns a new [IngressStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IngressStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IngressStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IngressStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IngressStatus(
        acmeCacheDir: mapValueOfType<String>(json, r'acmeCacheDir'),
        acmeStaging: mapValueOfType<bool>(json, r'acmeStaging'),
        edgeEnabled: mapValueOfType<bool>(json, r'edgeEnabled'),
        httpAddr: mapValueOfType<String>(json, r'httpAddr'),
        httpsAddr: mapValueOfType<String>(json, r'httpsAddr'),
        liveHosts: mapValueOfType<int>(json, r'liveHosts'),
        proxy: mapValueOfType<String>(json, r'proxy'),
        role: mapValueOfType<String>(json, r'role'),
        tlsHosts: mapValueOfType<int>(json, r'tlsHosts'),
      );
    }
    return null;
  }

  static List<IngressStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IngressStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IngressStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IngressStatus> mapFromJson(dynamic json) {
    final map = <String, IngressStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IngressStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IngressStatus-objects as value to a dart map
  static Map<String, List<IngressStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IngressStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IngressStatus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

