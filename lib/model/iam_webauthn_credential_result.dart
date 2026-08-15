//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamWebauthnCredentialResult {
  /// Returns a new [IamWebauthnCredentialResult] instance.
  IamWebauthnCredentialResult({
    this.webauthnCredential,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IamWebauthnCredential? webauthnCredential;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamWebauthnCredentialResult &&
    other.webauthnCredential == webauthnCredential;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (webauthnCredential == null ? 0 : webauthnCredential!.hashCode);

  @override
  String toString() => 'IamWebauthnCredentialResult[webauthnCredential=$webauthnCredential]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.webauthnCredential != null) {
      json[r'webauthnCredential'] = this.webauthnCredential;
    } else {
      json[r'webauthnCredential'] = null;
    }
    return json;
  }

  /// Returns a new [IamWebauthnCredentialResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamWebauthnCredentialResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamWebauthnCredentialResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamWebauthnCredentialResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamWebauthnCredentialResult(
        webauthnCredential: IamWebauthnCredential.fromJson(json[r'webauthnCredential']),
      );
    }
    return null;
  }

  static List<IamWebauthnCredentialResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamWebauthnCredentialResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamWebauthnCredentialResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamWebauthnCredentialResult> mapFromJson(dynamic json) {
    final map = <String, IamWebauthnCredentialResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamWebauthnCredentialResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamWebauthnCredentialResult-objects as value to a dart map
  static Map<String, List<IamWebauthnCredentialResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamWebauthnCredentialResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamWebauthnCredentialResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

