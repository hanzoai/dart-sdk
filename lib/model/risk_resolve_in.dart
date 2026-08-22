//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskResolveIn {
  /// Returns a new [RiskResolveIn] instance.
  RiskResolveIn({
    this.horizon,
    this.now,
    this.subjects = const [],
  });
  /// Horizon is how many days an event must age before it may be resolved at all, and it is the whole of the no-leakage rule. 120 for the payment lane (past the Visa and Mastercard dispute windows), 14 for signup abuse. Unstated takes 120.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? horizon;

  /// Now moves the observation instant BACKWARDS, RFC 3339. It exists so a BACKTEST can resolve labels as the plane stood at a past moment; without it, every backtest would score a model against knowledge that arrived after the decision it is being scored on. An instant after the server clock is refused: a backtest resolves the past, and a future one would declare unmatured events matured and hand a training set negatives for rows whose chargeback has not had time to arrive.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? now;

  /// Subjects are the exact events being judged. Each carries its own event time, because the as-of that keeps the future out is derived from that instant plus the horizon — one as-of over a whole batch would give a January row six extra months of hindsight.  One entry per DISTINCT (kind, subject, at): naming an event twice answers once, because an event resolved twice would list its own winner as a contrary claim and would hand a materialiser duplicate training rows.
  List<RiskLabelEvent> subjects;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskResolveIn &&
    other.horizon == horizon &&
    other.now == now &&
    _deepEquality.equals(other.subjects, subjects);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (horizon == null ? 0 : horizon!.hashCode) +
    (now == null ? 0 : now!.hashCode) +
    (subjects.hashCode);

  @override
  String toString() => 'RiskResolveIn[horizon=$horizon, now=$now, subjects=$subjects]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.horizon != null) {
      json[r'horizon'] = this.horizon;
    } else {
      json[r'horizon'] = null;
    }
    if (this.now != null) {
      json[r'now'] = this.now;
    } else {
      json[r'now'] = null;
    }
      json[r'subjects'] = this.subjects;
    return json;
  }

  /// Returns a new [RiskResolveIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskResolveIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskResolveIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskResolveIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskResolveIn(
        horizon: mapValueOfType<int>(json, r'horizon'),
        now: mapValueOfType<String>(json, r'now'),
        subjects: RiskLabelEvent.listFromJson(json[r'subjects']),
      );
    }
    return null;
  }

  static List<RiskResolveIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskResolveIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskResolveIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskResolveIn> mapFromJson(dynamic json) {
    final map = <String, RiskResolveIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskResolveIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskResolveIn-objects as value to a dart map
  static Map<String, List<RiskResolveIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskResolveIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskResolveIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

