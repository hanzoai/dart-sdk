//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BoardPoint {
  /// Returns a new [BoardPoint] instance.
  BoardPoint({
    this.costCents,
    this.errors,
    this.generations,
    this.t,
    this.totalTokens,
  });
  /// what this bucket cost, in cents
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? costCents;

  /// calls in this bucket that did not succeed
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? errors;

  /// model calls in this bucket
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? generations;

  /// RFC3339 (UTC) bucket start
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? t;

  /// tokens in this bucket
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalTokens;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BoardPoint &&
    other.costCents == costCents &&
    other.errors == errors &&
    other.generations == generations &&
    other.t == t &&
    other.totalTokens == totalTokens;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (costCents == null ? 0 : costCents!.hashCode) +
    (errors == null ? 0 : errors!.hashCode) +
    (generations == null ? 0 : generations!.hashCode) +
    (t == null ? 0 : t!.hashCode) +
    (totalTokens == null ? 0 : totalTokens!.hashCode);

  @override
  String toString() => 'BoardPoint[costCents=$costCents, errors=$errors, generations=$generations, t=$t, totalTokens=$totalTokens]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.costCents != null) {
      json[r'costCents'] = this.costCents;
    } else {
      json[r'costCents'] = null;
    }
    if (this.errors != null) {
      json[r'errors'] = this.errors;
    } else {
      json[r'errors'] = null;
    }
    if (this.generations != null) {
      json[r'generations'] = this.generations;
    } else {
      json[r'generations'] = null;
    }
    if (this.t != null) {
      json[r't'] = this.t;
    } else {
      json[r't'] = null;
    }
    if (this.totalTokens != null) {
      json[r'totalTokens'] = this.totalTokens;
    } else {
      json[r'totalTokens'] = null;
    }
    return json;
  }

  /// Returns a new [BoardPoint] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BoardPoint? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BoardPoint[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BoardPoint[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BoardPoint(
        costCents: mapValueOfType<int>(json, r'costCents'),
        errors: mapValueOfType<int>(json, r'errors'),
        generations: mapValueOfType<int>(json, r'generations'),
        t: mapValueOfType<String>(json, r't'),
        totalTokens: mapValueOfType<int>(json, r'totalTokens'),
      );
    }
    return null;
  }

  static List<BoardPoint> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BoardPoint>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BoardPoint.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BoardPoint> mapFromJson(dynamic json) {
    final map = <String, BoardPoint>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BoardPoint.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BoardPoint-objects as value to a dart map
  static Map<String, List<BoardPoint>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BoardPoint>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BoardPoint.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

