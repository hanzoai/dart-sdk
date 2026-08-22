//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CampaignResults {
  /// Returns a new [CampaignResults] instance.
  CampaignResults({
    this.abTest,
    this.available,
    this.cac,
    this.campaignId,
    this.channels = const [],
    this.clicks,
    this.conversions,
    this.ctr,
    this.cvr,
    this.end,
    this.impressions,
    this.name,
    this.range,
    this.revenue,
    this.roas,
    this.source_,
    this.spendCents,
    this.start,
    this.status,
    this.visitors,
  });
  Object? abTest;

  /// Available is false when the analytics warehouse is not connected or the query failed: the funnel below is then zero because nothing could be read, not because nothing happened. Spend and Channels are still real — they come from the connectors, not the warehouse.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? available;

  /// CAC is customer acquisition cost: spend DOLLARS per conversion, rounded to cents. 0 when nothing converted — that is \"not yet computable\", not \"free\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? cac;

  /// CampaignID is the campaign these results are for, echoed from the request.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? campaignId;

  /// Channels is the per-channel spend breakdown that SpendCents sums, one row per channel on the campaign including the ones that never launched.
  List<ChannelMetric> channels;

  /// Clicks is the campaign's click events over the window.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? clicks;

  /// Conversions is the terminal funnel events attributed to the campaign — orders completed, signups completed, explicit conversion events.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? conversions;

  /// CTR is clicks per impression, a fraction rounded to 4 places (0.0123 = 1.23%), not a percentage. 0 when there were no impressions to divide by.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? ctr;

  /// CVR is conversions per click, a fraction rounded to 4 places. 0 when there were no clicks.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? cvr;

  /// End is the window's end, RFC3339 UTC — the read's own clock unless an explicit pair was given. The window is a LOOKBACK, not the campaign's own lifetime.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? end;

  /// Impressions is how many times the campaign's creatives were shown, counted from its utm_campaign-tagged impression events.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? impressions;

  /// Name is the campaign's display name at read time, so a result can be labelled without a second fetch.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Range is the window actually used: 24h, 7d, 30d, 90d, or \"custom\" when an explicit start/end pair was honored. An unparseable or absent range reads 30d, so this is the value to trust, not the one that was sent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? range;

  /// Revenue is the summed revenue attribute of the campaign's events, in whole CURRENCY UNITS (dollars) — the one money value here that is not in cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? revenue;

  /// ROAS is return on ad spend: revenue per spend DOLLAR, rounded to 2 places (2.5 = $2.50 back per $1). 0 when nothing was spent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? roas;

  /// Source names the analytics table the funnel was read from, so an operator can see exactly what was counted. Set even when Available is false.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// SpendCents is the campaign's total spend in CENTS: the sum of what each live channel's provider reports. A channel whose spend could not be read contributes 0 and says so on its own row.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? spendCents;

  /// Start is the window's inclusive start, RFC3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? start;

  /// Status is the campaign's lifecycle state at read time — draft, live, paused, completed or failed. A draft has never run, so its funnel is legitimately zero.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Visitors is how many distinct people the campaign reached, counted by event identity across ALL its events in the window — not a subset of Impressions, so it can exceed them for a campaign whose provider reports clicks but not views.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? visitors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CampaignResults &&
    other.abTest == abTest &&
    other.available == available &&
    other.cac == cac &&
    other.campaignId == campaignId &&
    _deepEquality.equals(other.channels, channels) &&
    other.clicks == clicks &&
    other.conversions == conversions &&
    other.ctr == ctr &&
    other.cvr == cvr &&
    other.end == end &&
    other.impressions == impressions &&
    other.name == name &&
    other.range == range &&
    other.revenue == revenue &&
    other.roas == roas &&
    other.source_ == source_ &&
    other.spendCents == spendCents &&
    other.start == start &&
    other.status == status &&
    other.visitors == visitors;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (abTest == null ? 0 : abTest!.hashCode) +
    (available == null ? 0 : available!.hashCode) +
    (cac == null ? 0 : cac!.hashCode) +
    (campaignId == null ? 0 : campaignId!.hashCode) +
    (channels.hashCode) +
    (clicks == null ? 0 : clicks!.hashCode) +
    (conversions == null ? 0 : conversions!.hashCode) +
    (ctr == null ? 0 : ctr!.hashCode) +
    (cvr == null ? 0 : cvr!.hashCode) +
    (end == null ? 0 : end!.hashCode) +
    (impressions == null ? 0 : impressions!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (range == null ? 0 : range!.hashCode) +
    (revenue == null ? 0 : revenue!.hashCode) +
    (roas == null ? 0 : roas!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (spendCents == null ? 0 : spendCents!.hashCode) +
    (start == null ? 0 : start!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (visitors == null ? 0 : visitors!.hashCode);

  @override
  String toString() => 'CampaignResults[abTest=$abTest, available=$available, cac=$cac, campaignId=$campaignId, channels=$channels, clicks=$clicks, conversions=$conversions, ctr=$ctr, cvr=$cvr, end=$end, impressions=$impressions, name=$name, range=$range, revenue=$revenue, roas=$roas, source_=$source_, spendCents=$spendCents, start=$start, status=$status, visitors=$visitors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.abTest != null) {
      json[r'abTest'] = this.abTest;
    } else {
      json[r'abTest'] = null;
    }
    if (this.available != null) {
      json[r'available'] = this.available;
    } else {
      json[r'available'] = null;
    }
    if (this.cac != null) {
      json[r'cac'] = this.cac;
    } else {
      json[r'cac'] = null;
    }
    if (this.campaignId != null) {
      json[r'campaignId'] = this.campaignId;
    } else {
      json[r'campaignId'] = null;
    }
      json[r'channels'] = this.channels;
    if (this.clicks != null) {
      json[r'clicks'] = this.clicks;
    } else {
      json[r'clicks'] = null;
    }
    if (this.conversions != null) {
      json[r'conversions'] = this.conversions;
    } else {
      json[r'conversions'] = null;
    }
    if (this.ctr != null) {
      json[r'ctr'] = this.ctr;
    } else {
      json[r'ctr'] = null;
    }
    if (this.cvr != null) {
      json[r'cvr'] = this.cvr;
    } else {
      json[r'cvr'] = null;
    }
    if (this.end != null) {
      json[r'end'] = this.end;
    } else {
      json[r'end'] = null;
    }
    if (this.impressions != null) {
      json[r'impressions'] = this.impressions;
    } else {
      json[r'impressions'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.range != null) {
      json[r'range'] = this.range;
    } else {
      json[r'range'] = null;
    }
    if (this.revenue != null) {
      json[r'revenue'] = this.revenue;
    } else {
      json[r'revenue'] = null;
    }
    if (this.roas != null) {
      json[r'roas'] = this.roas;
    } else {
      json[r'roas'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.spendCents != null) {
      json[r'spendCents'] = this.spendCents;
    } else {
      json[r'spendCents'] = null;
    }
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.visitors != null) {
      json[r'visitors'] = this.visitors;
    } else {
      json[r'visitors'] = null;
    }
    return json;
  }

  /// Returns a new [CampaignResults] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CampaignResults? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CampaignResults[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CampaignResults[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CampaignResults(
        abTest: mapValueOfType<Object>(json, r'abTest'),
        available: mapValueOfType<bool>(json, r'available'),
        cac: num.parse('${json[r'cac']}'),
        campaignId: mapValueOfType<String>(json, r'campaignId'),
        channels: ChannelMetric.listFromJson(json[r'channels']),
        clicks: mapValueOfType<int>(json, r'clicks'),
        conversions: mapValueOfType<int>(json, r'conversions'),
        ctr: num.parse('${json[r'ctr']}'),
        cvr: num.parse('${json[r'cvr']}'),
        end: mapValueOfType<String>(json, r'end'),
        impressions: mapValueOfType<int>(json, r'impressions'),
        name: mapValueOfType<String>(json, r'name'),
        range: mapValueOfType<String>(json, r'range'),
        revenue: num.parse('${json[r'revenue']}'),
        roas: num.parse('${json[r'roas']}'),
        source_: mapValueOfType<String>(json, r'source'),
        spendCents: mapValueOfType<int>(json, r'spendCents'),
        start: mapValueOfType<String>(json, r'start'),
        status: mapValueOfType<String>(json, r'status'),
        visitors: mapValueOfType<int>(json, r'visitors'),
      );
    }
    return null;
  }

  static List<CampaignResults> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CampaignResults>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CampaignResults.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CampaignResults> mapFromJson(dynamic json) {
    final map = <String, CampaignResults>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CampaignResults.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CampaignResults-objects as value to a dart map
  static Map<String, List<CampaignResults>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CampaignResults>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CampaignResults.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

