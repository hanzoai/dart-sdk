//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Citation {
  /// Returns a new [Citation] instance.
  Citation({
    this.endLine,
    this.file,
    this.line,
    this.repo,
    this.symbol,
  });
  /// EndLine is its last line, inclusive.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endLine;

  /// File is the path inside the repo, relative to its root.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? file;

  /// Line is the first line of the cited region, 1-based.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? line;

  /// Repo is the repository the cited code lives in (\"owner/name\"), absent when the ask was already scoped to one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  /// Symbol is the declaration the region belongs to, when it belongs to one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? symbol;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Citation &&
    other.endLine == endLine &&
    other.file == file &&
    other.line == line &&
    other.repo == repo &&
    other.symbol == symbol;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (endLine == null ? 0 : endLine!.hashCode) +
    (file == null ? 0 : file!.hashCode) +
    (line == null ? 0 : line!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (symbol == null ? 0 : symbol!.hashCode);

  @override
  String toString() => 'Citation[endLine=$endLine, file=$file, line=$line, repo=$repo, symbol=$symbol]';

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
    if (this.symbol != null) {
      json[r'symbol'] = this.symbol;
    } else {
      json[r'symbol'] = null;
    }
    return json;
  }

  /// Returns a new [Citation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Citation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Citation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Citation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Citation(
        endLine: mapValueOfType<int>(json, r'endLine'),
        file: mapValueOfType<String>(json, r'file'),
        line: mapValueOfType<int>(json, r'line'),
        repo: mapValueOfType<String>(json, r'repo'),
        symbol: mapValueOfType<String>(json, r'symbol'),
      );
    }
    return null;
  }

  static List<Citation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Citation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Citation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Citation> mapFromJson(dynamic json) {
    final map = <String, Citation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Citation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Citation-objects as value to a dart map
  static Map<String, List<Citation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Citation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Citation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

