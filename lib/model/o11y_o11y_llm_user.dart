//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yLLMUser {
  /// Returns a new [O11yO11yLLMUser] instance.
  O11yO11yLLMUser({
    this.completionTokens,
    this.id,
    this.observations,
    this.promptTokens,
    this.sessions,
    this.totalCost,
    this.totalTokens,
    this.traces,
  });
  /// CompletionTokens is their total output tokens.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? completionTokens;

  /// ID is the end user's id (user.id).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Observations is how many observations they produced.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? observations;

  /// PromptTokens is their total input tokens.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? promptTokens;

  /// Sessions is how many conversations they had.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sessions;

  /// TotalCost is their total cost.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? totalCost;

  /// TotalTokens is their total tokens.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalTokens;

  /// Traces is how many traces they produced.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? traces;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yLLMUser &&
    other.completionTokens == completionTokens &&
    other.id == id &&
    other.observations == observations &&
    other.promptTokens == promptTokens &&
    other.sessions == sessions &&
    other.totalCost == totalCost &&
    other.totalTokens == totalTokens &&
    other.traces == traces;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (completionTokens == null ? 0 : completionTokens!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (observations == null ? 0 : observations!.hashCode) +
    (promptTokens == null ? 0 : promptTokens!.hashCode) +
    (sessions == null ? 0 : sessions!.hashCode) +
    (totalCost == null ? 0 : totalCost!.hashCode) +
    (totalTokens == null ? 0 : totalTokens!.hashCode) +
    (traces == null ? 0 : traces!.hashCode);

  @override
  String toString() => 'O11yO11yLLMUser[completionTokens=$completionTokens, id=$id, observations=$observations, promptTokens=$promptTokens, sessions=$sessions, totalCost=$totalCost, totalTokens=$totalTokens, traces=$traces]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.completionTokens != null) {
      json[r'completionTokens'] = this.completionTokens;
    } else {
      json[r'completionTokens'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.observations != null) {
      json[r'observations'] = this.observations;
    } else {
      json[r'observations'] = null;
    }
    if (this.promptTokens != null) {
      json[r'promptTokens'] = this.promptTokens;
    } else {
      json[r'promptTokens'] = null;
    }
    if (this.sessions != null) {
      json[r'sessions'] = this.sessions;
    } else {
      json[r'sessions'] = null;
    }
    if (this.totalCost != null) {
      json[r'totalCost'] = this.totalCost;
    } else {
      json[r'totalCost'] = null;
    }
    if (this.totalTokens != null) {
      json[r'totalTokens'] = this.totalTokens;
    } else {
      json[r'totalTokens'] = null;
    }
    if (this.traces != null) {
      json[r'traces'] = this.traces;
    } else {
      json[r'traces'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yLLMUser] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yLLMUser? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yLLMUser[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yLLMUser[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yLLMUser(
        completionTokens: mapValueOfType<int>(json, r'completionTokens'),
        id: mapValueOfType<String>(json, r'id'),
        observations: mapValueOfType<int>(json, r'observations'),
        promptTokens: mapValueOfType<int>(json, r'promptTokens'),
        sessions: mapValueOfType<int>(json, r'sessions'),
        totalCost: mapValueOfType<double>(json, r'totalCost'),
        totalTokens: mapValueOfType<int>(json, r'totalTokens'),
        traces: mapValueOfType<int>(json, r'traces'),
      );
    }
    return null;
  }

  static List<O11yO11yLLMUser> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yLLMUser>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yLLMUser.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yLLMUser> mapFromJson(dynamic json) {
    final map = <String, O11yO11yLLMUser>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yLLMUser.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yLLMUser-objects as value to a dart map
  static Map<String, List<O11yO11yLLMUser>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yLLMUser>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yLLMUser.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

