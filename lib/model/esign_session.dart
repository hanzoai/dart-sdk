//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EsignSession {
  /// Returns a new [EsignSession] instance.
  EsignSession({
    this.document,
    this.fields = const [],
    this.pdfBase64,
    this.recipient,
  });
  /// Document is what is being signed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EsignState? document;

  /// Fields is only the fields this recipient must fill — never another party's, so the layout a signer sees cannot reveal what anyone else was asked for.
  List<EsignField> fields;

  /// PdfBase64 is the PDF to display, base64-encoded. Null when the document's stored bytes are missing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pdfBase64;

  /// Recipient is who the token says you are.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EsignSigner? recipient;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EsignSession &&
    other.document == document &&
    _deepEquality.equals(other.fields, fields) &&
    other.pdfBase64 == pdfBase64 &&
    other.recipient == recipient;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (document == null ? 0 : document!.hashCode) +
    (fields.hashCode) +
    (pdfBase64 == null ? 0 : pdfBase64!.hashCode) +
    (recipient == null ? 0 : recipient!.hashCode);

  @override
  String toString() => 'EsignSession[document=$document, fields=$fields, pdfBase64=$pdfBase64, recipient=$recipient]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.document != null) {
      json[r'document'] = this.document;
    } else {
      json[r'document'] = null;
    }
      json[r'fields'] = this.fields;
    if (this.pdfBase64 != null) {
      json[r'pdfBase64'] = this.pdfBase64;
    } else {
      json[r'pdfBase64'] = null;
    }
    if (this.recipient != null) {
      json[r'recipient'] = this.recipient;
    } else {
      json[r'recipient'] = null;
    }
    return json;
  }

  /// Returns a new [EsignSession] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EsignSession? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EsignSession[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EsignSession[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EsignSession(
        document: EsignState.fromJson(json[r'document']),
        fields: EsignField.listFromJson(json[r'fields']),
        pdfBase64: mapValueOfType<String>(json, r'pdfBase64'),
        recipient: EsignSigner.fromJson(json[r'recipient']),
      );
    }
    return null;
  }

  static List<EsignSession> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EsignSession>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EsignSession.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EsignSession> mapFromJson(dynamic json) {
    final map = <String, EsignSession>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EsignSession.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EsignSession-objects as value to a dart map
  static Map<String, List<EsignSession>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EsignSession>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EsignSession.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

