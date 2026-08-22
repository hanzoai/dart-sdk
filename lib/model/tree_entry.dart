//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TreeEntry {
  /// Returns a new [TreeEntry] instance.
  TreeEntry({
    this.lang,
    this.path,
    this.symbols,
  });
  /// Lang is the language the indexer parsed the file as (\"go\", \"python\", …), or empty when it recognised none — in which case Symbols is 0 because nothing was extracted, not because the file declares nothing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lang;

  /// Path is the file, relative to the repo root. The list is ordered by it, so a reader can see module layout without sorting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  /// Symbols is how many top-level declarations the file defines. A file with none is still listed: the file set is the authority here and the counts decorate it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? symbols;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TreeEntry &&
    other.lang == lang &&
    other.path == path &&
    other.symbols == symbols;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (lang == null ? 0 : lang!.hashCode) +
    (path == null ? 0 : path!.hashCode) +
    (symbols == null ? 0 : symbols!.hashCode);

  @override
  String toString() => 'TreeEntry[lang=$lang, path=$path, symbols=$symbols]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.lang != null) {
      json[r'lang'] = this.lang;
    } else {
      json[r'lang'] = null;
    }
    if (this.path != null) {
      json[r'path'] = this.path;
    } else {
      json[r'path'] = null;
    }
    if (this.symbols != null) {
      json[r'symbols'] = this.symbols;
    } else {
      json[r'symbols'] = null;
    }
    return json;
  }

  /// Returns a new [TreeEntry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TreeEntry? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TreeEntry[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TreeEntry[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TreeEntry(
        lang: mapValueOfType<String>(json, r'lang'),
        path: mapValueOfType<String>(json, r'path'),
        symbols: mapValueOfType<int>(json, r'symbols'),
      );
    }
    return null;
  }

  static List<TreeEntry> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TreeEntry>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TreeEntry.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TreeEntry> mapFromJson(dynamic json) {
    final map = <String, TreeEntry>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TreeEntry.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TreeEntry-objects as value to a dart map
  static Map<String, List<TreeEntry>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TreeEntry>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TreeEntry.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

