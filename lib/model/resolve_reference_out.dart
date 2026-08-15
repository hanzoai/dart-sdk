//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ResolveReferenceOut {
  /// Returns a new [ResolveReferenceOut] instance.
  ResolveReferenceOut({
    this.answers = const [],
    this.consulted = const [],
    this.refused = const [],
    this.stale = const [],
  });

  /// Answers is one entry per (set, key) consulted.
  List<ReferenceAnswer> answers;

  /// Consulted names the version of every set that took part, so a decision can record precisely what it leaned on. Record this with the decision: it is what makes the decision reproducible a year later.
  List<ReferenceVersion> consulted;

  /// Refused names the consulted sets that could not answer at all. A key that missed in one of these is UNKNOWN, not clean.
  List<String> refused;

  /// Stale names the consulted sets past their freshness bound. Staleness is itself a risk signal — a decision taken against a three-week-old list is a weaker decision, and this is how it knows.
  List<String> stale;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResolveReferenceOut &&
    _deepEquality.equals(other.answers, answers) &&
    _deepEquality.equals(other.consulted, consulted) &&
    _deepEquality.equals(other.refused, refused) &&
    _deepEquality.equals(other.stale, stale);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (answers.hashCode) +
    (consulted.hashCode) +
    (refused.hashCode) +
    (stale.hashCode);

  @override
  String toString() => 'ResolveReferenceOut[answers=$answers, consulted=$consulted, refused=$refused, stale=$stale]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'answers'] = this.answers;
      json[r'consulted'] = this.consulted;
      json[r'refused'] = this.refused;
      json[r'stale'] = this.stale;
    return json;
  }

  /// Returns a new [ResolveReferenceOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ResolveReferenceOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ResolveReferenceOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ResolveReferenceOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ResolveReferenceOut(
        answers: ReferenceAnswer.listFromJson(json[r'answers']),
        consulted: ReferenceVersion.listFromJson(json[r'consulted']),
        refused: json[r'refused'] is Iterable
            ? (json[r'refused'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        stale: json[r'stale'] is Iterable
            ? (json[r'stale'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ResolveReferenceOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ResolveReferenceOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResolveReferenceOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ResolveReferenceOut> mapFromJson(dynamic json) {
    final map = <String, ResolveReferenceOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ResolveReferenceOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ResolveReferenceOut-objects as value to a dart map
  static Map<String, List<ResolveReferenceOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ResolveReferenceOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ResolveReferenceOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

