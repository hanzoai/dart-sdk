//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamKey {
  /// Returns a new [IamKey] instance.
  IamKey({
    this.accessKey,
    this.accessSecret,
    this.accessSecretDigest,
    this.act,
    this.application,
    this.createdAt,
    this.createdTime,
    this.deleted,
    this.displayName,
    this.expireTime,
    this.id,
    this.name,
    this.organization,
    this.owner,
    this.scope,
    this.state,
    this.type,
    this.updatedAt,
    this.updatedTime,
    this.user,
  });
  /// AccessKey (pk-*) is the publishable identifier and lookup index; AccessSecret (sk-*) is the confidential secret. AccessSecret IS NOT PERSISTED for a key minted at or after the digest change: it carries the secret out to its holder once, in the mint response, and the row keeps only AccessSecretDigest. It stays on the struct because that one-time reveal is the whole point of minting, and it stays in the schema because rows written before the change still hold a plaintext secret that the resolver drains on first use.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accessKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accessSecret;

  /// AccessSecretDigest is how a presented secret finds its key: the resolver digests what the caller sent and looks THAT up. It is what lets the row hold no plaintext and still be found in one indexed read — a salted hash cannot be looked up by value, which is the reason the plaintext was here.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accessSecretDigest;

  /// Act is the durable, opt-in grant that lets this key act FOR a user in its own org — the credential behind as(): presenting it authorizes minting a short-lived, user-bound token for a member of the key's tenant. Default false, so a server key mints nothing on anyone's behalf until the grant is set deliberately — the capability is never inherited by every key. It is confined at mint time to the key's OWN Owner, and a reserved-org or SuperAdmin target is refused, so the grant reaches only ordinary members of the one tenant that holds the key.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? act;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? application;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// CreatedTime and UpdatedTime are RFC3339 audit stamps carried as strings for byte-parity with the v1 row (orm.Model separately tracks CreatedAt / UpdatedAt as time.Time for the store's own lifecycle).
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
  bool? deleted;

  /// DisplayName is the human-facing label.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  /// ExpireTime is when the key stops being honored (empty = never). State is the lifecycle flag (\"Active\", \"test\", …); \"test\" mints test-env credentials instead of live ones.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? expireTime;

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
  String? organization;

  /// Owner is the tenant that holds the key; Name is unique within Owner.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? owner;

  /// Scope is the key's ACCESS CLASS, orthogonal to Type (which names the bound principal). Empty (the default, \"secret\") is a full key: a pk- publishable half AND a confidential sk- half, the sk- authenticating a server-side reader. KeyScopePublish is a WRITE-ONLY publishable key — a pk- half only, no secret — that resolves to just an ORG (never a principal) at the ingest door and is safe to ship in client JS. A missing value on an existing row reads as the default, so every pre-Scope key is a secret key unchanged.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scope;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  /// Type is the scope the key is bound to — \"Organization\", \"Application\", \"User\", or \"General\" — and Organization / Application / User name the concrete principal for whichever scope Type selects.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

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
  String? updatedTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamKey &&
    other.accessKey == accessKey &&
    other.accessSecret == accessSecret &&
    other.accessSecretDigest == accessSecretDigest &&
    other.act == act &&
    other.application == application &&
    other.createdAt == createdAt &&
    other.createdTime == createdTime &&
    other.deleted == deleted &&
    other.displayName == displayName &&
    other.expireTime == expireTime &&
    other.id == id &&
    other.name == name &&
    other.organization == organization &&
    other.owner == owner &&
    other.scope == scope &&
    other.state == state &&
    other.type == type &&
    other.updatedAt == updatedAt &&
    other.updatedTime == updatedTime &&
    other.user == user;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accessKey == null ? 0 : accessKey!.hashCode) +
    (accessSecret == null ? 0 : accessSecret!.hashCode) +
    (accessSecretDigest == null ? 0 : accessSecretDigest!.hashCode) +
    (act == null ? 0 : act!.hashCode) +
    (application == null ? 0 : application!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (createdTime == null ? 0 : createdTime!.hashCode) +
    (deleted == null ? 0 : deleted!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (expireTime == null ? 0 : expireTime!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (organization == null ? 0 : organization!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (state == null ? 0 : state!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (updatedTime == null ? 0 : updatedTime!.hashCode) +
    (user == null ? 0 : user!.hashCode);

  @override
  String toString() => 'IamKey[accessKey=$accessKey, accessSecret=$accessSecret, accessSecretDigest=$accessSecretDigest, act=$act, application=$application, createdAt=$createdAt, createdTime=$createdTime, deleted=$deleted, displayName=$displayName, expireTime=$expireTime, id=$id, name=$name, organization=$organization, owner=$owner, scope=$scope, state=$state, type=$type, updatedAt=$updatedAt, updatedTime=$updatedTime, user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accessKey != null) {
      json[r'accessKey'] = this.accessKey;
    } else {
      json[r'accessKey'] = null;
    }
    if (this.accessSecret != null) {
      json[r'accessSecret'] = this.accessSecret;
    } else {
      json[r'accessSecret'] = null;
    }
    if (this.accessSecretDigest != null) {
      json[r'accessSecretDigest'] = this.accessSecretDigest;
    } else {
      json[r'accessSecretDigest'] = null;
    }
    if (this.act != null) {
      json[r'act'] = this.act;
    } else {
      json[r'act'] = null;
    }
    if (this.application != null) {
      json[r'application'] = this.application;
    } else {
      json[r'application'] = null;
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
    if (this.deleted != null) {
      json[r'deleted'] = this.deleted;
    } else {
      json[r'deleted'] = null;
    }
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.expireTime != null) {
      json[r'expireTime'] = this.expireTime;
    } else {
      json[r'expireTime'] = null;
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
    if (this.organization != null) {
      json[r'organization'] = this.organization;
    } else {
      json[r'organization'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.updatedTime != null) {
      json[r'updatedTime'] = this.updatedTime;
    } else {
      json[r'updatedTime'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    return json;
  }

  /// Returns a new [IamKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamKey(
        accessKey: mapValueOfType<String>(json, r'accessKey'),
        accessSecret: mapValueOfType<String>(json, r'accessSecret'),
        accessSecretDigest: mapValueOfType<String>(json, r'accessSecretDigest'),
        act: mapValueOfType<bool>(json, r'act'),
        application: mapValueOfType<String>(json, r'application'),
        createdAt: mapDateTime(json, r'createdAt', r''),
        createdTime: mapValueOfType<String>(json, r'createdTime'),
        deleted: mapValueOfType<bool>(json, r'deleted'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        expireTime: mapValueOfType<String>(json, r'expireTime'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        organization: mapValueOfType<String>(json, r'organization'),
        owner: mapValueOfType<String>(json, r'owner'),
        scope: mapValueOfType<String>(json, r'scope'),
        state: mapValueOfType<String>(json, r'state'),
        type: mapValueOfType<String>(json, r'type'),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        updatedTime: mapValueOfType<String>(json, r'updatedTime'),
        user: mapValueOfType<String>(json, r'user'),
      );
    }
    return null;
  }

  static List<IamKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamKey> mapFromJson(dynamic json) {
    final map = <String, IamKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamKey-objects as value to a dart map
  static Map<String, List<IamKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

