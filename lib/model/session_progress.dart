//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SessionProgress {
  /// Returns a new [SessionProgress] instance.
  SessionProgress({
    this.activity,
    this.at,
    this.estimated,
    this.pct,
    this.phase,
  });
  /// Activity is the one line saying what the run is doing right now (\"running the reaper's tests\"), up to 120 characters, in the model's words. Empty when nothing has estimated it yet.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? activity;

  /// At is when this was determined, RFC 3339 in UTC to the second. Read it as the estimate's AGE: an estimate is not refreshed while nothing has happened, and a stale one beside a run that is still moving is itself worth seeing. Empty when nothing has estimated it yet.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? at;

  /// Estimated says a MODEL produced this, from the run's transcript, and it may be wrong. False means the session's own row said it: a finished run is 100% because it finished, not because anything guessed. Never treat a true here as a measurement — it is the reason to look, not the answer.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? estimated;

  /// Pct is how much of the run is done, 0 to 100. THE KEY IS ABSENT when progress is indeterminate — a run nobody can estimate is not a run that has done nothing, and rendering the second for the first is the mistake this omission exists to make impossible. Read `phase` before reaching for it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pct;

  /// Phase is what shape the run is in: running, blocked, done, error, or unknown when nothing has estimated it yet. blocked means the transcript shows the run waiting on something — an approval, a credential, an answer — which is the one state the running surface cannot report about itself. error only ever comes from the session's own terminal status.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phase;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SessionProgress &&
    other.activity == activity &&
    other.at == at &&
    other.estimated == estimated &&
    other.pct == pct &&
    other.phase == phase;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (activity == null ? 0 : activity!.hashCode) +
    (at == null ? 0 : at!.hashCode) +
    (estimated == null ? 0 : estimated!.hashCode) +
    (pct == null ? 0 : pct!.hashCode) +
    (phase == null ? 0 : phase!.hashCode);

  @override
  String toString() => 'SessionProgress[activity=$activity, at=$at, estimated=$estimated, pct=$pct, phase=$phase]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.activity != null) {
      json[r'activity'] = this.activity;
    } else {
      json[r'activity'] = null;
    }
    if (this.at != null) {
      json[r'at'] = this.at;
    } else {
      json[r'at'] = null;
    }
    if (this.estimated != null) {
      json[r'estimated'] = this.estimated;
    } else {
      json[r'estimated'] = null;
    }
    if (this.pct != null) {
      json[r'pct'] = this.pct;
    } else {
      json[r'pct'] = null;
    }
    if (this.phase != null) {
      json[r'phase'] = this.phase;
    } else {
      json[r'phase'] = null;
    }
    return json;
  }

  /// Returns a new [SessionProgress] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SessionProgress? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SessionProgress[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SessionProgress[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SessionProgress(
        activity: mapValueOfType<String>(json, r'activity'),
        at: mapValueOfType<String>(json, r'at'),
        estimated: mapValueOfType<bool>(json, r'estimated'),
        pct: mapValueOfType<int>(json, r'pct'),
        phase: mapValueOfType<String>(json, r'phase'),
      );
    }
    return null;
  }

  static List<SessionProgress> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SessionProgress>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SessionProgress.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SessionProgress> mapFromJson(dynamic json) {
    final map = <String, SessionProgress>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SessionProgress.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SessionProgress-objects as value to a dart map
  static Map<String, List<SessionProgress>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SessionProgress>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SessionProgress.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

