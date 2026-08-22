//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskLabelCoverage {
  /// Returns a new [RiskLabelCoverage] instance.
  RiskLabelCoverage({
    this.contested,
    this.events,
    this.explore,
    this.facts,
    this.from,
    this.horizon,
    this.judged,
    this.matured,
    this.pending,
    this.productive,
    this.sources = const [],
    this.to,
    this.unlabelled,
    this.unmatured,
    this.unproductive,
  });
  /// Contested is how many matured events have two visible assertions that disagree. It is the number that says whether the precedence rule is load-bearing or decorative, and it is the one to watch after wiring a new source.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? contested;

  /// Events is how many DISTINCT judged events those assertions name, keyed on (kind, subject, at). It counts only events something was ASSERTED about: what share of the whole event stream carries a label is a question about the feature plane's denominator and is not answerable here. Matured + Unmatured is Events.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? events;

  /// Explore is the share of judged events whose winning assertion came from the below-the-line sample. A blocked transaction never produces a chargeback, so a training set with no exploration in it is a description of the incumbent block list rather than of the world — and a champion measured on it is measured on whether it agrees with the incumbent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? explore;

  /// Facts is how many assertions the window holds; Events is how many distinct judged events they cover. The two differ by exactly the corroboration and the conflict in the plane.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? facts;

  /// From is the INCLUSIVE start of the EVENT window these counts were folded over, RFC 3339, echoed with the defaults filled in — the caller's, or 90 days before To. An assertion is in the window when its event time satisfies at >= From.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? from;

  /// Horizon is the maturity horizon these counts were measured under, IN DAYS — the caller's, or 120. It decides Matured (an event is matured when its `at` plus this many days is not after now), it sets each event's own as-of and so which assertions were visible to it, and when the caller bounds nothing it also places the default window's end.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? horizon;

  /// Judged is how many MATURED events resolve, at their own as-of, to something other than unjudged.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? judged;

  /// Matured is how many of those events have aged past the horizon and may therefore be admitted to a supervised set at all. It counts every matured event, judged or not — it is the DENOMINATOR an operator divides Judged by, and a denominator that excluded the unjudged would read 1.0 on a plane with one label in it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? matured;

  /// Pending is how many of this tenant's assertions the DERIVED columnar copy is not known to hold yet. Every count above is folded from the record, so they are right regardless — but a materialiser that joins in the warehouse while this is non-zero is joining against an incomplete answer key, and a missing fraud label is indistinguishable from an honest customer. It is reported at the training gate because that is where somebody is deciding whether the ground truth is good enough to fit on. Counted under a cap, so it saturates rather than costing a full scan on every read.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pending;

  /// Productive is how many matured events resolve, at their own as-of, to a WINNING assertion of `productive` — the event led somewhere: escalated, reported, charged back. It is the positive class a supervised fit would train on, and a near-zero count is the number that says the fit is not worth running.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? productive;

  /// Sources breaks the judged events down by the source that WON, so a plane that looks labelled because one noisy source dominates is visible as such.
  List<RiskSourceCoverage> sources;

  /// To is the EXCLUSIVE end of that window (at < To). Unstated it is one horizon before now, never now: a window running to now under a maturity horizon can hold no matured event at all, so every count below would read zero however much ground truth the tenant held.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? to;

  /// Unlabelled is how many MATURED events had no assertion knowable by their own as-of — including every assertion that arrived after that instant. It is the field that says WHY judged is low: a tenant whose ground truth was filed long after the events it judges reads matured=n, judged=0, unlabelled=n, which is diagnosable, rather than a bare zero, which is not.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? unlabelled;

  /// Unmatured is how many events in the window have NOT aged past the horizon. They are not unlabelled — they are not yet askable, and a supervised set must exclude them rather than treat them as negatives. Matured + Unmatured is Events.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? unmatured;

  /// Unproductive is every OTHER judged event: the winner claimed `unproductive`, judged not suspicious. Productive + Unproductive is Judged exactly, because a winner of the explicit unjudged is counted in neither — it is a matured event somebody looked at and could not conclude about, and rolling it into the negatives would hand a model a claim nobody made.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? unproductive;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskLabelCoverage &&
    other.contested == contested &&
    other.events == events &&
    other.explore == explore &&
    other.facts == facts &&
    other.from == from &&
    other.horizon == horizon &&
    other.judged == judged &&
    other.matured == matured &&
    other.pending == pending &&
    other.productive == productive &&
    _deepEquality.equals(other.sources, sources) &&
    other.to == to &&
    other.unlabelled == unlabelled &&
    other.unmatured == unmatured &&
    other.unproductive == unproductive;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (contested == null ? 0 : contested!.hashCode) +
    (events == null ? 0 : events!.hashCode) +
    (explore == null ? 0 : explore!.hashCode) +
    (facts == null ? 0 : facts!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (horizon == null ? 0 : horizon!.hashCode) +
    (judged == null ? 0 : judged!.hashCode) +
    (matured == null ? 0 : matured!.hashCode) +
    (pending == null ? 0 : pending!.hashCode) +
    (productive == null ? 0 : productive!.hashCode) +
    (sources.hashCode) +
    (to == null ? 0 : to!.hashCode) +
    (unlabelled == null ? 0 : unlabelled!.hashCode) +
    (unmatured == null ? 0 : unmatured!.hashCode) +
    (unproductive == null ? 0 : unproductive!.hashCode);

  @override
  String toString() => 'RiskLabelCoverage[contested=$contested, events=$events, explore=$explore, facts=$facts, from=$from, horizon=$horizon, judged=$judged, matured=$matured, pending=$pending, productive=$productive, sources=$sources, to=$to, unlabelled=$unlabelled, unmatured=$unmatured, unproductive=$unproductive]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.contested != null) {
      json[r'contested'] = this.contested;
    } else {
      json[r'contested'] = null;
    }
    if (this.events != null) {
      json[r'events'] = this.events;
    } else {
      json[r'events'] = null;
    }
    if (this.explore != null) {
      json[r'explore'] = this.explore;
    } else {
      json[r'explore'] = null;
    }
    if (this.facts != null) {
      json[r'facts'] = this.facts;
    } else {
      json[r'facts'] = null;
    }
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    if (this.horizon != null) {
      json[r'horizon'] = this.horizon;
    } else {
      json[r'horizon'] = null;
    }
    if (this.judged != null) {
      json[r'judged'] = this.judged;
    } else {
      json[r'judged'] = null;
    }
    if (this.matured != null) {
      json[r'matured'] = this.matured;
    } else {
      json[r'matured'] = null;
    }
    if (this.pending != null) {
      json[r'pending'] = this.pending;
    } else {
      json[r'pending'] = null;
    }
    if (this.productive != null) {
      json[r'productive'] = this.productive;
    } else {
      json[r'productive'] = null;
    }
      json[r'sources'] = this.sources;
    if (this.to != null) {
      json[r'to'] = this.to;
    } else {
      json[r'to'] = null;
    }
    if (this.unlabelled != null) {
      json[r'unlabelled'] = this.unlabelled;
    } else {
      json[r'unlabelled'] = null;
    }
    if (this.unmatured != null) {
      json[r'unmatured'] = this.unmatured;
    } else {
      json[r'unmatured'] = null;
    }
    if (this.unproductive != null) {
      json[r'unproductive'] = this.unproductive;
    } else {
      json[r'unproductive'] = null;
    }
    return json;
  }

  /// Returns a new [RiskLabelCoverage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskLabelCoverage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskLabelCoverage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskLabelCoverage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskLabelCoverage(
        contested: mapValueOfType<int>(json, r'contested'),
        events: mapValueOfType<int>(json, r'events'),
        explore: num.parse('${json[r'explore']}'),
        facts: mapValueOfType<int>(json, r'facts'),
        from: mapValueOfType<String>(json, r'from'),
        horizon: mapValueOfType<int>(json, r'horizon'),
        judged: mapValueOfType<int>(json, r'judged'),
        matured: mapValueOfType<int>(json, r'matured'),
        pending: mapValueOfType<int>(json, r'pending'),
        productive: mapValueOfType<int>(json, r'productive'),
        sources: RiskSourceCoverage.listFromJson(json[r'sources']),
        to: mapValueOfType<String>(json, r'to'),
        unlabelled: mapValueOfType<int>(json, r'unlabelled'),
        unmatured: mapValueOfType<int>(json, r'unmatured'),
        unproductive: mapValueOfType<int>(json, r'unproductive'),
      );
    }
    return null;
  }

  static List<RiskLabelCoverage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskLabelCoverage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskLabelCoverage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskLabelCoverage> mapFromJson(dynamic json) {
    final map = <String, RiskLabelCoverage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskLabelCoverage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskLabelCoverage-objects as value to a dart map
  static Map<String, List<RiskLabelCoverage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskLabelCoverage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskLabelCoverage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

