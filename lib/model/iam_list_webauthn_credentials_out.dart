//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamListWebauthnCredentialsOut {
  /// Returns a new [IamListWebauthnCredentialsOut] instance.
  IamListWebauthnCredentialsOut({
    this.webauthnCredentials = const [],
  });
  List<IamWebauthnCredential> webauthnCredentials;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamListWebauthnCredentialsOut &&
    _deepEquality.equals(other.webauthnCredentials, webauthnCredentials);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (webauthnCredentials.hashCode);

  @override
  String toString() => 'IamListWebauthnCredentialsOut[webauthnCredentials=$webauthnCredentials]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'webauthnCredentials'] = this.webauthnCredentials;
    return json;
  }

  /// Returns a new [IamListWebauthnCredentialsOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamListWebauthnCredentialsOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamListWebauthnCredentialsOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamListWebauthnCredentialsOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamListWebauthnCredentialsOut(
        webauthnCredentials: IamWebauthnCredential.listFromJson(json[r'webauthnCredentials']),
      );
    }
    return null;
  }

  static List<IamListWebauthnCredentialsOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamListWebauthnCredentialsOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamListWebauthnCredentialsOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamListWebauthnCredentialsOut> mapFromJson(dynamic json) {
    final map = <String, IamListWebauthnCredentialsOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamListWebauthnCredentialsOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamListWebauthnCredentialsOut-objects as value to a dart map
  static Map<String, List<IamListWebauthnCredentialsOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamListWebauthnCredentialsOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamListWebauthnCredentialsOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

