//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yUsageBucket {
  /// Returns a new [O11yUsageBucket] instance.
  O11yUsageBucket({
    this.calls,
    this.costCents,
    this.t,
    this.tokens,
  });
  /// Calls is how many LLM calls landed in the bucket.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? calls;

  /// CostCents is what they cost, in cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? costCents;

  /// T is the bucket start, RFC3339 in UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? t;

  /// Tokens is how many tokens they consumed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tokens;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yUsageBucket &&
    other.calls == calls &&
    other.costCents == costCents &&
    other.t == t &&
    other.tokens == tokens;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (calls == null ? 0 : calls!.hashCode) +
    (costCents == null ? 0 : costCents!.hashCode) +
    (t == null ? 0 : t!.hashCode) +
    (tokens == null ? 0 : tokens!.hashCode);

  @override
  String toString() => 'O11yUsageBucket[calls=$calls, costCents=$costCents, t=$t, tokens=$tokens]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.calls != null) {
      json[r'calls'] = this.calls;
    } else {
      json[r'calls'] = null;
    }
    if (this.costCents != null) {
      json[r'costCents'] = this.costCents;
    } else {
      json[r'costCents'] = null;
    }
    if (this.t != null) {
      json[r't'] = this.t;
    } else {
      json[r't'] = null;
    }
    if (this.tokens != null) {
      json[r'tokens'] = this.tokens;
    } else {
      json[r'tokens'] = null;
    }
    return json;
  }

  /// Returns a new [O11yUsageBucket] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yUsageBucket? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yUsageBucket[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yUsageBucket[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yUsageBucket(
        calls: mapValueOfType<int>(json, r'calls'),
        costCents: mapValueOfType<int>(json, r'costCents'),
        t: mapValueOfType<String>(json, r't'),
        tokens: mapValueOfType<int>(json, r'tokens'),
      );
    }
    return null;
  }

  static List<O11yUsageBucket> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yUsageBucket>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yUsageBucket.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yUsageBucket> mapFromJson(dynamic json) {
    final map = <String, O11yUsageBucket>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yUsageBucket.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yUsageBucket-objects as value to a dart map
  static Map<String, List<O11yUsageBucket>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yUsageBucket>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yUsageBucket.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

