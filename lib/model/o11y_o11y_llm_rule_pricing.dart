//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yLLMRulePricing {
  /// Returns a new [O11yO11yLLMRulePricing] instance.
  O11yO11yLLMRulePricing({
    this.cache,
    this.input,
    this.output,
  });
  /// Cache is the cost of cached tokens, when the model prices them.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yLLMPricingCacheCosts? cache;

  /// Input is the cost per unit of input tokens.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? input;

  /// Output is the cost per unit of output tokens.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? output;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yLLMRulePricing &&
    other.cache == cache &&
    other.input == input &&
    other.output == output;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cache == null ? 0 : cache!.hashCode) +
    (input == null ? 0 : input!.hashCode) +
    (output == null ? 0 : output!.hashCode);

  @override
  String toString() => 'O11yO11yLLMRulePricing[cache=$cache, input=$input, output=$output]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cache != null) {
      json[r'cache'] = this.cache;
    } else {
      json[r'cache'] = null;
    }
    if (this.input != null) {
      json[r'input'] = this.input;
    } else {
      json[r'input'] = null;
    }
    if (this.output != null) {
      json[r'output'] = this.output;
    } else {
      json[r'output'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yLLMRulePricing] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yLLMRulePricing? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yLLMRulePricing[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yLLMRulePricing[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yLLMRulePricing(
        cache: O11yO11yLLMPricingCacheCosts.fromJson(json[r'cache']),
        input: mapValueOfType<double>(json, r'input'),
        output: mapValueOfType<double>(json, r'output'),
      );
    }
    return null;
  }

  static List<O11yO11yLLMRulePricing> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yLLMRulePricing>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yLLMRulePricing.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yLLMRulePricing> mapFromJson(dynamic json) {
    final map = <String, O11yO11yLLMRulePricing>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yLLMRulePricing.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yLLMRulePricing-objects as value to a dart map
  static Map<String, List<O11yO11yLLMRulePricing>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yLLMRulePricing>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yLLMRulePricing.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

