//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11ySavedViewUpdateIn {
  /// Returns a new [O11yO11ySavedViewUpdateIn] instance.
  O11yO11ySavedViewUpdateIn({
    this.category,
    this.compositeQuery,
    this.createdAt,
    this.createdBy,
    this.extraData,
    this.id,
    this.name,
    this.sourcePage,
    this.tags = const [],
    this.updatedAt,
    this.updatedBy,
    this.viewId,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yCompositeQuery? compositeQuery;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdBy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? extraData;

  Object? id;

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
  String? sourcePage;

  List<String> tags;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedBy;

  /// ViewID is the id of the view to replace, taken from the URL.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? viewId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11ySavedViewUpdateIn &&
    other.category == category &&
    other.compositeQuery == compositeQuery &&
    other.createdAt == createdAt &&
    other.createdBy == createdBy &&
    other.extraData == extraData &&
    other.id == id &&
    other.name == name &&
    other.sourcePage == sourcePage &&
    _deepEquality.equals(other.tags, tags) &&
    other.updatedAt == updatedAt &&
    other.updatedBy == updatedBy &&
    other.viewId == viewId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (category == null ? 0 : category!.hashCode) +
    (compositeQuery == null ? 0 : compositeQuery!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (createdBy == null ? 0 : createdBy!.hashCode) +
    (extraData == null ? 0 : extraData!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (sourcePage == null ? 0 : sourcePage!.hashCode) +
    (tags.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (updatedBy == null ? 0 : updatedBy!.hashCode) +
    (viewId == null ? 0 : viewId!.hashCode);

  @override
  String toString() => 'O11yO11ySavedViewUpdateIn[category=$category, compositeQuery=$compositeQuery, createdAt=$createdAt, createdBy=$createdBy, extraData=$extraData, id=$id, name=$name, sourcePage=$sourcePage, tags=$tags, updatedAt=$updatedAt, updatedBy=$updatedBy, viewId=$viewId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.compositeQuery != null) {
      json[r'compositeQuery'] = this.compositeQuery;
    } else {
      json[r'compositeQuery'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.createdBy != null) {
      json[r'createdBy'] = this.createdBy;
    } else {
      json[r'createdBy'] = null;
    }
    if (this.extraData != null) {
      json[r'extraData'] = this.extraData;
    } else {
      json[r'extraData'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.sourcePage != null) {
      json[r'sourcePage'] = this.sourcePage;
    } else {
      json[r'sourcePage'] = null;
    }
      json[r'tags'] = this.tags;
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.updatedBy != null) {
      json[r'updatedBy'] = this.updatedBy;
    } else {
      json[r'updatedBy'] = null;
    }
    if (this.viewId != null) {
      json[r'viewId'] = this.viewId;
    } else {
      json[r'viewId'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11ySavedViewUpdateIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11ySavedViewUpdateIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11ySavedViewUpdateIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11ySavedViewUpdateIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11ySavedViewUpdateIn(
        category: mapValueOfType<String>(json, r'category'),
        compositeQuery: O11yCompositeQuery.fromJson(json[r'compositeQuery']),
        createdAt: mapDateTime(json, r'createdAt', r''),
        createdBy: mapValueOfType<String>(json, r'createdBy'),
        extraData: mapValueOfType<String>(json, r'extraData'),
        id: mapValueOfType<Object>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        sourcePage: mapValueOfType<String>(json, r'sourcePage'),
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        updatedBy: mapValueOfType<String>(json, r'updatedBy'),
        viewId: mapValueOfType<String>(json, r'viewId'),
      );
    }
    return null;
  }

  static List<O11yO11ySavedViewUpdateIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11ySavedViewUpdateIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11ySavedViewUpdateIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11ySavedViewUpdateIn> mapFromJson(dynamic json) {
    final map = <String, O11yO11ySavedViewUpdateIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11ySavedViewUpdateIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11ySavedViewUpdateIn-objects as value to a dart map
  static Map<String, List<O11yO11ySavedViewUpdateIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11ySavedViewUpdateIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11ySavedViewUpdateIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

