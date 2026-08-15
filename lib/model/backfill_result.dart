//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BackfillResult {
  /// Returns a new [BackfillResult] instance.
  BackfillResult({
    this.forced,
    this.seededBefore,
    this.status,
  });

  /// Forced is true when the caller overrode the already-populated guard.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? forced;

  /// SeededBefore is the RFC3339 upper bound the seed actually used.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? seededBefore;

  /// Status is \"ok\" — a seed that did not run answered an error instead.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BackfillResult &&
    other.forced == forced &&
    other.seededBefore == seededBefore &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (forced == null ? 0 : forced!.hashCode) +
    (seededBefore == null ? 0 : seededBefore!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'BackfillResult[forced=$forced, seededBefore=$seededBefore, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.forced != null) {
      json[r'forced'] = this.forced;
    } else {
      json[r'forced'] = null;
    }
    if (this.seededBefore != null) {
      json[r'seededBefore'] = this.seededBefore;
    } else {
      json[r'seededBefore'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [BackfillResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BackfillResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BackfillResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BackfillResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BackfillResult(
        forced: mapValueOfType<bool>(json, r'forced'),
        seededBefore: mapValueOfType<String>(json, r'seededBefore'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<BackfillResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BackfillResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BackfillResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BackfillResult> mapFromJson(dynamic json) {
    final map = <String, BackfillResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BackfillResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BackfillResult-objects as value to a dart map
  static Map<String, List<BackfillResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BackfillResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BackfillResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

