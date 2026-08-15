//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamWebauthnCredential {
  /// Returns a new [IamWebauthnCredential] instance.
  IamWebauthnCredential({
    this.aaguid,
    this.attachment,
    this.attestationType,
    this.backupEligible,
    this.backupState,
    this.cloneWarning,
    this.createdAt,
    this.createdTime,
    this.credentialId,
    this.deleted,
    this.id,
    this.name,
    this.owner,
    this.publicKey,
    this.signCount,
    this.transport = const [],
    this.updatedAt,
    this.user,
    this.userPresent,
    this.userVerified,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? aaguid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? attachment;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? attestationType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? backupEligible;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? backupState;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? cloneWarning;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? credentialId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deleted;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? publicKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? signCount;

  List<String> transport;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? user;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? userPresent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? userVerified;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamWebauthnCredential &&
    other.aaguid == aaguid &&
    other.attachment == attachment &&
    other.attestationType == attestationType &&
    other.backupEligible == backupEligible &&
    other.backupState == backupState &&
    other.cloneWarning == cloneWarning &&
    other.createdAt == createdAt &&
    other.createdTime == createdTime &&
    other.credentialId == credentialId &&
    other.deleted == deleted &&
    other.id == id &&
    other.name == name &&
    other.owner == owner &&
    other.publicKey == publicKey &&
    other.signCount == signCount &&
    _deepEquality.equals(other.transport, transport) &&
    other.updatedAt == updatedAt &&
    other.user == user &&
    other.userPresent == userPresent &&
    other.userVerified == userVerified;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (aaguid == null ? 0 : aaguid!.hashCode) +
    (attachment == null ? 0 : attachment!.hashCode) +
    (attestationType == null ? 0 : attestationType!.hashCode) +
    (backupEligible == null ? 0 : backupEligible!.hashCode) +
    (backupState == null ? 0 : backupState!.hashCode) +
    (cloneWarning == null ? 0 : cloneWarning!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (createdTime == null ? 0 : createdTime!.hashCode) +
    (credentialId == null ? 0 : credentialId!.hashCode) +
    (deleted == null ? 0 : deleted!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (publicKey == null ? 0 : publicKey!.hashCode) +
    (signCount == null ? 0 : signCount!.hashCode) +
    (transport.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (user == null ? 0 : user!.hashCode) +
    (userPresent == null ? 0 : userPresent!.hashCode) +
    (userVerified == null ? 0 : userVerified!.hashCode);

  @override
  String toString() => 'IamWebauthnCredential[aaguid=$aaguid, attachment=$attachment, attestationType=$attestationType, backupEligible=$backupEligible, backupState=$backupState, cloneWarning=$cloneWarning, createdAt=$createdAt, createdTime=$createdTime, credentialId=$credentialId, deleted=$deleted, id=$id, name=$name, owner=$owner, publicKey=$publicKey, signCount=$signCount, transport=$transport, updatedAt=$updatedAt, user=$user, userPresent=$userPresent, userVerified=$userVerified]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.aaguid != null) {
      json[r'aaguid'] = this.aaguid;
    } else {
      json[r'aaguid'] = null;
    }
    if (this.attachment != null) {
      json[r'attachment'] = this.attachment;
    } else {
      json[r'attachment'] = null;
    }
    if (this.attestationType != null) {
      json[r'attestationType'] = this.attestationType;
    } else {
      json[r'attestationType'] = null;
    }
    if (this.backupEligible != null) {
      json[r'backupEligible'] = this.backupEligible;
    } else {
      json[r'backupEligible'] = null;
    }
    if (this.backupState != null) {
      json[r'backupState'] = this.backupState;
    } else {
      json[r'backupState'] = null;
    }
    if (this.cloneWarning != null) {
      json[r'cloneWarning'] = this.cloneWarning;
    } else {
      json[r'cloneWarning'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.createdTime != null) {
      json[r'createdTime'] = this.createdTime;
    } else {
      json[r'createdTime'] = null;
    }
    if (this.credentialId != null) {
      json[r'credentialId'] = this.credentialId;
    } else {
      json[r'credentialId'] = null;
    }
    if (this.deleted != null) {
      json[r'deleted'] = this.deleted;
    } else {
      json[r'deleted'] = null;
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
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.publicKey != null) {
      json[r'publicKey'] = this.publicKey;
    } else {
      json[r'publicKey'] = null;
    }
    if (this.signCount != null) {
      json[r'signCount'] = this.signCount;
    } else {
      json[r'signCount'] = null;
    }
      json[r'transport'] = this.transport;
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    if (this.userPresent != null) {
      json[r'userPresent'] = this.userPresent;
    } else {
      json[r'userPresent'] = null;
    }
    if (this.userVerified != null) {
      json[r'userVerified'] = this.userVerified;
    } else {
      json[r'userVerified'] = null;
    }
    return json;
  }

  /// Returns a new [IamWebauthnCredential] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamWebauthnCredential? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamWebauthnCredential[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamWebauthnCredential[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamWebauthnCredential(
        aaguid: mapValueOfType<String>(json, r'aaguid'),
        attachment: mapValueOfType<String>(json, r'attachment'),
        attestationType: mapValueOfType<String>(json, r'attestationType'),
        backupEligible: mapValueOfType<bool>(json, r'backupEligible'),
        backupState: mapValueOfType<bool>(json, r'backupState'),
        cloneWarning: mapValueOfType<bool>(json, r'cloneWarning'),
        createdAt: mapDateTime(json, r'createdAt', r''),
        createdTime: mapValueOfType<String>(json, r'createdTime'),
        credentialId: mapValueOfType<String>(json, r'credentialId'),
        deleted: mapValueOfType<bool>(json, r'deleted'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        owner: mapValueOfType<String>(json, r'owner'),
        publicKey: mapValueOfType<String>(json, r'publicKey'),
        signCount: mapValueOfType<int>(json, r'signCount'),
        transport: json[r'transport'] is Iterable
            ? (json[r'transport'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        user: mapValueOfType<String>(json, r'user'),
        userPresent: mapValueOfType<bool>(json, r'userPresent'),
        userVerified: mapValueOfType<bool>(json, r'userVerified'),
      );
    }
    return null;
  }

  static List<IamWebauthnCredential> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamWebauthnCredential>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamWebauthnCredential.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamWebauthnCredential> mapFromJson(dynamic json) {
    final map = <String, IamWebauthnCredential>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamWebauthnCredential.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamWebauthnCredential-objects as value to a dart map
  static Map<String, List<IamWebauthnCredential>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamWebauthnCredential>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamWebauthnCredential.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

