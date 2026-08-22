//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RoutedUsage {
  /// Returns a new [RoutedUsage] instance.
  RoutedUsage({
    this.account,
    this.billing,
    this.completionTokens,
    this.costCents,
    this.kind,
    this.promptTokens,
    this.provider,
    this.requests,
    this.totalTokens,
  });
  /// Account is the provider-side account identifier.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? account;

  /// Billing is how the routed inference bills: plan or commerce.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? billing;

  /// CompletionTokens is the routed completion-token count.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? completionTokens;

  /// CostCents is the routed cost in cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? costCents;

  /// Kind is how the account authenticates: subscription or apikey.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// PromptTokens is the routed prompt-token count.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? promptTokens;

  /// Provider is the AI provider the row's account belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Requests is how many requests the gateway routed through this account.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? requests;

  /// TotalTokens is the routed total token count.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalTokens;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RoutedUsage &&
    other.account == account &&
    other.billing == billing &&
    other.completionTokens == completionTokens &&
    other.costCents == costCents &&
    other.kind == kind &&
    other.promptTokens == promptTokens &&
    other.provider == provider &&
    other.requests == requests &&
    other.totalTokens == totalTokens;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (billing == null ? 0 : billing!.hashCode) +
    (completionTokens == null ? 0 : completionTokens!.hashCode) +
    (costCents == null ? 0 : costCents!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (promptTokens == null ? 0 : promptTokens!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (requests == null ? 0 : requests!.hashCode) +
    (totalTokens == null ? 0 : totalTokens!.hashCode);

  @override
  String toString() => 'RoutedUsage[account=$account, billing=$billing, completionTokens=$completionTokens, costCents=$costCents, kind=$kind, promptTokens=$promptTokens, provider=$provider, requests=$requests, totalTokens=$totalTokens]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.billing != null) {
      json[r'billing'] = this.billing;
    } else {
      json[r'billing'] = null;
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
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.promptTokens != null) {
      json[r'promptTokens'] = this.promptTokens;
    } else {
      json[r'promptTokens'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
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

  /// Returns a new [RoutedUsage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RoutedUsage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RoutedUsage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RoutedUsage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RoutedUsage(
        account: mapValueOfType<String>(json, r'account'),
        billing: mapValueOfType<String>(json, r'billing'),
        completionTokens: mapValueOfType<int>(json, r'completionTokens'),
        costCents: mapValueOfType<int>(json, r'costCents'),
        kind: mapValueOfType<String>(json, r'kind'),
        promptTokens: mapValueOfType<int>(json, r'promptTokens'),
        provider: mapValueOfType<String>(json, r'provider'),
        requests: mapValueOfType<int>(json, r'requests'),
        totalTokens: mapValueOfType<int>(json, r'totalTokens'),
      );
    }
    return null;
  }

  static List<RoutedUsage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RoutedUsage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RoutedUsage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RoutedUsage> mapFromJson(dynamic json) {
    final map = <String, RoutedUsage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RoutedUsage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RoutedUsage-objects as value to a dart map
  static Map<String, List<RoutedUsage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RoutedUsage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RoutedUsage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

