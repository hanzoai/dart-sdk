//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yLLMUpdatablePricingRule {
  /// Returns a new [O11yO11yLLMUpdatablePricingRule] instance.
  O11yO11yLLMUpdatablePricingRule({
    this.enabled,
    this.id,
    this.isOverride,
    this.modelName,
    this.modelPattern = const [],
    this.pricing,
    this.provider,
    this.sourceId,
    this.unit,
  });
  /// Enabled turns the rule on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  /// ID matches an existing rule by its id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// IsOverride pins the rule so the sync job skips it. Omit to leave a matched override untouched.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isOverride;

  /// Model is the model the rule prices. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? modelName;

  /// ModelPattern are the model-name globs the rule matches. Required.
  List<String> modelPattern;

  /// Pricing is the per-unit cost. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yLLMRulePricing? pricing;

  /// Provider is the model's provider. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// SourceID matches an existing rule by its upstream source id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourceId;

  /// Unit is the pricing unit, e.g. per_million_tokens. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yLLMUpdatablePricingRule &&
    other.enabled == enabled &&
    other.id == id &&
    other.isOverride == isOverride &&
    other.modelName == modelName &&
    _deepEquality.equals(other.modelPattern, modelPattern) &&
    other.pricing == pricing &&
    other.provider == provider &&
    other.sourceId == sourceId &&
    other.unit == unit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled == null ? 0 : enabled!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (isOverride == null ? 0 : isOverride!.hashCode) +
    (modelName == null ? 0 : modelName!.hashCode) +
    (modelPattern.hashCode) +
    (pricing == null ? 0 : pricing!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (sourceId == null ? 0 : sourceId!.hashCode) +
    (unit == null ? 0 : unit!.hashCode);

  @override
  String toString() => 'O11yO11yLLMUpdatablePricingRule[enabled=$enabled, id=$id, isOverride=$isOverride, modelName=$modelName, modelPattern=$modelPattern, pricing=$pricing, provider=$provider, sourceId=$sourceId, unit=$unit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.unit != null) {
      json[r'unit'] = this.unit;
    } else {
      json[r'unit'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yLLMUpdatablePricingRule] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yLLMUpdatablePricingRule? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yLLMUpdatablePricingRule[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yLLMUpdatablePricingRule[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yLLMUpdatablePricingRule(
        enabled: mapValueOfType<bool>(json, r'enabled'),
        id: mapValueOfType<String>(json, r'id'),
        isOverride: mapValueOfType<bool>(json, r'isOverride'),
        modelName: mapValueOfType<String>(json, r'modelName'),
        modelPattern: json[r'modelPattern'] is Iterable
            ? (json[r'modelPattern'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        pricing: O11yO11yLLMRulePricing.fromJson(json[r'pricing']),
        provider: mapValueOfType<String>(json, r'provider'),
        sourceId: mapValueOfType<String>(json, r'sourceId'),
        unit: mapValueOfType<String>(json, r'unit'),
      );
    }
    return null;
  }

  static List<O11yO11yLLMUpdatablePricingRule> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yLLMUpdatablePricingRule>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yLLMUpdatablePricingRule.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yLLMUpdatablePricingRule> mapFromJson(dynamic json) {
    final map = <String, O11yO11yLLMUpdatablePricingRule>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yLLMUpdatablePricingRule.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yLLMUpdatablePricingRule-objects as value to a dart map
  static Map<String, List<O11yO11yLLMUpdatablePricingRule>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yLLMUpdatablePricingRule>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yLLMUpdatablePricingRule.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

