//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SignReply {
  /// Returns a new [SignReply] instance.
  SignReply({
    this.document,
    this.esignRef,
    this.provider,
  });
  /// Document is the document, now out for signature. Its rendered body is not repeated here.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DocumentSummary? document;

  /// EsignRef is the provider's own reference for the request — what a webhook or a status poll quotes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? esignRef;

  /// Provider names the e-signature provider that took the request. \"manual\" means no provider is wired on this deployment and the org fulfils it out of band.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SignReply &&
    other.document == document &&
    other.esignRef == esignRef &&
    other.provider == provider;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (document == null ? 0 : document!.hashCode) +
    (esignRef == null ? 0 : esignRef!.hashCode) +
    (provider == null ? 0 : provider!.hashCode);

  @override
  String toString() => 'SignReply[document=$document, esignRef=$esignRef, provider=$provider]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.document != null) {
      json[r'document'] = this.document;
    } else {
      json[r'document'] = null;
    }
    if (this.esignRef != null) {
      json[r'esignRef'] = this.esignRef;
    } else {
      json[r'esignRef'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    return json;
  }

  /// Returns a new [SignReply] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SignReply? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SignReply[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SignReply[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SignReply(
        document: DocumentSummary.fromJson(json[r'document']),
        esignRef: mapValueOfType<String>(json, r'esignRef'),
        provider: mapValueOfType<String>(json, r'provider'),
      );
    }
    return null;
  }

  static List<SignReply> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SignReply>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SignReply.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SignReply> mapFromJson(dynamic json) {
    final map = <String, SignReply>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SignReply.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SignReply-objects as value to a dart map
  static Map<String, List<SignReply>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SignReply>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SignReply.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

