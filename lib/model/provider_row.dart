//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProviderRow {
  /// Returns a new [ProviderRow] instance.
  ProviderRow({
    this.costCents,
    this.provider,
    this.requests,
    this.tokens,
  });
  /// CostCents is what they cost the org, in US cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? costCents;

  /// Provider is the upstream the requests were routed to, e.g. anthropic.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Requests is how many completions the org made against that provider.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? requests;

  /// Tokens is the total tokens those completions consumed, prompt plus completion.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tokens;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProviderRow &&
    other.costCents == costCents &&
    other.provider == provider &&
    other.requests == requests &&
    other.tokens == tokens;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (costCents == null ? 0 : costCents!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (requests == null ? 0 : requests!.hashCode) +
    (tokens == null ? 0 : tokens!.hashCode);

  @override
  String toString() => 'ProviderRow[costCents=$costCents, provider=$provider, requests=$requests, tokens=$tokens]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.costCents != null) {
      json[r'costCents'] = this.costCents;
    } else {
      json[r'costCents'] = null;
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
    if (this.tokens != null) {
      json[r'tokens'] = this.tokens;
    } else {
      json[r'tokens'] = null;
    }
    return json;
  }

  /// Returns a new [ProviderRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProviderRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProviderRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProviderRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProviderRow(
        costCents: mapValueOfType<int>(json, r'costCents'),
        provider: mapValueOfType<String>(json, r'provider'),
        requests: mapValueOfType<int>(json, r'requests'),
        tokens: mapValueOfType<int>(json, r'tokens'),
      );
    }
    return null;
  }

  static List<ProviderRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProviderRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProviderRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProviderRow> mapFromJson(dynamic json) {
    final map = <String, ProviderRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProviderRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProviderRow-objects as value to a dart map
  static Map<String, List<ProviderRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProviderRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProviderRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

