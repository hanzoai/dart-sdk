//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yLLMPricingCacheCosts {
  /// Returns a new [O11yO11yLLMPricingCacheCosts] instance.
  O11yO11yLLMPricingCacheCosts({
    this.mode,
    this.read,
    this.write,
  });
  /// Mode is how cached tokens are counted — subtract (inside input_tokens, OpenAI-style), additive (reported separately, Anthropic-style) or unknown.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mode;

  /// Read is the cost per unit of cache-read tokens.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? read;

  /// Write is the cost per unit of cache-write tokens.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? write;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yLLMPricingCacheCosts &&
    other.mode == mode &&
    other.read == read &&
    other.write == write;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (mode == null ? 0 : mode!.hashCode) +
    (read == null ? 0 : read!.hashCode) +
    (write == null ? 0 : write!.hashCode);

  @override
  String toString() => 'O11yO11yLLMPricingCacheCosts[mode=$mode, read=$read, write=$write]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.mode != null) {
      json[r'mode'] = this.mode;
    } else {
      json[r'mode'] = null;
    }
    if (this.read != null) {
      json[r'read'] = this.read;
    } else {
      json[r'read'] = null;
    }
    if (this.write != null) {
      json[r'write'] = this.write;
    } else {
      json[r'write'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yLLMPricingCacheCosts] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yLLMPricingCacheCosts? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yLLMPricingCacheCosts[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yLLMPricingCacheCosts[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yLLMPricingCacheCosts(
        mode: mapValueOfType<String>(json, r'mode'),
        read: mapValueOfType<double>(json, r'read'),
        write: mapValueOfType<double>(json, r'write'),
      );
    }
    return null;
  }

  static List<O11yO11yLLMPricingCacheCosts> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yLLMPricingCacheCosts>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yLLMPricingCacheCosts.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yLLMPricingCacheCosts> mapFromJson(dynamic json) {
    final map = <String, O11yO11yLLMPricingCacheCosts>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yLLMPricingCacheCosts.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yLLMPricingCacheCosts-objects as value to a dart map
  static Map<String, List<O11yO11yLLMPricingCacheCosts>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yLLMPricingCacheCosts>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yLLMPricingCacheCosts.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

