//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IssueHits {
  /// Returns a new [IssueHits] instance.
  IssueHits({
    this.count,
    this.issues = const [],
  });
  /// Count is how many rows Issues carries — the size of THIS answer after the cap, not how many issues matched. A count equal to the limit means there are probably more; there is no total and no cursor.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  /// Issues are the matching rows grouped by status and oldest-first within a group, capped by the search's limit (50 by default, 200 at most). The cap is applied to that order, so a broad search returns the head of it rather than a sample.
  List<IssueHit> issues;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IssueHits &&
    other.count == count &&
    _deepEquality.equals(other.issues, issues);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (count == null ? 0 : count!.hashCode) +
    (issues.hashCode);

  @override
  String toString() => 'IssueHits[count=$count, issues=$issues]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
      json[r'issues'] = this.issues;
    return json;
  }

  /// Returns a new [IssueHits] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IssueHits? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IssueHits[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IssueHits[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IssueHits(
        count: mapValueOfType<int>(json, r'count'),
        issues: IssueHit.listFromJson(json[r'issues']),
      );
    }
    return null;
  }

  static List<IssueHits> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IssueHits>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IssueHits.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IssueHits> mapFromJson(dynamic json) {
    final map = <String, IssueHits>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IssueHits.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IssueHits-objects as value to a dart map
  static Map<String, List<IssueHits>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IssueHits>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IssueHits.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

