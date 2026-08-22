//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LeaderRow {
  /// Returns a new [LeaderRow] instance.
  LeaderRow({
    this.ciHigh,
    this.ciLow,
    this.claims,
    this.gap,
    this.mean,
    this.measured,
    this.measuredAt,
    this.model,
    this.n,
    this.protocol,
    this.published,
    this.run,
    this.spread,
  });
  /// CIHigh is the upper bound of that interval. Wilson rather than the normal approximation because the normal one produces bounds past 100 exactly where benchmark scores live — at 194/198 that is the top of the board, not a corner case.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? ciHigh;

  /// CILow and CIHigh are the 95% Wilson interval on Measured, in percent. They are what makes the score comparable: at n=198 a 98% carries roughly ±2 points, so most differences at the top of a board are not distinguishable and a bare number implies a precision it does not have. Absent when there is no measurement.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? ciLow;

  /// Claims is how many independent claims exist for this model on this benchmark. More than one means several sources reported it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? claims;

  /// published − measured (the arena signal)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? gap;

  /// Mean is the unweighted average of every claim, which answers a different question from Published: what the field says on average, rather than what the vendor says about itself. With one claim the two are equal.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? mean;

  /// hanzo-measured accuracy % (nil if unrun)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? measured;

  /// MeasuredAt is when the run behind Measured was recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? measuredAt;

  /// the model this row scores
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  /// coverage — NEVER compare across different n
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? n;

  /// how the vendor scored their claim: single-attempt, pass@k or agentic
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? protocol;

  /// provider-claimed % (nil if none)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? published;

  /// Run names the measurement Measured came from, and MeasuredAt is when it ran. A score with no date is not a fact about a model, it is a fact about a model on a day — and models change, so the date is what makes the number checkable rather than merely quoted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? run;

  /// Spread is the distance between the highest and lowest of them, nil when there is only one. It is the disagreement AMONG sources, which a single Published number cannot show — signal in the same way the published-minus-measured gap is.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? spread;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LeaderRow &&
    other.ciHigh == ciHigh &&
    other.ciLow == ciLow &&
    other.claims == claims &&
    other.gap == gap &&
    other.mean == mean &&
    other.measured == measured &&
    other.measuredAt == measuredAt &&
    other.model == model &&
    other.n == n &&
    other.protocol == protocol &&
    other.published == published &&
    other.run == run &&
    other.spread == spread;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ciHigh == null ? 0 : ciHigh!.hashCode) +
    (ciLow == null ? 0 : ciLow!.hashCode) +
    (claims == null ? 0 : claims!.hashCode) +
    (gap == null ? 0 : gap!.hashCode) +
    (mean == null ? 0 : mean!.hashCode) +
    (measured == null ? 0 : measured!.hashCode) +
    (measuredAt == null ? 0 : measuredAt!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (n == null ? 0 : n!.hashCode) +
    (protocol == null ? 0 : protocol!.hashCode) +
    (published == null ? 0 : published!.hashCode) +
    (run == null ? 0 : run!.hashCode) +
    (spread == null ? 0 : spread!.hashCode);

  @override
  String toString() => 'LeaderRow[ciHigh=$ciHigh, ciLow=$ciLow, claims=$claims, gap=$gap, mean=$mean, measured=$measured, measuredAt=$measuredAt, model=$model, n=$n, protocol=$protocol, published=$published, run=$run, spread=$spread]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ciHigh != null) {
      json[r'ciHigh'] = this.ciHigh;
    } else {
      json[r'ciHigh'] = null;
    }
    if (this.ciLow != null) {
      json[r'ciLow'] = this.ciLow;
    } else {
      json[r'ciLow'] = null;
    }
    if (this.claims != null) {
      json[r'claims'] = this.claims;
    } else {
      json[r'claims'] = null;
    }
    if (this.gap != null) {
      json[r'gap'] = this.gap;
    } else {
      json[r'gap'] = null;
    }
    if (this.mean != null) {
      json[r'mean'] = this.mean;
    } else {
      json[r'mean'] = null;
    }
    if (this.measured != null) {
      json[r'measured'] = this.measured;
    } else {
      json[r'measured'] = null;
    }
    if (this.measuredAt != null) {
      json[r'measuredAt'] = this.measuredAt!.toUtc().toIso8601String();
    } else {
      json[r'measuredAt'] = null;
    }
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
    if (this.n != null) {
      json[r'n'] = this.n;
    } else {
      json[r'n'] = null;
    }
    if (this.protocol != null) {
      json[r'protocol'] = this.protocol;
    } else {
      json[r'protocol'] = null;
    }
    if (this.published != null) {
      json[r'published'] = this.published;
    } else {
      json[r'published'] = null;
    }
    if (this.run != null) {
      json[r'run'] = this.run;
    } else {
      json[r'run'] = null;
    }
    if (this.spread != null) {
      json[r'spread'] = this.spread;
    } else {
      json[r'spread'] = null;
    }
    return json;
  }

  /// Returns a new [LeaderRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LeaderRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LeaderRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LeaderRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LeaderRow(
        ciHigh: num.parse('${json[r'ciHigh']}'),
        ciLow: num.parse('${json[r'ciLow']}'),
        claims: mapValueOfType<int>(json, r'claims'),
        gap: num.parse('${json[r'gap']}'),
        mean: num.parse('${json[r'mean']}'),
        measured: num.parse('${json[r'measured']}'),
        measuredAt: mapDateTime(json, r'measuredAt', r''),
        model: mapValueOfType<String>(json, r'model'),
        n: mapValueOfType<int>(json, r'n'),
        protocol: mapValueOfType<String>(json, r'protocol'),
        published: num.parse('${json[r'published']}'),
        run: mapValueOfType<String>(json, r'run'),
        spread: num.parse('${json[r'spread']}'),
      );
    }
    return null;
  }

  static List<LeaderRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LeaderRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LeaderRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LeaderRow> mapFromJson(dynamic json) {
    final map = <String, LeaderRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LeaderRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LeaderRow-objects as value to a dart map
  static Map<String, List<LeaderRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LeaderRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LeaderRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

