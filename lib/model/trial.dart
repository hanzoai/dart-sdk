//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Trial {
  /// Returns a new [Trial] instance.
  Trial({
    this.createdAt,
    this.createdBy,
    this.decidedAt,
    this.decidedBy,
    this.exposureEvent,
    this.flagKey,
    this.id,
    this.metricEvent,
    this.name,
    this.project,
    this.status,
    this.subjectKind,
    this.variants = const [],
    this.winner,
  });
  /// when it started assigning
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// the credential that registered it
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdBy;

  /// when the promotion took effect
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? decidedAt;

  /// the credential that promoted the winner
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? decidedBy;

  /// the event that enrols a subject — the analysis denominator
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? exposureEvent;

  /// the assignment flag this experiment drives
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? flagKey;

  /// the experiment's slug, unique within the project
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// the event that counts as a conversion — the numerator
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? metricEvent;

  /// free text for a reader
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// the sub-scope within the org, stamped from the principal
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  /// running while it assigns and measures, decided once a winner is promoted
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// the unit assigned and measured: user, org, session or audience
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subjectKind;

  /// the arms, weighted, one of them the control
  List<Arm> variants;

  /// the arm promoted to the whole rollout
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? winner;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Trial &&
    other.createdAt == createdAt &&
    other.createdBy == createdBy &&
    other.decidedAt == decidedAt &&
    other.decidedBy == decidedBy &&
    other.exposureEvent == exposureEvent &&
    other.flagKey == flagKey &&
    other.id == id &&
    other.metricEvent == metricEvent &&
    other.name == name &&
    other.project == project &&
    other.status == status &&
    other.subjectKind == subjectKind &&
    _deepEquality.equals(other.variants, variants) &&
    other.winner == winner;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (createdBy == null ? 0 : createdBy!.hashCode) +
    (decidedAt == null ? 0 : decidedAt!.hashCode) +
    (decidedBy == null ? 0 : decidedBy!.hashCode) +
    (exposureEvent == null ? 0 : exposureEvent!.hashCode) +
    (flagKey == null ? 0 : flagKey!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (metricEvent == null ? 0 : metricEvent!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (subjectKind == null ? 0 : subjectKind!.hashCode) +
    (variants.hashCode) +
    (winner == null ? 0 : winner!.hashCode);

  @override
  String toString() => 'Trial[createdAt=$createdAt, createdBy=$createdBy, decidedAt=$decidedAt, decidedBy=$decidedBy, exposureEvent=$exposureEvent, flagKey=$flagKey, id=$id, metricEvent=$metricEvent, name=$name, project=$project, status=$status, subjectKind=$subjectKind, variants=$variants, winner=$winner]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.createdBy != null) {
      json[r'createdBy'] = this.createdBy;
    } else {
      json[r'createdBy'] = null;
    }
    if (this.decidedAt != null) {
      json[r'decidedAt'] = this.decidedAt;
    } else {
      json[r'decidedAt'] = null;
    }
    if (this.decidedBy != null) {
      json[r'decidedBy'] = this.decidedBy;
    } else {
      json[r'decidedBy'] = null;
    }
    if (this.exposureEvent != null) {
      json[r'exposureEvent'] = this.exposureEvent;
    } else {
      json[r'exposureEvent'] = null;
    }
    if (this.flagKey != null) {
      json[r'flagKey'] = this.flagKey;
    } else {
      json[r'flagKey'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.metricEvent != null) {
      json[r'metricEvent'] = this.metricEvent;
    } else {
      json[r'metricEvent'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.subjectKind != null) {
      json[r'subjectKind'] = this.subjectKind;
    } else {
      json[r'subjectKind'] = null;
    }
      json[r'variants'] = this.variants;
    if (this.winner != null) {
      json[r'winner'] = this.winner;
    } else {
      json[r'winner'] = null;
    }
    return json;
  }

  /// Returns a new [Trial] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Trial? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Trial[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Trial[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Trial(
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        createdBy: mapValueOfType<String>(json, r'createdBy'),
        decidedAt: mapValueOfType<String>(json, r'decidedAt'),
        decidedBy: mapValueOfType<String>(json, r'decidedBy'),
        exposureEvent: mapValueOfType<String>(json, r'exposureEvent'),
        flagKey: mapValueOfType<String>(json, r'flagKey'),
        id: mapValueOfType<String>(json, r'id'),
        metricEvent: mapValueOfType<String>(json, r'metricEvent'),
        name: mapValueOfType<String>(json, r'name'),
        project: mapValueOfType<String>(json, r'project'),
        status: mapValueOfType<String>(json, r'status'),
        subjectKind: mapValueOfType<String>(json, r'subjectKind'),
        variants: Arm.listFromJson(json[r'variants']),
        winner: mapValueOfType<String>(json, r'winner'),
      );
    }
    return null;
  }

  static List<Trial> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Trial>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Trial.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Trial> mapFromJson(dynamic json) {
    final map = <String, Trial>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Trial.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Trial-objects as value to a dart map
  static Map<String, List<Trial>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Trial>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Trial.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

