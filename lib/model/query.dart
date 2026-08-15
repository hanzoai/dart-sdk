//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Query {
  /// Returns a new [Query] instance.
  Query({
    this.character,
    this.line,
    this.path,
    this.relation,
    this.repo,
    this.rev,
  });

  /// Character is a 0-based UTF-16 code-unit offset within Line, per the LSP specification — not a byte offset and not a rune index.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? character;

  /// Line is 0-based, per the LSP specification.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? line;

  /// Path is the repo-relative file, e.g. \"apps/lsp/lsp.go\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  /// Relation refines locate: definition, reference, type or implementation. Empty means definition. Every other op ignores it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? relation;

  /// Repo is the repository NAME within the caller's own org, e.g. \"cloud\". Not a URL and not an owner/name pair: the owner is the validated principal's org, so this names a repository the caller already owns.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  /// Rev is a branch, tag or commit sha. Empty means the default branch. It is resolved to a commit before anything else happens, so an answer is always about one immutable tree.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rev;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Query &&
    other.character == character &&
    other.line == line &&
    other.path == path &&
    other.relation == relation &&
    other.repo == repo &&
    other.rev == rev;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (character == null ? 0 : character!.hashCode) +
    (line == null ? 0 : line!.hashCode) +
    (path == null ? 0 : path!.hashCode) +
    (relation == null ? 0 : relation!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (rev == null ? 0 : rev!.hashCode);

  @override
  String toString() => 'Query[character=$character, line=$line, path=$path, relation=$relation, repo=$repo, rev=$rev]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.character != null) {
      json[r'character'] = this.character;
    } else {
      json[r'character'] = null;
    }
    if (this.line != null) {
      json[r'line'] = this.line;
    } else {
      json[r'line'] = null;
    }
    if (this.path != null) {
      json[r'path'] = this.path;
    } else {
      json[r'path'] = null;
    }
    if (this.relation != null) {
      json[r'relation'] = this.relation;
    } else {
      json[r'relation'] = null;
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
    return json;
  }

  /// Returns a new [Query] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Query? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Query[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Query[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Query(
        character: mapValueOfType<int>(json, r'character'),
        line: mapValueOfType<int>(json, r'line'),
        path: mapValueOfType<String>(json, r'path'),
        relation: mapValueOfType<String>(json, r'relation'),
        repo: mapValueOfType<String>(json, r'repo'),
        rev: mapValueOfType<String>(json, r'rev'),
      );
    }
    return null;
  }

  static List<Query> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Query>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Query.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Query> mapFromJson(dynamic json) {
    final map = <String, Query>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Query.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Query-objects as value to a dart map
  static Map<String, List<Query>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Query>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Query.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

