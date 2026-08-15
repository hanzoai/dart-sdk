//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CloudAccountView {
  /// Returns a new [CloudAccountView] instance.
  CloudAccountView({
    this.account,
    this.clusters = const [],
    this.externalId,
    this.label,
    this.linkedAt,
    this.project,
    this.provider,
    this.syncedAt,
  });

  /// Account is the provider's human label for it, e.g. the DigitalOcean team email.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? account;

  /// Clusters is the fleet names this account currently owns. Unlinking detaches exactly these and nothing else.
  List<String> clusters;

  /// ExternalID is the provider's own identifier for the account — a DigitalOcean account uuid, an AWS account id, a GCP project.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  /// Label is the org-chosen name for this account within the provider, which is how a second account at the same provider is addressed. Defaults to \"default\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  /// LinkedAt is when the account was first linked, RFC3339 UTC. Re-linking the same label keeps the original.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? linkedAt;

  /// Project is the fleet shard the account's clusters were folded into, recorded at link time so a later sync or unlink acts on the same shard.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  /// Provider is the cloud the account belongs to: digitalocean, aws, gcp or azure.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// SyncedAt is when it was last discovered, RFC3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? syncedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CloudAccountView &&
    other.account == account &&
    _deepEquality.equals(other.clusters, clusters) &&
    other.externalId == externalId &&
    other.label == label &&
    other.linkedAt == linkedAt &&
    other.project == project &&
    other.provider == provider &&
    other.syncedAt == syncedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (clusters.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (linkedAt == null ? 0 : linkedAt!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (syncedAt == null ? 0 : syncedAt!.hashCode);

  @override
  String toString() => 'CloudAccountView[account=$account, clusters=$clusters, externalId=$externalId, label=$label, linkedAt=$linkedAt, project=$project, provider=$provider, syncedAt=$syncedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
      json[r'clusters'] = this.clusters;
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
    if (this.linkedAt != null) {
      json[r'linkedAt'] = this.linkedAt;
    } else {
      json[r'linkedAt'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.syncedAt != null) {
      json[r'syncedAt'] = this.syncedAt;
    } else {
      json[r'syncedAt'] = null;
    }
    return json;
  }

  /// Returns a new [CloudAccountView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CloudAccountView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CloudAccountView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CloudAccountView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CloudAccountView(
        account: mapValueOfType<String>(json, r'account'),
        clusters: json[r'clusters'] is Iterable
            ? (json[r'clusters'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        externalId: mapValueOfType<String>(json, r'externalId'),
        label: mapValueOfType<String>(json, r'label'),
        linkedAt: mapValueOfType<String>(json, r'linkedAt'),
        project: mapValueOfType<String>(json, r'project'),
        provider: mapValueOfType<String>(json, r'provider'),
        syncedAt: mapValueOfType<String>(json, r'syncedAt'),
      );
    }
    return null;
  }

  static List<CloudAccountView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CloudAccountView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CloudAccountView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CloudAccountView> mapFromJson(dynamic json) {
    final map = <String, CloudAccountView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CloudAccountView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CloudAccountView-objects as value to a dart map
  static Map<String, List<CloudAccountView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CloudAccountView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CloudAccountView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

