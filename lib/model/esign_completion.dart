//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EsignCompletion {
  /// Returns a new [EsignCompletion] instance.
  EsignCompletion({
    this.documentStatus,
    this.recipientId,
    this.sealed_,
  });
  /// DocumentStatus is COMPLETED when this was the last signature and the document sealed here, PENDING while others have still to sign.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? documentStatus;

  /// RecipientID is the recipient who finished.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? recipientId;

  /// Sealed is whether the document sealed on this call — the field values rendered onto the PDF and a real x509 PKCS#7 signature applied.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? sealed_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EsignCompletion &&
    other.documentStatus == documentStatus &&
    other.recipientId == recipientId &&
    other.sealed_ == sealed_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (documentStatus == null ? 0 : documentStatus!.hashCode) +
    (recipientId == null ? 0 : recipientId!.hashCode) +
    (sealed_ == null ? 0 : sealed_!.hashCode);

  @override
  String toString() => 'EsignCompletion[documentStatus=$documentStatus, recipientId=$recipientId, sealed_=$sealed_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.documentStatus != null) {
      json[r'documentStatus'] = this.documentStatus;
    } else {
      json[r'documentStatus'] = null;
    }
    if (this.recipientId != null) {
      json[r'recipientId'] = this.recipientId;
    } else {
      json[r'recipientId'] = null;
    }
    if (this.sealed_ != null) {
      json[r'sealed'] = this.sealed_;
    } else {
      json[r'sealed'] = null;
    }
    return json;
  }

  /// Returns a new [EsignCompletion] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EsignCompletion? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EsignCompletion[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EsignCompletion[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EsignCompletion(
        documentStatus: mapValueOfType<String>(json, r'documentStatus'),
        recipientId: mapValueOfType<String>(json, r'recipientId'),
        sealed_: mapValueOfType<bool>(json, r'sealed'),
      );
    }
    return null;
  }

  static List<EsignCompletion> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EsignCompletion>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EsignCompletion.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EsignCompletion> mapFromJson(dynamic json) {
    final map = <String, EsignCompletion>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EsignCompletion.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EsignCompletion-objects as value to a dart map
  static Map<String, List<EsignCompletion>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EsignCompletion>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EsignCompletion.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

