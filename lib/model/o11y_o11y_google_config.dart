//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yGoogleConfig {
  /// Returns a new [O11yO11yGoogleConfig] instance.
  O11yO11yGoogleConfig({
    this.allowedGroups = const [],
    this.clientId,
    this.clientSecret,
    this.domainToAdminEmail = const {},
    this.fetchGroups,
    this.fetchTransitiveGroupMembership,
    this.insecureSkipEmailVerified,
    this.redirectURI,
    this.serviceAccountJson,
  });
  /// AllowedGroups, when set, admits only members of these groups.
  List<String> allowedGroups;

  /// ClientID is the OAuth application's id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientId;

  /// ClientSecret is the OAuth application's secret.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientSecret;

  /// DomainToAdminEmail maps each Workspace domain to the admin the service account impersonates; \"*\" is the fallback.
  Map<String, String> domainToAdminEmail;

  /// FetchGroups reads the user's Workspace groups for role mapping.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? fetchGroups;

  /// FetchTransitiveGroupMembership also reads groups held through other groups.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? fetchTransitiveGroupMembership;

  /// InsecureSkipEmailVerified admits addresses Google has not verified.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? insecureSkipEmailVerified;

  /// RedirectURI is the callback the flow returns to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? redirectURI;

  /// ServiceAccountJSON is the service-account credential used to read groups, when FetchGroups is on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceAccountJson;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yGoogleConfig &&
    _deepEquality.equals(other.allowedGroups, allowedGroups) &&
    other.clientId == clientId &&
    other.clientSecret == clientSecret &&
    _deepEquality.equals(other.domainToAdminEmail, domainToAdminEmail) &&
    other.fetchGroups == fetchGroups &&
    other.fetchTransitiveGroupMembership == fetchTransitiveGroupMembership &&
    other.insecureSkipEmailVerified == insecureSkipEmailVerified &&
    other.redirectURI == redirectURI &&
    other.serviceAccountJson == serviceAccountJson;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (allowedGroups.hashCode) +
    (clientId == null ? 0 : clientId!.hashCode) +
    (clientSecret == null ? 0 : clientSecret!.hashCode) +
    (domainToAdminEmail.hashCode) +
    (fetchGroups == null ? 0 : fetchGroups!.hashCode) +
    (fetchTransitiveGroupMembership == null ? 0 : fetchTransitiveGroupMembership!.hashCode) +
    (insecureSkipEmailVerified == null ? 0 : insecureSkipEmailVerified!.hashCode) +
    (redirectURI == null ? 0 : redirectURI!.hashCode) +
    (serviceAccountJson == null ? 0 : serviceAccountJson!.hashCode);

  @override
  String toString() => 'O11yO11yGoogleConfig[allowedGroups=$allowedGroups, clientId=$clientId, clientSecret=$clientSecret, domainToAdminEmail=$domainToAdminEmail, fetchGroups=$fetchGroups, fetchTransitiveGroupMembership=$fetchTransitiveGroupMembership, insecureSkipEmailVerified=$insecureSkipEmailVerified, redirectURI=$redirectURI, serviceAccountJson=$serviceAccountJson]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'allowedGroups'] = this.allowedGroups;
    if (this.clientId != null) {
      json[r'clientId'] = this.clientId;
    } else {
      json[r'clientId'] = null;
    }
    if (this.clientSecret != null) {
      json[r'clientSecret'] = this.clientSecret;
    } else {
      json[r'clientSecret'] = null;
    }
      json[r'domainToAdminEmail'] = this.domainToAdminEmail;
    if (this.fetchGroups != null) {
      json[r'fetchGroups'] = this.fetchGroups;
    } else {
      json[r'fetchGroups'] = null;
    }
    if (this.fetchTransitiveGroupMembership != null) {
      json[r'fetchTransitiveGroupMembership'] = this.fetchTransitiveGroupMembership;
    } else {
      json[r'fetchTransitiveGroupMembership'] = null;
    }
    if (this.insecureSkipEmailVerified != null) {
      json[r'insecureSkipEmailVerified'] = this.insecureSkipEmailVerified;
    } else {
      json[r'insecureSkipEmailVerified'] = null;
    }
    if (this.redirectURI != null) {
      json[r'redirectURI'] = this.redirectURI;
    } else {
      json[r'redirectURI'] = null;
    }
    if (this.serviceAccountJson != null) {
      json[r'serviceAccountJson'] = this.serviceAccountJson;
    } else {
      json[r'serviceAccountJson'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yGoogleConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yGoogleConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yGoogleConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yGoogleConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yGoogleConfig(
        allowedGroups: json[r'allowedGroups'] is Iterable
            ? (json[r'allowedGroups'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        clientId: mapValueOfType<String>(json, r'clientId'),
        clientSecret: mapValueOfType<String>(json, r'clientSecret'),
        domainToAdminEmail: mapCastOfType<String, String>(json, r'domainToAdminEmail') ?? const {},
        fetchGroups: mapValueOfType<bool>(json, r'fetchGroups'),
        fetchTransitiveGroupMembership: mapValueOfType<bool>(json, r'fetchTransitiveGroupMembership'),
        insecureSkipEmailVerified: mapValueOfType<bool>(json, r'insecureSkipEmailVerified'),
        redirectURI: mapValueOfType<String>(json, r'redirectURI'),
        serviceAccountJson: mapValueOfType<String>(json, r'serviceAccountJson'),
      );
    }
    return null;
  }

  static List<O11yO11yGoogleConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yGoogleConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yGoogleConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yGoogleConfig> mapFromJson(dynamic json) {
    final map = <String, O11yO11yGoogleConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yGoogleConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yGoogleConfig-objects as value to a dart map
  static Map<String, List<O11yO11yGoogleConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yGoogleConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yGoogleConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

