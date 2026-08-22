//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CampaignInput {
  /// Returns a new [CampaignInput] instance.
  CampaignInput({
    this.account,
    this.budget,
    this.name,
    this.objective,
    this.platform,
    this.spend,
    this.status,
  });
  /// Account is the provider ad-account this campaign runs on (Meta act_<id>). Optional.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? account;

  /// Budget is the campaign budget in MINOR units (cents). Negative values clamp to 0.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? budget;

  /// Name is the campaign's display label. Required; trimmed and bounded to 1024 bytes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Objective is the campaign goal as the provider names it. Optional, bounded to 1024 bytes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? objective;

  /// Platform is the ad network: meta, google, tiktok or x. Empty defaults to meta.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? platform;

  /// Spend is the amount spent so far in MINOR units (cents). Negative values clamp to 0.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? spend;

  /// Status is the lifecycle state: draft, active, paused or completed. Empty defaults to draft.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CampaignInput &&
    other.account == account &&
    other.budget == budget &&
    other.name == name &&
    other.objective == objective &&
    other.platform == platform &&
    other.spend == spend &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (budget == null ? 0 : budget!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (objective == null ? 0 : objective!.hashCode) +
    (platform == null ? 0 : platform!.hashCode) +
    (spend == null ? 0 : spend!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'CampaignInput[account=$account, budget=$budget, name=$name, objective=$objective, platform=$platform, spend=$spend, status=$status]';

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
    return json;
  }

  /// Returns a new [CampaignInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CampaignInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CampaignInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CampaignInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CampaignInput(
        account: mapValueOfType<String>(json, r'account'),
        budget: mapValueOfType<int>(json, r'budget'),
        name: mapValueOfType<String>(json, r'name'),
        objective: mapValueOfType<String>(json, r'objective'),
        platform: mapValueOfType<String>(json, r'platform'),
        spend: mapValueOfType<int>(json, r'spend'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<CampaignInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CampaignInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CampaignInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CampaignInput> mapFromJson(dynamic json) {
    final map = <String, CampaignInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CampaignInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CampaignInput-objects as value to a dart map
  static Map<String, List<CampaignInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CampaignInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CampaignInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

