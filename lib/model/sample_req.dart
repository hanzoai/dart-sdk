//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SampleReq {
  /// Returns a new [SampleReq] instance.
  SampleReq({
    this.account,
    this.cachedInputTokens,
    this.confidence,
    this.costCents,
    this.costLimitCents,
    this.currency,
    this.inputTokens,
    this.kind,
    this.lane,
    this.machine,
    this.outputTokens,
    this.plan,
    this.provider,
    this.requests,
    this.resetsAt,
    this.synthetic,
    this.totalTokens,
    this.usedPct,
    this.window,
    this.windowMinutes,
    this.windowStart,
  });

  /// Account is the linked account the window was metered from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? account;

  /// CachedInputTokens is the prompt tokens the provider served from cache.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cachedInputTokens;

  /// Confidence says how much the counters below mean.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? confidence;

  /// CostCents is what the window cost on the PROVIDER's own plan, in US cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? costCents;

  /// CostLimitCents is the plan's spend ceiling for the window, in US cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? costLimitCents;

  /// Currency is the provider's currency when it is not US cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  /// InputTokens is prompt tokens consumed in the window.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? inputTokens;

  /// Kind is subscription or apikey. Empty is accepted; anything else is refused.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Lane is the meter lane within the account.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lane;

  /// Machine is the host whose meter read the window. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? machine;

  /// OutputTokens is completion tokens produced in the window.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? outputTokens;

  /// Plan is the subscription plan the account is on, as the provider names it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? plan;

  /// Provider is the upstream the account belongs to, e.g. anthropic. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Requests is how many requests the window covers.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? requests;

  /// ResetsAt is when the measured window rolls over, RFC3339. Empty is allowed; anything else that is not RFC3339 is refused.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? resetsAt;

  /// Synthetic marks a window the meter inferred rather than read.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? synthetic;

  /// TotalTokens is the window's total tokens.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalTokens;

  /// UsedPct is how much of the window's allowance is consumed, 0–100.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? usedPct;

  /// Window is the window class: 6h, day, week or month. Required, and a class this surface does not know is refused rather than rewritten.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? window;

  /// WindowMinutes is the window's real length in minutes, as the meter reports it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? windowMinutes;

  /// WindowStart is when the measured window opened, RFC3339. Empty is allowed; anything else that is not RFC3339 is refused.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? windowStart;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SampleReq &&
    other.account == account &&
    other.cachedInputTokens == cachedInputTokens &&
    other.confidence == confidence &&
    other.costCents == costCents &&
    other.costLimitCents == costLimitCents &&
    other.currency == currency &&
    other.inputTokens == inputTokens &&
    other.kind == kind &&
    other.lane == lane &&
    other.machine == machine &&
    other.outputTokens == outputTokens &&
    other.plan == plan &&
    other.provider == provider &&
    other.requests == requests &&
    other.resetsAt == resetsAt &&
    other.synthetic == synthetic &&
    other.totalTokens == totalTokens &&
    other.usedPct == usedPct &&
    other.window == window &&
    other.windowMinutes == windowMinutes &&
    other.windowStart == windowStart;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (cachedInputTokens == null ? 0 : cachedInputTokens!.hashCode) +
    (confidence == null ? 0 : confidence!.hashCode) +
    (costCents == null ? 0 : costCents!.hashCode) +
    (costLimitCents == null ? 0 : costLimitCents!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (inputTokens == null ? 0 : inputTokens!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (lane == null ? 0 : lane!.hashCode) +
    (machine == null ? 0 : machine!.hashCode) +
    (outputTokens == null ? 0 : outputTokens!.hashCode) +
    (plan == null ? 0 : plan!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (requests == null ? 0 : requests!.hashCode) +
    (resetsAt == null ? 0 : resetsAt!.hashCode) +
    (synthetic == null ? 0 : synthetic!.hashCode) +
    (totalTokens == null ? 0 : totalTokens!.hashCode) +
    (usedPct == null ? 0 : usedPct!.hashCode) +
    (window == null ? 0 : window!.hashCode) +
    (windowMinutes == null ? 0 : windowMinutes!.hashCode) +
    (windowStart == null ? 0 : windowStart!.hashCode);

  @override
  String toString() => 'SampleReq[account=$account, cachedInputTokens=$cachedInputTokens, confidence=$confidence, costCents=$costCents, costLimitCents=$costLimitCents, currency=$currency, inputTokens=$inputTokens, kind=$kind, lane=$lane, machine=$machine, outputTokens=$outputTokens, plan=$plan, provider=$provider, requests=$requests, resetsAt=$resetsAt, synthetic=$synthetic, totalTokens=$totalTokens, usedPct=$usedPct, window=$window, windowMinutes=$windowMinutes, windowStart=$windowStart]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.cachedInputTokens != null) {
      json[r'cachedInputTokens'] = this.cachedInputTokens;
    } else {
      json[r'cachedInputTokens'] = null;
    }
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
    if (this.costLimitCents != null) {
      json[r'costLimitCents'] = this.costLimitCents;
    } else {
      json[r'costLimitCents'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.inputTokens != null) {
      json[r'inputTokens'] = this.inputTokens;
    } else {
      json[r'inputTokens'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.lane != null) {
      json[r'lane'] = this.lane;
    } else {
      json[r'lane'] = null;
    }
    if (this.machine != null) {
      json[r'machine'] = this.machine;
    } else {
      json[r'machine'] = null;
    }
    if (this.outputTokens != null) {
      json[r'outputTokens'] = this.outputTokens;
    } else {
      json[r'outputTokens'] = null;
    }
    if (this.plan != null) {
      json[r'plan'] = this.plan;
    } else {
      json[r'plan'] = null;
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
    if (this.resetsAt != null) {
      json[r'resetsAt'] = this.resetsAt;
    } else {
      json[r'resetsAt'] = null;
    }
    if (this.synthetic != null) {
      json[r'synthetic'] = this.synthetic;
    } else {
      json[r'synthetic'] = null;
    }
    if (this.totalTokens != null) {
      json[r'totalTokens'] = this.totalTokens;
    } else {
      json[r'totalTokens'] = null;
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
    if (this.windowMinutes != null) {
      json[r'windowMinutes'] = this.windowMinutes;
    } else {
      json[r'windowMinutes'] = null;
    }
    if (this.windowStart != null) {
      json[r'windowStart'] = this.windowStart;
    } else {
      json[r'windowStart'] = null;
    }
    return json;
  }

  /// Returns a new [SampleReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SampleReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SampleReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SampleReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SampleReq(
        account: mapValueOfType<String>(json, r'account'),
        cachedInputTokens: mapValueOfType<int>(json, r'cachedInputTokens'),
        confidence: mapValueOfType<String>(json, r'confidence'),
        costCents: mapValueOfType<int>(json, r'costCents'),
        costLimitCents: mapValueOfType<int>(json, r'costLimitCents'),
        currency: mapValueOfType<String>(json, r'currency'),
        inputTokens: mapValueOfType<int>(json, r'inputTokens'),
        kind: mapValueOfType<String>(json, r'kind'),
        lane: mapValueOfType<String>(json, r'lane'),
        machine: mapValueOfType<String>(json, r'machine'),
        outputTokens: mapValueOfType<int>(json, r'outputTokens'),
        plan: mapValueOfType<String>(json, r'plan'),
        provider: mapValueOfType<String>(json, r'provider'),
        requests: mapValueOfType<int>(json, r'requests'),
        resetsAt: mapValueOfType<String>(json, r'resetsAt'),
        synthetic: mapValueOfType<bool>(json, r'synthetic'),
        totalTokens: mapValueOfType<int>(json, r'totalTokens'),
        usedPct: num.parse('${json[r'usedPct']}'),
        window: mapValueOfType<String>(json, r'window'),
        windowMinutes: mapValueOfType<int>(json, r'windowMinutes'),
        windowStart: mapValueOfType<String>(json, r'windowStart'),
      );
    }
    return null;
  }

  static List<SampleReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SampleReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SampleReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SampleReq> mapFromJson(dynamic json) {
    final map = <String, SampleReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SampleReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SampleReq-objects as value to a dart map
  static Map<String, List<SampleReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SampleReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SampleReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

