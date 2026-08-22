//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AdCampaign {
  /// Returns a new [AdCampaign] instance.
  AdCampaign({
    this.account,
    this.budget,
    this.createdAt,
    this.externalId,
    this.id,
    this.name,
    this.objective,
    this.platform,
    this.spend,
    this.status,
    this.updatedAt,
  });
  /// Account is the provider ad-account the campaign runs under, in Meta's act_<id> form. Empty until the org supplies one or a launch resolves it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? account;

  /// Budget is the campaign's authorized spend in MINOR units (cents). Negative clamps to 0. It is the org's stored plan: a Meta launch creates the campaign object only, and the delivering budget lives on the ad set.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? budget;

  /// CreatedAt is when the campaign was first stored, in unix seconds. It never changes, including across a full-replace update.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// ExternalID is the ad network's own campaign id, written by a successful launch and by nothing else — an update never touches it. Empty means this campaign has never reached its network.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  /// ID is the campaign's server-minted handle, \"camp_\" + 32 hex. A create body cannot choose it, and it is the id every other route addresses.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Name is the campaign's display label, and the name Meta creates the campaign object under at launch. Required; trimmed and bounded to 1024 bytes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Objective is the campaign goal spelled as the provider names it (\"conversions\", \"OUTCOME_TRAFFIC\"), passed through to the network verbatim at launch — Meta defaults an empty one to OUTCOME_TRAFFIC. Free text, bounded to 1024 bytes; no vocabulary is enforced here.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? objective;

  /// Platform is the ad network: meta, google, tiktok or x, and nothing else — a write naming another is 400. Empty stores as meta. Only meta executes today; launching any of the other three is 501.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? platform;

  /// Spend is spend-to-date in MINOR units (cents), as last written through create or update. Negative clamps to 0. It is NOT read back from the network — that is a separate insights call — so 0 means nothing was recorded here, not that nothing was spent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? spend;

  /// Status is the lifecycle: draft, active, paused or completed, and nothing else — a write naming another is 400. Empty stores as draft; a successful launch sets active. It records what this deployment did, not what the ad network currently reports.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// UpdatedAt is when the row was last written, in unix seconds — set by create, update and launch. Listings are ordered by it, newest first.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdCampaign &&
    other.account == account &&
    other.budget == budget &&
    other.createdAt == createdAt &&
    other.externalId == externalId &&
    other.id == id &&
    other.name == name &&
    other.objective == objective &&
    other.platform == platform &&
    other.spend == spend &&
    other.status == status &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (budget == null ? 0 : budget!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (objective == null ? 0 : objective!.hashCode) +
    (platform == null ? 0 : platform!.hashCode) +
    (spend == null ? 0 : spend!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'AdCampaign[account=$account, budget=$budget, createdAt=$createdAt, externalId=$externalId, id=$id, name=$name, objective=$objective, platform=$platform, spend=$spend, status=$status, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.budget != null) {
      json[r'budget'] = this.budget;
    } else {
      json[r'budget'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
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
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.objective != null) {
      json[r'objective'] = this.objective;
    } else {
      json[r'objective'] = null;
    }
    if (this.platform != null) {
      json[r'platform'] = this.platform;
    } else {
      json[r'platform'] = null;
    }
    if (this.spend != null) {
      json[r'spend'] = this.spend;
    } else {
      json[r'spend'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [AdCampaign] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdCampaign? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AdCampaign[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AdCampaign[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AdCampaign(
        account: mapValueOfType<String>(json, r'account'),
        budget: mapValueOfType<int>(json, r'budget'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        objective: mapValueOfType<String>(json, r'objective'),
        platform: mapValueOfType<String>(json, r'platform'),
        spend: mapValueOfType<int>(json, r'spend'),
        status: mapValueOfType<String>(json, r'status'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<AdCampaign> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdCampaign>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdCampaign.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdCampaign> mapFromJson(dynamic json) {
    final map = <String, AdCampaign>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdCampaign.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdCampaign-objects as value to a dart map
  static Map<String, List<AdCampaign>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdCampaign>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdCampaign.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

