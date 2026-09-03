//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BoardTotals {
  /// Returns a new [BoardTotals] instance.
  BoardTotals({
    this.completionTokens,
    this.costCents,
    this.errors,
    this.generations,
    this.models,
    this.promptTokens,
    this.successRate,
    this.totalTokens,
    this.users,
  });
  /// tokens the models answered with
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? completionTokens;

  /// what the window cost, in cents
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? costCents;

  /// calls that did not succeed
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? errors;

  /// how many model calls the window holds
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? generations;

  /// how many distinct models were called
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? models;

  /// tokens sent to the models
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? promptTokens;

  /// share of calls that succeeded, 0..1
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? successRate;

  /// prompt plus completion
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalTokens;

  /// how many distinct users called them
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? users;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BoardTotals &&
    other.completionTokens == completionTokens &&
    other.costCents == costCents &&
    other.errors == errors &&
    other.generations == generations &&
    other.models == models &&
    other.promptTokens == promptTokens &&
    other.successRate == successRate &&
    other.totalTokens == totalTokens &&
    other.users == users;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (completionTokens == null ? 0 : completionTokens!.hashCode) +
    (costCents == null ? 0 : costCents!.hashCode) +
    (errors == null ? 0 : errors!.hashCode) +
    (generations == null ? 0 : generations!.hashCode) +
    (models == null ? 0 : models!.hashCode) +
    (promptTokens == null ? 0 : promptTokens!.hashCode) +
    (successRate == null ? 0 : successRate!.hashCode) +
    (totalTokens == null ? 0 : totalTokens!.hashCode) +
    (users == null ? 0 : users!.hashCode);

  @override
  String toString() => 'BoardTotals[completionTokens=$completionTokens, costCents=$costCents, errors=$errors, generations=$generations, models=$models, promptTokens=$promptTokens, successRate=$successRate, totalTokens=$totalTokens, users=$users]';

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
    if (this.errors != null) {
      json[r'errors'] = this.errors;
    } else {
      json[r'errors'] = null;
    }
    if (this.generations != null) {
      json[r'generations'] = this.generations;
    } else {
      json[r'generations'] = null;
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
    if (this.successRate != null) {
      json[r'successRate'] = this.successRate;
    } else {
      json[r'successRate'] = null;
    }
    if (this.totalTokens != null) {
      json[r'totalTokens'] = this.totalTokens;
    } else {
      json[r'totalTokens'] = null;
    }
    if (this.users != null) {
      json[r'users'] = this.users;
    } else {
      json[r'users'] = null;
    }
    return json;
  }

  /// Returns a new [BoardTotals] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BoardTotals? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BoardTotals[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BoardTotals[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BoardTotals(
        completionTokens: mapValueOfType<int>(json, r'completionTokens'),
        costCents: mapValueOfType<int>(json, r'costCents'),
        errors: mapValueOfType<int>(json, r'errors'),
        generations: mapValueOfType<int>(json, r'generations'),
        models: mapValueOfType<int>(json, r'models'),
        promptTokens: mapValueOfType<int>(json, r'promptTokens'),
        successRate: mapValueOfType<double>(json, r'successRate'),
        totalTokens: mapValueOfType<int>(json, r'totalTokens'),
        users: mapValueOfType<int>(json, r'users'),
      );
    }
    return null;
  }

  static List<BoardTotals> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BoardTotals>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BoardTotals.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BoardTotals> mapFromJson(dynamic json) {
    final map = <String, BoardTotals>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BoardTotals.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BoardTotals-objects as value to a dart map
  static Map<String, List<BoardTotals>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BoardTotals>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BoardTotals.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

