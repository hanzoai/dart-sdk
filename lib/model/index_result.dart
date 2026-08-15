//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IndexResult {
  /// Returns a new [IndexResult] instance.
  IndexResult({
    this.chunks,
    this.files,
    this.indexed,
    this.pruned,
    this.repo,
    this.semantic,
    this.skipped,
    this.symbols,
    this.vectors,
  });

  /// Chunks is how many AST-boundary chunks the repo holds after this pass.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? chunks;

  /// Files is how many files the repo holds after this pass.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? files;

  /// Indexed is how many files were parsed and written on this pass.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? indexed;

  /// Pruned is how many stored files were deleted because prune was set and they were absent from the request.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pruned;

  /// Repo is the repository that was indexed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  /// Semantic reports whether the semantic tier was available for this pass. When false the index is lexical + symbolic only and hybrid search still works.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? semantic;

  /// Skipped is how many files were unchanged by content hash and left alone.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? skipped;

  /// Symbols is how many symbol definitions the repo holds after this pass.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? symbols;

  /// Vectors is how many of those chunks carry an embedding.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vectors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IndexResult &&
    other.chunks == chunks &&
    other.files == files &&
    other.indexed == indexed &&
    other.pruned == pruned &&
    other.repo == repo &&
    other.semantic == semantic &&
    other.skipped == skipped &&
    other.symbols == symbols &&
    other.vectors == vectors;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (chunks == null ? 0 : chunks!.hashCode) +
    (files == null ? 0 : files!.hashCode) +
    (indexed == null ? 0 : indexed!.hashCode) +
    (pruned == null ? 0 : pruned!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (semantic == null ? 0 : semantic!.hashCode) +
    (skipped == null ? 0 : skipped!.hashCode) +
    (symbols == null ? 0 : symbols!.hashCode) +
    (vectors == null ? 0 : vectors!.hashCode);

  @override
  String toString() => 'IndexResult[chunks=$chunks, files=$files, indexed=$indexed, pruned=$pruned, repo=$repo, semantic=$semantic, skipped=$skipped, symbols=$symbols, vectors=$vectors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.chunks != null) {
      json[r'chunks'] = this.chunks;
    } else {
      json[r'chunks'] = null;
    }
    if (this.files != null) {
      json[r'files'] = this.files;
    } else {
      json[r'files'] = null;
    }
    if (this.indexed != null) {
      json[r'indexed'] = this.indexed;
    } else {
      json[r'indexed'] = null;
    }
    if (this.pruned != null) {
      json[r'pruned'] = this.pruned;
    } else {
      json[r'pruned'] = null;
    }
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    if (this.semantic != null) {
      json[r'semantic'] = this.semantic;
    } else {
      json[r'semantic'] = null;
    }
    if (this.skipped != null) {
      json[r'skipped'] = this.skipped;
    } else {
      json[r'skipped'] = null;
    }
    if (this.symbols != null) {
      json[r'symbols'] = this.symbols;
    } else {
      json[r'symbols'] = null;
    }
    if (this.vectors != null) {
      json[r'vectors'] = this.vectors;
    } else {
      json[r'vectors'] = null;
    }
    return json;
  }

  /// Returns a new [IndexResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndexResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IndexResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IndexResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndexResult(
        chunks: mapValueOfType<int>(json, r'chunks'),
        files: mapValueOfType<int>(json, r'files'),
        indexed: mapValueOfType<int>(json, r'indexed'),
        pruned: mapValueOfType<int>(json, r'pruned'),
        repo: mapValueOfType<String>(json, r'repo'),
        semantic: mapValueOfType<bool>(json, r'semantic'),
        skipped: mapValueOfType<int>(json, r'skipped'),
        symbols: mapValueOfType<int>(json, r'symbols'),
        vectors: mapValueOfType<int>(json, r'vectors'),
      );
    }
    return null;
  }

  static List<IndexResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IndexResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndexResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndexResult> mapFromJson(dynamic json) {
    final map = <String, IndexResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndexResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndexResult-objects as value to a dart map
  static Map<String, List<IndexResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IndexResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IndexResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

