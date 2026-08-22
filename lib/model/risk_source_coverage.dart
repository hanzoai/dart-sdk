//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskSourceCoverage {
  /// Returns a new [RiskSourceCoverage] instance.
  RiskSourceCoverage({
    this.facts,
    this.source_,
    this.won,
  });
  /// Facts is how many assertions this source filed; Won is how many judged events it was the assertion in force for. A source with many facts and few wins is one that is being outranked, which is worth knowing before concluding it is wired correctly.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? facts;

  /// Source is the asserter these two counts are for — chargeoff, dispute, case, refund, review or sample. There is one entry per source that either filed in the window or won in it, in precedence order, strongest first. A source no longer in the vocabulary still has rows and is reported after the known ones rather than dropped out of a total that is supposed to add up.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Won is how many JUDGED events this source's assertion was the one IN FORCE for, at that event's own as-of — it beat every other visible claim under the precedence rule. Summed over the sources it is Judged. Read against Facts it is the ratio that matters: many filed and few won is a source being outranked, not a source that is broken, and one source winning nearly everything is a plane that looks labelled because one noisy filer dominates it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? won;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskSourceCoverage &&
    other.facts == facts &&
    other.source_ == source_ &&
    other.won == won;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (facts == null ? 0 : facts!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (won == null ? 0 : won!.hashCode);

  @override
  String toString() => 'RiskSourceCoverage[facts=$facts, source_=$source_, won=$won]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.facts != null) {
      json[r'facts'] = this.facts;
    } else {
      json[r'facts'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.won != null) {
      json[r'won'] = this.won;
    } else {
      json[r'won'] = null;
    }
    return json;
  }

  /// Returns a new [RiskSourceCoverage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskSourceCoverage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskSourceCoverage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskSourceCoverage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskSourceCoverage(
        facts: mapValueOfType<int>(json, r'facts'),
        source_: mapValueOfType<String>(json, r'source'),
        won: mapValueOfType<int>(json, r'won'),
      );
    }
    return null;
  }

  static List<RiskSourceCoverage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskSourceCoverage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskSourceCoverage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskSourceCoverage> mapFromJson(dynamic json) {
    final map = <String, RiskSourceCoverage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskSourceCoverage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskSourceCoverage-objects as value to a dart map
  static Map<String, List<RiskSourceCoverage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskSourceCoverage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskSourceCoverage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

