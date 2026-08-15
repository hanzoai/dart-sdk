//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TotalView {
  /// Returns a new [TotalView] instance.
  TotalView({
    this.confidence,
    this.costCents,
    this.provider,
    this.requests,
    this.scope,
    this.source_,
    this.tokens,
    this.usedPct,
    this.window,
    this.windows,
  });

  /// Confidence says how real the row's numbers are.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? confidence;

  /// CostCents is the period's spend in cents, in the row's own ledger.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? costCents;

  /// Provider is the provider the row totals.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Requests is the period's request count.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? requests;

  /// Scope is whose usage the row measures: user or org.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scope;

  /// Source is whose meter the row came from: account or hanzo.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Tokens is the period's total token count.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tokens;

  /// UsedPct is the plan consumption percentage, on the account side.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? usedPct;

  /// Window is the window class the row totals, on the account side.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? window;

  /// Windows is how many window instances the row folds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? windows;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TotalView &&
    other.confidence == confidence &&
    other.costCents == costCents &&
    other.provider == provider &&
    other.requests == requests &&
    other.scope == scope &&
    other.source_ == source_ &&
    other.tokens == tokens &&
    other.usedPct == usedPct &&
    other.window == window &&
    other.windows == windows;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (confidence == null ? 0 : confidence!.hashCode) +
    (costCents == null ? 0 : costCents!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (requests == null ? 0 : requests!.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (tokens == null ? 0 : tokens!.hashCode) +
    (usedPct == null ? 0 : usedPct!.hashCode) +
    (window == null ? 0 : window!.hashCode) +
    (windows == null ? 0 : windows!.hashCode);

  @override
  String toString() => 'TotalView[confidence=$confidence, costCents=$costCents, provider=$provider, requests=$requests, scope=$scope, source_=$source_, tokens=$tokens, usedPct=$usedPct, window=$window, windows=$windows]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.confidence != null) {
      json[r'confidence'] = this.confidence;
    } else {
      json[r'confidence'] = null;
    }
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
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.tokens != null) {
      json[r'tokens'] = this.tokens;
    } else {
      json[r'tokens'] = null;
    }
    if (this.usedPct != null) {
      json[r'usedPct'] = this.usedPct;
    } else {
      json[r'usedPct'] = null;
    }
    if (this.window != null) {
      json[r'window'] = this.window;
    } else {
      json[r'window'] = null;
    }
    if (this.windows != null) {
      json[r'windows'] = this.windows;
    } else {
      json[r'windows'] = null;
    }
    return json;
  }

  /// Returns a new [TotalView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TotalView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TotalView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TotalView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TotalView(
        confidence: mapValueOfType<String>(json, r'confidence'),
        costCents: mapValueOfType<int>(json, r'costCents'),
        provider: mapValueOfType<String>(json, r'provider'),
        requests: mapValueOfType<int>(json, r'requests'),
        scope: mapValueOfType<String>(json, r'scope'),
        source_: mapValueOfType<String>(json, r'source'),
        tokens: mapValueOfType<int>(json, r'tokens'),
        usedPct: num.parse('${json[r'usedPct']}'),
        window: mapValueOfType<String>(json, r'window'),
        windows: mapValueOfType<int>(json, r'windows'),
      );
    }
    return null;
  }

  static List<TotalView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TotalView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TotalView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TotalView> mapFromJson(dynamic json) {
    final map = <String, TotalView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TotalView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TotalView-objects as value to a dart map
  static Map<String, List<TotalView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TotalView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TotalView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

