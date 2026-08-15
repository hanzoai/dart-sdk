//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yTotals {
  /// Returns a new [O11yTotals] instance.
  O11yTotals({
    this.completionTokens,
    this.costCents,
    this.errors,
    this.latencyP50Ms,
    this.latencyP95Ms,
    this.latencyP99Ms,
    this.logVolume,
    this.models,
    this.orgs,
    this.promptTokens,
    this.requests,
    this.services,
    this.tokens,
    this.traceCount,
    this.traceErrorRate,
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
  int? errors;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? latencyP50Ms;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? latencyP95Ms;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? latencyP99Ms;

  /// Logs (event.log), fleet volume over the window.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? logVolume;

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
  int? orgs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? promptTokens;

  /// LLM usage (hanzo.cloud_usage), all orgs.
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
  int? services;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tokens;

  /// Traces (event.span), all services.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? traceCount;

  /// percent (0..100)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? traceErrorRate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yTotals &&
    other.completionTokens == completionTokens &&
    other.costCents == costCents &&
    other.errors == errors &&
    other.latencyP50Ms == latencyP50Ms &&
    other.latencyP95Ms == latencyP95Ms &&
    other.latencyP99Ms == latencyP99Ms &&
    other.logVolume == logVolume &&
    other.models == models &&
    other.orgs == orgs &&
    other.promptTokens == promptTokens &&
    other.requests == requests &&
    other.services == services &&
    other.tokens == tokens &&
    other.traceCount == traceCount &&
    other.traceErrorRate == traceErrorRate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (completionTokens == null ? 0 : completionTokens!.hashCode) +
    (costCents == null ? 0 : costCents!.hashCode) +
    (errors == null ? 0 : errors!.hashCode) +
    (latencyP50Ms == null ? 0 : latencyP50Ms!.hashCode) +
    (latencyP95Ms == null ? 0 : latencyP95Ms!.hashCode) +
    (latencyP99Ms == null ? 0 : latencyP99Ms!.hashCode) +
    (logVolume == null ? 0 : logVolume!.hashCode) +
    (models == null ? 0 : models!.hashCode) +
    (orgs == null ? 0 : orgs!.hashCode) +
    (promptTokens == null ? 0 : promptTokens!.hashCode) +
    (requests == null ? 0 : requests!.hashCode) +
    (services == null ? 0 : services!.hashCode) +
    (tokens == null ? 0 : tokens!.hashCode) +
    (traceCount == null ? 0 : traceCount!.hashCode) +
    (traceErrorRate == null ? 0 : traceErrorRate!.hashCode);

  @override
  String toString() => 'O11yTotals[completionTokens=$completionTokens, costCents=$costCents, errors=$errors, latencyP50Ms=$latencyP50Ms, latencyP95Ms=$latencyP95Ms, latencyP99Ms=$latencyP99Ms, logVolume=$logVolume, models=$models, orgs=$orgs, promptTokens=$promptTokens, requests=$requests, services=$services, tokens=$tokens, traceCount=$traceCount, traceErrorRate=$traceErrorRate]';

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
    if (this.latencyP50Ms != null) {
      json[r'latencyP50Ms'] = this.latencyP50Ms;
    } else {
      json[r'latencyP50Ms'] = null;
    }
    if (this.latencyP95Ms != null) {
      json[r'latencyP95Ms'] = this.latencyP95Ms;
    } else {
      json[r'latencyP95Ms'] = null;
    }
    if (this.latencyP99Ms != null) {
      json[r'latencyP99Ms'] = this.latencyP99Ms;
    } else {
      json[r'latencyP99Ms'] = null;
    }
    if (this.logVolume != null) {
      json[r'logVolume'] = this.logVolume;
    } else {
      json[r'logVolume'] = null;
    }
    if (this.models != null) {
      json[r'models'] = this.models;
    } else {
      json[r'models'] = null;
    }
    if (this.orgs != null) {
      json[r'orgs'] = this.orgs;
    } else {
      json[r'orgs'] = null;
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
    if (this.services != null) {
      json[r'services'] = this.services;
    } else {
      json[r'services'] = null;
    }
    if (this.tokens != null) {
      json[r'tokens'] = this.tokens;
    } else {
      json[r'tokens'] = null;
    }
    if (this.traceCount != null) {
      json[r'traceCount'] = this.traceCount;
    } else {
      json[r'traceCount'] = null;
    }
    if (this.traceErrorRate != null) {
      json[r'traceErrorRate'] = this.traceErrorRate;
    } else {
      json[r'traceErrorRate'] = null;
    }
    return json;
  }

  /// Returns a new [O11yTotals] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yTotals? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yTotals[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yTotals[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yTotals(
        completionTokens: mapValueOfType<int>(json, r'completionTokens'),
        costCents: mapValueOfType<int>(json, r'costCents'),
        errors: mapValueOfType<int>(json, r'errors'),
        latencyP50Ms: num.parse('${json[r'latencyP50Ms']}'),
        latencyP95Ms: num.parse('${json[r'latencyP95Ms']}'),
        latencyP99Ms: num.parse('${json[r'latencyP99Ms']}'),
        logVolume: mapValueOfType<int>(json, r'logVolume'),
        models: mapValueOfType<int>(json, r'models'),
        orgs: mapValueOfType<int>(json, r'orgs'),
        promptTokens: mapValueOfType<int>(json, r'promptTokens'),
        requests: mapValueOfType<int>(json, r'requests'),
        services: mapValueOfType<int>(json, r'services'),
        tokens: mapValueOfType<int>(json, r'tokens'),
        traceCount: mapValueOfType<int>(json, r'traceCount'),
        traceErrorRate: num.parse('${json[r'traceErrorRate']}'),
      );
    }
    return null;
  }

  static List<O11yTotals> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yTotals>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yTotals.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yTotals> mapFromJson(dynamic json) {
    final map = <String, O11yTotals>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yTotals.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yTotals-objects as value to a dart map
  static Map<String, List<O11yTotals>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yTotals>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yTotals.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

