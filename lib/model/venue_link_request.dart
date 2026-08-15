//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class VenueLinkRequest {
  /// Returns a new [VenueLinkRequest] instance.
  VenueLinkRequest({
    this.clientId,
    this.clientSecret,
    this.credentialJson,
    this.externalId,
    this.label,
    this.projectIds = const [],
    this.provider,
    this.regions = const [],
    this.roleArn,
    this.subscriptionIds = const [],
    this.tenantId,
    this.token,
  });

  /// ClientID is the Azure AD application id. Azure only.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientId;

  /// ClientSecret selects the service-principal flow. LEAVING IT OUT selects keyless workload identity federation instead, so omitting it is a choice rather than an omission. Azure only.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientSecret;

  /// CredentialJSON is a Google credentials document — an external_account (workload identity federation, keyless) or a service-account key. GCP only.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? credentialJson;

  /// ExternalID pins that role assumption to Hanzo, which is what closes the confused-deputy hole. AWS only.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  /// Label is the org-chosen name for this account within the provider, which is how a second account at the same provider is addressed later. Empty means \"default\"; anything outside 1–64 of [A-Za-z0-9._-] is refused.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  /// ProjectIDs bounds the GKE cluster sweep. GCP only.
  List<String> projectIds;

  /// Provider is the cloud being linked, from the path: digitalocean, aws, gcp or azure.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Regions bounds the AWS EKS cluster sweep. AWS only.
  List<String> regions;

  /// RoleARN is the AWS role Hanzo assumes into the account — the keyless path, so no access key is ever stored.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? roleArn;

  /// SubscriptionIDs bounds the AKS cluster sweep. Azure only.
  List<String> subscriptionIds;

  /// TenantID is the Azure AD tenant of the app. Azure only.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tenantId;

  /// Token is the DigitalOcean personal access token. DigitalOcean only, and it is the one provider that requires storing a secret.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? token;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VenueLinkRequest &&
    other.clientId == clientId &&
    other.clientSecret == clientSecret &&
    other.credentialJson == credentialJson &&
    other.externalId == externalId &&
    other.label == label &&
    _deepEquality.equals(other.projectIds, projectIds) &&
    other.provider == provider &&
    _deepEquality.equals(other.regions, regions) &&
    other.roleArn == roleArn &&
    _deepEquality.equals(other.subscriptionIds, subscriptionIds) &&
    other.tenantId == tenantId &&
    other.token == token;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (clientId == null ? 0 : clientId!.hashCode) +
    (clientSecret == null ? 0 : clientSecret!.hashCode) +
    (credentialJson == null ? 0 : credentialJson!.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (projectIds.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (regions.hashCode) +
    (roleArn == null ? 0 : roleArn!.hashCode) +
    (subscriptionIds.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode) +
    (token == null ? 0 : token!.hashCode);

  @override
  String toString() => 'VenueLinkRequest[clientId=$clientId, clientSecret=$clientSecret, credentialJson=$credentialJson, externalId=$externalId, label=$label, projectIds=$projectIds, provider=$provider, regions=$regions, roleArn=$roleArn, subscriptionIds=$subscriptionIds, tenantId=$tenantId, token=$token]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.credentialJson != null) {
      json[r'credentialJson'] = this.credentialJson;
    } else {
      json[r'credentialJson'] = null;
    }
    if (this.externalId != null) {
      json[r'externalId'] = this.externalId;
    } else {
      json[r'externalId'] = null;
    }
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
      json[r'projectIds'] = this.projectIds;
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
      json[r'regions'] = this.regions;
    if (this.roleArn != null) {
      json[r'roleArn'] = this.roleArn;
    } else {
      json[r'roleArn'] = null;
    }
      json[r'subscriptionIds'] = this.subscriptionIds;
    if (this.tenantId != null) {
      json[r'tenantId'] = this.tenantId;
    } else {
      json[r'tenantId'] = null;
    }
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
    return json;
  }

  /// Returns a new [VenueLinkRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VenueLinkRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VenueLinkRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VenueLinkRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VenueLinkRequest(
        clientId: mapValueOfType<String>(json, r'clientId'),
        clientSecret: mapValueOfType<String>(json, r'clientSecret'),
        credentialJson: mapValueOfType<String>(json, r'credentialJson'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        label: mapValueOfType<String>(json, r'label'),
        projectIds: json[r'projectIds'] is Iterable
            ? (json[r'projectIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        provider: mapValueOfType<String>(json, r'provider'),
        regions: json[r'regions'] is Iterable
            ? (json[r'regions'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        roleArn: mapValueOfType<String>(json, r'roleArn'),
        subscriptionIds: json[r'subscriptionIds'] is Iterable
            ? (json[r'subscriptionIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        tenantId: mapValueOfType<String>(json, r'tenantId'),
        token: mapValueOfType<String>(json, r'token'),
      );
    }
    return null;
  }

  static List<VenueLinkRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VenueLinkRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VenueLinkRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VenueLinkRequest> mapFromJson(dynamic json) {
    final map = <String, VenueLinkRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VenueLinkRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VenueLinkRequest-objects as value to a dart map
  static Map<String, List<VenueLinkRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VenueLinkRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VenueLinkRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

