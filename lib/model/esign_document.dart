//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EsignDocument {
  /// Returns a new [EsignDocument] instance.
  EsignDocument({
    this.completedAt,
    this.createdAt,
    this.externalId,
    this.fields = const [],
    this.id,
    this.message,
    this.recipients = const [],
    this.signingOrder,
    this.source_,
    this.status,
    this.subject,
    this.title,
    this.updatedAt,
  });
  /// CompletedAt is when the document sealed, in unix milliseconds; null until it does.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? completedAt;

  /// CreatedAt is when the document was uploaded, in unix milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// ExternalID is the caller's own identifier for this document, echoed back as it was given; null when none was.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  /// Fields is every field on the document, ordered by page and then by when it was placed.
  List<EsignField> fields;

  /// ID is the document id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Message is the covering message stored with the document; null when none was given. Nothing in this surface sends it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  /// Recipients is everyone on the document, ordered by signing order and then by when they were added — which is also the order a SEQUENTIAL document enforces.
  List<EsignRecipient> recipients;

  /// SigningOrder is PARALLEL or SEQUENTIAL, fixed when the document was created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? signingOrder;

  /// Source is how the document came to exist. It is DOCUMENT for everything this surface creates.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Status is DRAFT while recipients and fields may still be added, PENDING once it has gone out, then COMPLETED when every signer has finished or REJECTED if any one of them declined.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Subject is the covering subject line stored with the document; null when none was given.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  /// Title is the document's name, and the stem of the download filename.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// UpdatedAt is when the document last changed, in unix milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EsignDocument &&
    other.completedAt == completedAt &&
    other.createdAt == createdAt &&
    other.externalId == externalId &&
    _deepEquality.equals(other.fields, fields) &&
    other.id == id &&
    other.message == message &&
    _deepEquality.equals(other.recipients, recipients) &&
    other.signingOrder == signingOrder &&
    other.source_ == source_ &&
    other.status == status &&
    other.subject == subject &&
    other.title == title &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (completedAt == null ? 0 : completedAt!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (fields.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (recipients.hashCode) +
    (signingOrder == null ? 0 : signingOrder!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'EsignDocument[completedAt=$completedAt, createdAt=$createdAt, externalId=$externalId, fields=$fields, id=$id, message=$message, recipients=$recipients, signingOrder=$signingOrder, source_=$source_, status=$status, subject=$subject, title=$title, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.completedAt != null) {
      json[r'completedAt'] = this.completedAt;
    } else {
      json[r'completedAt'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.externalId != null) {
      json[r'externalId'] = this.externalId;
    } else {
      json[r'externalId'] = null;
    }
      json[r'fields'] = this.fields;
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
      json[r'recipients'] = this.recipients;
    if (this.signingOrder != null) {
      json[r'signingOrder'] = this.signingOrder;
    } else {
      json[r'signingOrder'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
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

  /// Returns a new [EsignDocument] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EsignDocument? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EsignDocument[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EsignDocument[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EsignDocument(
        completedAt: mapValueOfType<int>(json, r'completedAt'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        fields: EsignField.listFromJson(json[r'fields']),
        id: mapValueOfType<String>(json, r'id'),
        message: mapValueOfType<String>(json, r'message'),
        recipients: EsignRecipient.listFromJson(json[r'recipients']),
        signingOrder: mapValueOfType<String>(json, r'signingOrder'),
        source_: mapValueOfType<String>(json, r'source'),
        status: mapValueOfType<String>(json, r'status'),
        subject: mapValueOfType<String>(json, r'subject'),
        title: mapValueOfType<String>(json, r'title'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<EsignDocument> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EsignDocument>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EsignDocument.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EsignDocument> mapFromJson(dynamic json) {
    final map = <String, EsignDocument>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EsignDocument.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EsignDocument-objects as value to a dart map
  static Map<String, List<EsignDocument>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EsignDocument>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EsignDocument.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

