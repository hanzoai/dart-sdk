//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GraphResolveOut {
  /// Returns a new [GraphResolveOut] instance.
  GraphResolveOut({
    this.asOf,
    this.conflicts = const [],
    this.contested,
    this.entity,
    this.known,
    this.relation,
    this.truncated,
    this.winner,
  });
  /// AsOf is the instant this answer was taken at, RFC 3339: the one asked for, or the server's clock when none was.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? asOf;

  /// Conflicts is every OTHER assertion knowable at AsOf, strongest first. They are not all disagreements: one that repeats the winner's value ranks below it and is listed here too.
  List<WireFact> conflicts;

  /// Contested is true when at least one conflict claims a value different from the winner's. Any number of conflicts that all agree leaves it false.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? contested;

  /// Entity is the entity the question named, echoed so a stored answer still says what it is about.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entity;

  /// Known is false when this plane held nothing knowable at AsOf. That is an answer, not an error.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? known;

  /// Relation is the relation the question named, echoed for the same reason.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? relation;

  /// Truncated says this pair holds more assertions than one read returns, so the winner was decided from the most recent ceiling-full of them. It is reported because a provenance plane that trims silently is a plane that answers confidently and wrongly; narrow the question with as_of to see what it dropped.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? truncated;

  /// Winner is the assertion in force — the strongest of those knowable at AsOf under the order `rule` names. Absent exactly when Known is false.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  WireFact? winner;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GraphResolveOut &&
    other.asOf == asOf &&
    _deepEquality.equals(other.conflicts, conflicts) &&
    other.contested == contested &&
    other.entity == entity &&
    other.known == known &&
    other.relation == relation &&
    other.truncated == truncated &&
    other.winner == winner;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (asOf == null ? 0 : asOf!.hashCode) +
    (conflicts.hashCode) +
    (contested == null ? 0 : contested!.hashCode) +
    (entity == null ? 0 : entity!.hashCode) +
    (known == null ? 0 : known!.hashCode) +
    (relation == null ? 0 : relation!.hashCode) +
    (truncated == null ? 0 : truncated!.hashCode) +
    (winner == null ? 0 : winner!.hashCode);

  @override
  String toString() => 'GraphResolveOut[asOf=$asOf, conflicts=$conflicts, contested=$contested, entity=$entity, known=$known, relation=$relation, truncated=$truncated, winner=$winner]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.asOf != null) {
      json[r'as_of'] = this.asOf;
    } else {
      json[r'as_of'] = null;
    }
      json[r'conflicts'] = this.conflicts;
    if (this.contested != null) {
      json[r'contested'] = this.contested;
    } else {
      json[r'contested'] = null;
    }
    if (this.entity != null) {
      json[r'entity'] = this.entity;
    } else {
      json[r'entity'] = null;
    }
    if (this.known != null) {
      json[r'known'] = this.known;
    } else {
      json[r'known'] = null;
    }
    if (this.relation != null) {
      json[r'relation'] = this.relation;
    } else {
      json[r'relation'] = null;
    }
    if (this.truncated != null) {
      json[r'truncated'] = this.truncated;
    } else {
      json[r'truncated'] = null;
    }
    if (this.winner != null) {
      json[r'winner'] = this.winner;
    } else {
      json[r'winner'] = null;
    }
    return json;
  }

  /// Returns a new [GraphResolveOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GraphResolveOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GraphResolveOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GraphResolveOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GraphResolveOut(
        asOf: mapValueOfType<String>(json, r'as_of'),
        conflicts: WireFact.listFromJson(json[r'conflicts']),
        contested: mapValueOfType<bool>(json, r'contested'),
        entity: mapValueOfType<String>(json, r'entity'),
        known: mapValueOfType<bool>(json, r'known'),
        relation: mapValueOfType<String>(json, r'relation'),
        truncated: mapValueOfType<bool>(json, r'truncated'),
        winner: WireFact.fromJson(json[r'winner']),
      );
    }
    return null;
  }

  static List<GraphResolveOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GraphResolveOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GraphResolveOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GraphResolveOut> mapFromJson(dynamic json) {
    final map = <String, GraphResolveOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GraphResolveOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GraphResolveOut-objects as value to a dart map
  static Map<String, List<GraphResolveOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GraphResolveOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GraphResolveOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

