//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Report {
  /// Returns a new [Report] instance.
  Report({
    this.answer,
    this.followUps = const [],
    this.mode,
    this.model,
    this.sources = const [],
  });
  /// Answer is the grounded prose, with inline markdown citations. Every link in it points at a page in Sources: the citation check runs on the text before it leaves the engine, so a cited URL is one THIS call fetched.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? answer;

  /// FollowUps are the questions worth asking next. Best-effort — an empty list is a normal outcome, not a fault.
  List<String> followUps;

  /// Mode is the profile that ran: search, news, research or deep.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mode;

  /// Model is the model that synthesized the answer.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  /// Sources are the pages the answer was written from, deduplicated and ranked. Always an array, never null.
  List<ModelSource> sources;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Report &&
    other.answer == answer &&
    _deepEquality.equals(other.followUps, followUps) &&
    other.mode == mode &&
    other.model == model &&
    _deepEquality.equals(other.sources, sources);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (answer == null ? 0 : answer!.hashCode) +
    (followUps.hashCode) +
    (mode == null ? 0 : mode!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (sources.hashCode);

  @override
  String toString() => 'Report[answer=$answer, followUps=$followUps, mode=$mode, model=$model, sources=$sources]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.answer != null) {
      json[r'answer'] = this.answer;
    } else {
      json[r'answer'] = null;
    }
      json[r'follow_ups'] = this.followUps;
    if (this.mode != null) {
      json[r'mode'] = this.mode;
    } else {
      json[r'mode'] = null;
    }
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
      json[r'sources'] = this.sources;
    return json;
  }

  /// Returns a new [Report] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Report? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Report[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Report[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Report(
        answer: mapValueOfType<String>(json, r'answer'),
        followUps: json[r'follow_ups'] is Iterable
            ? (json[r'follow_ups'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        mode: mapValueOfType<String>(json, r'mode'),
        model: mapValueOfType<String>(json, r'model'),
        sources: ModelSource.listFromJson(json[r'sources']),
      );
    }
    return null;
  }

  static List<Report> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Report>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Report.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Report> mapFromJson(dynamic json) {
    final map = <String, Report>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Report.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Report-objects as value to a dart map
  static Map<String, List<Report>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Report>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Report.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

