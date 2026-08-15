//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DocumentView {
  /// Returns a new [DocumentView] instance.
  DocumentView({
    this.body,
    this.category,
    this.contentType,
    this.createdAt,
    this.esignProvider,
    this.id,
    this.signedAt,
    this.status,
    this.templateId,
    this.templateVersion,
    this.title,
    this.updatedAt,
  });

  /// Body is the rendered document. It is sealed at rest and returned only to the owning org. When the template is counsel-review it opens with the counsel notice, which the engine prepends and no caller can suppress.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? body;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  /// ContentType is the rendered body's media type — text/markdown.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contentType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? esignProvider;

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
  int? signedAt;

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
  String? templateId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? templateVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DocumentView &&
    other.body == body &&
    other.category == category &&
    other.contentType == contentType &&
    other.createdAt == createdAt &&
    other.esignProvider == esignProvider &&
    other.id == id &&
    other.signedAt == signedAt &&
    other.status == status &&
    other.templateId == templateId &&
    other.templateVersion == templateVersion &&
    other.title == title &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (body == null ? 0 : body!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (contentType == null ? 0 : contentType!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (esignProvider == null ? 0 : esignProvider!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (signedAt == null ? 0 : signedAt!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (templateId == null ? 0 : templateId!.hashCode) +
    (templateVersion == null ? 0 : templateVersion!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'DocumentView[body=$body, category=$category, contentType=$contentType, createdAt=$createdAt, esignProvider=$esignProvider, id=$id, signedAt=$signedAt, status=$status, templateId=$templateId, templateVersion=$templateVersion, title=$title, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.body != null) {
      json[r'body'] = this.body;
    } else {
      json[r'body'] = null;
    }
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.contentType != null) {
      json[r'contentType'] = this.contentType;
    } else {
      json[r'contentType'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.esignProvider != null) {
      json[r'esignProvider'] = this.esignProvider;
    } else {
      json[r'esignProvider'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.signedAt != null) {
      json[r'signedAt'] = this.signedAt;
    } else {
      json[r'signedAt'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.templateId != null) {
      json[r'templateId'] = this.templateId;
    } else {
      json[r'templateId'] = null;
    }
    if (this.templateVersion != null) {
      json[r'templateVersion'] = this.templateVersion;
    } else {
      json[r'templateVersion'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [DocumentView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DocumentView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DocumentView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DocumentView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DocumentView(
        body: mapValueOfType<String>(json, r'body'),
        category: mapValueOfType<String>(json, r'category'),
        contentType: mapValueOfType<String>(json, r'contentType'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        esignProvider: mapValueOfType<String>(json, r'esignProvider'),
        id: mapValueOfType<String>(json, r'id'),
        signedAt: mapValueOfType<int>(json, r'signedAt'),
        status: mapValueOfType<String>(json, r'status'),
        templateId: mapValueOfType<String>(json, r'templateId'),
        templateVersion: mapValueOfType<int>(json, r'templateVersion'),
        title: mapValueOfType<String>(json, r'title'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<DocumentView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DocumentView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DocumentView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DocumentView> mapFromJson(dynamic json) {
    final map = <String, DocumentView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DocumentView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DocumentView-objects as value to a dart map
  static Map<String, List<DocumentView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DocumentView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DocumentView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

