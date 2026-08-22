//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Answer {
  /// Returns a new [Answer] instance.
  Answer({
    this.cold,
    this.completions = const [],
    this.diagnostics = const [],
    this.hover,
    this.lang,
    this.locations = const [],
    this.op,
    this.path,
    this.repo,
    this.rev,
    this.symbols = const [],
  });
  /// Cold reports that this request paid to PREPARE the revision — the tree write, the dependency fetch and the language server's first index. It is the billed event, surfaced so a caller can see what it was charged for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? cold;

  /// Completions is complete's answer: the candidates at the position, typed and resolved through the repository's dependencies rather than guessed from text.
  List<Completion> completions;

  /// Diagnostics is diagnostics' answer: every problem the server finds in the whole file, position ignored. Empty means it found none.
  List<Diagnostic> diagnostics;

  /// Hover is hover's answer: the type and documentation as the language server itself renders them, so it is prose meant to be shown, not parsed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hover;

  /// Lang is the language the server that answered speaks (\"go\"), as the daemon reports it. Empty when the daemon named none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lang;

  /// Locations is locate's answer: where the symbol is defined, referenced, typed or implemented, per the relation asked for. Empty means the server resolved nothing there, which is an answer.
  List<Location> locations;

  /// Op is the question that was asked: hover, locate, symbols, diagnostics or complete. It names which result field below is the populated one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? op;

  /// Path is the repo-relative file the question was about, echoed back.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  /// Repo is the repository the question was about, echoed back.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  /// Rev is the RESOLVED commit sha, never the branch or tag that was asked for. It is what makes an answer re-askable: a branch moves, this does not.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rev;

  /// Symbols is symbols' answer: the file's whole outline, position ignored.
  List<CodeSymbol> symbols;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Answer &&
    other.cold == cold &&
    _deepEquality.equals(other.completions, completions) &&
    _deepEquality.equals(other.diagnostics, diagnostics) &&
    other.hover == hover &&
    other.lang == lang &&
    _deepEquality.equals(other.locations, locations) &&
    other.op == op &&
    other.path == path &&
    other.repo == repo &&
    other.rev == rev &&
    _deepEquality.equals(other.symbols, symbols);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cold == null ? 0 : cold!.hashCode) +
    (completions.hashCode) +
    (diagnostics.hashCode) +
    (hover == null ? 0 : hover!.hashCode) +
    (lang == null ? 0 : lang!.hashCode) +
    (locations.hashCode) +
    (op == null ? 0 : op!.hashCode) +
    (path == null ? 0 : path!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (rev == null ? 0 : rev!.hashCode) +
    (symbols.hashCode);

  @override
  String toString() => 'Answer[cold=$cold, completions=$completions, diagnostics=$diagnostics, hover=$hover, lang=$lang, locations=$locations, op=$op, path=$path, repo=$repo, rev=$rev, symbols=$symbols]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cold != null) {
      json[r'cold'] = this.cold;
    } else {
      json[r'cold'] = null;
    }
      json[r'completions'] = this.completions;
      json[r'diagnostics'] = this.diagnostics;
    if (this.hover != null) {
      json[r'hover'] = this.hover;
    } else {
      json[r'hover'] = null;
    }
    if (this.lang != null) {
      json[r'lang'] = this.lang;
    } else {
      json[r'lang'] = null;
    }
      json[r'locations'] = this.locations;
    if (this.op != null) {
      json[r'op'] = this.op;
    } else {
      json[r'op'] = null;
    }
    if (this.path != null) {
      json[r'path'] = this.path;
    } else {
      json[r'path'] = null;
    }
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    if (this.rev != null) {
      json[r'rev'] = this.rev;
    } else {
      json[r'rev'] = null;
    }
      json[r'symbols'] = this.symbols;
    return json;
  }

  /// Returns a new [Answer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Answer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Answer[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Answer[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Answer(
        cold: mapValueOfType<bool>(json, r'cold'),
        completions: Completion.listFromJson(json[r'completions']),
        diagnostics: Diagnostic.listFromJson(json[r'diagnostics']),
        hover: mapValueOfType<String>(json, r'hover'),
        lang: mapValueOfType<String>(json, r'lang'),
        locations: Location.listFromJson(json[r'locations']),
        op: mapValueOfType<String>(json, r'op'),
        path: mapValueOfType<String>(json, r'path'),
        repo: mapValueOfType<String>(json, r'repo'),
        rev: mapValueOfType<String>(json, r'rev'),
        symbols: CodeSymbol.listFromJson(json[r'symbols']),
      );
    }
    return null;
  }

  static List<Answer> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Answer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Answer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Answer> mapFromJson(dynamic json) {
    final map = <String, Answer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Answer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Answer-objects as value to a dart map
  static Map<String, List<Answer>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Answer>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Answer.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

