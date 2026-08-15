//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yLLMPricingRule {
  /// Returns a new [O11yO11yLLMPricingRule] instance.
  O11yO11yLLMPricingRule({
    this.createdAt,
    this.createdBy,
    this.enabled,
    this.id,
    this.isOverride,
    this.modelName,
    this.modelPattern = const [],
    this.orgId,
    this.pricing,
    this.provider,
    this.sourceId,
    this.syncedAt,
    this.unit,
    this.updatedAt,
    this.updatedBy,
  });

  /// CreatedAt is when the rule was stored.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// CreatedBy is who created the rule.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdBy;

  /// Enabled says whether the rule is on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  /// ID is the rule's id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// IsOverride marks the rule user-pinned; when true the sync job skips it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isOverride;

  /// Model is the model the rule prices.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? modelName;

  /// ModelPattern are the model-name globs the rule matches.
  List<String> modelPattern;

  /// OrgID is the org the rule belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orgId;

  /// Pricing is the per-unit cost.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yLLMRulePricing? pricing;

  /// Provider is the model's provider.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// SourceID is the upstream source the rule was synced from, when synced.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourceId;

  /// SyncedAt is when the rule was last synced, when it is synced.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? syncedAt;

  /// Unit is the pricing unit, e.g. per_million_tokens.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unit;

  /// UpdatedAt is when the rule last changed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  /// UpdatedBy is who last changed it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedBy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yLLMPricingRule &&
    other.createdAt == createdAt &&
    other.createdBy == createdBy &&
    other.enabled == enabled &&
    other.id == id &&
    other.isOverride == isOverride &&
    other.modelName == modelName &&
    _deepEquality.equals(other.modelPattern, modelPattern) &&
    other.orgId == orgId &&
    other.pricing == pricing &&
    other.provider == provider &&
    other.sourceId == sourceId &&
    other.syncedAt == syncedAt &&
    other.unit == unit &&
    other.updatedAt == updatedAt &&
    other.updatedBy == updatedBy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (createdBy == null ? 0 : createdBy!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (isOverride == null ? 0 : isOverride!.hashCode) +
    (modelName == null ? 0 : modelName!.hashCode) +
    (modelPattern.hashCode) +
    (orgId == null ? 0 : orgId!.hashCode) +
    (pricing == null ? 0 : pricing!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (sourceId == null ? 0 : sourceId!.hashCode) +
    (syncedAt == null ? 0 : syncedAt!.hashCode) +
    (unit == null ? 0 : unit!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (updatedBy == null ? 0 : updatedBy!.hashCode);

  @override
  String toString() => 'O11yO11yLLMPricingRule[createdAt=$createdAt, createdBy=$createdBy, enabled=$enabled, id=$id, isOverride=$isOverride, modelName=$modelName, modelPattern=$modelPattern, orgId=$orgId, pricing=$pricing, provider=$provider, sourceId=$sourceId, syncedAt=$syncedAt, unit=$unit, updatedAt=$updatedAt, updatedBy=$updatedBy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.createdBy != null) {
      json[r'createdBy'] = this.createdBy;
    } else {
      json[r'createdBy'] = null;
    }
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.isOverride != null) {
      json[r'isOverride'] = this.isOverride;
    } else {
      json[r'isOverride'] = null;
    }
    if (this.modelName != null) {
      json[r'modelName'] = this.modelName;
    } else {
      json[r'modelName'] = null;
    }
      json[r'modelPattern'] = this.modelPattern;
    if (this.orgId != null) {
      json[r'orgId'] = this.orgId;
    } else {
      json[r'orgId'] = null;
    }
    if (this.pricing != null) {
      json[r'pricing'] = this.pricing;
    } else {
      json[r'pricing'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.sourceId != null) {
      json[r'sourceId'] = this.sourceId;
    } else {
      json[r'sourceId'] = null;
    }
    if (this.syncedAt != null) {
      json[r'syncedAt'] = this.syncedAt!.toUtc().toIso8601String();
    } else {
      json[r'syncedAt'] = null;
    }
    if (this.unit != null) {
      json[r'unit'] = this.unit;
    } else {
      json[r'unit'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.updatedBy != null) {
      json[r'updatedBy'] = this.updatedBy;
    } else {
      json[r'updatedBy'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yLLMPricingRule] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yLLMPricingRule? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yLLMPricingRule[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yLLMPricingRule[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yLLMPricingRule(
        createdAt: mapDateTime(json, r'createdAt', r''),
        createdBy: mapValueOfType<String>(json, r'createdBy'),
        enabled: mapValueOfType<bool>(json, r'enabled'),
        id: mapValueOfType<String>(json, r'id'),
        isOverride: mapValueOfType<bool>(json, r'isOverride'),
        modelName: mapValueOfType<String>(json, r'modelName'),
        modelPattern: json[r'modelPattern'] is Iterable
            ? (json[r'modelPattern'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        orgId: mapValueOfType<String>(json, r'orgId'),
        pricing: O11yO11yLLMRulePricing.fromJson(json[r'pricing']),
        provider: mapValueOfType<String>(json, r'provider'),
        sourceId: mapValueOfType<String>(json, r'sourceId'),
        syncedAt: mapDateTime(json, r'syncedAt', r''),
        unit: mapValueOfType<String>(json, r'unit'),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        updatedBy: mapValueOfType<String>(json, r'updatedBy'),
      );
    }
    return null;
  }

  static List<O11yO11yLLMPricingRule> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yLLMPricingRule>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yLLMPricingRule.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yLLMPricingRule> mapFromJson(dynamic json) {
    final map = <String, O11yO11yLLMPricingRule>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yLLMPricingRule.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yLLMPricingRule-objects as value to a dart map
  static Map<String, List<O11yO11yLLMPricingRule>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yLLMPricingRule>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yLLMPricingRule.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

