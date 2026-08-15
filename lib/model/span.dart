//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Span {
  /// Returns a new [Span] instance.
  Span({
    this.endLine,
    this.file,
    this.kind,
    this.line,
    this.repo,
    this.role,
    this.score,
    this.snippet,
    this.symbol,
    this.tier,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endLine;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? file;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? line;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  /// context: match | definition | caller
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? role;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? score;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? snippet;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? symbol;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tier;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Span &&
    other.endLine == endLine &&
    other.file == file &&
    other.kind == kind &&
    other.line == line &&
    other.repo == repo &&
    other.role == role &&
    other.score == score &&
    other.snippet == snippet &&
    other.symbol == symbol &&
    other.tier == tier;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (endLine == null ? 0 : endLine!.hashCode) +
    (file == null ? 0 : file!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (line == null ? 0 : line!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (role == null ? 0 : role!.hashCode) +
    (score == null ? 0 : score!.hashCode) +
    (snippet == null ? 0 : snippet!.hashCode) +
    (symbol == null ? 0 : symbol!.hashCode) +
    (tier == null ? 0 : tier!.hashCode);

  @override
  String toString() => 'Span[endLine=$endLine, file=$file, kind=$kind, line=$line, repo=$repo, role=$role, score=$score, snippet=$snippet, symbol=$symbol, tier=$tier]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.endLine != null) {
      json[r'endLine'] = this.endLine;
    } else {
      json[r'endLine'] = null;
    }
    if (this.file != null) {
      json[r'file'] = this.file;
    } else {
      json[r'file'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.line != null) {
      json[r'line'] = this.line;
    } else {
      json[r'line'] = null;
    }
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    if (this.role != null) {
      json[r'role'] = this.role;
    } else {
      json[r'role'] = null;
    }
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    if (this.snippet != null) {
      json[r'snippet'] = this.snippet;
    } else {
      json[r'snippet'] = null;
    }
    if (this.symbol != null) {
      json[r'symbol'] = this.symbol;
    } else {
      json[r'symbol'] = null;
    }
    if (this.tier != null) {
      json[r'tier'] = this.tier;
    } else {
      json[r'tier'] = null;
    }
    return json;
  }

  /// Returns a new [Span] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Span? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Span[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Span[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Span(
        endLine: mapValueOfType<int>(json, r'endLine'),
        file: mapValueOfType<String>(json, r'file'),
        kind: mapValueOfType<String>(json, r'kind'),
        line: mapValueOfType<int>(json, r'line'),
        repo: mapValueOfType<String>(json, r'repo'),
        role: mapValueOfType<String>(json, r'role'),
        score: num.parse('${json[r'score']}'),
        snippet: mapValueOfType<String>(json, r'snippet'),
        symbol: mapValueOfType<String>(json, r'symbol'),
        tier: mapValueOfType<String>(json, r'tier'),
      );
    }
    return null;
  }

  static List<Span> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Span>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Span.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Span> mapFromJson(dynamic json) {
    final map = <String, Span>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Span.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Span-objects as value to a dart map
  static Map<String, List<Span>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Span>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Span.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

