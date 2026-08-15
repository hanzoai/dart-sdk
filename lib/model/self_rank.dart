//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SelfRank {
  /// Returns a new [SelfRank] instance.
  SelfRank({
    this.costCents,
    this.handle,
    this.listed,
    this.metric,
    this.ofTotal,
    this.rank,
    this.ranked,
    this.requests,
    this.tokens,
  });

  /// CostCents is the caller's own spend in whole US cents. Always populated — your own spend is never withheld from you — so here 0 really does mean zero.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? costCents;

  /// Handle is how the caller appears on this board: their chosen handle, falling back to their username, on a user board; their org id on the global board. Present even when unlisted — this is the caller looking at themselves.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? handle;

  /// Listed says whether the caller is publicly visible on this board: opted in on a user board, org opted in (or the viewer is a platform admin) on the global one. False is the prompt to offer the opt-in, and explains an unranked global self.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? listed;

  /// Metric is whichever of the three values above the board was ranked by, so a client can compare the caller against the rows without re-reading the request. Metric <= 0 is exactly the case that leaves Ranked false.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? metric;

  /// OfTotal is the size of the universe Rank is out of — \"rank N of OfTotal\". On a user board that is the org's users with any usage in the window; on the global board it is every active org for a platform admin, and the count of opted-in orgs for everyone else.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ofTotal;

  /// Rank is the caller's 1-based standing, computed as (subjects whose windowed metric strictly exceeds the caller's) + 1. It is exact against the whole ranked universe, not just the returned page, so it can far exceed len(rows). Read it only when Ranked.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rank;

  /// Ranked is false when the caller holds no position: they had no usage in the window, or (on the global board) their org has not opted into public listing and so is not ranked against a set it never joined. Rank is then 0 and means nothing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ranked;

  /// Requests is the caller's own request count in the window, 0 if they were idle.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? requests;

  /// Tokens is the caller's own prompt+completion tokens in the window.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tokens;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SelfRank &&
    other.costCents == costCents &&
    other.handle == handle &&
    other.listed == listed &&
    other.metric == metric &&
    other.ofTotal == ofTotal &&
    other.rank == rank &&
    other.ranked == ranked &&
    other.requests == requests &&
    other.tokens == tokens;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (costCents == null ? 0 : costCents!.hashCode) +
    (handle == null ? 0 : handle!.hashCode) +
    (listed == null ? 0 : listed!.hashCode) +
    (metric == null ? 0 : metric!.hashCode) +
    (ofTotal == null ? 0 : ofTotal!.hashCode) +
    (rank == null ? 0 : rank!.hashCode) +
    (ranked == null ? 0 : ranked!.hashCode) +
    (requests == null ? 0 : requests!.hashCode) +
    (tokens == null ? 0 : tokens!.hashCode);

  @override
  String toString() => 'SelfRank[costCents=$costCents, handle=$handle, listed=$listed, metric=$metric, ofTotal=$ofTotal, rank=$rank, ranked=$ranked, requests=$requests, tokens=$tokens]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.costCents != null) {
      json[r'costCents'] = this.costCents;
    } else {
      json[r'costCents'] = null;
    }
    if (this.handle != null) {
      json[r'handle'] = this.handle;
    } else {
      json[r'handle'] = null;
    }
    if (this.listed != null) {
      json[r'listed'] = this.listed;
    } else {
      json[r'listed'] = null;
    }
    if (this.metric != null) {
      json[r'metric'] = this.metric;
    } else {
      json[r'metric'] = null;
    }
    if (this.ofTotal != null) {
      json[r'ofTotal'] = this.ofTotal;
    } else {
      json[r'ofTotal'] = null;
    }
    if (this.rank != null) {
      json[r'rank'] = this.rank;
    } else {
      json[r'rank'] = null;
    }
    if (this.ranked != null) {
      json[r'ranked'] = this.ranked;
    } else {
      json[r'ranked'] = null;
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

  /// Returns a new [SelfRank] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SelfRank? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SelfRank[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SelfRank[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SelfRank(
        costCents: mapValueOfType<int>(json, r'costCents'),
        handle: mapValueOfType<String>(json, r'handle'),
        listed: mapValueOfType<bool>(json, r'listed'),
        metric: mapValueOfType<int>(json, r'metric'),
        ofTotal: mapValueOfType<int>(json, r'ofTotal'),
        rank: mapValueOfType<int>(json, r'rank'),
        ranked: mapValueOfType<bool>(json, r'ranked'),
        requests: mapValueOfType<int>(json, r'requests'),
        tokens: mapValueOfType<int>(json, r'tokens'),
      );
    }
    return null;
  }

  static List<SelfRank> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SelfRank>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SelfRank.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SelfRank> mapFromJson(dynamic json) {
    final map = <String, SelfRank>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SelfRank.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SelfRank-objects as value to a dart map
  static Map<String, List<SelfRank>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SelfRank>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SelfRank.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

