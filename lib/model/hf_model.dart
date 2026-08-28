//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class HfModel {
  /// Returns a new [HfModel] instance.
  HfModel({
    this.downloads,
    this.gated,
    this.id,
    this.lastModified,
    this.libraryName,
    this.likes,
    this.pipelineTag,
    this.private,
    this.tags = const [],
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? downloads;

  Object? gated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastModified;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? libraryName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? likes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pipelineTag;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? private;

  List<String> tags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HfModel &&
    other.downloads == downloads &&
    other.gated == gated &&
    other.id == id &&
    other.lastModified == lastModified &&
    other.libraryName == libraryName &&
    other.likes == likes &&
    other.pipelineTag == pipelineTag &&
    other.private == private &&
    _deepEquality.equals(other.tags, tags);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (downloads == null ? 0 : downloads!.hashCode) +
    (gated == null ? 0 : gated!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (lastModified == null ? 0 : lastModified!.hashCode) +
    (libraryName == null ? 0 : libraryName!.hashCode) +
    (likes == null ? 0 : likes!.hashCode) +
    (pipelineTag == null ? 0 : pipelineTag!.hashCode) +
    (private == null ? 0 : private!.hashCode) +
    (tags.hashCode);

  @override
  String toString() => 'HfModel[downloads=$downloads, gated=$gated, id=$id, lastModified=$lastModified, libraryName=$libraryName, likes=$likes, pipelineTag=$pipelineTag, private=$private, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.downloads != null) {
      json[r'downloads'] = this.downloads;
    } else {
      json[r'downloads'] = null;
    }
    if (this.gated != null) {
      json[r'gated'] = this.gated;
    } else {
      json[r'gated'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.lastModified != null) {
      json[r'lastModified'] = this.lastModified;
    } else {
      json[r'lastModified'] = null;
    }
    if (this.libraryName != null) {
      json[r'library_name'] = this.libraryName;
    } else {
      json[r'library_name'] = null;
    }
    if (this.likes != null) {
      json[r'likes'] = this.likes;
    } else {
      json[r'likes'] = null;
    }
    if (this.pipelineTag != null) {
      json[r'pipeline_tag'] = this.pipelineTag;
    } else {
      json[r'pipeline_tag'] = null;
    }
    if (this.private != null) {
      json[r'private'] = this.private;
    } else {
      json[r'private'] = null;
    }
      json[r'tags'] = this.tags;
    return json;
  }

  /// Returns a new [HfModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HfModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HfModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HfModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HfModel(
        downloads: mapValueOfType<int>(json, r'downloads'),
        gated: mapValueOfType<Object>(json, r'gated'),
        id: mapValueOfType<String>(json, r'id'),
        lastModified: mapValueOfType<String>(json, r'lastModified'),
        libraryName: mapValueOfType<String>(json, r'library_name'),
        likes: mapValueOfType<int>(json, r'likes'),
        pipelineTag: mapValueOfType<String>(json, r'pipeline_tag'),
        private: mapValueOfType<bool>(json, r'private'),
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<HfModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HfModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HfModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HfModel> mapFromJson(dynamic json) {
    final map = <String, HfModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HfModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HfModel-objects as value to a dart map
  static Map<String, List<HfModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HfModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HfModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

