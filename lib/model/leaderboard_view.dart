//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LeaderboardView {
  /// Returns a new [LeaderboardView] instance.
  LeaderboardView({
    this.available,
    this.end,
    this.metric,
    this.period,
    this.rows = const [],
    this.scope,
    this.self,
    this.source_,
    this.start,
    this.subject,
    this.total,
  });

  /// Available is false when the usage warehouse is not connected or its rollup is not ready. Rows is then empty because nothing could be read — not because nobody used anything. Show that difference; never render an unavailable board as a real one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? available;

  /// End is the EXCLUSIVE upper bound of the window, \"2006-01-02\" — the day after the last one counted. A board through today reports tomorrow's date here.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? end;

  /// Metric echoes the value ranked: tokens|requests|cost.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? metric;

  /// Period is the window's canonical label: day|week|month|all. The server resolves aliases (7d, 30d, today, …) to these, so this may differ from what was sent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? period;

  /// Rows are the ranked subjects, best first, at most the requested limit of them. Always a list, never null: an empty one means nothing was read, not an error.
  List<LeaderboardRow> rows;

  /// Scope echoes the board that was served: personal|org|global.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scope;

  /// Self is the caller's own standing, reported even when they fall outside Rows. Absent when the caller's ledger identity cannot be resolved, or when the query behind it failed — never faked to keep the shape tidy.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SelfRank? self;

  /// Source names the table these numbers were aggregated from (the derived daily rollup, hanzo.usage_rollup_daily), so an operator can tell exactly what was read.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Start is the first day counted, \"2006-01-02\" inclusive. Empty for period=all, which has no lower bound at all.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? start;

  /// Subject is what the rows stand for — \"user\" on a personal or org board, \"org\" on the global one. It tells a client whether Handle names a person or a company.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  /// Total is how many subjects were ranked in the window — the org's active users, or the active/opted-in orgs on the global board. It is the universe the ranks are out of, so it is normally larger than len(rows).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LeaderboardView &&
    other.available == available &&
    other.end == end &&
    other.metric == metric &&
    other.period == period &&
    _deepEquality.equals(other.rows, rows) &&
    other.scope == scope &&
    other.self == self &&
    other.source_ == source_ &&
    other.start == start &&
    other.subject == subject &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (available == null ? 0 : available!.hashCode) +
    (end == null ? 0 : end!.hashCode) +
    (metric == null ? 0 : metric!.hashCode) +
    (period == null ? 0 : period!.hashCode) +
    (rows.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (self == null ? 0 : self!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (start == null ? 0 : start!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'LeaderboardView[available=$available, end=$end, metric=$metric, period=$period, rows=$rows, scope=$scope, self=$self, source_=$source_, start=$start, subject=$subject, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.available != null) {
      json[r'available'] = this.available;
    } else {
      json[r'available'] = null;
    }
    if (this.end != null) {
      json[r'end'] = this.end;
    } else {
      json[r'end'] = null;
    }
    if (this.metric != null) {
      json[r'metric'] = this.metric;
    } else {
      json[r'metric'] = null;
    }
    if (this.period != null) {
      json[r'period'] = this.period;
    } else {
      json[r'period'] = null;
    }
      json[r'rows'] = this.rows;
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    if (this.self != null) {
      json[r'self'] = this.self;
    } else {
      json[r'self'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [LeaderboardView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LeaderboardView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LeaderboardView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LeaderboardView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LeaderboardView(
        available: mapValueOfType<bool>(json, r'available'),
        end: mapValueOfType<String>(json, r'end'),
        metric: mapValueOfType<String>(json, r'metric'),
        period: mapValueOfType<String>(json, r'period'),
        rows: LeaderboardRow.listFromJson(json[r'rows']),
        scope: mapValueOfType<String>(json, r'scope'),
        self: SelfRank.fromJson(json[r'self']),
        source_: mapValueOfType<String>(json, r'source'),
        start: mapValueOfType<String>(json, r'start'),
        subject: mapValueOfType<String>(json, r'subject'),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<LeaderboardView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LeaderboardView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LeaderboardView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LeaderboardView> mapFromJson(dynamic json) {
    final map = <String, LeaderboardView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LeaderboardView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LeaderboardView-objects as value to a dart map
  static Map<String, List<LeaderboardView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LeaderboardView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LeaderboardView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

