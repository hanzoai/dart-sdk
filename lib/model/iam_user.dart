//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamUser {
  /// Returns a new [IamUser] instance.
  IamUser({
    this.accessKey,
    this.accessSecret,
    this.accessSecretHash,
    this.accessToken,
    this.address = const [],
    this.addresses = const [],
    this.adfs,
    this.affiliation,
    this.alipay,
    this.amazon,
    this.apple,
    this.applicationScopes = const [],
    this.auth0,
    this.avatar,
    this.avatarType,
    this.azuread,
    this.azureadb2c,
    this.baidu,
    this.balance,
    this.balanceCredit,
    this.balanceCurrency,
    this.battlenet,
    this.bilibili,
    this.bio,
    this.birthday,
    this.bitbucket,
    this.box,
    this.cart = const [],
    this.cloudfoundry,
    this.countryCode,
    this.createdAt,
    this.createdIp,
    this.createdTime,
    this.currency,
    this.custom,
    this.custom2,
    this.custom3,
    this.custom4,
    this.custom5,
    this.custom6,
    this.custom7,
    this.custom8,
    this.custom9,
    this.custom10,
    this.dailymotion,
    this.deezer,
    this.deleted,
    this.deletedTime,
    this.digitalocean,
    this.dingtalk,
    this.discord,
    this.displayName,
    this.douyin,
    this.dropbox,
    this.education,
    this.email,
    this.emailVerified,
    this.eveonline,
    this.externalId,
    this.faceIds = const [],
    this.facebook,
    this.firstName,
    this.fitbit,
    this.gender,
    this.gitea,
    this.gitee,
    this.github,
    this.gitlab,
    this.google,
    this.hash,
    this.heroku,
    this.homepage,
    this.iam,
    this.id,
    this.idCard,
    this.idCardType,
    this.influxcloud,
    this.infoflow,
    this.instagram,
    this.intercom,
    this.invitation,
    this.invitationCode,
    this.ipWhitelist,
    this.isAdmin,
    this.isDefaultAvatar,
    this.isDeleted,
    this.isForbidden,
    this.isOnline,
    this.isVerified,
    this.kakao,
    this.karma,
    this.kwai,
    this.language,
    this.lark,
    this.lastChangePasswordTime,
    this.lastName,
    this.lastSigninIp,
    this.lastSigninTime,
    this.lastSigninWrongTime,
    this.lastfm,
    this.ldap,
    this.line,
    this.linkedin,
    this.location,
    this.mailru,
    this.managedAccounts = const [],
    this.meetup,
    this.mfaAccounts = const [],
    this.mfaEmailEnabled,
    this.mfaItems = const [],
    this.mfaPhoneEnabled,
    this.mfaPushEnabled,
    this.mfaPushProvider,
    this.mfaPushReceiver,
    this.mfaRadiusEnabled,
    this.mfaRadiusProvider,
    this.mfaRadiusUsername,
    this.mfaRememberDeadline,
    this.mfaRememberDigest,
    this.microsoftonline,
    this.multiFactorAuths = const [],
    this.name,
    this.naver,
    this.needUpdatePassword,
    this.nextcloud,
    this.okta,
    this.onedrive,
    this.originalRefreshToken,
    this.originalToken,
    this.oura,
    this.owner,
    this.passwordHash,
    this.passwordSalt,
    this.passwordType,
    this.patreon,
    this.paypal,
    this.permanentAvatar,
    this.phone,
    this.preHash,
    this.preferredMfaType,
    this.properties = const {},
    this.qq,
    this.ranking,
    this.realName,
    this.recoveryCodes = const [],
    this.region,
    this.registerSource,
    this.registerType,
    this.salesforce,
    this.score,
    this.shopify,
    this.signinWrongTimes,
    this.signupApplication,
    this.slack,
    this.soundcloud,
    this.spotify,
    this.steam,
    this.strava,
    this.stripe,
    this.tag,
    this.telegram,
    this.tiktok,
    this.title,
    this.totpSecret,
    this.tumblr,
    this.twitch,
    this.twitter,
    this.type,
    this.typetalk,
    this.uber,
    this.updatedAt,
    this.updatedTime,
    this.verificationCode,
    this.vk,
    this.webauthnCredentials = const [],
    this.wechat,
    this.wecom,
    this.weibo,
    this.wepay,
    this.xero,
    this.yahoo,
    this.yammer,
    this.yandex,
    this.zoom,
  });
  /// API credentials. AccessSecret / AccessSecretHash / the OAuth tokens are bearer material, so Mask blanks them and the handler's redact() strips them before responding. They carry real json tags because a field orm never saves is a field that silently vanishes.  A presented secret is resolved through Key.AccessSecretDigest and nowhere else, so no credential is ISSUED into these columns: they hold what older rows left behind, and every writer that touches them clears them.
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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accessSecretHash;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accessToken;

  List<String> address;

  List<IamAddress> addresses;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? adfs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? affiliation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? alipay;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? amazon;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? apple;

  List<IamConsentRecord> applicationScopes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? auth0;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? avatar;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? avatarType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? azuread;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? azureadb2c;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? baidu;

  /// Balance mirrors v1 for lossless migration but is authoritative in Commerce (billing.hanzo.ai), not here — do not write it from IAM.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? balance;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? balanceCredit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? balanceCurrency;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? battlenet;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bilibili;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bio;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? birthday;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bitbucket;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? box;

  List<IamCartItem> cart;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cloudfoundry;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? countryCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// Sign-in provenance.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdIp;

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
  String? currency;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? custom;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? custom2;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? custom3;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? custom4;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? custom5;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? custom6;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? custom7;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? custom8;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? custom9;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? custom10;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dailymotion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deezer;

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
  String? deletedTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? digitalocean;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dingtalk;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? discord;

  /// Profile.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? douyin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dropbox;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? education;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? emailVerified;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? eveonline;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  List<IamFaceId> faceIds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? facebook;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fitbit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gender;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gitea;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gitee;

  /// Linked federated-identity subjects, one column per connector (v1 parity).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? github;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gitlab;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? google;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hash;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? heroku;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? homepage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iam;

  /// Id is the user's STABLE OPAQUE identifier — the value the OIDC `sub` claim carries. It is the v1 the legacy surface per-row UUID (e.g. \"e7d7fda0-4c53-4508-9d35-7ec892b7e5d7\"), migrated verbatim so a user's `sub` is byte-identical across the cutover: every live session, external reference, and the downstream money-path principal keyed on `sub` survive unchanged. A user minted natively in v2 is assigned a fresh UUID here on create, so the `sub` is ALWAYS a stable opaque id going forward — never the (Owner, Name) pair, which is mutable (a rename would otherwise silently reissue identity).  It is distinct from the embedded orm.Model STORAGE KEY — the value the datastore locks and looks a row up by — which is NOT (Owner, Name) for every row: a MIGRATED legacy row is stamped \"owner/name\" (SetId in the migrator), but a v2-native users.Create'd row is NOT — Create allocates rather than pinning a key, so its storage key is a store-assigned surrogate id (a decimal string like \"17847909129933610000001\"). (Owner, Name) is therefore the natural/QUERY key (unique, indexed), not necessarily the storage key: resolve a row for a locked write by its REAL key (store.GetUserByName(...).Key().Encode(), which stamps both shapes — see internal/oidc updateUser), never by assuming \"owner/name\". This Id is a first-class, indexed DOMAIN field; its json tag \"id\" dominates the promoted orm.Model `Id_` (also \"id\") by shallower depth, so the persisted record's \"id\" is this UUID — exactly the v1 shape. A row that carries no Id (a not-yet-assigned pre-cutover user) falls back to the (Owner, Name) subject at mint; every other path resolves `sub`→user by Id.
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
  String? idCard;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? idCardType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? influxcloud;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? infoflow;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? instagram;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? intercom;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? invitation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? invitationCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ipWhitelist;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAdmin;

  /// State flags.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isDefaultAvatar;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isDeleted;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isForbidden;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isOnline;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isVerified;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kakao;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? karma;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kwai;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? language;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lark;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastChangePasswordTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastSigninIp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastSigninTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastSigninWrongTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastfm;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ldap;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? line;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? linkedin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? location;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mailru;

  List<IamManagedAccount> managedAccounts;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? meetup;

  List<IamMfaAccount> mfaAccounts;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? mfaEmailEnabled;

  List<IamMfaItem> mfaItems;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? mfaPhoneEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? mfaPushEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mfaPushProvider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mfaPushReceiver;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? mfaRadiusEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mfaRadiusProvider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mfaRadiusUsername;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mfaRememberDeadline;

  /// MfaRememberDigest is the digest of the token held by the ONE browser the deadline above applies to. Without it the deadline is account-wide and \"don't ask again on this browser\" switches the second factor off everywhere. It is a digest, never the token, so a database dump yields nothing presentable — and it carries a REAL json tag because orm persists via json.Marshal, so `json:\"-\"` would never be stored (the trap PasswordHash documents above); Mask() strips it from every response instead.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mfaRememberDigest;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? microsoftonline;

  List<IamMfaProps> multiFactorAuths;

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
  String? naver;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? needUpdatePassword;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nextcloud;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? okta;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? onedrive;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? originalRefreshToken;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? originalToken;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? oura;

  /// Identity / tenancy. (Owner, Name) is the natural key.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? owner;

  /// Credential material. PasswordHash is a one-way bcrypt digest and is verify-only. It MUST be persisted (orm serializes the entity to its JSON data column, so a json:\"-\" field would never be stored — that silently broke login), so it carries a real json tag; the users API redact() strips it (and every other secret) from every response. PasswordType and PasswordSalt describe the digest scheme so rows hashed under the legacy argon2id scheme can still be verified and lazily re-hashed to bcrypt.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? passwordHash;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? passwordSalt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? passwordType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? patreon;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? paypal;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? permanentAvatar;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? preHash;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? preferredMfaType;

  Map<String, String> properties;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? qq;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ranking;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? realName;

  List<String> recoveryCodes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? region;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? registerSource;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? registerType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? salesforce;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? score;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shopify;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? signinWrongTimes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? signupApplication;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slack;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? soundcloud;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? spotify;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? steam;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? strava;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stripe;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tag;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? telegram;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tiktok;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? totpSecret;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tumblr;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? twitch;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? twitter;

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
  String? typetalk;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uber;

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
  String? verificationCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? vk;

  /// Multi-factor authentication. TotpSecret and RecoveryCodes are secret verify-only material — the handler strips them from every response. WebauthnCredentials is carried as raw JSON here for lossless migration; the typed passkey model is the sibling WebauthnCredential entity.
  List<Object> webauthnCredentials;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? wechat;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? wecom;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? weibo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? wepay;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? xero;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? yahoo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? yammer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? yandex;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? zoom;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamUser &&
    other.accessKey == accessKey &&
    other.accessSecret == accessSecret &&
    other.accessSecretHash == accessSecretHash &&
    other.accessToken == accessToken &&
    _deepEquality.equals(other.address, address) &&
    _deepEquality.equals(other.addresses, addresses) &&
    other.adfs == adfs &&
    other.affiliation == affiliation &&
    other.alipay == alipay &&
    other.amazon == amazon &&
    other.apple == apple &&
    _deepEquality.equals(other.applicationScopes, applicationScopes) &&
    other.auth0 == auth0 &&
    other.avatar == avatar &&
    other.avatarType == avatarType &&
    other.azuread == azuread &&
    other.azureadb2c == azureadb2c &&
    other.baidu == baidu &&
    other.balance == balance &&
    other.balanceCredit == balanceCredit &&
    other.balanceCurrency == balanceCurrency &&
    other.battlenet == battlenet &&
    other.bilibili == bilibili &&
    other.bio == bio &&
    other.birthday == birthday &&
    other.bitbucket == bitbucket &&
    other.box == box &&
    _deepEquality.equals(other.cart, cart) &&
    other.cloudfoundry == cloudfoundry &&
    other.countryCode == countryCode &&
    other.createdAt == createdAt &&
    other.createdIp == createdIp &&
    other.createdTime == createdTime &&
    other.currency == currency &&
    other.custom == custom &&
    other.custom2 == custom2 &&
    other.custom3 == custom3 &&
    other.custom4 == custom4 &&
    other.custom5 == custom5 &&
    other.custom6 == custom6 &&
    other.custom7 == custom7 &&
    other.custom8 == custom8 &&
    other.custom9 == custom9 &&
    other.custom10 == custom10 &&
    other.dailymotion == dailymotion &&
    other.deezer == deezer &&
    other.deleted == deleted &&
    other.deletedTime == deletedTime &&
    other.digitalocean == digitalocean &&
    other.dingtalk == dingtalk &&
    other.discord == discord &&
    other.displayName == displayName &&
    other.douyin == douyin &&
    other.dropbox == dropbox &&
    other.education == education &&
    other.email == email &&
    other.emailVerified == emailVerified &&
    other.eveonline == eveonline &&
    other.externalId == externalId &&
    _deepEquality.equals(other.faceIds, faceIds) &&
    other.facebook == facebook &&
    other.firstName == firstName &&
    other.fitbit == fitbit &&
    other.gender == gender &&
    other.gitea == gitea &&
    other.gitee == gitee &&
    other.github == github &&
    other.gitlab == gitlab &&
    other.google == google &&
    other.hash == hash &&
    other.heroku == heroku &&
    other.homepage == homepage &&
    other.iam == iam &&
    other.id == id &&
    other.idCard == idCard &&
    other.idCardType == idCardType &&
    other.influxcloud == influxcloud &&
    other.infoflow == infoflow &&
    other.instagram == instagram &&
    other.intercom == intercom &&
    other.invitation == invitation &&
    other.invitationCode == invitationCode &&
    other.ipWhitelist == ipWhitelist &&
    other.isAdmin == isAdmin &&
    other.isDefaultAvatar == isDefaultAvatar &&
    other.isDeleted == isDeleted &&
    other.isForbidden == isForbidden &&
    other.isOnline == isOnline &&
    other.isVerified == isVerified &&
    other.kakao == kakao &&
    other.karma == karma &&
    other.kwai == kwai &&
    other.language == language &&
    other.lark == lark &&
    other.lastChangePasswordTime == lastChangePasswordTime &&
    other.lastName == lastName &&
    other.lastSigninIp == lastSigninIp &&
    other.lastSigninTime == lastSigninTime &&
    other.lastSigninWrongTime == lastSigninWrongTime &&
    other.lastfm == lastfm &&
    other.ldap == ldap &&
    other.line == line &&
    other.linkedin == linkedin &&
    other.location == location &&
    other.mailru == mailru &&
    _deepEquality.equals(other.managedAccounts, managedAccounts) &&
    other.meetup == meetup &&
    _deepEquality.equals(other.mfaAccounts, mfaAccounts) &&
    other.mfaEmailEnabled == mfaEmailEnabled &&
    _deepEquality.equals(other.mfaItems, mfaItems) &&
    other.mfaPhoneEnabled == mfaPhoneEnabled &&
    other.mfaPushEnabled == mfaPushEnabled &&
    other.mfaPushProvider == mfaPushProvider &&
    other.mfaPushReceiver == mfaPushReceiver &&
    other.mfaRadiusEnabled == mfaRadiusEnabled &&
    other.mfaRadiusProvider == mfaRadiusProvider &&
    other.mfaRadiusUsername == mfaRadiusUsername &&
    other.mfaRememberDeadline == mfaRememberDeadline &&
    other.mfaRememberDigest == mfaRememberDigest &&
    other.microsoftonline == microsoftonline &&
    _deepEquality.equals(other.multiFactorAuths, multiFactorAuths) &&
    other.name == name &&
    other.naver == naver &&
    other.needUpdatePassword == needUpdatePassword &&
    other.nextcloud == nextcloud &&
    other.okta == okta &&
    other.onedrive == onedrive &&
    other.originalRefreshToken == originalRefreshToken &&
    other.originalToken == originalToken &&
    other.oura == oura &&
    other.owner == owner &&
    other.passwordHash == passwordHash &&
    other.passwordSalt == passwordSalt &&
    other.passwordType == passwordType &&
    other.patreon == patreon &&
    other.paypal == paypal &&
    other.permanentAvatar == permanentAvatar &&
    other.phone == phone &&
    other.preHash == preHash &&
    other.preferredMfaType == preferredMfaType &&
    _deepEquality.equals(other.properties, properties) &&
    other.qq == qq &&
    other.ranking == ranking &&
    other.realName == realName &&
    _deepEquality.equals(other.recoveryCodes, recoveryCodes) &&
    other.region == region &&
    other.registerSource == registerSource &&
    other.registerType == registerType &&
    other.salesforce == salesforce &&
    other.score == score &&
    other.shopify == shopify &&
    other.signinWrongTimes == signinWrongTimes &&
    other.signupApplication == signupApplication &&
    other.slack == slack &&
    other.soundcloud == soundcloud &&
    other.spotify == spotify &&
    other.steam == steam &&
    other.strava == strava &&
    other.stripe == stripe &&
    other.tag == tag &&
    other.telegram == telegram &&
    other.tiktok == tiktok &&
    other.title == title &&
    other.totpSecret == totpSecret &&
    other.tumblr == tumblr &&
    other.twitch == twitch &&
    other.twitter == twitter &&
    other.type == type &&
    other.typetalk == typetalk &&
    other.uber == uber &&
    other.updatedAt == updatedAt &&
    other.updatedTime == updatedTime &&
    other.verificationCode == verificationCode &&
    other.vk == vk &&
    _deepEquality.equals(other.webauthnCredentials, webauthnCredentials) &&
    other.wechat == wechat &&
    other.wecom == wecom &&
    other.weibo == weibo &&
    other.wepay == wepay &&
    other.xero == xero &&
    other.yahoo == yahoo &&
    other.yammer == yammer &&
    other.yandex == yandex &&
    other.zoom == zoom;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accessKey == null ? 0 : accessKey!.hashCode) +
    (accessSecret == null ? 0 : accessSecret!.hashCode) +
    (accessSecretHash == null ? 0 : accessSecretHash!.hashCode) +
    (accessToken == null ? 0 : accessToken!.hashCode) +
    (address.hashCode) +
    (addresses.hashCode) +
    (adfs == null ? 0 : adfs!.hashCode) +
    (affiliation == null ? 0 : affiliation!.hashCode) +
    (alipay == null ? 0 : alipay!.hashCode) +
    (amazon == null ? 0 : amazon!.hashCode) +
    (apple == null ? 0 : apple!.hashCode) +
    (applicationScopes.hashCode) +
    (auth0 == null ? 0 : auth0!.hashCode) +
    (avatar == null ? 0 : avatar!.hashCode) +
    (avatarType == null ? 0 : avatarType!.hashCode) +
    (azuread == null ? 0 : azuread!.hashCode) +
    (azureadb2c == null ? 0 : azureadb2c!.hashCode) +
    (baidu == null ? 0 : baidu!.hashCode) +
    (balance == null ? 0 : balance!.hashCode) +
    (balanceCredit == null ? 0 : balanceCredit!.hashCode) +
    (balanceCurrency == null ? 0 : balanceCurrency!.hashCode) +
    (battlenet == null ? 0 : battlenet!.hashCode) +
    (bilibili == null ? 0 : bilibili!.hashCode) +
    (bio == null ? 0 : bio!.hashCode) +
    (birthday == null ? 0 : birthday!.hashCode) +
    (bitbucket == null ? 0 : bitbucket!.hashCode) +
    (box == null ? 0 : box!.hashCode) +
    (cart.hashCode) +
    (cloudfoundry == null ? 0 : cloudfoundry!.hashCode) +
    (countryCode == null ? 0 : countryCode!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (createdIp == null ? 0 : createdIp!.hashCode) +
    (createdTime == null ? 0 : createdTime!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (custom == null ? 0 : custom!.hashCode) +
    (custom2 == null ? 0 : custom2!.hashCode) +
    (custom3 == null ? 0 : custom3!.hashCode) +
    (custom4 == null ? 0 : custom4!.hashCode) +
    (custom5 == null ? 0 : custom5!.hashCode) +
    (custom6 == null ? 0 : custom6!.hashCode) +
    (custom7 == null ? 0 : custom7!.hashCode) +
    (custom8 == null ? 0 : custom8!.hashCode) +
    (custom9 == null ? 0 : custom9!.hashCode) +
    (custom10 == null ? 0 : custom10!.hashCode) +
    (dailymotion == null ? 0 : dailymotion!.hashCode) +
    (deezer == null ? 0 : deezer!.hashCode) +
    (deleted == null ? 0 : deleted!.hashCode) +
    (deletedTime == null ? 0 : deletedTime!.hashCode) +
    (digitalocean == null ? 0 : digitalocean!.hashCode) +
    (dingtalk == null ? 0 : dingtalk!.hashCode) +
    (discord == null ? 0 : discord!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (douyin == null ? 0 : douyin!.hashCode) +
    (dropbox == null ? 0 : dropbox!.hashCode) +
    (education == null ? 0 : education!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (emailVerified == null ? 0 : emailVerified!.hashCode) +
    (eveonline == null ? 0 : eveonline!.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (faceIds.hashCode) +
    (facebook == null ? 0 : facebook!.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (fitbit == null ? 0 : fitbit!.hashCode) +
    (gender == null ? 0 : gender!.hashCode) +
    (gitea == null ? 0 : gitea!.hashCode) +
    (gitee == null ? 0 : gitee!.hashCode) +
    (github == null ? 0 : github!.hashCode) +
    (gitlab == null ? 0 : gitlab!.hashCode) +
    (google == null ? 0 : google!.hashCode) +
    (hash == null ? 0 : hash!.hashCode) +
    (heroku == null ? 0 : heroku!.hashCode) +
    (homepage == null ? 0 : homepage!.hashCode) +
    (iam == null ? 0 : iam!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (idCard == null ? 0 : idCard!.hashCode) +
    (idCardType == null ? 0 : idCardType!.hashCode) +
    (influxcloud == null ? 0 : influxcloud!.hashCode) +
    (infoflow == null ? 0 : infoflow!.hashCode) +
    (instagram == null ? 0 : instagram!.hashCode) +
    (intercom == null ? 0 : intercom!.hashCode) +
    (invitation == null ? 0 : invitation!.hashCode) +
    (invitationCode == null ? 0 : invitationCode!.hashCode) +
    (ipWhitelist == null ? 0 : ipWhitelist!.hashCode) +
    (isAdmin == null ? 0 : isAdmin!.hashCode) +
    (isDefaultAvatar == null ? 0 : isDefaultAvatar!.hashCode) +
    (isDeleted == null ? 0 : isDeleted!.hashCode) +
    (isForbidden == null ? 0 : isForbidden!.hashCode) +
    (isOnline == null ? 0 : isOnline!.hashCode) +
    (isVerified == null ? 0 : isVerified!.hashCode) +
    (kakao == null ? 0 : kakao!.hashCode) +
    (karma == null ? 0 : karma!.hashCode) +
    (kwai == null ? 0 : kwai!.hashCode) +
    (language == null ? 0 : language!.hashCode) +
    (lark == null ? 0 : lark!.hashCode) +
    (lastChangePasswordTime == null ? 0 : lastChangePasswordTime!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (lastSigninIp == null ? 0 : lastSigninIp!.hashCode) +
    (lastSigninTime == null ? 0 : lastSigninTime!.hashCode) +
    (lastSigninWrongTime == null ? 0 : lastSigninWrongTime!.hashCode) +
    (lastfm == null ? 0 : lastfm!.hashCode) +
    (ldap == null ? 0 : ldap!.hashCode) +
    (line == null ? 0 : line!.hashCode) +
    (linkedin == null ? 0 : linkedin!.hashCode) +
    (location == null ? 0 : location!.hashCode) +
    (mailru == null ? 0 : mailru!.hashCode) +
    (managedAccounts.hashCode) +
    (meetup == null ? 0 : meetup!.hashCode) +
    (mfaAccounts.hashCode) +
    (mfaEmailEnabled == null ? 0 : mfaEmailEnabled!.hashCode) +
    (mfaItems.hashCode) +
    (mfaPhoneEnabled == null ? 0 : mfaPhoneEnabled!.hashCode) +
    (mfaPushEnabled == null ? 0 : mfaPushEnabled!.hashCode) +
    (mfaPushProvider == null ? 0 : mfaPushProvider!.hashCode) +
    (mfaPushReceiver == null ? 0 : mfaPushReceiver!.hashCode) +
    (mfaRadiusEnabled == null ? 0 : mfaRadiusEnabled!.hashCode) +
    (mfaRadiusProvider == null ? 0 : mfaRadiusProvider!.hashCode) +
    (mfaRadiusUsername == null ? 0 : mfaRadiusUsername!.hashCode) +
    (mfaRememberDeadline == null ? 0 : mfaRememberDeadline!.hashCode) +
    (mfaRememberDigest == null ? 0 : mfaRememberDigest!.hashCode) +
    (microsoftonline == null ? 0 : microsoftonline!.hashCode) +
    (multiFactorAuths.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (naver == null ? 0 : naver!.hashCode) +
    (needUpdatePassword == null ? 0 : needUpdatePassword!.hashCode) +
    (nextcloud == null ? 0 : nextcloud!.hashCode) +
    (okta == null ? 0 : okta!.hashCode) +
    (onedrive == null ? 0 : onedrive!.hashCode) +
    (originalRefreshToken == null ? 0 : originalRefreshToken!.hashCode) +
    (originalToken == null ? 0 : originalToken!.hashCode) +
    (oura == null ? 0 : oura!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (passwordHash == null ? 0 : passwordHash!.hashCode) +
    (passwordSalt == null ? 0 : passwordSalt!.hashCode) +
    (passwordType == null ? 0 : passwordType!.hashCode) +
    (patreon == null ? 0 : patreon!.hashCode) +
    (paypal == null ? 0 : paypal!.hashCode) +
    (permanentAvatar == null ? 0 : permanentAvatar!.hashCode) +
    (phone == null ? 0 : phone!.hashCode) +
    (preHash == null ? 0 : preHash!.hashCode) +
    (preferredMfaType == null ? 0 : preferredMfaType!.hashCode) +
    (properties.hashCode) +
    (qq == null ? 0 : qq!.hashCode) +
    (ranking == null ? 0 : ranking!.hashCode) +
    (realName == null ? 0 : realName!.hashCode) +
    (recoveryCodes.hashCode) +
    (region == null ? 0 : region!.hashCode) +
    (registerSource == null ? 0 : registerSource!.hashCode) +
    (registerType == null ? 0 : registerType!.hashCode) +
    (salesforce == null ? 0 : salesforce!.hashCode) +
    (score == null ? 0 : score!.hashCode) +
    (shopify == null ? 0 : shopify!.hashCode) +
    (signinWrongTimes == null ? 0 : signinWrongTimes!.hashCode) +
    (signupApplication == null ? 0 : signupApplication!.hashCode) +
    (slack == null ? 0 : slack!.hashCode) +
    (soundcloud == null ? 0 : soundcloud!.hashCode) +
    (spotify == null ? 0 : spotify!.hashCode) +
    (steam == null ? 0 : steam!.hashCode) +
    (strava == null ? 0 : strava!.hashCode) +
    (stripe == null ? 0 : stripe!.hashCode) +
    (tag == null ? 0 : tag!.hashCode) +
    (telegram == null ? 0 : telegram!.hashCode) +
    (tiktok == null ? 0 : tiktok!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (totpSecret == null ? 0 : totpSecret!.hashCode) +
    (tumblr == null ? 0 : tumblr!.hashCode) +
    (twitch == null ? 0 : twitch!.hashCode) +
    (twitter == null ? 0 : twitter!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (typetalk == null ? 0 : typetalk!.hashCode) +
    (uber == null ? 0 : uber!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (updatedTime == null ? 0 : updatedTime!.hashCode) +
    (verificationCode == null ? 0 : verificationCode!.hashCode) +
    (vk == null ? 0 : vk!.hashCode) +
    (webauthnCredentials.hashCode) +
    (wechat == null ? 0 : wechat!.hashCode) +
    (wecom == null ? 0 : wecom!.hashCode) +
    (weibo == null ? 0 : weibo!.hashCode) +
    (wepay == null ? 0 : wepay!.hashCode) +
    (xero == null ? 0 : xero!.hashCode) +
    (yahoo == null ? 0 : yahoo!.hashCode) +
    (yammer == null ? 0 : yammer!.hashCode) +
    (yandex == null ? 0 : yandex!.hashCode) +
    (zoom == null ? 0 : zoom!.hashCode);

  @override
  String toString() => 'IamUser[accessKey=$accessKey, accessSecret=$accessSecret, accessSecretHash=$accessSecretHash, accessToken=$accessToken, address=$address, addresses=$addresses, adfs=$adfs, affiliation=$affiliation, alipay=$alipay, amazon=$amazon, apple=$apple, applicationScopes=$applicationScopes, auth0=$auth0, avatar=$avatar, avatarType=$avatarType, azuread=$azuread, azureadb2c=$azureadb2c, baidu=$baidu, balance=$balance, balanceCredit=$balanceCredit, balanceCurrency=$balanceCurrency, battlenet=$battlenet, bilibili=$bilibili, bio=$bio, birthday=$birthday, bitbucket=$bitbucket, box=$box, cart=$cart, cloudfoundry=$cloudfoundry, countryCode=$countryCode, createdAt=$createdAt, createdIp=$createdIp, createdTime=$createdTime, currency=$currency, custom=$custom, custom2=$custom2, custom3=$custom3, custom4=$custom4, custom5=$custom5, custom6=$custom6, custom7=$custom7, custom8=$custom8, custom9=$custom9, custom10=$custom10, dailymotion=$dailymotion, deezer=$deezer, deleted=$deleted, deletedTime=$deletedTime, digitalocean=$digitalocean, dingtalk=$dingtalk, discord=$discord, displayName=$displayName, douyin=$douyin, dropbox=$dropbox, education=$education, email=$email, emailVerified=$emailVerified, eveonline=$eveonline, externalId=$externalId, faceIds=$faceIds, facebook=$facebook, firstName=$firstName, fitbit=$fitbit, gender=$gender, gitea=$gitea, gitee=$gitee, github=$github, gitlab=$gitlab, google=$google, hash=$hash, heroku=$heroku, homepage=$homepage, iam=$iam, id=$id, idCard=$idCard, idCardType=$idCardType, influxcloud=$influxcloud, infoflow=$infoflow, instagram=$instagram, intercom=$intercom, invitation=$invitation, invitationCode=$invitationCode, ipWhitelist=$ipWhitelist, isAdmin=$isAdmin, isDefaultAvatar=$isDefaultAvatar, isDeleted=$isDeleted, isForbidden=$isForbidden, isOnline=$isOnline, isVerified=$isVerified, kakao=$kakao, karma=$karma, kwai=$kwai, language=$language, lark=$lark, lastChangePasswordTime=$lastChangePasswordTime, lastName=$lastName, lastSigninIp=$lastSigninIp, lastSigninTime=$lastSigninTime, lastSigninWrongTime=$lastSigninWrongTime, lastfm=$lastfm, ldap=$ldap, line=$line, linkedin=$linkedin, location=$location, mailru=$mailru, managedAccounts=$managedAccounts, meetup=$meetup, mfaAccounts=$mfaAccounts, mfaEmailEnabled=$mfaEmailEnabled, mfaItems=$mfaItems, mfaPhoneEnabled=$mfaPhoneEnabled, mfaPushEnabled=$mfaPushEnabled, mfaPushProvider=$mfaPushProvider, mfaPushReceiver=$mfaPushReceiver, mfaRadiusEnabled=$mfaRadiusEnabled, mfaRadiusProvider=$mfaRadiusProvider, mfaRadiusUsername=$mfaRadiusUsername, mfaRememberDeadline=$mfaRememberDeadline, mfaRememberDigest=$mfaRememberDigest, microsoftonline=$microsoftonline, multiFactorAuths=$multiFactorAuths, name=$name, naver=$naver, needUpdatePassword=$needUpdatePassword, nextcloud=$nextcloud, okta=$okta, onedrive=$onedrive, originalRefreshToken=$originalRefreshToken, originalToken=$originalToken, oura=$oura, owner=$owner, passwordHash=$passwordHash, passwordSalt=$passwordSalt, passwordType=$passwordType, patreon=$patreon, paypal=$paypal, permanentAvatar=$permanentAvatar, phone=$phone, preHash=$preHash, preferredMfaType=$preferredMfaType, properties=$properties, qq=$qq, ranking=$ranking, realName=$realName, recoveryCodes=$recoveryCodes, region=$region, registerSource=$registerSource, registerType=$registerType, salesforce=$salesforce, score=$score, shopify=$shopify, signinWrongTimes=$signinWrongTimes, signupApplication=$signupApplication, slack=$slack, soundcloud=$soundcloud, spotify=$spotify, steam=$steam, strava=$strava, stripe=$stripe, tag=$tag, telegram=$telegram, tiktok=$tiktok, title=$title, totpSecret=$totpSecret, tumblr=$tumblr, twitch=$twitch, twitter=$twitter, type=$type, typetalk=$typetalk, uber=$uber, updatedAt=$updatedAt, updatedTime=$updatedTime, verificationCode=$verificationCode, vk=$vk, webauthnCredentials=$webauthnCredentials, wechat=$wechat, wecom=$wecom, weibo=$weibo, wepay=$wepay, xero=$xero, yahoo=$yahoo, yammer=$yammer, yandex=$yandex, zoom=$zoom]';

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
    if (this.accessSecretHash != null) {
      json[r'accessSecretHash'] = this.accessSecretHash;
    } else {
      json[r'accessSecretHash'] = null;
    }
    if (this.accessToken != null) {
      json[r'accessToken'] = this.accessToken;
    } else {
      json[r'accessToken'] = null;
    }
      json[r'address'] = this.address;
      json[r'addresses'] = this.addresses;
    if (this.adfs != null) {
      json[r'adfs'] = this.adfs;
    } else {
      json[r'adfs'] = null;
    }
    if (this.affiliation != null) {
      json[r'affiliation'] = this.affiliation;
    } else {
      json[r'affiliation'] = null;
    }
    if (this.alipay != null) {
      json[r'alipay'] = this.alipay;
    } else {
      json[r'alipay'] = null;
    }
    if (this.amazon != null) {
      json[r'amazon'] = this.amazon;
    } else {
      json[r'amazon'] = null;
    }
    if (this.apple != null) {
      json[r'apple'] = this.apple;
    } else {
      json[r'apple'] = null;
    }
      json[r'applicationScopes'] = this.applicationScopes;
    if (this.auth0 != null) {
      json[r'auth0'] = this.auth0;
    } else {
      json[r'auth0'] = null;
    }
    if (this.avatar != null) {
      json[r'avatar'] = this.avatar;
    } else {
      json[r'avatar'] = null;
    }
    if (this.avatarType != null) {
      json[r'avatarType'] = this.avatarType;
    } else {
      json[r'avatarType'] = null;
    }
    if (this.azuread != null) {
      json[r'azuread'] = this.azuread;
    } else {
      json[r'azuread'] = null;
    }
    if (this.azureadb2c != null) {
      json[r'azureadb2c'] = this.azureadb2c;
    } else {
      json[r'azureadb2c'] = null;
    }
    if (this.baidu != null) {
      json[r'baidu'] = this.baidu;
    } else {
      json[r'baidu'] = null;
    }
    if (this.balance != null) {
      json[r'balance'] = this.balance;
    } else {
      json[r'balance'] = null;
    }
    if (this.balanceCredit != null) {
      json[r'balanceCredit'] = this.balanceCredit;
    } else {
      json[r'balanceCredit'] = null;
    }
    if (this.balanceCurrency != null) {
      json[r'balanceCurrency'] = this.balanceCurrency;
    } else {
      json[r'balanceCurrency'] = null;
    }
    if (this.battlenet != null) {
      json[r'battlenet'] = this.battlenet;
    } else {
      json[r'battlenet'] = null;
    }
    if (this.bilibili != null) {
      json[r'bilibili'] = this.bilibili;
    } else {
      json[r'bilibili'] = null;
    }
    if (this.bio != null) {
      json[r'bio'] = this.bio;
    } else {
      json[r'bio'] = null;
    }
    if (this.birthday != null) {
      json[r'birthday'] = this.birthday;
    } else {
      json[r'birthday'] = null;
    }
    if (this.bitbucket != null) {
      json[r'bitbucket'] = this.bitbucket;
    } else {
      json[r'bitbucket'] = null;
    }
    if (this.box != null) {
      json[r'box'] = this.box;
    } else {
      json[r'box'] = null;
    }
      json[r'cart'] = this.cart;
    if (this.cloudfoundry != null) {
      json[r'cloudfoundry'] = this.cloudfoundry;
    } else {
      json[r'cloudfoundry'] = null;
    }
    if (this.countryCode != null) {
      json[r'countryCode'] = this.countryCode;
    } else {
      json[r'countryCode'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.createdIp != null) {
      json[r'createdIp'] = this.createdIp;
    } else {
      json[r'createdIp'] = null;
    }
    if (this.createdTime != null) {
      json[r'createdTime'] = this.createdTime;
    } else {
      json[r'createdTime'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.custom != null) {
      json[r'custom'] = this.custom;
    } else {
      json[r'custom'] = null;
    }
    if (this.custom2 != null) {
      json[r'custom2'] = this.custom2;
    } else {
      json[r'custom2'] = null;
    }
    if (this.custom3 != null) {
      json[r'custom3'] = this.custom3;
    } else {
      json[r'custom3'] = null;
    }
    if (this.custom4 != null) {
      json[r'custom4'] = this.custom4;
    } else {
      json[r'custom4'] = null;
    }
    if (this.custom5 != null) {
      json[r'custom5'] = this.custom5;
    } else {
      json[r'custom5'] = null;
    }
    if (this.custom6 != null) {
      json[r'custom6'] = this.custom6;
    } else {
      json[r'custom6'] = null;
    }
    if (this.custom7 != null) {
      json[r'custom7'] = this.custom7;
    } else {
      json[r'custom7'] = null;
    }
    if (this.custom8 != null) {
      json[r'custom8'] = this.custom8;
    } else {
      json[r'custom8'] = null;
    }
    if (this.custom9 != null) {
      json[r'custom9'] = this.custom9;
    } else {
      json[r'custom9'] = null;
    }
    if (this.custom10 != null) {
      json[r'custom10'] = this.custom10;
    } else {
      json[r'custom10'] = null;
    }
    if (this.dailymotion != null) {
      json[r'dailymotion'] = this.dailymotion;
    } else {
      json[r'dailymotion'] = null;
    }
    if (this.deezer != null) {
      json[r'deezer'] = this.deezer;
    } else {
      json[r'deezer'] = null;
    }
    if (this.deleted != null) {
      json[r'deleted'] = this.deleted;
    } else {
      json[r'deleted'] = null;
    }
    if (this.deletedTime != null) {
      json[r'deletedTime'] = this.deletedTime;
    } else {
      json[r'deletedTime'] = null;
    }
    if (this.digitalocean != null) {
      json[r'digitalocean'] = this.digitalocean;
    } else {
      json[r'digitalocean'] = null;
    }
    if (this.dingtalk != null) {
      json[r'dingtalk'] = this.dingtalk;
    } else {
      json[r'dingtalk'] = null;
    }
    if (this.discord != null) {
      json[r'discord'] = this.discord;
    } else {
      json[r'discord'] = null;
    }
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.douyin != null) {
      json[r'douyin'] = this.douyin;
    } else {
      json[r'douyin'] = null;
    }
    if (this.dropbox != null) {
      json[r'dropbox'] = this.dropbox;
    } else {
      json[r'dropbox'] = null;
    }
    if (this.education != null) {
      json[r'education'] = this.education;
    } else {
      json[r'education'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.emailVerified != null) {
      json[r'emailVerified'] = this.emailVerified;
    } else {
      json[r'emailVerified'] = null;
    }
    if (this.eveonline != null) {
      json[r'eveonline'] = this.eveonline;
    } else {
      json[r'eveonline'] = null;
    }
    if (this.externalId != null) {
      json[r'externalId'] = this.externalId;
    } else {
      json[r'externalId'] = null;
    }
      json[r'faceIds'] = this.faceIds;
    if (this.facebook != null) {
      json[r'facebook'] = this.facebook;
    } else {
      json[r'facebook'] = null;
    }
    if (this.firstName != null) {
      json[r'firstName'] = this.firstName;
    } else {
      json[r'firstName'] = null;
    }
    if (this.fitbit != null) {
      json[r'fitbit'] = this.fitbit;
    } else {
      json[r'fitbit'] = null;
    }
    if (this.gender != null) {
      json[r'gender'] = this.gender;
    } else {
      json[r'gender'] = null;
    }
    if (this.gitea != null) {
      json[r'gitea'] = this.gitea;
    } else {
      json[r'gitea'] = null;
    }
    if (this.gitee != null) {
      json[r'gitee'] = this.gitee;
    } else {
      json[r'gitee'] = null;
    }
    if (this.github != null) {
      json[r'github'] = this.github;
    } else {
      json[r'github'] = null;
    }
    if (this.gitlab != null) {
      json[r'gitlab'] = this.gitlab;
    } else {
      json[r'gitlab'] = null;
    }
    if (this.google != null) {
      json[r'google'] = this.google;
    } else {
      json[r'google'] = null;
    }
    if (this.hash != null) {
      json[r'hash'] = this.hash;
    } else {
      json[r'hash'] = null;
    }
    if (this.heroku != null) {
      json[r'heroku'] = this.heroku;
    } else {
      json[r'heroku'] = null;
    }
    if (this.homepage != null) {
      json[r'homepage'] = this.homepage;
    } else {
      json[r'homepage'] = null;
    }
    if (this.iam != null) {
      json[r'iam'] = this.iam;
    } else {
      json[r'iam'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.idCard != null) {
      json[r'idCard'] = this.idCard;
    } else {
      json[r'idCard'] = null;
    }
    if (this.idCardType != null) {
      json[r'idCardType'] = this.idCardType;
    } else {
      json[r'idCardType'] = null;
    }
    if (this.influxcloud != null) {
      json[r'influxcloud'] = this.influxcloud;
    } else {
      json[r'influxcloud'] = null;
    }
    if (this.infoflow != null) {
      json[r'infoflow'] = this.infoflow;
    } else {
      json[r'infoflow'] = null;
    }
    if (this.instagram != null) {
      json[r'instagram'] = this.instagram;
    } else {
      json[r'instagram'] = null;
    }
    if (this.intercom != null) {
      json[r'intercom'] = this.intercom;
    } else {
      json[r'intercom'] = null;
    }
    if (this.invitation != null) {
      json[r'invitation'] = this.invitation;
    } else {
      json[r'invitation'] = null;
    }
    if (this.invitationCode != null) {
      json[r'invitationCode'] = this.invitationCode;
    } else {
      json[r'invitationCode'] = null;
    }
    if (this.ipWhitelist != null) {
      json[r'ipWhitelist'] = this.ipWhitelist;
    } else {
      json[r'ipWhitelist'] = null;
    }
    if (this.isAdmin != null) {
      json[r'isAdmin'] = this.isAdmin;
    } else {
      json[r'isAdmin'] = null;
    }
    if (this.isDefaultAvatar != null) {
      json[r'isDefaultAvatar'] = this.isDefaultAvatar;
    } else {
      json[r'isDefaultAvatar'] = null;
    }
    if (this.isDeleted != null) {
      json[r'isDeleted'] = this.isDeleted;
    } else {
      json[r'isDeleted'] = null;
    }
    if (this.isForbidden != null) {
      json[r'isForbidden'] = this.isForbidden;
    } else {
      json[r'isForbidden'] = null;
    }
    if (this.isOnline != null) {
      json[r'isOnline'] = this.isOnline;
    } else {
      json[r'isOnline'] = null;
    }
    if (this.isVerified != null) {
      json[r'isVerified'] = this.isVerified;
    } else {
      json[r'isVerified'] = null;
    }
    if (this.kakao != null) {
      json[r'kakao'] = this.kakao;
    } else {
      json[r'kakao'] = null;
    }
    if (this.karma != null) {
      json[r'karma'] = this.karma;
    } else {
      json[r'karma'] = null;
    }
    if (this.kwai != null) {
      json[r'kwai'] = this.kwai;
    } else {
      json[r'kwai'] = null;
    }
    if (this.language != null) {
      json[r'language'] = this.language;
    } else {
      json[r'language'] = null;
    }
    if (this.lark != null) {
      json[r'lark'] = this.lark;
    } else {
      json[r'lark'] = null;
    }
    if (this.lastChangePasswordTime != null) {
      json[r'lastChangePasswordTime'] = this.lastChangePasswordTime;
    } else {
      json[r'lastChangePasswordTime'] = null;
    }
    if (this.lastName != null) {
      json[r'lastName'] = this.lastName;
    } else {
      json[r'lastName'] = null;
    }
    if (this.lastSigninIp != null) {
      json[r'lastSigninIp'] = this.lastSigninIp;
    } else {
      json[r'lastSigninIp'] = null;
    }
    if (this.lastSigninTime != null) {
      json[r'lastSigninTime'] = this.lastSigninTime;
    } else {
      json[r'lastSigninTime'] = null;
    }
    if (this.lastSigninWrongTime != null) {
      json[r'lastSigninWrongTime'] = this.lastSigninWrongTime;
    } else {
      json[r'lastSigninWrongTime'] = null;
    }
    if (this.lastfm != null) {
      json[r'lastfm'] = this.lastfm;
    } else {
      json[r'lastfm'] = null;
    }
    if (this.ldap != null) {
      json[r'ldap'] = this.ldap;
    } else {
      json[r'ldap'] = null;
    }
    if (this.line != null) {
      json[r'line'] = this.line;
    } else {
      json[r'line'] = null;
    }
    if (this.linkedin != null) {
      json[r'linkedin'] = this.linkedin;
    } else {
      json[r'linkedin'] = null;
    }
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
    if (this.mailru != null) {
      json[r'mailru'] = this.mailru;
    } else {
      json[r'mailru'] = null;
    }
      json[r'managedAccounts'] = this.managedAccounts;
    if (this.meetup != null) {
      json[r'meetup'] = this.meetup;
    } else {
      json[r'meetup'] = null;
    }
      json[r'mfaAccounts'] = this.mfaAccounts;
    if (this.mfaEmailEnabled != null) {
      json[r'mfaEmailEnabled'] = this.mfaEmailEnabled;
    } else {
      json[r'mfaEmailEnabled'] = null;
    }
      json[r'mfaItems'] = this.mfaItems;
    if (this.mfaPhoneEnabled != null) {
      json[r'mfaPhoneEnabled'] = this.mfaPhoneEnabled;
    } else {
      json[r'mfaPhoneEnabled'] = null;
    }
    if (this.mfaPushEnabled != null) {
      json[r'mfaPushEnabled'] = this.mfaPushEnabled;
    } else {
      json[r'mfaPushEnabled'] = null;
    }
    if (this.mfaPushProvider != null) {
      json[r'mfaPushProvider'] = this.mfaPushProvider;
    } else {
      json[r'mfaPushProvider'] = null;
    }
    if (this.mfaPushReceiver != null) {
      json[r'mfaPushReceiver'] = this.mfaPushReceiver;
    } else {
      json[r'mfaPushReceiver'] = null;
    }
    if (this.mfaRadiusEnabled != null) {
      json[r'mfaRadiusEnabled'] = this.mfaRadiusEnabled;
    } else {
      json[r'mfaRadiusEnabled'] = null;
    }
    if (this.mfaRadiusProvider != null) {
      json[r'mfaRadiusProvider'] = this.mfaRadiusProvider;
    } else {
      json[r'mfaRadiusProvider'] = null;
    }
    if (this.mfaRadiusUsername != null) {
      json[r'mfaRadiusUsername'] = this.mfaRadiusUsername;
    } else {
      json[r'mfaRadiusUsername'] = null;
    }
    if (this.mfaRememberDeadline != null) {
      json[r'mfaRememberDeadline'] = this.mfaRememberDeadline;
    } else {
      json[r'mfaRememberDeadline'] = null;
    }
    if (this.mfaRememberDigest != null) {
      json[r'mfaRememberDigest'] = this.mfaRememberDigest;
    } else {
      json[r'mfaRememberDigest'] = null;
    }
    if (this.microsoftonline != null) {
      json[r'microsoftonline'] = this.microsoftonline;
    } else {
      json[r'microsoftonline'] = null;
    }
      json[r'multiFactorAuths'] = this.multiFactorAuths;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.naver != null) {
      json[r'naver'] = this.naver;
    } else {
      json[r'naver'] = null;
    }
    if (this.needUpdatePassword != null) {
      json[r'needUpdatePassword'] = this.needUpdatePassword;
    } else {
      json[r'needUpdatePassword'] = null;
    }
    if (this.nextcloud != null) {
      json[r'nextcloud'] = this.nextcloud;
    } else {
      json[r'nextcloud'] = null;
    }
    if (this.okta != null) {
      json[r'okta'] = this.okta;
    } else {
      json[r'okta'] = null;
    }
    if (this.onedrive != null) {
      json[r'onedrive'] = this.onedrive;
    } else {
      json[r'onedrive'] = null;
    }
    if (this.originalRefreshToken != null) {
      json[r'originalRefreshToken'] = this.originalRefreshToken;
    } else {
      json[r'originalRefreshToken'] = null;
    }
    if (this.originalToken != null) {
      json[r'originalToken'] = this.originalToken;
    } else {
      json[r'originalToken'] = null;
    }
    if (this.oura != null) {
      json[r'oura'] = this.oura;
    } else {
      json[r'oura'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.passwordHash != null) {
      json[r'passwordHash'] = this.passwordHash;
    } else {
      json[r'passwordHash'] = null;
    }
    if (this.passwordSalt != null) {
      json[r'passwordSalt'] = this.passwordSalt;
    } else {
      json[r'passwordSalt'] = null;
    }
    if (this.passwordType != null) {
      json[r'passwordType'] = this.passwordType;
    } else {
      json[r'passwordType'] = null;
    }
    if (this.patreon != null) {
      json[r'patreon'] = this.patreon;
    } else {
      json[r'patreon'] = null;
    }
    if (this.paypal != null) {
      json[r'paypal'] = this.paypal;
    } else {
      json[r'paypal'] = null;
    }
    if (this.permanentAvatar != null) {
      json[r'permanentAvatar'] = this.permanentAvatar;
    } else {
      json[r'permanentAvatar'] = null;
    }
    if (this.phone != null) {
      json[r'phone'] = this.phone;
    } else {
      json[r'phone'] = null;
    }
    if (this.preHash != null) {
      json[r'preHash'] = this.preHash;
    } else {
      json[r'preHash'] = null;
    }
    if (this.preferredMfaType != null) {
      json[r'preferredMfaType'] = this.preferredMfaType;
    } else {
      json[r'preferredMfaType'] = null;
    }
      json[r'properties'] = this.properties;
    if (this.qq != null) {
      json[r'qq'] = this.qq;
    } else {
      json[r'qq'] = null;
    }
    if (this.ranking != null) {
      json[r'ranking'] = this.ranking;
    } else {
      json[r'ranking'] = null;
    }
    if (this.realName != null) {
      json[r'realName'] = this.realName;
    } else {
      json[r'realName'] = null;
    }
      json[r'recoveryCodes'] = this.recoveryCodes;
    if (this.region != null) {
      json[r'region'] = this.region;
    } else {
      json[r'region'] = null;
    }
    if (this.registerSource != null) {
      json[r'registerSource'] = this.registerSource;
    } else {
      json[r'registerSource'] = null;
    }
    if (this.registerType != null) {
      json[r'registerType'] = this.registerType;
    } else {
      json[r'registerType'] = null;
    }
    if (this.salesforce != null) {
      json[r'salesforce'] = this.salesforce;
    } else {
      json[r'salesforce'] = null;
    }
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    if (this.shopify != null) {
      json[r'shopify'] = this.shopify;
    } else {
      json[r'shopify'] = null;
    }
    if (this.signinWrongTimes != null) {
      json[r'signinWrongTimes'] = this.signinWrongTimes;
    } else {
      json[r'signinWrongTimes'] = null;
    }
    if (this.signupApplication != null) {
      json[r'signupApplication'] = this.signupApplication;
    } else {
      json[r'signupApplication'] = null;
    }
    if (this.slack != null) {
      json[r'slack'] = this.slack;
    } else {
      json[r'slack'] = null;
    }
    if (this.soundcloud != null) {
      json[r'soundcloud'] = this.soundcloud;
    } else {
      json[r'soundcloud'] = null;
    }
    if (this.spotify != null) {
      json[r'spotify'] = this.spotify;
    } else {
      json[r'spotify'] = null;
    }
    if (this.steam != null) {
      json[r'steam'] = this.steam;
    } else {
      json[r'steam'] = null;
    }
    if (this.strava != null) {
      json[r'strava'] = this.strava;
    } else {
      json[r'strava'] = null;
    }
    if (this.stripe != null) {
      json[r'stripe'] = this.stripe;
    } else {
      json[r'stripe'] = null;
    }
    if (this.tag != null) {
      json[r'tag'] = this.tag;
    } else {
      json[r'tag'] = null;
    }
    if (this.telegram != null) {
      json[r'telegram'] = this.telegram;
    } else {
      json[r'telegram'] = null;
    }
    if (this.tiktok != null) {
      json[r'tiktok'] = this.tiktok;
    } else {
      json[r'tiktok'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.totpSecret != null) {
      json[r'totpSecret'] = this.totpSecret;
    } else {
      json[r'totpSecret'] = null;
    }
    if (this.tumblr != null) {
      json[r'tumblr'] = this.tumblr;
    } else {
      json[r'tumblr'] = null;
    }
    if (this.twitch != null) {
      json[r'twitch'] = this.twitch;
    } else {
      json[r'twitch'] = null;
    }
    if (this.twitter != null) {
      json[r'twitter'] = this.twitter;
    } else {
      json[r'twitter'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.typetalk != null) {
      json[r'typetalk'] = this.typetalk;
    } else {
      json[r'typetalk'] = null;
    }
    if (this.uber != null) {
      json[r'uber'] = this.uber;
    } else {
      json[r'uber'] = null;
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
    if (this.verificationCode != null) {
      json[r'verificationCode'] = this.verificationCode;
    } else {
      json[r'verificationCode'] = null;
    }
    if (this.vk != null) {
      json[r'vk'] = this.vk;
    } else {
      json[r'vk'] = null;
    }
      json[r'webauthnCredentials'] = this.webauthnCredentials;
    if (this.wechat != null) {
      json[r'wechat'] = this.wechat;
    } else {
      json[r'wechat'] = null;
    }
    if (this.wecom != null) {
      json[r'wecom'] = this.wecom;
    } else {
      json[r'wecom'] = null;
    }
    if (this.weibo != null) {
      json[r'weibo'] = this.weibo;
    } else {
      json[r'weibo'] = null;
    }
    if (this.wepay != null) {
      json[r'wepay'] = this.wepay;
    } else {
      json[r'wepay'] = null;
    }
    if (this.xero != null) {
      json[r'xero'] = this.xero;
    } else {
      json[r'xero'] = null;
    }
    if (this.yahoo != null) {
      json[r'yahoo'] = this.yahoo;
    } else {
      json[r'yahoo'] = null;
    }
    if (this.yammer != null) {
      json[r'yammer'] = this.yammer;
    } else {
      json[r'yammer'] = null;
    }
    if (this.yandex != null) {
      json[r'yandex'] = this.yandex;
    } else {
      json[r'yandex'] = null;
    }
    if (this.zoom != null) {
      json[r'zoom'] = this.zoom;
    } else {
      json[r'zoom'] = null;
    }
    return json;
  }

  /// Returns a new [IamUser] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamUser? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamUser[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamUser[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamUser(
        accessKey: mapValueOfType<String>(json, r'accessKey'),
        accessSecret: mapValueOfType<String>(json, r'accessSecret'),
        accessSecretHash: mapValueOfType<String>(json, r'accessSecretHash'),
        accessToken: mapValueOfType<String>(json, r'accessToken'),
        address: json[r'address'] is Iterable
            ? (json[r'address'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        addresses: IamAddress.listFromJson(json[r'addresses']),
        adfs: mapValueOfType<String>(json, r'adfs'),
        affiliation: mapValueOfType<String>(json, r'affiliation'),
        alipay: mapValueOfType<String>(json, r'alipay'),
        amazon: mapValueOfType<String>(json, r'amazon'),
        apple: mapValueOfType<String>(json, r'apple'),
        applicationScopes: IamConsentRecord.listFromJson(json[r'applicationScopes']),
        auth0: mapValueOfType<String>(json, r'auth0'),
        avatar: mapValueOfType<String>(json, r'avatar'),
        avatarType: mapValueOfType<String>(json, r'avatarType'),
        azuread: mapValueOfType<String>(json, r'azuread'),
        azureadb2c: mapValueOfType<String>(json, r'azureadb2c'),
        baidu: mapValueOfType<String>(json, r'baidu'),
        balance: mapValueOfType<double>(json, r'balance'),
        balanceCredit: mapValueOfType<double>(json, r'balanceCredit'),
        balanceCurrency: mapValueOfType<String>(json, r'balanceCurrency'),
        battlenet: mapValueOfType<String>(json, r'battlenet'),
        bilibili: mapValueOfType<String>(json, r'bilibili'),
        bio: mapValueOfType<String>(json, r'bio'),
        birthday: mapValueOfType<String>(json, r'birthday'),
        bitbucket: mapValueOfType<String>(json, r'bitbucket'),
        box: mapValueOfType<String>(json, r'box'),
        cart: IamCartItem.listFromJson(json[r'cart']),
        cloudfoundry: mapValueOfType<String>(json, r'cloudfoundry'),
        countryCode: mapValueOfType<String>(json, r'countryCode'),
        createdAt: mapDateTime(json, r'createdAt', r''),
        createdIp: mapValueOfType<String>(json, r'createdIp'),
        createdTime: mapValueOfType<String>(json, r'createdTime'),
        currency: mapValueOfType<String>(json, r'currency'),
        custom: mapValueOfType<String>(json, r'custom'),
        custom2: mapValueOfType<String>(json, r'custom2'),
        custom3: mapValueOfType<String>(json, r'custom3'),
        custom4: mapValueOfType<String>(json, r'custom4'),
        custom5: mapValueOfType<String>(json, r'custom5'),
        custom6: mapValueOfType<String>(json, r'custom6'),
        custom7: mapValueOfType<String>(json, r'custom7'),
        custom8: mapValueOfType<String>(json, r'custom8'),
        custom9: mapValueOfType<String>(json, r'custom9'),
        custom10: mapValueOfType<String>(json, r'custom10'),
        dailymotion: mapValueOfType<String>(json, r'dailymotion'),
        deezer: mapValueOfType<String>(json, r'deezer'),
        deleted: mapValueOfType<bool>(json, r'deleted'),
        deletedTime: mapValueOfType<String>(json, r'deletedTime'),
        digitalocean: mapValueOfType<String>(json, r'digitalocean'),
        dingtalk: mapValueOfType<String>(json, r'dingtalk'),
        discord: mapValueOfType<String>(json, r'discord'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        douyin: mapValueOfType<String>(json, r'douyin'),
        dropbox: mapValueOfType<String>(json, r'dropbox'),
        education: mapValueOfType<String>(json, r'education'),
        email: mapValueOfType<String>(json, r'email'),
        emailVerified: mapValueOfType<bool>(json, r'emailVerified'),
        eveonline: mapValueOfType<String>(json, r'eveonline'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        faceIds: IamFaceId.listFromJson(json[r'faceIds']),
        facebook: mapValueOfType<String>(json, r'facebook'),
        firstName: mapValueOfType<String>(json, r'firstName'),
        fitbit: mapValueOfType<String>(json, r'fitbit'),
        gender: mapValueOfType<String>(json, r'gender'),
        gitea: mapValueOfType<String>(json, r'gitea'),
        gitee: mapValueOfType<String>(json, r'gitee'),
        github: mapValueOfType<String>(json, r'github'),
        gitlab: mapValueOfType<String>(json, r'gitlab'),
        google: mapValueOfType<String>(json, r'google'),
        hash: mapValueOfType<String>(json, r'hash'),
        heroku: mapValueOfType<String>(json, r'heroku'),
        homepage: mapValueOfType<String>(json, r'homepage'),
        iam: mapValueOfType<String>(json, r'iam'),
        id: mapValueOfType<String>(json, r'id'),
        idCard: mapValueOfType<String>(json, r'idCard'),
        idCardType: mapValueOfType<String>(json, r'idCardType'),
        influxcloud: mapValueOfType<String>(json, r'influxcloud'),
        infoflow: mapValueOfType<String>(json, r'infoflow'),
        instagram: mapValueOfType<String>(json, r'instagram'),
        intercom: mapValueOfType<String>(json, r'intercom'),
        invitation: mapValueOfType<String>(json, r'invitation'),
        invitationCode: mapValueOfType<String>(json, r'invitationCode'),
        ipWhitelist: mapValueOfType<String>(json, r'ipWhitelist'),
        isAdmin: mapValueOfType<bool>(json, r'isAdmin'),
        isDefaultAvatar: mapValueOfType<bool>(json, r'isDefaultAvatar'),
        isDeleted: mapValueOfType<bool>(json, r'isDeleted'),
        isForbidden: mapValueOfType<bool>(json, r'isForbidden'),
        isOnline: mapValueOfType<bool>(json, r'isOnline'),
        isVerified: mapValueOfType<bool>(json, r'isVerified'),
        kakao: mapValueOfType<String>(json, r'kakao'),
        karma: mapValueOfType<int>(json, r'karma'),
        kwai: mapValueOfType<String>(json, r'kwai'),
        language: mapValueOfType<String>(json, r'language'),
        lark: mapValueOfType<String>(json, r'lark'),
        lastChangePasswordTime: mapValueOfType<String>(json, r'lastChangePasswordTime'),
        lastName: mapValueOfType<String>(json, r'lastName'),
        lastSigninIp: mapValueOfType<String>(json, r'lastSigninIp'),
        lastSigninTime: mapValueOfType<String>(json, r'lastSigninTime'),
        lastSigninWrongTime: mapValueOfType<String>(json, r'lastSigninWrongTime'),
        lastfm: mapValueOfType<String>(json, r'lastfm'),
        ldap: mapValueOfType<String>(json, r'ldap'),
        line: mapValueOfType<String>(json, r'line'),
        linkedin: mapValueOfType<String>(json, r'linkedin'),
        location: mapValueOfType<String>(json, r'location'),
        mailru: mapValueOfType<String>(json, r'mailru'),
        managedAccounts: IamManagedAccount.listFromJson(json[r'managedAccounts']),
        meetup: mapValueOfType<String>(json, r'meetup'),
        mfaAccounts: IamMfaAccount.listFromJson(json[r'mfaAccounts']),
        mfaEmailEnabled: mapValueOfType<bool>(json, r'mfaEmailEnabled'),
        mfaItems: IamMfaItem.listFromJson(json[r'mfaItems']),
        mfaPhoneEnabled: mapValueOfType<bool>(json, r'mfaPhoneEnabled'),
        mfaPushEnabled: mapValueOfType<bool>(json, r'mfaPushEnabled'),
        mfaPushProvider: mapValueOfType<String>(json, r'mfaPushProvider'),
        mfaPushReceiver: mapValueOfType<String>(json, r'mfaPushReceiver'),
        mfaRadiusEnabled: mapValueOfType<bool>(json, r'mfaRadiusEnabled'),
        mfaRadiusProvider: mapValueOfType<String>(json, r'mfaRadiusProvider'),
        mfaRadiusUsername: mapValueOfType<String>(json, r'mfaRadiusUsername'),
        mfaRememberDeadline: mapValueOfType<String>(json, r'mfaRememberDeadline'),
        mfaRememberDigest: mapValueOfType<String>(json, r'mfaRememberDigest'),
        microsoftonline: mapValueOfType<String>(json, r'microsoftonline'),
        multiFactorAuths: IamMfaProps.listFromJson(json[r'multiFactorAuths']),
        name: mapValueOfType<String>(json, r'name'),
        naver: mapValueOfType<String>(json, r'naver'),
        needUpdatePassword: mapValueOfType<bool>(json, r'needUpdatePassword'),
        nextcloud: mapValueOfType<String>(json, r'nextcloud'),
        okta: mapValueOfType<String>(json, r'okta'),
        onedrive: mapValueOfType<String>(json, r'onedrive'),
        originalRefreshToken: mapValueOfType<String>(json, r'originalRefreshToken'),
        originalToken: mapValueOfType<String>(json, r'originalToken'),
        oura: mapValueOfType<String>(json, r'oura'),
        owner: mapValueOfType<String>(json, r'owner'),
        passwordHash: mapValueOfType<String>(json, r'passwordHash'),
        passwordSalt: mapValueOfType<String>(json, r'passwordSalt'),
        passwordType: mapValueOfType<String>(json, r'passwordType'),
        patreon: mapValueOfType<String>(json, r'patreon'),
        paypal: mapValueOfType<String>(json, r'paypal'),
        permanentAvatar: mapValueOfType<String>(json, r'permanentAvatar'),
        phone: mapValueOfType<String>(json, r'phone'),
        preHash: mapValueOfType<String>(json, r'preHash'),
        preferredMfaType: mapValueOfType<String>(json, r'preferredMfaType'),
        properties: mapCastOfType<String, String>(json, r'properties') ?? const {},
        qq: mapValueOfType<String>(json, r'qq'),
        ranking: mapValueOfType<int>(json, r'ranking'),
        realName: mapValueOfType<String>(json, r'realName'),
        recoveryCodes: json[r'recoveryCodes'] is Iterable
            ? (json[r'recoveryCodes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        region: mapValueOfType<String>(json, r'region'),
        registerSource: mapValueOfType<String>(json, r'registerSource'),
        registerType: mapValueOfType<String>(json, r'registerType'),
        salesforce: mapValueOfType<String>(json, r'salesforce'),
        score: mapValueOfType<int>(json, r'score'),
        shopify: mapValueOfType<String>(json, r'shopify'),
        signinWrongTimes: mapValueOfType<int>(json, r'signinWrongTimes'),
        signupApplication: mapValueOfType<String>(json, r'signupApplication'),
        slack: mapValueOfType<String>(json, r'slack'),
        soundcloud: mapValueOfType<String>(json, r'soundcloud'),
        spotify: mapValueOfType<String>(json, r'spotify'),
        steam: mapValueOfType<String>(json, r'steam'),
        strava: mapValueOfType<String>(json, r'strava'),
        stripe: mapValueOfType<String>(json, r'stripe'),
        tag: mapValueOfType<String>(json, r'tag'),
        telegram: mapValueOfType<String>(json, r'telegram'),
        tiktok: mapValueOfType<String>(json, r'tiktok'),
        title: mapValueOfType<String>(json, r'title'),
        totpSecret: mapValueOfType<String>(json, r'totpSecret'),
        tumblr: mapValueOfType<String>(json, r'tumblr'),
        twitch: mapValueOfType<String>(json, r'twitch'),
        twitter: mapValueOfType<String>(json, r'twitter'),
        type: mapValueOfType<String>(json, r'type'),
        typetalk: mapValueOfType<String>(json, r'typetalk'),
        uber: mapValueOfType<String>(json, r'uber'),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        updatedTime: mapValueOfType<String>(json, r'updatedTime'),
        verificationCode: mapValueOfType<String>(json, r'verificationCode'),
        vk: mapValueOfType<String>(json, r'vk'),
        webauthnCredentials: json[r'webauthnCredentials'] is Iterable
            ? (json[r'webauthnCredentials'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        wechat: mapValueOfType<String>(json, r'wechat'),
        wecom: mapValueOfType<String>(json, r'wecom'),
        weibo: mapValueOfType<String>(json, r'weibo'),
        wepay: mapValueOfType<String>(json, r'wepay'),
        xero: mapValueOfType<String>(json, r'xero'),
        yahoo: mapValueOfType<String>(json, r'yahoo'),
        yammer: mapValueOfType<String>(json, r'yammer'),
        yandex: mapValueOfType<String>(json, r'yandex'),
        zoom: mapValueOfType<String>(json, r'zoom'),
      );
    }
    return null;
  }

  static List<IamUser> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamUser>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamUser.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamUser> mapFromJson(dynamic json) {
    final map = <String, IamUser>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamUser.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamUser-objects as value to a dart map
  static Map<String, List<IamUser>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamUser>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamUser.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

