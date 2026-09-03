//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EsignRecipient {
  /// Returns a new [EsignRecipient] instance.
  EsignRecipient({
    this.email,
    this.id,
    this.name,
    this.readStatus,
    this.rejectionReason,
    this.role,
    this.sendStatus,
    this.signedAt,
    this.signingOrder,
    this.signingStatus,
  });
  /// Email is where this recipient's signing link is meant to go, lower-cased.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// ID is the recipient id, which is what a field is placed against.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Name is the recipient's display name, empty when none was given.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// ReadStatus is NOT_OPENED until they first open their link, then OPENED.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? readStatus;

  /// RejectionReason is why they declined, null unless they did.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rejectionReason;

  /// Role is SIGNER, CC, VIEWER, APPROVER or ASSISTANT. A document waits only for its SIGNERs and APPROVERs before it can seal.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? role;

  /// SendStatus is NOT_SENT until the document goes out, then SENT. A CC recipient is SENT from the moment they are added.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sendStatus;

  /// SignedAt is when they finished or declined, in unix milliseconds; null while neither has happened.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? signedAt;

  /// SigningOrder is their position in a SEQUENTIAL document, null when they were added without one. A PARALLEL document ignores it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? signingOrder;

  /// SigningStatus is NOT_SIGNED, SIGNED or REJECTED. A CC recipient is SIGNED from the moment they are added, because they are never asked.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? signingStatus;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EsignRecipient &&
    other.email == email &&
    other.id == id &&
    other.name == name &&
    other.readStatus == readStatus &&
    other.rejectionReason == rejectionReason &&
    other.role == role &&
    other.sendStatus == sendStatus &&
    other.signedAt == signedAt &&
    other.signingOrder == signingOrder &&
    other.signingStatus == signingStatus;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email == null ? 0 : email!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (readStatus == null ? 0 : readStatus!.hashCode) +
    (rejectionReason == null ? 0 : rejectionReason!.hashCode) +
    (role == null ? 0 : role!.hashCode) +
    (sendStatus == null ? 0 : sendStatus!.hashCode) +
    (signedAt == null ? 0 : signedAt!.hashCode) +
    (signingOrder == null ? 0 : signingOrder!.hashCode) +
    (signingStatus == null ? 0 : signingStatus!.hashCode);

  @override
  String toString() => 'EsignRecipient[email=$email, id=$id, name=$name, readStatus=$readStatus, rejectionReason=$rejectionReason, role=$role, sendStatus=$sendStatus, signedAt=$signedAt, signingOrder=$signingOrder, signingStatus=$signingStatus]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.readStatus != null) {
      json[r'readStatus'] = this.readStatus;
    } else {
      json[r'readStatus'] = null;
    }
    if (this.rejectionReason != null) {
      json[r'rejectionReason'] = this.rejectionReason;
    } else {
      json[r'rejectionReason'] = null;
    }
    if (this.role != null) {
      json[r'role'] = this.role;
    } else {
      json[r'role'] = null;
    }
    if (this.sendStatus != null) {
      json[r'sendStatus'] = this.sendStatus;
    } else {
      json[r'sendStatus'] = null;
    }
    if (this.signedAt != null) {
      json[r'signedAt'] = this.signedAt;
    } else {
      json[r'signedAt'] = null;
    }
    if (this.signingOrder != null) {
      json[r'signingOrder'] = this.signingOrder;
    } else {
      json[r'signingOrder'] = null;
    }
    if (this.signingStatus != null) {
      json[r'signingStatus'] = this.signingStatus;
    } else {
      json[r'signingStatus'] = null;
    }
    return json;
  }

  /// Returns a new [EsignRecipient] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EsignRecipient? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EsignRecipient[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EsignRecipient[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EsignRecipient(
        email: mapValueOfType<String>(json, r'email'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        readStatus: mapValueOfType<String>(json, r'readStatus'),
        rejectionReason: mapValueOfType<String>(json, r'rejectionReason'),
        role: mapValueOfType<String>(json, r'role'),
        sendStatus: mapValueOfType<String>(json, r'sendStatus'),
        signedAt: mapValueOfType<int>(json, r'signedAt'),
        signingOrder: mapValueOfType<double>(json, r'signingOrder'),
        signingStatus: mapValueOfType<String>(json, r'signingStatus'),
      );
    }
    return null;
  }

  static List<EsignRecipient> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EsignRecipient>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EsignRecipient.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EsignRecipient> mapFromJson(dynamic json) {
    final map = <String, EsignRecipient>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EsignRecipient.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EsignRecipient-objects as value to a dart map
  static Map<String, List<EsignRecipient>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EsignRecipient>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EsignRecipient.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

