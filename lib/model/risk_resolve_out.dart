//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskResolveOut {
  /// Returns a new [RiskResolveOut] instance.
  RiskResolveOut({
    this.horizon,
    this.labels = const [],
    this.now,
    this.unlabelled,
    this.unmatured,
  });
  /// Horizon is the maturity horizon this answer was computed under, IN DAYS — the caller's, or 120 when it stated none. Each event's as-of is its own `at` plus this many days, and that as-of is what decides which assertions were visible to it; an event whose as-of falls after Now is not resolved at all and is counted in Unmatured instead.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? horizon;

  /// Labels is one entry per named event that BOTH matured and had at least one assertion knowable by its own as-of, in the order the events were named. The three outcomes partition the ask: len(labels) + Unmatured + Unlabelled is the number of DISTINCT events named, an event named twice having been answered once.
  List<RiskResolved> labels;

  /// Now and Horizon echo the observation this answer was computed under. A resolved label without them is a claim nobody can check.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? now;

  /// Unlabelled is how many matured events had no assertion knowable by their own as-of. That is the ordinary state of most traffic and it is reported rather than answered as unproductive: manufacturing negatives is how a fraud model comes to describe the incumbent block list.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? unlabelled;

  /// Unmatured is how many named events had not aged past the horizon. They are not unlabelled — they are not yet ASKABLE, and a supervised training set must exclude them rather than treat them as negatives.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? unmatured;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskResolveOut &&
    other.horizon == horizon &&
    _deepEquality.equals(other.labels, labels) &&
    other.now == now &&
    other.unlabelled == unlabelled &&
    other.unmatured == unmatured;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (horizon == null ? 0 : horizon!.hashCode) +
    (labels.hashCode) +
    (now == null ? 0 : now!.hashCode) +
    (unlabelled == null ? 0 : unlabelled!.hashCode) +
    (unmatured == null ? 0 : unmatured!.hashCode);

  @override
  String toString() => 'RiskResolveOut[horizon=$horizon, labels=$labels, now=$now, unlabelled=$unlabelled, unmatured=$unmatured]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.horizon != null) {
      json[r'horizon'] = this.horizon;
    } else {
      json[r'horizon'] = null;
    }
      json[r'labels'] = this.labels;
    if (this.now != null) {
      json[r'now'] = this.now;
    } else {
      json[r'now'] = null;
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
    return json;
  }

  /// Returns a new [RiskResolveOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskResolveOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskResolveOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskResolveOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskResolveOut(
        horizon: mapValueOfType<int>(json, r'horizon'),
        labels: RiskResolved.listFromJson(json[r'labels']),
        now: mapValueOfType<String>(json, r'now'),
        unlabelled: mapValueOfType<int>(json, r'unlabelled'),
        unmatured: mapValueOfType<int>(json, r'unmatured'),
      );
    }
    return null;
  }

  static List<RiskResolveOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskResolveOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskResolveOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskResolveOut> mapFromJson(dynamic json) {
    final map = <String, RiskResolveOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskResolveOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskResolveOut-objects as value to a dart map
  static Map<String, List<RiskResolveOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskResolveOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskResolveOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

