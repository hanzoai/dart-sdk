//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamRegistration {
  /// Returns a new [IamRegistration] instance.
  IamRegistration({
    this.cert,
    this.clientId,
    this.clientSecret,
    this.displayName,
    this.enableCodeSignin,
    this.expireInHours,
    this.grantTypes = const [],
    this.isShared,
    this.name,
    this.organization,
    this.public,
    this.redirectUris = const [],
    this.refreshExpireInHours,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cert;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientSecret;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  /// EnableCodeSignin offers sign-in by an emailed or texted one-time code beside the password. A POINTER for the same reason as IsShared: a plain bool reads as false on every reconcile that says nothing and would switch the method off for every app whose caller never mentioned it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableCodeSignin;

  /// ExpireInHours and RefreshExpireInHours are the application's token lifetimes. They are the ONLY declarative way to say that a refresh token must OUTLIVE its access token: with neither stated, oidc.refreshTTL clamps the refresh lifetime to the access lifetime, so the refresh_token grant the registration advertises expires at the same instant as the token it was meant to renew and can never be exercised. `hanzo-cli` sat in exactly that state — a browser re-login every hour, and a live refresh returning 401.  POINTERS, for the same reason as IsShared: a plain float would read as 0 on every reconcile that says nothing and reset a deliberate lifetime back to the default. Nil means \"not stated, leave it\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? expireInHours;

  List<String> grantTypes;

  /// IsShared declares that this application serves EVERY organization, not only the one named in Organization. It is the honest description of a brand app — hanzo-id, hanzo-chat, a brand console — whose customers each live in their own tenant: self-service onboarding moves a founder OUT of the brand org, so `user.Owner != app.Organization` is the steady state and the app really does serve every org. Application.ServesOrg reads it as one of the three ways to say yes.  A POINTER because omission must PRESERVE. This upsert is the operator's steady-state reconcile and most callers say nothing about sharing; a plain bool would read as false on every one of them and silently un-share an app — the same shape of accident that de-secreted apps through update-application. Nil means \"not stated, leave it\"; only an explicit true or false moves it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isShared;

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

  /// Public declares a client that CANNOT hold a credential — a browser SPA, a CLI, a desktop app. It proves itself with PKCE instead, and the token endpoint treats \"no stored secret\" as exactly that (token.go: a secret is verified only when one is stored). Without this flag every upsert minted a secret, so a public client could never be registered at all and its browser code->token exchange 401'd `invalid_client` forever.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? public;

  List<String> redirectUris;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? refreshExpireInHours;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamRegistration &&
    other.cert == cert &&
    other.clientId == clientId &&
    other.clientSecret == clientSecret &&
    other.displayName == displayName &&
    other.enableCodeSignin == enableCodeSignin &&
    other.expireInHours == expireInHours &&
    _deepEquality.equals(other.grantTypes, grantTypes) &&
    other.isShared == isShared &&
    other.name == name &&
    other.organization == organization &&
    other.public == public &&
    _deepEquality.equals(other.redirectUris, redirectUris) &&
    other.refreshExpireInHours == refreshExpireInHours;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cert == null ? 0 : cert!.hashCode) +
    (clientId == null ? 0 : clientId!.hashCode) +
    (clientSecret == null ? 0 : clientSecret!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (enableCodeSignin == null ? 0 : enableCodeSignin!.hashCode) +
    (expireInHours == null ? 0 : expireInHours!.hashCode) +
    (grantTypes.hashCode) +
    (isShared == null ? 0 : isShared!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (organization == null ? 0 : organization!.hashCode) +
    (public == null ? 0 : public!.hashCode) +
    (redirectUris.hashCode) +
    (refreshExpireInHours == null ? 0 : refreshExpireInHours!.hashCode);

  @override
  String toString() => 'IamRegistration[cert=$cert, clientId=$clientId, clientSecret=$clientSecret, displayName=$displayName, enableCodeSignin=$enableCodeSignin, expireInHours=$expireInHours, grantTypes=$grantTypes, isShared=$isShared, name=$name, organization=$organization, public=$public, redirectUris=$redirectUris, refreshExpireInHours=$refreshExpireInHours]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cert != null) {
      json[r'cert'] = this.cert;
    } else {
      json[r'cert'] = null;
    }
    if (this.clientId != null) {
      json[r'clientId'] = this.clientId;
    } else {
      json[r'clientId'] = null;
    }
    if (this.clientSecret != null) {
      json[r'clientSecret'] = this.clientSecret;
    } else {
      json[r'clientSecret'] = null;
    }
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.enableCodeSignin != null) {
      json[r'enableCodeSignin'] = this.enableCodeSignin;
    } else {
      json[r'enableCodeSignin'] = null;
    }
    if (this.expireInHours != null) {
      json[r'expireInHours'] = this.expireInHours;
    } else {
      json[r'expireInHours'] = null;
    }
      json[r'grantTypes'] = this.grantTypes;
    if (this.isShared != null) {
      json[r'isShared'] = this.isShared;
    } else {
      json[r'isShared'] = null;
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
    if (this.public != null) {
      json[r'public'] = this.public;
    } else {
      json[r'public'] = null;
    }
      json[r'redirectUris'] = this.redirectUris;
    if (this.refreshExpireInHours != null) {
      json[r'refreshExpireInHours'] = this.refreshExpireInHours;
    } else {
      json[r'refreshExpireInHours'] = null;
    }
    return json;
  }

  /// Returns a new [IamRegistration] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamRegistration? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamRegistration[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamRegistration[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamRegistration(
        cert: mapValueOfType<String>(json, r'cert'),
        clientId: mapValueOfType<String>(json, r'clientId'),
        clientSecret: mapValueOfType<String>(json, r'clientSecret'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        enableCodeSignin: mapValueOfType<bool>(json, r'enableCodeSignin'),
        expireInHours: num.parse('${json[r'expireInHours']}'),
        grantTypes: json[r'grantTypes'] is Iterable
            ? (json[r'grantTypes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        isShared: mapValueOfType<bool>(json, r'isShared'),
        name: mapValueOfType<String>(json, r'name'),
        organization: mapValueOfType<String>(json, r'organization'),
        public: mapValueOfType<bool>(json, r'public'),
        redirectUris: json[r'redirectUris'] is Iterable
            ? (json[r'redirectUris'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        refreshExpireInHours: num.parse('${json[r'refreshExpireInHours']}'),
      );
    }
    return null;
  }

  static List<IamRegistration> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamRegistration>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamRegistration.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamRegistration> mapFromJson(dynamic json) {
    final map = <String, IamRegistration>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamRegistration.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamRegistration-objects as value to a dart map
  static Map<String, List<IamRegistration>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamRegistration>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamRegistration.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

