//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AimUsage {
  /// Returns a new [AimUsage] instance.
  AimUsage({
    this.completionTokens,
    this.costCents,
    this.models,
    this.promptTokens,
    this.requests,
    this.tokens,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? completionTokens;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? costCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? models;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? promptTokens;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? requests;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tokens;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AimUsage &&
    other.completionTokens == completionTokens &&
    other.costCents == costCents &&
    other.models == models &&
    other.promptTokens == promptTokens &&
    other.requests == requests &&
    other.tokens == tokens;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (completionTokens == null ? 0 : completionTokens!.hashCode) +
    (costCents == null ? 0 : costCents!.hashCode) +
    (models == null ? 0 : models!.hashCode) +
    (promptTokens == null ? 0 : promptTokens!.hashCode) +
    (requests == null ? 0 : requests!.hashCode) +
    (tokens == null ? 0 : tokens!.hashCode);

  @override
  String toString() => 'AimUsage[completionTokens=$completionTokens, costCents=$costCents, models=$models, promptTokens=$promptTokens, requests=$requests, tokens=$tokens]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.completionTokens != null) {
      json[r'completionTokens'] = this.completionTokens;
    } else {
      json[r'completionTokens'] = null;
    }
    if (this.costCents != null) {
      json[r'costCents'] = this.costCents;
    } else {
      json[r'costCents'] = null;
    }
    if (this.models != null) {
      json[r'models'] = this.models;
    } else {
      json[r'models'] = null;
    }
    if (this.promptTokens != null) {
      json[r'promptTokens'] = this.promptTokens;
    } else {
      json[r'promptTokens'] = null;
    }
    if (this.requests != null) {
      json[r'requests'] = this.requests;
    } else {
      json[r'requests'] = null;
    }
    if (this.tokens != null) {
      json[r'tokens'] = this.tokens;
    } else {
      json[r'tokens'] = null;
    }
    return json;
  }

  /// Returns a new [AimUsage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AimUsage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AimUsage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AimUsage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AimUsage(
        completionTokens: mapValueOfType<int>(json, r'completionTokens'),
        costCents: mapValueOfType<int>(json, r'costCents'),
        models: mapValueOfType<int>(json, r'models'),
        promptTokens: mapValueOfType<int>(json, r'promptTokens'),
        requests: mapValueOfType<int>(json, r'requests'),
        tokens: mapValueOfType<int>(json, r'tokens'),
      );
    }
    return null;
  }

  static List<AimUsage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AimUsage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AimUsage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AimUsage> mapFromJson(dynamic json) {
    final map = <String, AimUsage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AimUsage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AimUsage-objects as value to a dart map
  static Map<String, List<AimUsage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AimUsage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AimUsage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

