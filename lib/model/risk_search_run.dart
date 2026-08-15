//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskSearchRun {
  /// Returns a new [RiskSearchRun] instance.
  RiskSearchRun({
    this.candidates,
    this.events,
    this.id,
  });

  /// Candidates is how many model shapes will be tried.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? candidates;

  /// Events is how much of the organisation's own history the run will replay.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? events;

  /// ID addresses the run. Read the result back with it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskSearchRun &&
    other.candidates == candidates &&
    other.events == events &&
    other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (candidates == null ? 0 : candidates!.hashCode) +
    (events == null ? 0 : events!.hashCode) +
    (id == null ? 0 : id!.hashCode);

  @override
  String toString() => 'RiskSearchRun[candidates=$candidates, events=$events, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.candidates != null) {
      json[r'candidates'] = this.candidates;
    } else {
      json[r'candidates'] = null;
    }
    if (this.events != null) {
      json[r'events'] = this.events;
    } else {
      json[r'events'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    return json;
  }

  /// Returns a new [RiskSearchRun] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskSearchRun? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskSearchRun[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskSearchRun[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskSearchRun(
        candidates: mapValueOfType<int>(json, r'candidates'),
        events: mapValueOfType<int>(json, r'events'),
        id: mapValueOfType<String>(json, r'id'),
      );
    }
    return null;
  }

  static List<RiskSearchRun> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskSearchRun>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskSearchRun.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskSearchRun> mapFromJson(dynamic json) {
    final map = <String, RiskSearchRun>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskSearchRun.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskSearchRun-objects as value to a dart map
  static Map<String, List<RiskSearchRun>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskSearchRun>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskSearchRun.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

