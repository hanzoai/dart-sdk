//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DocumentSummary {
  /// Returns a new [DocumentSummary] instance.
  DocumentSummary({
    this.category,
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

  /// Category is the template's category: formation, equity, ops or sales.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  /// CreatedAt is when the document was generated, in unix seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// EsignProvider names the e-signature provider handling it, absent until a signature has been requested.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? esignProvider;

  /// ID is the document's server-minted handle, \"doc_\"-prefixed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// SignedAt is when the provider reported completion, in unix seconds. Absent until then.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? signedAt;

  /// Status is the lifecycle state: draft, out_for_signature, signed or voided. There is deliberately no \"legally valid\" state — that is counsel's determination, not the platform's.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// TemplateID is the template it was rendered from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? templateId;

  /// TemplateVersion is WHICH version of that template rendered it, so the document is reproducible and auditable.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? templateVersion;

  /// Title is the document's title, inherited from the template.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// UpdatedAt is when it last changed, in unix seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DocumentSummary &&
    other.category == category &&
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
    (category == null ? 0 : category!.hashCode) +
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
  String toString() => 'DocumentSummary[category=$category, createdAt=$createdAt, esignProvider=$esignProvider, id=$id, signedAt=$signedAt, status=$status, templateId=$templateId, templateVersion=$templateVersion, title=$title, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
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

  /// Returns a new [DocumentSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DocumentSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DocumentSummary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DocumentSummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DocumentSummary(
        category: mapValueOfType<String>(json, r'category'),
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

  static List<DocumentSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DocumentSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DocumentSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DocumentSummary> mapFromJson(dynamic json) {
    final map = <String, DocumentSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DocumentSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DocumentSummary-objects as value to a dart map
  static Map<String, List<DocumentSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DocumentSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DocumentSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

