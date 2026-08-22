//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EsignLink {
  /// Returns a new [EsignLink] instance.
  EsignLink({
    this.email,
    this.recipientId,
    this.role,
    this.signingPath,
    this.token,
  });
  /// Email is the address this link is meant for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// RecipientID is the recipient the link identifies.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? recipientId;

  /// Role is their role — only a SIGNER or an APPROVER gets a link, because only they are asked to act.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? role;

  /// SigningPath is the tail of the address to send them, relative to wherever the signing page is served.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? signingPath;

  /// Token is the crypto-random signing capability. It is the entire credential, so treat it as a secret and give each one only to the recipient it names.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? token;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EsignLink &&
    other.email == email &&
    other.recipientId == recipientId &&
    other.role == role &&
    other.signingPath == signingPath &&
    other.token == token;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email == null ? 0 : email!.hashCode) +
    (recipientId == null ? 0 : recipientId!.hashCode) +
    (role == null ? 0 : role!.hashCode) +
    (signingPath == null ? 0 : signingPath!.hashCode) +
    (token == null ? 0 : token!.hashCode);

  @override
  String toString() => 'EsignLink[email=$email, recipientId=$recipientId, role=$role, signingPath=$signingPath, token=$token]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.recipientId != null) {
      json[r'recipientId'] = this.recipientId;
    } else {
      json[r'recipientId'] = null;
    }
    if (this.role != null) {
      json[r'role'] = this.role;
    } else {
      json[r'role'] = null;
    }
    if (this.signingPath != null) {
      json[r'signingPath'] = this.signingPath;
    } else {
      json[r'signingPath'] = null;
    }
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
    return json;
  }

  /// Returns a new [EsignLink] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EsignLink? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EsignLink[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EsignLink[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EsignLink(
        email: mapValueOfType<String>(json, r'email'),
        recipientId: mapValueOfType<String>(json, r'recipientId'),
        role: mapValueOfType<String>(json, r'role'),
        signingPath: mapValueOfType<String>(json, r'signingPath'),
        token: mapValueOfType<String>(json, r'token'),
      );
    }
    return null;
  }

  static List<EsignLink> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EsignLink>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EsignLink.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EsignLink> mapFromJson(dynamic json) {
    final map = <String, EsignLink>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EsignLink.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EsignLink-objects as value to a dart map
  static Map<String, List<EsignLink>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EsignLink>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EsignLink.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

