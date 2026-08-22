//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EsignUploadIn {
  /// Returns a new [EsignUploadIn] instance.
  EsignUploadIn({
    this.externalId,
    this.message,
    this.pdfBase64,
    this.signingOrder,
    this.subject,
    this.title,
  });
  Object? externalId;

  Object? message;

  Object? pdfBase64;

  Object? signingOrder;

  Object? subject;

  Object? title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EsignUploadIn &&
    other.externalId == externalId &&
    other.message == message &&
    other.pdfBase64 == pdfBase64 &&
    other.signingOrder == signingOrder &&
    other.subject == subject &&
    other.title == title;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (externalId == null ? 0 : externalId!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (pdfBase64 == null ? 0 : pdfBase64!.hashCode) +
    (signingOrder == null ? 0 : signingOrder!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (title == null ? 0 : title!.hashCode);

  @override
  String toString() => 'EsignUploadIn[externalId=$externalId, message=$message, pdfBase64=$pdfBase64, signingOrder=$signingOrder, subject=$subject, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.externalId != null) {
      json[r'externalId'] = this.externalId;
    } else {
      json[r'externalId'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.pdfBase64 != null) {
      json[r'pdfBase64'] = this.pdfBase64;
    } else {
      json[r'pdfBase64'] = null;
    }
    if (this.signingOrder != null) {
      json[r'signingOrder'] = this.signingOrder;
    } else {
      json[r'signingOrder'] = null;
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
    return json;
  }

  /// Returns a new [EsignUploadIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EsignUploadIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EsignUploadIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EsignUploadIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EsignUploadIn(
        externalId: mapValueOfType<Object>(json, r'externalId'),
        message: mapValueOfType<Object>(json, r'message'),
        pdfBase64: mapValueOfType<Object>(json, r'pdfBase64'),
        signingOrder: mapValueOfType<Object>(json, r'signingOrder'),
        subject: mapValueOfType<Object>(json, r'subject'),
        title: mapValueOfType<Object>(json, r'title'),
      );
    }
    return null;
  }

  static List<EsignUploadIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EsignUploadIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EsignUploadIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EsignUploadIn> mapFromJson(dynamic json) {
    final map = <String, EsignUploadIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EsignUploadIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EsignUploadIn-objects as value to a dart map
  static Map<String, List<EsignUploadIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EsignUploadIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EsignUploadIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

