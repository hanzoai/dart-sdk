//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RagEmbedResult {
  /// Returns a new [RagEmbedResult] instance.
  RagEmbedResult({
    this.chunks,
    this.fileId,
    this.filename,
    this.indexName,
    this.store,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? chunks;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fileId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filename;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? indexName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? store;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RagEmbedResult &&
    other.chunks == chunks &&
    other.fileId == fileId &&
    other.filename == filename &&
    other.indexName == indexName &&
    other.store == store;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (chunks == null ? 0 : chunks!.hashCode) +
    (fileId == null ? 0 : fileId!.hashCode) +
    (filename == null ? 0 : filename!.hashCode) +
    (indexName == null ? 0 : indexName!.hashCode) +
    (store == null ? 0 : store!.hashCode);

  @override
  String toString() => 'RagEmbedResult[chunks=$chunks, fileId=$fileId, filename=$filename, indexName=$indexName, store=$store]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.chunks != null) {
      json[r'chunks'] = this.chunks;
    } else {
      json[r'chunks'] = null;
    }
    if (this.fileId != null) {
      json[r'file_id'] = this.fileId;
    } else {
      json[r'file_id'] = null;
    }
    if (this.filename != null) {
      json[r'filename'] = this.filename;
    } else {
      json[r'filename'] = null;
    }
    if (this.indexName != null) {
      json[r'index_name'] = this.indexName;
    } else {
      json[r'index_name'] = null;
    }
    if (this.store != null) {
      json[r'store'] = this.store;
    } else {
      json[r'store'] = null;
    }
    return json;
  }

  /// Returns a new [RagEmbedResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RagEmbedResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RagEmbedResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RagEmbedResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RagEmbedResult(
        chunks: mapValueOfType<int>(json, r'chunks'),
        fileId: mapValueOfType<String>(json, r'file_id'),
        filename: mapValueOfType<String>(json, r'filename'),
        indexName: mapValueOfType<String>(json, r'index_name'),
        store: mapValueOfType<String>(json, r'store'),
      );
    }
    return null;
  }

  static List<RagEmbedResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RagEmbedResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RagEmbedResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RagEmbedResult> mapFromJson(dynamic json) {
    final map = <String, RagEmbedResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RagEmbedResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RagEmbedResult-objects as value to a dart map
  static Map<String, List<RagEmbedResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RagEmbedResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RagEmbedResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

