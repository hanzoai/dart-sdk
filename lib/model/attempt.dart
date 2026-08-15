//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Attempt {
  /// Returns a new [Attempt] instance.
  Attempt({
    this.answer,
    this.benchmark,
    this.correct,
    this.gold,
    this.item,
    this.model,
    this.response,
    this.revision,
    this.source_,
    this.status,
    this.ts,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? answer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? benchmark;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? correct;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gold;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? item;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? response;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? revision;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Attempt &&
    other.answer == answer &&
    other.benchmark == benchmark &&
    other.correct == correct &&
    other.gold == gold &&
    other.item == item &&
    other.model == model &&
    other.response == response &&
    other.revision == revision &&
    other.source_ == source_ &&
    other.status == status &&
    other.ts == ts;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (answer == null ? 0 : answer!.hashCode) +
    (benchmark == null ? 0 : benchmark!.hashCode) +
    (correct == null ? 0 : correct!.hashCode) +
    (gold == null ? 0 : gold!.hashCode) +
    (item == null ? 0 : item!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (response == null ? 0 : response!.hashCode) +
    (revision == null ? 0 : revision!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (ts == null ? 0 : ts!.hashCode);

  @override
  String toString() => 'Attempt[answer=$answer, benchmark=$benchmark, correct=$correct, gold=$gold, item=$item, model=$model, response=$response, revision=$revision, source_=$source_, status=$status, ts=$ts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.answer != null) {
      json[r'answer'] = this.answer;
    } else {
      json[r'answer'] = null;
    }
    if (this.benchmark != null) {
      json[r'benchmark'] = this.benchmark;
    } else {
      json[r'benchmark'] = null;
    }
    if (this.correct != null) {
      json[r'correct'] = this.correct;
    } else {
      json[r'correct'] = null;
    }
    if (this.gold != null) {
      json[r'gold'] = this.gold;
    } else {
      json[r'gold'] = null;
    }
    if (this.item != null) {
      json[r'item'] = this.item;
    } else {
      json[r'item'] = null;
    }
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
    if (this.response != null) {
      json[r'response'] = this.response;
    } else {
      json[r'response'] = null;
    }
    if (this.revision != null) {
      json[r'revision'] = this.revision;
    } else {
      json[r'revision'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.ts != null) {
      json[r'ts'] = this.ts;
    } else {
      json[r'ts'] = null;
    }
    return json;
  }

  /// Returns a new [Attempt] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Attempt? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Attempt[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Attempt[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Attempt(
        answer: mapValueOfType<String>(json, r'answer'),
        benchmark: mapValueOfType<String>(json, r'benchmark'),
        correct: mapValueOfType<bool>(json, r'correct'),
        gold: mapValueOfType<String>(json, r'gold'),
        item: mapValueOfType<String>(json, r'item'),
        model: mapValueOfType<String>(json, r'model'),
        response: mapValueOfType<String>(json, r'response'),
        revision: mapValueOfType<String>(json, r'revision'),
        source_: mapValueOfType<String>(json, r'source'),
        status: mapValueOfType<String>(json, r'status'),
        ts: mapValueOfType<int>(json, r'ts'),
      );
    }
    return null;
  }

  static List<Attempt> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Attempt>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Attempt.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Attempt> mapFromJson(dynamic json) {
    final map = <String, Attempt>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Attempt.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Attempt-objects as value to a dart map
  static Map<String, List<Attempt>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Attempt>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Attempt.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

