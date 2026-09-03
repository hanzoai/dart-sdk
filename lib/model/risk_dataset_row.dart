//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskDatasetRow {
  /// Returns a new [RiskDatasetRow] instance.
  RiskDatasetRow({
    this.at,
    this.id,
    this.kind,
    this.point = const [],
    this.split,
    this.subject,
  });
  /// At is the row's instant.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? at;

  /// ID names the row forever. It is DERIVED from the row's own subject and instant, not allocated, so two materialisations of the same fact agree on it without coordinating.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Kind is the subject kind: person, session or account.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Point is the coordinates, in the order the version's spec names its dims.
  List<double> point;

  /// Split is train, val or test.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? split;

  /// Subject is the identity within that kind — whose row this is. Every row of one subject is in ONE split, decided by that subject's earliest instant, so a subject is never on both sides of a cut.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskDatasetRow &&
    other.at == at &&
    other.id == id &&
    other.kind == kind &&
    _deepEquality.equals(other.point, point) &&
    other.split == split &&
    other.subject == subject;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (at == null ? 0 : at!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (point.hashCode) +
    (split == null ? 0 : split!.hashCode) +
    (subject == null ? 0 : subject!.hashCode);

  @override
  String toString() => 'RiskDatasetRow[at=$at, id=$id, kind=$kind, point=$point, split=$split, subject=$subject]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.at != null) {
      json[r'at'] = this.at;
    } else {
      json[r'at'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
      json[r'point'] = this.point;
    if (this.split != null) {
      json[r'split'] = this.split;
    } else {
      json[r'split'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    return json;
  }

  /// Returns a new [RiskDatasetRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskDatasetRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskDatasetRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskDatasetRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskDatasetRow(
        at: mapValueOfType<String>(json, r'at'),
        id: mapValueOfType<String>(json, r'id'),
        kind: mapValueOfType<String>(json, r'kind'),
        point: json[r'point'] is Iterable
            ? (json[r'point'] as Iterable).cast<double>().toList(growable: false)
            : const [],
        split: mapValueOfType<String>(json, r'split'),
        subject: mapValueOfType<String>(json, r'subject'),
      );
    }
    return null;
  }

  static List<RiskDatasetRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskDatasetRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskDatasetRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskDatasetRow> mapFromJson(dynamic json) {
    final map = <String, RiskDatasetRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskDatasetRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskDatasetRow-objects as value to a dart map
  static Map<String, List<RiskDatasetRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskDatasetRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskDatasetRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

