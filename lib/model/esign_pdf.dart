//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EsignPDF {
  /// Returns a new [EsignPDF] instance.
  EsignPDF({
    this.filename,
    this.id,
    this.pdfBase64,
    this.sealed_,
    this.status,
  });
  /// Filename is the name to save it under, built from the title and marked _signed once it is sealed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filename;

  /// ID is the document this PDF was rendered from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// PdfBase64 is the PDF itself, base64-encoded. There is one field either way, so Sealed is what tells you which artifact you are holding.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pdfBase64;

  /// Sealed is whether this is the SEALED artifact — the field values rendered onto the page and a real x509 PKCS#7 signature applied — rather than the original upload.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? sealed_;

  /// Status is the document's state at the moment it was read.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EsignPDF &&
    other.filename == filename &&
    other.id == id &&
    other.pdfBase64 == pdfBase64 &&
    other.sealed_ == sealed_ &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (filename == null ? 0 : filename!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (pdfBase64 == null ? 0 : pdfBase64!.hashCode) +
    (sealed_ == null ? 0 : sealed_!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'EsignPDF[filename=$filename, id=$id, pdfBase64=$pdfBase64, sealed_=$sealed_, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.filename != null) {
      json[r'filename'] = this.filename;
    } else {
      json[r'filename'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.pdfBase64 != null) {
      json[r'pdfBase64'] = this.pdfBase64;
    } else {
      json[r'pdfBase64'] = null;
    }
    if (this.sealed_ != null) {
      json[r'sealed'] = this.sealed_;
    } else {
      json[r'sealed'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [EsignPDF] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EsignPDF? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EsignPDF[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EsignPDF[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EsignPDF(
        filename: mapValueOfType<String>(json, r'filename'),
        id: mapValueOfType<String>(json, r'id'),
        pdfBase64: mapValueOfType<String>(json, r'pdfBase64'),
        sealed_: mapValueOfType<bool>(json, r'sealed'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<EsignPDF> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EsignPDF>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EsignPDF.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EsignPDF> mapFromJson(dynamic json) {
    final map = <String, EsignPDF>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EsignPDF.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EsignPDF-objects as value to a dart map
  static Map<String, List<EsignPDF>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EsignPDF>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EsignPDF.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

