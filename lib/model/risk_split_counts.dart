//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskSplitCounts {
  /// Returns a new [RiskSplitCounts] instance.
  RiskSplitCounts({
    this.judged,
    this.productive,
    this.rows,
    this.subjects,
    this.test,
    this.train,
    this.unproductive,
    this.val,
  });

  /// Judged is how many rows carry a disposition. It is zero until a label plane writes one, and reporting it plainly is what lets a model plane refuse to rank rather than name a winner it cannot justify.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? judged;

  /// Productive and Unproductive are the two judged classes, so the imbalance is visible before anyone trains on it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? productive;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rows;

  /// Subjects is how many distinct subjects the rows belong to. Every row of one subject is in ONE split, so this is the real sample size — the row count flatters it whenever a subject is active.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? subjects;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? test;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? train;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? unproductive;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? val;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskSplitCounts &&
    other.judged == judged &&
    other.productive == productive &&
    other.rows == rows &&
    other.subjects == subjects &&
    other.test == test &&
    other.train == train &&
    other.unproductive == unproductive &&
    other.val == val;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (judged == null ? 0 : judged!.hashCode) +
    (productive == null ? 0 : productive!.hashCode) +
    (rows == null ? 0 : rows!.hashCode) +
    (subjects == null ? 0 : subjects!.hashCode) +
    (test == null ? 0 : test!.hashCode) +
    (train == null ? 0 : train!.hashCode) +
    (unproductive == null ? 0 : unproductive!.hashCode) +
    (val == null ? 0 : val!.hashCode);

  @override
  String toString() => 'RiskSplitCounts[judged=$judged, productive=$productive, rows=$rows, subjects=$subjects, test=$test, train=$train, unproductive=$unproductive, val=$val]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.judged != null) {
      json[r'judged'] = this.judged;
    } else {
      json[r'judged'] = null;
    }
    if (this.productive != null) {
      json[r'productive'] = this.productive;
    } else {
      json[r'productive'] = null;
    }
    if (this.rows != null) {
      json[r'rows'] = this.rows;
    } else {
      json[r'rows'] = null;
    }
    if (this.subjects != null) {
      json[r'subjects'] = this.subjects;
    } else {
      json[r'subjects'] = null;
    }
    if (this.test != null) {
      json[r'test'] = this.test;
    } else {
      json[r'test'] = null;
    }
    if (this.train != null) {
      json[r'train'] = this.train;
    } else {
      json[r'train'] = null;
    }
    if (this.unproductive != null) {
      json[r'unproductive'] = this.unproductive;
    } else {
      json[r'unproductive'] = null;
    }
    if (this.val != null) {
      json[r'val'] = this.val;
    } else {
      json[r'val'] = null;
    }
    return json;
  }

  /// Returns a new [RiskSplitCounts] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskSplitCounts? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskSplitCounts[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskSplitCounts[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskSplitCounts(
        judged: mapValueOfType<int>(json, r'judged'),
        productive: mapValueOfType<int>(json, r'productive'),
        rows: mapValueOfType<int>(json, r'rows'),
        subjects: mapValueOfType<int>(json, r'subjects'),
        test: mapValueOfType<int>(json, r'test'),
        train: mapValueOfType<int>(json, r'train'),
        unproductive: mapValueOfType<int>(json, r'unproductive'),
        val: mapValueOfType<int>(json, r'val'),
      );
    }
    return null;
  }

  static List<RiskSplitCounts> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskSplitCounts>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskSplitCounts.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskSplitCounts> mapFromJson(dynamic json) {
    final map = <String, RiskSplitCounts>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskSplitCounts.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskSplitCounts-objects as value to a dart map
  static Map<String, List<RiskSplitCounts>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskSplitCounts>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskSplitCounts.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

