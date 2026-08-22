//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Match {
  /// Returns a new [Match] instance.
  Match({
    this.backend,
    this.rank,
    this.score,
  });
  /// Backend is the leg that contributed this match: \"index\" (lexical), \"vector\" (semantic) or \"code\" (the org's repositories). It is the same name that leg reports itself under in Response.Backends, so a hit can be traced to a status.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backend;

  /// Rank is this document's 1-based position in THAT leg's own result list, before fusion — 1 is the leg's best hit. It is the only input to the fused score: RRF adds 1/(60+rank) per leg, which is why a document two legs ranked second beats one a single leg ranked first.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rank;

  /// Score is the leg's NATIVE score, on that leg's own scale, reported for explanation and never used in ranking — the scales are incomparable (a cosine similarity against a term-match count), which is why fusion works on ranks. The vector leg reports Qdrant's cosine similarity; the lexical leg exposes no per-row score and reports 0, meaning \"unscored\", not \"scored zero\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? score;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Match &&
    other.backend == backend &&
    other.rank == rank &&
    other.score == score;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (backend == null ? 0 : backend!.hashCode) +
    (rank == null ? 0 : rank!.hashCode) +
    (score == null ? 0 : score!.hashCode);

  @override
  String toString() => 'Match[backend=$backend, rank=$rank, score=$score]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.backend != null) {
      json[r'backend'] = this.backend;
    } else {
      json[r'backend'] = null;
    }
    if (this.rank != null) {
      json[r'rank'] = this.rank;
    } else {
      json[r'rank'] = null;
    }
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    return json;
  }

  /// Returns a new [Match] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Match? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Match[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Match[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Match(
        backend: mapValueOfType<String>(json, r'backend'),
        rank: mapValueOfType<int>(json, r'rank'),
        score: num.parse('${json[r'score']}'),
      );
    }
    return null;
  }

  static List<Match> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Match>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Match.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Match> mapFromJson(dynamic json) {
    final map = <String, Match>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Match.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Match-objects as value to a dart map
  static Map<String, List<Match>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Match>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Match.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

