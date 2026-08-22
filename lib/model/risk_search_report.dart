//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskSearchReport {
  /// Returns a new [RiskSearchReport] instance.
  RiskSearchReport({
    this.done,
    this.ended,
    this.events,
    this.fitted,
    this.gap,
    this.id,
    this.refusal,
    this.started,
    this.trials = const [],
    this.winner,
  });
  /// Done is false while the run is still going; the trials below are then the ones finished so far.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? done;

  /// Ended is when it finished, RFC 3339. Absent while it is still going.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ended;

  /// Events is how much of this organisation's history was replayed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? events;

  /// Fitted is the winning shape FITTED over your own history and published as one of your organisation's own model values. Name its address on PUT /v1/risk/state/model and the winning shape becomes the model you are running.  It is why this op answers something you can act on. A trial keeps counts and not the model that produced them, so a report without this named a shape nobody could install — and the adoption path refused a shape change besides. Fitting the winner once is a sixty-fifth pass over the same history; keeping all sixty-four fitted models resident instead would cost a measured 21 MiB per run for sixty-three shapes nobody adopts.  Two things about it are worth knowing before you adopt it. Its realised rate can differ from the winner's above, because the ranking measures every candidate under one fixed reference geometry so the comparison is a comparison, while this is fitted under YOUR geometry — the one an outsider cannot predict. And it has learned the window this search replayed and nothing older, so adopting it trades history for fit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RiskModelValue? fitted;

  /// Gap says why the winning shape could not be fitted into an adoptable value, when it could not. It is separate from Refusal because they are different facts: a refusal means the ranking below proves nothing, a gap means the ranking stands and only the value is missing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gap;

  /// ID is the run.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Refusal says why the run proves nothing, when it does. An empty history is REFUSED rather than reported as zero alerts: \"no alerts\" is exactly what a quiet model looks like, and choosing a shape on the strength of an empty replay is the failure a sandbox exists to prevent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refusal;

  /// Started is when the run was accepted, RFC 3339.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? started;

  /// Trials is every shape tried, best first.
  List<RiskTrial> trials;

  /// Winner is the best-fitting shape, absent when nothing fit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RiskTrial? winner;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskSearchReport &&
    other.done == done &&
    other.ended == ended &&
    other.events == events &&
    other.fitted == fitted &&
    other.gap == gap &&
    other.id == id &&
    other.refusal == refusal &&
    other.started == started &&
    _deepEquality.equals(other.trials, trials) &&
    other.winner == winner;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (done == null ? 0 : done!.hashCode) +
    (ended == null ? 0 : ended!.hashCode) +
    (events == null ? 0 : events!.hashCode) +
    (fitted == null ? 0 : fitted!.hashCode) +
    (gap == null ? 0 : gap!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (refusal == null ? 0 : refusal!.hashCode) +
    (started == null ? 0 : started!.hashCode) +
    (trials.hashCode) +
    (winner == null ? 0 : winner!.hashCode);

  @override
  String toString() => 'RiskSearchReport[done=$done, ended=$ended, events=$events, fitted=$fitted, gap=$gap, id=$id, refusal=$refusal, started=$started, trials=$trials, winner=$winner]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.done != null) {
      json[r'done'] = this.done;
    } else {
      json[r'done'] = null;
    }
    if (this.ended != null) {
      json[r'ended'] = this.ended;
    } else {
      json[r'ended'] = null;
    }
    if (this.events != null) {
      json[r'events'] = this.events;
    } else {
      json[r'events'] = null;
    }
    if (this.fitted != null) {
      json[r'fitted'] = this.fitted;
    } else {
      json[r'fitted'] = null;
    }
    if (this.gap != null) {
      json[r'gap'] = this.gap;
    } else {
      json[r'gap'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.refusal != null) {
      json[r'refusal'] = this.refusal;
    } else {
      json[r'refusal'] = null;
    }
    if (this.started != null) {
      json[r'started'] = this.started;
    } else {
      json[r'started'] = null;
    }
      json[r'trials'] = this.trials;
    if (this.winner != null) {
      json[r'winner'] = this.winner;
    } else {
      json[r'winner'] = null;
    }
    return json;
  }

  /// Returns a new [RiskSearchReport] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskSearchReport? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskSearchReport[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskSearchReport[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskSearchReport(
        done: mapValueOfType<bool>(json, r'done'),
        ended: mapValueOfType<String>(json, r'ended'),
        events: mapValueOfType<int>(json, r'events'),
        fitted: RiskModelValue.fromJson(json[r'fitted']),
        gap: mapValueOfType<String>(json, r'gap'),
        id: mapValueOfType<String>(json, r'id'),
        refusal: mapValueOfType<String>(json, r'refusal'),
        started: mapValueOfType<String>(json, r'started'),
        trials: RiskTrial.listFromJson(json[r'trials']),
        winner: RiskTrial.fromJson(json[r'winner']),
      );
    }
    return null;
  }

  static List<RiskSearchReport> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskSearchReport>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskSearchReport.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskSearchReport> mapFromJson(dynamic json) {
    final map = <String, RiskSearchReport>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskSearchReport.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskSearchReport-objects as value to a dart map
  static Map<String, List<RiskSearchReport>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskSearchReport>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskSearchReport.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

