//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SignRequest {
  /// Returns a new [SignRequest] instance.
  SignRequest({
    this.id,
    this.signers = const [],
  });

  /// ID is the document to send for signature, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Signers are the people who must sign, by name and email. At least one is required.
  List<LegalSigner> signers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SignRequest &&
    other.id == id &&
    _deepEquality.equals(other.signers, signers);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (signers.hashCode);

  @override
  String toString() => 'SignRequest[id=$id, signers=$signers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'signers'] = this.signers;
    return json;
  }

  /// Returns a new [SignRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SignRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SignRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SignRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SignRequest(
        id: mapValueOfType<String>(json, r'id'),
        signers: LegalSigner.listFromJson(json[r'signers']),
      );
    }
    return null;
  }

  static List<SignRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SignRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SignRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SignRequest> mapFromJson(dynamic json) {
    final map = <String, SignRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SignRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SignRequest-objects as value to a dart map
  static Map<String, List<SignRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SignRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SignRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

