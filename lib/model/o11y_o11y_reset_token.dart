//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yResetToken {
  /// Returns a new [O11yO11yResetToken] instance.
  O11yO11yResetToken({
    this.expiresAt,
    this.id,
    this.passwordId,
    this.token,
  });
  /// ExpiresAt is when it stops working.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? expiresAt;

  /// ID is the grant's id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// PasswordID is the password record it resets.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? passwordId;

  /// Token is the secret that redeems it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? token;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yResetToken &&
    other.expiresAt == expiresAt &&
    other.id == id &&
    other.passwordId == passwordId &&
    other.token == token;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (passwordId == null ? 0 : passwordId!.hashCode) +
    (token == null ? 0 : token!.hashCode);

  @override
  String toString() => 'O11yO11yResetToken[expiresAt=$expiresAt, id=$id, passwordId=$passwordId, token=$token]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt!.toUtc().toIso8601String();
    } else {
      json[r'expiresAt'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.passwordId != null) {
      json[r'passwordId'] = this.passwordId;
    } else {
      json[r'passwordId'] = null;
    }
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yResetToken] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yResetToken? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yResetToken[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yResetToken[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yResetToken(
        expiresAt: mapDateTime(json, r'expiresAt', r''),
        id: mapValueOfType<String>(json, r'id'),
        passwordId: mapValueOfType<String>(json, r'passwordId'),
        token: mapValueOfType<String>(json, r'token'),
      );
    }
    return null;
  }

  static List<O11yO11yResetToken> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yResetToken>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yResetToken.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yResetToken> mapFromJson(dynamic json) {
    final map = <String, O11yO11yResetToken>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yResetToken.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yResetToken-objects as value to a dart map
  static Map<String, List<O11yO11yResetToken>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yResetToken>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yResetToken.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

