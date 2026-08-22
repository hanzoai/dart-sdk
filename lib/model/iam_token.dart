//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamToken {
  /// Returns a new [IamToken] instance.
  IamToken({
    this.accessToken,
    this.accessTokenHash,
    this.application,
    this.code,
    this.codeChallenge,
    this.codeChallengeMethod,
    this.codeExpireIn,
    this.codeIsUsed,
    this.createdAt,
    this.createdTime,
    this.deleted,
    this.expiresIn,
    this.id,
    this.name,
    this.nonce,
    this.organization,
    this.owner,
    this.publicGrant,
    this.redirectUri,
    this.refreshConsumed,
    this.refreshExpireIn,
    this.refreshFamily,
    this.refreshToken,
    this.refreshTokenHash,
    this.resource,
    this.scope,
    this.tokenType,
    this.updatedAt,
    this.user,
    this.userCode,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accessToken;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accessTokenHash;

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
  String? code;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? codeChallenge;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? codeChallengeMethod;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? codeExpireIn;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? codeIsUsed;

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
  bool? deleted;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expiresIn;

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

  /// Nonce is the OIDC authorize nonce, stored on the code and echoed into the id_token minted at the exchange (OIDC Core §3.1.3.6) so a relying party binds the id_token to its own request and detects replay.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nonce;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? organization;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? owner;

  /// PublicGrant records that this grant was established WITHOUT client authentication — a PKCE code exchange from a client that presented no secret. Whether a client is confidential is a property of the GRANT, not only of the registration: `hanzo-cli` and every @hanzo/iam SPA keep a registered secret for a BACKEND path while the surface that actually signs in is a public PKCE client that cannot hold one. authorizationCodeGrant already makes exactly that bounded relaxation; this is the same fact, recorded so refreshTokenGrant can honour it instead of demanding a secret the client never had (which 401s invalid_client and kills the session at the access token's expiry). Carried across rotation, so the second refresh behaves like the first.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? publicGrant;

  /// RedirectUri binds the authorization code to the exact redirect URI of the authorize request (RFC 6749 §4.1.3): the token endpoint refuses a code redeemed with a different redirect_uri, closing code-injection across a client's registered URIs.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? redirectUri;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? refreshConsumed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? refreshExpireIn;

  /// Refresh-token rotation state (v2). Each refresh belongs to a family (the grant); rotation mints a new row in the same family and marks the prior one consumed. Presenting a consumed refresh is reuse — the whole family is revoked (RFC 9700 §4.14.2). RefreshExpireIn is the refresh token's own absolute expiry (unix), independent of the access token's shorter life.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refreshFamily;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refreshToken;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refreshTokenHash;

  /// RFC 8707 resource indicator
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? resource;

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
  String? tokenType;

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
  String? userCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamToken &&
    other.accessToken == accessToken &&
    other.accessTokenHash == accessTokenHash &&
    other.application == application &&
    other.code == code &&
    other.codeChallenge == codeChallenge &&
    other.codeChallengeMethod == codeChallengeMethod &&
    other.codeExpireIn == codeExpireIn &&
    other.codeIsUsed == codeIsUsed &&
    other.createdAt == createdAt &&
    other.createdTime == createdTime &&
    other.deleted == deleted &&
    other.expiresIn == expiresIn &&
    other.id == id &&
    other.name == name &&
    other.nonce == nonce &&
    other.organization == organization &&
    other.owner == owner &&
    other.publicGrant == publicGrant &&
    other.redirectUri == redirectUri &&
    other.refreshConsumed == refreshConsumed &&
    other.refreshExpireIn == refreshExpireIn &&
    other.refreshFamily == refreshFamily &&
    other.refreshToken == refreshToken &&
    other.refreshTokenHash == refreshTokenHash &&
    other.resource == resource &&
    other.scope == scope &&
    other.tokenType == tokenType &&
    other.updatedAt == updatedAt &&
    other.user == user &&
    other.userCode == userCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accessToken == null ? 0 : accessToken!.hashCode) +
    (accessTokenHash == null ? 0 : accessTokenHash!.hashCode) +
    (application == null ? 0 : application!.hashCode) +
    (code == null ? 0 : code!.hashCode) +
    (codeChallenge == null ? 0 : codeChallenge!.hashCode) +
    (codeChallengeMethod == null ? 0 : codeChallengeMethod!.hashCode) +
    (codeExpireIn == null ? 0 : codeExpireIn!.hashCode) +
    (codeIsUsed == null ? 0 : codeIsUsed!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (createdTime == null ? 0 : createdTime!.hashCode) +
    (deleted == null ? 0 : deleted!.hashCode) +
    (expiresIn == null ? 0 : expiresIn!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (nonce == null ? 0 : nonce!.hashCode) +
    (organization == null ? 0 : organization!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (publicGrant == null ? 0 : publicGrant!.hashCode) +
    (redirectUri == null ? 0 : redirectUri!.hashCode) +
    (refreshConsumed == null ? 0 : refreshConsumed!.hashCode) +
    (refreshExpireIn == null ? 0 : refreshExpireIn!.hashCode) +
    (refreshFamily == null ? 0 : refreshFamily!.hashCode) +
    (refreshToken == null ? 0 : refreshToken!.hashCode) +
    (refreshTokenHash == null ? 0 : refreshTokenHash!.hashCode) +
    (resource == null ? 0 : resource!.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (tokenType == null ? 0 : tokenType!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (user == null ? 0 : user!.hashCode) +
    (userCode == null ? 0 : userCode!.hashCode);

  @override
  String toString() => 'IamToken[accessToken=$accessToken, accessTokenHash=$accessTokenHash, application=$application, code=$code, codeChallenge=$codeChallenge, codeChallengeMethod=$codeChallengeMethod, codeExpireIn=$codeExpireIn, codeIsUsed=$codeIsUsed, createdAt=$createdAt, createdTime=$createdTime, deleted=$deleted, expiresIn=$expiresIn, id=$id, name=$name, nonce=$nonce, organization=$organization, owner=$owner, publicGrant=$publicGrant, redirectUri=$redirectUri, refreshConsumed=$refreshConsumed, refreshExpireIn=$refreshExpireIn, refreshFamily=$refreshFamily, refreshToken=$refreshToken, refreshTokenHash=$refreshTokenHash, resource=$resource, scope=$scope, tokenType=$tokenType, updatedAt=$updatedAt, user=$user, userCode=$userCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accessToken != null) {
      json[r'accessToken'] = this.accessToken;
    } else {
      json[r'accessToken'] = null;
    }
    if (this.accessTokenHash != null) {
      json[r'accessTokenHash'] = this.accessTokenHash;
    } else {
      json[r'accessTokenHash'] = null;
    }
    if (this.application != null) {
      json[r'application'] = this.application;
    } else {
      json[r'application'] = null;
    }
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.codeChallenge != null) {
      json[r'codeChallenge'] = this.codeChallenge;
    } else {
      json[r'codeChallenge'] = null;
    }
    if (this.codeChallengeMethod != null) {
      json[r'codeChallengeMethod'] = this.codeChallengeMethod;
    } else {
      json[r'codeChallengeMethod'] = null;
    }
    if (this.codeExpireIn != null) {
      json[r'codeExpireIn'] = this.codeExpireIn;
    } else {
      json[r'codeExpireIn'] = null;
    }
    if (this.codeIsUsed != null) {
      json[r'codeIsUsed'] = this.codeIsUsed;
    } else {
      json[r'codeIsUsed'] = null;
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
    if (this.expiresIn != null) {
      json[r'expiresIn'] = this.expiresIn;
    } else {
      json[r'expiresIn'] = null;
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
    if (this.nonce != null) {
      json[r'nonce'] = this.nonce;
    } else {
      json[r'nonce'] = null;
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
    if (this.publicGrant != null) {
      json[r'publicGrant'] = this.publicGrant;
    } else {
      json[r'publicGrant'] = null;
    }
    if (this.redirectUri != null) {
      json[r'redirectUri'] = this.redirectUri;
    } else {
      json[r'redirectUri'] = null;
    }
    if (this.refreshConsumed != null) {
      json[r'refreshConsumed'] = this.refreshConsumed;
    } else {
      json[r'refreshConsumed'] = null;
    }
    if (this.refreshExpireIn != null) {
      json[r'refreshExpireIn'] = this.refreshExpireIn;
    } else {
      json[r'refreshExpireIn'] = null;
    }
    if (this.refreshFamily != null) {
      json[r'refreshFamily'] = this.refreshFamily;
    } else {
      json[r'refreshFamily'] = null;
    }
    if (this.refreshToken != null) {
      json[r'refreshToken'] = this.refreshToken;
    } else {
      json[r'refreshToken'] = null;
    }
    if (this.refreshTokenHash != null) {
      json[r'refreshTokenHash'] = this.refreshTokenHash;
    } else {
      json[r'refreshTokenHash'] = null;
    }
    if (this.resource != null) {
      json[r'resource'] = this.resource;
    } else {
      json[r'resource'] = null;
    }
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    if (this.tokenType != null) {
      json[r'tokenType'] = this.tokenType;
    } else {
      json[r'tokenType'] = null;
    }
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
    if (this.userCode != null) {
      json[r'userCode'] = this.userCode;
    } else {
      json[r'userCode'] = null;
    }
    return json;
  }

  /// Returns a new [IamToken] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamToken? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamToken[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamToken[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamToken(
        accessToken: mapValueOfType<String>(json, r'accessToken'),
        accessTokenHash: mapValueOfType<String>(json, r'accessTokenHash'),
        application: mapValueOfType<String>(json, r'application'),
        code: mapValueOfType<String>(json, r'code'),
        codeChallenge: mapValueOfType<String>(json, r'codeChallenge'),
        codeChallengeMethod: mapValueOfType<String>(json, r'codeChallengeMethod'),
        codeExpireIn: mapValueOfType<int>(json, r'codeExpireIn'),
        codeIsUsed: mapValueOfType<bool>(json, r'codeIsUsed'),
        createdAt: mapDateTime(json, r'createdAt', r''),
        createdTime: mapValueOfType<String>(json, r'createdTime'),
        deleted: mapValueOfType<bool>(json, r'deleted'),
        expiresIn: mapValueOfType<int>(json, r'expiresIn'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        nonce: mapValueOfType<String>(json, r'nonce'),
        organization: mapValueOfType<String>(json, r'organization'),
        owner: mapValueOfType<String>(json, r'owner'),
        publicGrant: mapValueOfType<bool>(json, r'publicGrant'),
        redirectUri: mapValueOfType<String>(json, r'redirectUri'),
        refreshConsumed: mapValueOfType<bool>(json, r'refreshConsumed'),
        refreshExpireIn: mapValueOfType<int>(json, r'refreshExpireIn'),
        refreshFamily: mapValueOfType<String>(json, r'refreshFamily'),
        refreshToken: mapValueOfType<String>(json, r'refreshToken'),
        refreshTokenHash: mapValueOfType<String>(json, r'refreshTokenHash'),
        resource: mapValueOfType<String>(json, r'resource'),
        scope: mapValueOfType<String>(json, r'scope'),
        tokenType: mapValueOfType<String>(json, r'tokenType'),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        user: mapValueOfType<String>(json, r'user'),
        userCode: mapValueOfType<String>(json, r'userCode'),
      );
    }
    return null;
  }

  static List<IamToken> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamToken>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamToken.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamToken> mapFromJson(dynamic json) {
    final map = <String, IamToken>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamToken.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamToken-objects as value to a dart map
  static Map<String, List<IamToken>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamToken>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamToken.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

