//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LinearBackfillResult {
  /// Returns a new [LinearBackfillResult] instance.
  LinearBackfillResult({
    this.created,
    this.failed,
    this.issues,
    this.truncated,
    this.updated,
  });
  /// Created is how many native issues this pass created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? created;

  /// Failed is how many issues errored; the pass continues past each.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? failed;

  /// Issues is how many Linear issues were seen.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? issues;

  /// Truncated is set when the time budget or the issue cap stopped the pass early. Re-run to continue — the mirror is idempotent by ExtRef, so nothing duplicates.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? truncated;

  /// Updated is how many existing native issues this pass refreshed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LinearBackfillResult &&
    other.created == created &&
    other.failed == failed &&
    other.issues == issues &&
    other.truncated == truncated &&
    other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created == null ? 0 : created!.hashCode) +
    (failed == null ? 0 : failed!.hashCode) +
    (issues == null ? 0 : issues!.hashCode) +
    (truncated == null ? 0 : truncated!.hashCode) +
    (updated == null ? 0 : updated!.hashCode);

  @override
  String toString() => 'LinearBackfillResult[created=$created, failed=$failed, issues=$issues, truncated=$truncated, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.failed != null) {
      json[r'failed'] = this.failed;
    } else {
      json[r'failed'] = null;
    }
    if (this.issues != null) {
      json[r'issues'] = this.issues;
    } else {
      json[r'issues'] = null;
    }
    if (this.truncated != null) {
      json[r'truncated'] = this.truncated;
    } else {
      json[r'truncated'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    return json;
  }

  /// Returns a new [LinearBackfillResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LinearBackfillResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LinearBackfillResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LinearBackfillResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LinearBackfillResult(
        created: mapValueOfType<int>(json, r'created'),
        failed: mapValueOfType<int>(json, r'failed'),
        issues: mapValueOfType<int>(json, r'issues'),
        truncated: mapValueOfType<bool>(json, r'truncated'),
        updated: mapValueOfType<int>(json, r'updated'),
      );
    }
    return null;
  }

  static List<LinearBackfillResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LinearBackfillResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LinearBackfillResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LinearBackfillResult> mapFromJson(dynamic json) {
    final map = <String, LinearBackfillResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LinearBackfillResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LinearBackfillResult-objects as value to a dart map
  static Map<String, List<LinearBackfillResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LinearBackfillResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LinearBackfillResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

