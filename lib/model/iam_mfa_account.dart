//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamMfaAccount {
  /// Returns a new [IamMfaAccount] instance.
  IamMfaAccount({
    this.accountName,
    this.issuer,
    this.origin,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? issuer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? origin;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamMfaAccount &&
    other.accountName == accountName &&
    other.issuer == issuer &&
    other.origin == origin;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountName == null ? 0 : accountName!.hashCode) +
    (issuer == null ? 0 : issuer!.hashCode) +
    (origin == null ? 0 : origin!.hashCode);

  @override
  String toString() => 'IamMfaAccount[accountName=$accountName, issuer=$issuer, origin=$origin]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accountName != null) {
      json[r'accountName'] = this.accountName;
    } else {
      json[r'accountName'] = null;
    }
    if (this.issuer != null) {
      json[r'issuer'] = this.issuer;
    } else {
      json[r'issuer'] = null;
    }
    if (this.origin != null) {
      json[r'origin'] = this.origin;
    } else {
      json[r'origin'] = null;
    }
    return json;
  }

  /// Returns a new [IamMfaAccount] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamMfaAccount? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamMfaAccount[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamMfaAccount[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamMfaAccount(
        accountName: mapValueOfType<String>(json, r'accountName'),
        issuer: mapValueOfType<String>(json, r'issuer'),
        origin: mapValueOfType<String>(json, r'origin'),
      );
    }
    return null;
  }

  static List<IamMfaAccount> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamMfaAccount>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamMfaAccount.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamMfaAccount> mapFromJson(dynamic json) {
    final map = <String, IamMfaAccount>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamMfaAccount.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamMfaAccount-objects as value to a dart map
  static Map<String, List<IamMfaAccount>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamMfaAccount>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamMfaAccount.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

