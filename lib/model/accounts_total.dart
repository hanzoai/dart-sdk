//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AccountsTotal {
  /// Returns a new [AccountsTotal] instance.
  AccountsTotal({
    this.accounts,
    this.completionTokens,
    this.costCents,
    this.promptTokens,
    this.requests,
    this.totalTokens,
  });
  /// Accounts is how many linked accounts the total folds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accounts;

  /// CompletionTokens is the total completion-token count.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? completionTokens;

  /// CostCents is the total cost in cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? costCents;

  /// PromptTokens is the total prompt-token count.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? promptTokens;

  /// Requests is the total request count the gateway routed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? requests;

  /// TotalTokens is the total token count.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalTokens;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountsTotal &&
    other.accounts == accounts &&
    other.completionTokens == completionTokens &&
    other.costCents == costCents &&
    other.promptTokens == promptTokens &&
    other.requests == requests &&
    other.totalTokens == totalTokens;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accounts == null ? 0 : accounts!.hashCode) +
    (completionTokens == null ? 0 : completionTokens!.hashCode) +
    (costCents == null ? 0 : costCents!.hashCode) +
    (promptTokens == null ? 0 : promptTokens!.hashCode) +
    (requests == null ? 0 : requests!.hashCode) +
    (totalTokens == null ? 0 : totalTokens!.hashCode);

  @override
  String toString() => 'AccountsTotal[accounts=$accounts, completionTokens=$completionTokens, costCents=$costCents, promptTokens=$promptTokens, requests=$requests, totalTokens=$totalTokens]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accounts != null) {
      json[r'accounts'] = this.accounts;
    } else {
      json[r'accounts'] = null;
    }
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
    if (this.totalTokens != null) {
      json[r'totalTokens'] = this.totalTokens;
    } else {
      json[r'totalTokens'] = null;
    }
    return json;
  }

  /// Returns a new [AccountsTotal] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountsTotal? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AccountsTotal[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AccountsTotal[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AccountsTotal(
        accounts: mapValueOfType<int>(json, r'accounts'),
        completionTokens: mapValueOfType<int>(json, r'completionTokens'),
        costCents: mapValueOfType<int>(json, r'costCents'),
        promptTokens: mapValueOfType<int>(json, r'promptTokens'),
        requests: mapValueOfType<int>(json, r'requests'),
        totalTokens: mapValueOfType<int>(json, r'totalTokens'),
      );
    }
    return null;
  }

  static List<AccountsTotal> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountsTotal>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountsTotal.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AccountsTotal> mapFromJson(dynamic json) {
    final map = <String, AccountsTotal>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AccountsTotal.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AccountsTotal-objects as value to a dart map
  static Map<String, List<AccountsTotal>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AccountsTotal>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AccountsTotal.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

