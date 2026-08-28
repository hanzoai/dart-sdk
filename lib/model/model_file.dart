//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ModelFile {
  /// Returns a new [ModelFile] instance.
  ModelFile({
    this.createdTime,
    this.errorText,
    this.filename,
    this.name,
    this.owner,
    this.size,
    this.status,
    this.storageProvider,
    this.store,
    this.tokenCount,
    this.url,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorText;

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
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? size;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? storageProvider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? store;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tokenCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelFile &&
    other.createdTime == createdTime &&
    other.errorText == errorText &&
    other.filename == filename &&
    other.name == name &&
    other.owner == owner &&
    other.size == size &&
    other.status == status &&
    other.storageProvider == storageProvider &&
    other.store == store &&
    other.tokenCount == tokenCount &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdTime == null ? 0 : createdTime!.hashCode) +
    (errorText == null ? 0 : errorText!.hashCode) +
    (filename == null ? 0 : filename!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (size == null ? 0 : size!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (storageProvider == null ? 0 : storageProvider!.hashCode) +
    (store == null ? 0 : store!.hashCode) +
    (tokenCount == null ? 0 : tokenCount!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'ModelFile[createdTime=$createdTime, errorText=$errorText, filename=$filename, name=$name, owner=$owner, size=$size, status=$status, storageProvider=$storageProvider, store=$store, tokenCount=$tokenCount, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdTime != null) {
      json[r'createdTime'] = this.createdTime;
    } else {
      json[r'createdTime'] = null;
    }
    if (this.errorText != null) {
      json[r'errorText'] = this.errorText;
    } else {
      json[r'errorText'] = null;
    }
    if (this.filename != null) {
      json[r'filename'] = this.filename;
    } else {
      json[r'filename'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.storageProvider != null) {
      json[r'storageProvider'] = this.storageProvider;
    } else {
      json[r'storageProvider'] = null;
    }
    if (this.store != null) {
      json[r'store'] = this.store;
    } else {
      json[r'store'] = null;
    }
    if (this.tokenCount != null) {
      json[r'tokenCount'] = this.tokenCount;
    } else {
      json[r'tokenCount'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [ModelFile] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelFile? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelFile[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelFile[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelFile(
        createdTime: mapValueOfType<String>(json, r'createdTime'),
        errorText: mapValueOfType<String>(json, r'errorText'),
        filename: mapValueOfType<String>(json, r'filename'),
        name: mapValueOfType<String>(json, r'name'),
        owner: mapValueOfType<String>(json, r'owner'),
        size: mapValueOfType<int>(json, r'size'),
        status: mapValueOfType<String>(json, r'status'),
        storageProvider: mapValueOfType<String>(json, r'storageProvider'),
        store: mapValueOfType<String>(json, r'store'),
        tokenCount: mapValueOfType<int>(json, r'tokenCount'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<ModelFile> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelFile>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelFile.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelFile> mapFromJson(dynamic json) {
    final map = <String, ModelFile>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelFile.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelFile-objects as value to a dart map
  static Map<String, List<ModelFile>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelFile>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelFile.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

