//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Check {
  /// Returns a new [Check] instance.
  Check({
    this.at,
    this.job,
    this.number,
    this.state,
    this.tested,
    this.url,
    this.verdict,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? at;

  /// Job is the job that decided State. A run reports one conclusion for however many jobs it holds, and the jobs are not interchangeable: the pipeline fails at `gate` before it builds anything and at `receipt` after it has already built, pinned and proved the release live. Both read `failure` on the run, and only the first one means nothing shipped.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? job;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? number;

  /// State is success | failure | running | absent. `absent` is not a kind of failure and is kept apart from one: a failing run is a build that ran and said no, while an absent run is Hanzo Git never having constructed a run for the commit at all — a workflow it cannot parse or a reference it cannot resolve. There is no log to open for the second, so a page that draws them the same sends you looking for one that does not exist.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  /// Tested reports that the run's tests executed; Verdict reports that the run said anything about tests at all. They are separate because the interesting case is a run that passed while its test step was skipped — a green build that proved nothing — and that is invisible if the two are one flag.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? tested;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? verdict;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Check &&
    other.at == at &&
    other.job == job &&
    other.number == number &&
    other.state == state &&
    other.tested == tested &&
    other.url == url &&
    other.verdict == verdict;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (at == null ? 0 : at!.hashCode) +
    (job == null ? 0 : job!.hashCode) +
    (number == null ? 0 : number!.hashCode) +
    (state == null ? 0 : state!.hashCode) +
    (tested == null ? 0 : tested!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (verdict == null ? 0 : verdict!.hashCode);

  @override
  String toString() => 'Check[at=$at, job=$job, number=$number, state=$state, tested=$tested, url=$url, verdict=$verdict]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.at != null) {
      json[r'at'] = this.at!.toUtc().toIso8601String();
    } else {
      json[r'at'] = null;
    }
    if (this.job != null) {
      json[r'job'] = this.job;
    } else {
      json[r'job'] = null;
    }
    if (this.number != null) {
      json[r'number'] = this.number;
    } else {
      json[r'number'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    if (this.tested != null) {
      json[r'tested'] = this.tested;
    } else {
      json[r'tested'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.verdict != null) {
      json[r'verdict'] = this.verdict;
    } else {
      json[r'verdict'] = null;
    }
    return json;
  }

  /// Returns a new [Check] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Check? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Check[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Check[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Check(
        at: mapDateTime(json, r'at', r''),
        job: mapValueOfType<String>(json, r'job'),
        number: mapValueOfType<int>(json, r'number'),
        state: mapValueOfType<String>(json, r'state'),
        tested: mapValueOfType<bool>(json, r'tested'),
        url: mapValueOfType<String>(json, r'url'),
        verdict: mapValueOfType<bool>(json, r'verdict'),
      );
    }
    return null;
  }

  static List<Check> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Check>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Check.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Check> mapFromJson(dynamic json) {
    final map = <String, Check>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Check.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Check-objects as value to a dart map
  static Map<String, List<Check>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Check>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Check.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

