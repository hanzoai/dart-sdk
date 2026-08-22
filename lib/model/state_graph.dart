//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class StateGraph {
  /// Returns a new [StateGraph] instance.
  StateGraph({
    this.initial,
    this.live,
    this.states = const [],
    this.transitions = const {},
  });
  /// Initial is the state a fresh document starts in — \"draft\". A stored document with no status at all is read as this too.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? initial;

  /// Live is the ONE state that is publicly readable — \"published\". The site pulls only documents in it, so reaching Live IS site-publish; every other state is invisible to a reader.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? live;

  /// States is every lifecycle state in canonical order: draft, in_review, approved, queued, published, archived. The console lays its board columns out in exactly this order, so the order is part of the answer.
  List<String> states;

  /// Transitions maps each state to the states it may move to. A target absent from a state's list is REFUSED, at the endpoint and again at the storage boundary — this is the whole rule, not a hint for the UI. A state never lists itself; a move that changes nothing is always legal.
  Map<String, List<String>> transitions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StateGraph &&
    other.initial == initial &&
    other.live == live &&
    _deepEquality.equals(other.states, states) &&
    _deepEquality.equals(other.transitions, transitions);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (initial == null ? 0 : initial!.hashCode) +
    (live == null ? 0 : live!.hashCode) +
    (states.hashCode) +
    (transitions.hashCode);

  @override
  String toString() => 'StateGraph[initial=$initial, live=$live, states=$states, transitions=$transitions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.initial != null) {
      json[r'initial'] = this.initial;
    } else {
      json[r'initial'] = null;
    }
    if (this.live != null) {
      json[r'live'] = this.live;
    } else {
      json[r'live'] = null;
    }
      json[r'states'] = this.states;
      json[r'transitions'] = this.transitions;
    return json;
  }

  /// Returns a new [StateGraph] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StateGraph? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StateGraph[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StateGraph[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StateGraph(
        initial: mapValueOfType<String>(json, r'initial'),
        live: mapValueOfType<String>(json, r'live'),
        states: json[r'states'] is Iterable
            ? (json[r'states'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        transitions: json[r'transitions'] == null
          ? const {}
            : (json[r'transitions'] as Map).map((k, v) => MapEntry(k as String, v == null ? const <String>[] : (v as List).cast<String>().toList(growable: false))),
      );
    }
    return null;
  }

  static List<StateGraph> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StateGraph>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StateGraph.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StateGraph> mapFromJson(dynamic json) {
    final map = <String, StateGraph>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StateGraph.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StateGraph-objects as value to a dart map
  static Map<String, List<StateGraph>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StateGraph>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StateGraph.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

