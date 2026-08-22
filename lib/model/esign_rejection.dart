//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EsignRejection {
  /// Returns a new [EsignRejection] instance.
  EsignRejection({
    this.recipientId,
    this.status,
  });
  /// RecipientID is the recipient who declined.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? recipientId;

  /// Status is REJECTED — one declining signer ends the document for everyone, and there is no route back.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EsignRejection &&
    other.recipientId == recipientId &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (recipientId == null ? 0 : recipientId!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'EsignRejection[recipientId=$recipientId, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.recipientId != null) {
      json[r'recipientId'] = this.recipientId;
    } else {
      json[r'recipientId'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [EsignRejection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EsignRejection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EsignRejection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EsignRejection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EsignRejection(
        recipientId: mapValueOfType<String>(json, r'recipientId'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<EsignRejection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EsignRejection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EsignRejection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EsignRejection> mapFromJson(dynamic json) {
    final map = <String, EsignRejection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EsignRejection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EsignRejection-objects as value to a dart map
  static Map<String, List<EsignRejection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EsignRejection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EsignRejection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

