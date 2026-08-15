//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamApplication {
  /// Returns a new [IamApplication] instance.
  IamApplication({
    this.affiliationUrl,
    this.category,
    this.cert,
    this.certObj,
    this.certPublicKey,
    this.clientCert,
    this.clientId,
    this.clientSecret,
    this.codeResendTimeout,
    this.cookieExpireInHours,
    this.createdAt,
    this.createdTime,
    this.customScopes = const [],
    this.defaultGroup,
    this.deleted,
    this.description,
    this.disableSamlAttributes,
    this.disableSignin,
    this.displayName,
    this.domain,
    this.enableAutoSignin,
    this.enableCodeSignin,
    this.enableExclusiveSignin,
    this.enableLinkWithEmail,
    this.enablePassword,
    this.enableSamlAssertionSignature,
    this.enableSamlC14n10,
    this.enableSamlCompress,
    this.enableSamlPostBinding,
    this.enableSignUp,
    this.enableSigninSession,
    this.enableWebAuthn,
    this.environment,
    this.expireInHours,
    this.failedSigninFrozenTime,
    this.failedSigninLimit,
    this.favicon,
    this.footerHtml,
    this.forcedRedirectOrigin,
    this.forgetUrl,
    this.formBackgroundUrl,
    this.formBackgroundUrlMobile,
    this.formCss,
    this.formCssMobile,
    this.formOffset,
    this.formSideHtml,
    this.grantTypes = const [],
    this.headerHtml,
    this.homepageUrl,
    this.id,
    this.ipRestriction,
    this.ipWhitelist,
    this.isShared,
    this.logo,
    this.name,
    this.order,
    this.orgChoiceMode,
    this.organization,
    this.organizationObj,
    this.otherDomains = const [],
    this.owner,
    this.project,
    this.providers = const [],
    this.redirectUris = const [],
    this.refreshExpireInHours,
    this.samlAttributes = const [],
    this.samlHashAlgorithm,
    this.samlReplyUrl,
    this.scopes = const [],
    this.signinHtml,
    this.signinItems = const [],
    this.signinMethods = const [],
    this.signinUrl,
    this.signupHtml,
    this.signupItems = const [],
    this.signupUrl,
    this.sslCert,
    this.sslMode,
    this.tags = const [],
    this.termsOfUse,
    this.themeData,
    this.title,
    this.tokenAttributes = const [],
    this.tokenFields = const [],
    this.tokenFormat,
    this.tokenSigningMethod,
    this.type,
    this.updatedAt,
    this.upstreamHost,
    this.useEmailAsSamlNameId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? affiliationUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

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
  IamCert? certObj;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? certPublicKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientCert;

  /// ClientId is the OAuth2/OIDC client identifier and the GLOBAL key every confidential-client resolver authenticates against (store.GetApplicationByClientId, the mint gates, Basic auth). It MUST be globally unique across ALL owners — a collision would let one app shadow another at that key. This store persists each entity as a JSON document in a shared table, so there is no per-field column to carry a DB UNIQUE index; uniqueness is enforced at the write in applications.Create/Update (ensureClientIdUnique), exactly as the (owner,name) natural key is, and store.GetApplicationByClientId resolves admin-preferring as defense-in-depth.
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
  int? codeResendTimeout;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cookieExpireInHours;

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

  List<IamScopeDescription> customScopes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? defaultGroup;

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
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? disableSamlAttributes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? disableSignin;

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
  String? domain;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableAutoSignin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableCodeSignin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableExclusiveSignin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableLinkWithEmail;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enablePassword;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableSamlAssertionSignature;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableSamlC14n10;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableSamlCompress;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableSamlPostBinding;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableSignUp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableSigninSession;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableWebAuthn;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? environment;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? expireInHours;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? failedSigninFrozenTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? failedSigninLimit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? favicon;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? footerHtml;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? forcedRedirectOrigin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? forgetUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? formBackgroundUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? formBackgroundUrlMobile;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? formCss;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? formCssMobile;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? formOffset;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? formSideHtml;

  List<String> grantTypes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? headerHtml;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? homepageUrl;

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
  String? ipRestriction;

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
  bool? isShared;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logo;

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
  int? order;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orgChoiceMode;

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
  IamOrganization? organizationObj;

  List<String> otherDomains;

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
  String? project;

  List<IamProviderItem> providers;

  List<String> redirectUris;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? refreshExpireInHours;

  List<IamSamlItem> samlAttributes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? samlHashAlgorithm;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? samlReplyUrl;

  List<IamScopeItem> scopes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? signinHtml;

  List<IamSigninItem> signinItems;

  List<IamSigninMethod> signinMethods;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? signinUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? signupHtml;

  List<IamSignupItem> signupItems;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? signupUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sslCert;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sslMode;

  List<String> tags;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? termsOfUse;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IamThemeData? themeData;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  List<IamJwtItem> tokenAttributes;

  List<String> tokenFields;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tokenFormat;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tokenSigningMethod;

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
  String? upstreamHost;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? useEmailAsSamlNameId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamApplication &&
    other.affiliationUrl == affiliationUrl &&
    other.category == category &&
    other.cert == cert &&
    other.certObj == certObj &&
    other.certPublicKey == certPublicKey &&
    other.clientCert == clientCert &&
    other.clientId == clientId &&
    other.clientSecret == clientSecret &&
    other.codeResendTimeout == codeResendTimeout &&
    other.cookieExpireInHours == cookieExpireInHours &&
    other.createdAt == createdAt &&
    other.createdTime == createdTime &&
    _deepEquality.equals(other.customScopes, customScopes) &&
    other.defaultGroup == defaultGroup &&
    other.deleted == deleted &&
    other.description == description &&
    other.disableSamlAttributes == disableSamlAttributes &&
    other.disableSignin == disableSignin &&
    other.displayName == displayName &&
    other.domain == domain &&
    other.enableAutoSignin == enableAutoSignin &&
    other.enableCodeSignin == enableCodeSignin &&
    other.enableExclusiveSignin == enableExclusiveSignin &&
    other.enableLinkWithEmail == enableLinkWithEmail &&
    other.enablePassword == enablePassword &&
    other.enableSamlAssertionSignature == enableSamlAssertionSignature &&
    other.enableSamlC14n10 == enableSamlC14n10 &&
    other.enableSamlCompress == enableSamlCompress &&
    other.enableSamlPostBinding == enableSamlPostBinding &&
    other.enableSignUp == enableSignUp &&
    other.enableSigninSession == enableSigninSession &&
    other.enableWebAuthn == enableWebAuthn &&
    other.environment == environment &&
    other.expireInHours == expireInHours &&
    other.failedSigninFrozenTime == failedSigninFrozenTime &&
    other.failedSigninLimit == failedSigninLimit &&
    other.favicon == favicon &&
    other.footerHtml == footerHtml &&
    other.forcedRedirectOrigin == forcedRedirectOrigin &&
    other.forgetUrl == forgetUrl &&
    other.formBackgroundUrl == formBackgroundUrl &&
    other.formBackgroundUrlMobile == formBackgroundUrlMobile &&
    other.formCss == formCss &&
    other.formCssMobile == formCssMobile &&
    other.formOffset == formOffset &&
    other.formSideHtml == formSideHtml &&
    _deepEquality.equals(other.grantTypes, grantTypes) &&
    other.headerHtml == headerHtml &&
    other.homepageUrl == homepageUrl &&
    other.id == id &&
    other.ipRestriction == ipRestriction &&
    other.ipWhitelist == ipWhitelist &&
    other.isShared == isShared &&
    other.logo == logo &&
    other.name == name &&
    other.order == order &&
    other.orgChoiceMode == orgChoiceMode &&
    other.organization == organization &&
    other.organizationObj == organizationObj &&
    _deepEquality.equals(other.otherDomains, otherDomains) &&
    other.owner == owner &&
    other.project == project &&
    _deepEquality.equals(other.providers, providers) &&
    _deepEquality.equals(other.redirectUris, redirectUris) &&
    other.refreshExpireInHours == refreshExpireInHours &&
    _deepEquality.equals(other.samlAttributes, samlAttributes) &&
    other.samlHashAlgorithm == samlHashAlgorithm &&
    other.samlReplyUrl == samlReplyUrl &&
    _deepEquality.equals(other.scopes, scopes) &&
    other.signinHtml == signinHtml &&
    _deepEquality.equals(other.signinItems, signinItems) &&
    _deepEquality.equals(other.signinMethods, signinMethods) &&
    other.signinUrl == signinUrl &&
    other.signupHtml == signupHtml &&
    _deepEquality.equals(other.signupItems, signupItems) &&
    other.signupUrl == signupUrl &&
    other.sslCert == sslCert &&
    other.sslMode == sslMode &&
    _deepEquality.equals(other.tags, tags) &&
    other.termsOfUse == termsOfUse &&
    other.themeData == themeData &&
    other.title == title &&
    _deepEquality.equals(other.tokenAttributes, tokenAttributes) &&
    _deepEquality.equals(other.tokenFields, tokenFields) &&
    other.tokenFormat == tokenFormat &&
    other.tokenSigningMethod == tokenSigningMethod &&
    other.type == type &&
    other.updatedAt == updatedAt &&
    other.upstreamHost == upstreamHost &&
    other.useEmailAsSamlNameId == useEmailAsSamlNameId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (affiliationUrl == null ? 0 : affiliationUrl!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (cert == null ? 0 : cert!.hashCode) +
    (certObj == null ? 0 : certObj!.hashCode) +
    (certPublicKey == null ? 0 : certPublicKey!.hashCode) +
    (clientCert == null ? 0 : clientCert!.hashCode) +
    (clientId == null ? 0 : clientId!.hashCode) +
    (clientSecret == null ? 0 : clientSecret!.hashCode) +
    (codeResendTimeout == null ? 0 : codeResendTimeout!.hashCode) +
    (cookieExpireInHours == null ? 0 : cookieExpireInHours!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (createdTime == null ? 0 : createdTime!.hashCode) +
    (customScopes.hashCode) +
    (defaultGroup == null ? 0 : defaultGroup!.hashCode) +
    (deleted == null ? 0 : deleted!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (disableSamlAttributes == null ? 0 : disableSamlAttributes!.hashCode) +
    (disableSignin == null ? 0 : disableSignin!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (domain == null ? 0 : domain!.hashCode) +
    (enableAutoSignin == null ? 0 : enableAutoSignin!.hashCode) +
    (enableCodeSignin == null ? 0 : enableCodeSignin!.hashCode) +
    (enableExclusiveSignin == null ? 0 : enableExclusiveSignin!.hashCode) +
    (enableLinkWithEmail == null ? 0 : enableLinkWithEmail!.hashCode) +
    (enablePassword == null ? 0 : enablePassword!.hashCode) +
    (enableSamlAssertionSignature == null ? 0 : enableSamlAssertionSignature!.hashCode) +
    (enableSamlC14n10 == null ? 0 : enableSamlC14n10!.hashCode) +
    (enableSamlCompress == null ? 0 : enableSamlCompress!.hashCode) +
    (enableSamlPostBinding == null ? 0 : enableSamlPostBinding!.hashCode) +
    (enableSignUp == null ? 0 : enableSignUp!.hashCode) +
    (enableSigninSession == null ? 0 : enableSigninSession!.hashCode) +
    (enableWebAuthn == null ? 0 : enableWebAuthn!.hashCode) +
    (environment == null ? 0 : environment!.hashCode) +
    (expireInHours == null ? 0 : expireInHours!.hashCode) +
    (failedSigninFrozenTime == null ? 0 : failedSigninFrozenTime!.hashCode) +
    (failedSigninLimit == null ? 0 : failedSigninLimit!.hashCode) +
    (favicon == null ? 0 : favicon!.hashCode) +
    (footerHtml == null ? 0 : footerHtml!.hashCode) +
    (forcedRedirectOrigin == null ? 0 : forcedRedirectOrigin!.hashCode) +
    (forgetUrl == null ? 0 : forgetUrl!.hashCode) +
    (formBackgroundUrl == null ? 0 : formBackgroundUrl!.hashCode) +
    (formBackgroundUrlMobile == null ? 0 : formBackgroundUrlMobile!.hashCode) +
    (formCss == null ? 0 : formCss!.hashCode) +
    (formCssMobile == null ? 0 : formCssMobile!.hashCode) +
    (formOffset == null ? 0 : formOffset!.hashCode) +
    (formSideHtml == null ? 0 : formSideHtml!.hashCode) +
    (grantTypes.hashCode) +
    (headerHtml == null ? 0 : headerHtml!.hashCode) +
    (homepageUrl == null ? 0 : homepageUrl!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (ipRestriction == null ? 0 : ipRestriction!.hashCode) +
    (ipWhitelist == null ? 0 : ipWhitelist!.hashCode) +
    (isShared == null ? 0 : isShared!.hashCode) +
    (logo == null ? 0 : logo!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (order == null ? 0 : order!.hashCode) +
    (orgChoiceMode == null ? 0 : orgChoiceMode!.hashCode) +
    (organization == null ? 0 : organization!.hashCode) +
    (organizationObj == null ? 0 : organizationObj!.hashCode) +
    (otherDomains.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (providers.hashCode) +
    (redirectUris.hashCode) +
    (refreshExpireInHours == null ? 0 : refreshExpireInHours!.hashCode) +
    (samlAttributes.hashCode) +
    (samlHashAlgorithm == null ? 0 : samlHashAlgorithm!.hashCode) +
    (samlReplyUrl == null ? 0 : samlReplyUrl!.hashCode) +
    (scopes.hashCode) +
    (signinHtml == null ? 0 : signinHtml!.hashCode) +
    (signinItems.hashCode) +
    (signinMethods.hashCode) +
    (signinUrl == null ? 0 : signinUrl!.hashCode) +
    (signupHtml == null ? 0 : signupHtml!.hashCode) +
    (signupItems.hashCode) +
    (signupUrl == null ? 0 : signupUrl!.hashCode) +
    (sslCert == null ? 0 : sslCert!.hashCode) +
    (sslMode == null ? 0 : sslMode!.hashCode) +
    (tags.hashCode) +
    (termsOfUse == null ? 0 : termsOfUse!.hashCode) +
    (themeData == null ? 0 : themeData!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (tokenAttributes.hashCode) +
    (tokenFields.hashCode) +
    (tokenFormat == null ? 0 : tokenFormat!.hashCode) +
    (tokenSigningMethod == null ? 0 : tokenSigningMethod!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (upstreamHost == null ? 0 : upstreamHost!.hashCode) +
    (useEmailAsSamlNameId == null ? 0 : useEmailAsSamlNameId!.hashCode);

  @override
  String toString() => 'IamApplication[affiliationUrl=$affiliationUrl, category=$category, cert=$cert, certObj=$certObj, certPublicKey=$certPublicKey, clientCert=$clientCert, clientId=$clientId, clientSecret=$clientSecret, codeResendTimeout=$codeResendTimeout, cookieExpireInHours=$cookieExpireInHours, createdAt=$createdAt, createdTime=$createdTime, customScopes=$customScopes, defaultGroup=$defaultGroup, deleted=$deleted, description=$description, disableSamlAttributes=$disableSamlAttributes, disableSignin=$disableSignin, displayName=$displayName, domain=$domain, enableAutoSignin=$enableAutoSignin, enableCodeSignin=$enableCodeSignin, enableExclusiveSignin=$enableExclusiveSignin, enableLinkWithEmail=$enableLinkWithEmail, enablePassword=$enablePassword, enableSamlAssertionSignature=$enableSamlAssertionSignature, enableSamlC14n10=$enableSamlC14n10, enableSamlCompress=$enableSamlCompress, enableSamlPostBinding=$enableSamlPostBinding, enableSignUp=$enableSignUp, enableSigninSession=$enableSigninSession, enableWebAuthn=$enableWebAuthn, environment=$environment, expireInHours=$expireInHours, failedSigninFrozenTime=$failedSigninFrozenTime, failedSigninLimit=$failedSigninLimit, favicon=$favicon, footerHtml=$footerHtml, forcedRedirectOrigin=$forcedRedirectOrigin, forgetUrl=$forgetUrl, formBackgroundUrl=$formBackgroundUrl, formBackgroundUrlMobile=$formBackgroundUrlMobile, formCss=$formCss, formCssMobile=$formCssMobile, formOffset=$formOffset, formSideHtml=$formSideHtml, grantTypes=$grantTypes, headerHtml=$headerHtml, homepageUrl=$homepageUrl, id=$id, ipRestriction=$ipRestriction, ipWhitelist=$ipWhitelist, isShared=$isShared, logo=$logo, name=$name, order=$order, orgChoiceMode=$orgChoiceMode, organization=$organization, organizationObj=$organizationObj, otherDomains=$otherDomains, owner=$owner, project=$project, providers=$providers, redirectUris=$redirectUris, refreshExpireInHours=$refreshExpireInHours, samlAttributes=$samlAttributes, samlHashAlgorithm=$samlHashAlgorithm, samlReplyUrl=$samlReplyUrl, scopes=$scopes, signinHtml=$signinHtml, signinItems=$signinItems, signinMethods=$signinMethods, signinUrl=$signinUrl, signupHtml=$signupHtml, signupItems=$signupItems, signupUrl=$signupUrl, sslCert=$sslCert, sslMode=$sslMode, tags=$tags, termsOfUse=$termsOfUse, themeData=$themeData, title=$title, tokenAttributes=$tokenAttributes, tokenFields=$tokenFields, tokenFormat=$tokenFormat, tokenSigningMethod=$tokenSigningMethod, type=$type, updatedAt=$updatedAt, upstreamHost=$upstreamHost, useEmailAsSamlNameId=$useEmailAsSamlNameId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.affiliationUrl != null) {
      json[r'affiliationUrl'] = this.affiliationUrl;
    } else {
      json[r'affiliationUrl'] = null;
    }
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.cert != null) {
      json[r'cert'] = this.cert;
    } else {
      json[r'cert'] = null;
    }
    if (this.certObj != null) {
      json[r'certObj'] = this.certObj;
    } else {
      json[r'certObj'] = null;
    }
    if (this.certPublicKey != null) {
      json[r'certPublicKey'] = this.certPublicKey;
    } else {
      json[r'certPublicKey'] = null;
    }
    if (this.clientCert != null) {
      json[r'clientCert'] = this.clientCert;
    } else {
      json[r'clientCert'] = null;
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
    if (this.codeResendTimeout != null) {
      json[r'codeResendTimeout'] = this.codeResendTimeout;
    } else {
      json[r'codeResendTimeout'] = null;
    }
    if (this.cookieExpireInHours != null) {
      json[r'cookieExpireInHours'] = this.cookieExpireInHours;
    } else {
      json[r'cookieExpireInHours'] = null;
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
      json[r'customScopes'] = this.customScopes;
    if (this.defaultGroup != null) {
      json[r'defaultGroup'] = this.defaultGroup;
    } else {
      json[r'defaultGroup'] = null;
    }
    if (this.deleted != null) {
      json[r'deleted'] = this.deleted;
    } else {
      json[r'deleted'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.disableSamlAttributes != null) {
      json[r'disableSamlAttributes'] = this.disableSamlAttributes;
    } else {
      json[r'disableSamlAttributes'] = null;
    }
    if (this.disableSignin != null) {
      json[r'disableSignin'] = this.disableSignin;
    } else {
      json[r'disableSignin'] = null;
    }
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
    if (this.enableAutoSignin != null) {
      json[r'enableAutoSignin'] = this.enableAutoSignin;
    } else {
      json[r'enableAutoSignin'] = null;
    }
    if (this.enableCodeSignin != null) {
      json[r'enableCodeSignin'] = this.enableCodeSignin;
    } else {
      json[r'enableCodeSignin'] = null;
    }
    if (this.enableExclusiveSignin != null) {
      json[r'enableExclusiveSignin'] = this.enableExclusiveSignin;
    } else {
      json[r'enableExclusiveSignin'] = null;
    }
    if (this.enableLinkWithEmail != null) {
      json[r'enableLinkWithEmail'] = this.enableLinkWithEmail;
    } else {
      json[r'enableLinkWithEmail'] = null;
    }
    if (this.enablePassword != null) {
      json[r'enablePassword'] = this.enablePassword;
    } else {
      json[r'enablePassword'] = null;
    }
    if (this.enableSamlAssertionSignature != null) {
      json[r'enableSamlAssertionSignature'] = this.enableSamlAssertionSignature;
    } else {
      json[r'enableSamlAssertionSignature'] = null;
    }
    if (this.enableSamlC14n10 != null) {
      json[r'enableSamlC14n10'] = this.enableSamlC14n10;
    } else {
      json[r'enableSamlC14n10'] = null;
    }
    if (this.enableSamlCompress != null) {
      json[r'enableSamlCompress'] = this.enableSamlCompress;
    } else {
      json[r'enableSamlCompress'] = null;
    }
    if (this.enableSamlPostBinding != null) {
      json[r'enableSamlPostBinding'] = this.enableSamlPostBinding;
    } else {
      json[r'enableSamlPostBinding'] = null;
    }
    if (this.enableSignUp != null) {
      json[r'enableSignUp'] = this.enableSignUp;
    } else {
      json[r'enableSignUp'] = null;
    }
    if (this.enableSigninSession != null) {
      json[r'enableSigninSession'] = this.enableSigninSession;
    } else {
      json[r'enableSigninSession'] = null;
    }
    if (this.enableWebAuthn != null) {
      json[r'enableWebAuthn'] = this.enableWebAuthn;
    } else {
      json[r'enableWebAuthn'] = null;
    }
    if (this.environment != null) {
      json[r'environment'] = this.environment;
    } else {
      json[r'environment'] = null;
    }
    if (this.expireInHours != null) {
      json[r'expireInHours'] = this.expireInHours;
    } else {
      json[r'expireInHours'] = null;
    }
    if (this.failedSigninFrozenTime != null) {
      json[r'failedSigninFrozenTime'] = this.failedSigninFrozenTime;
    } else {
      json[r'failedSigninFrozenTime'] = null;
    }
    if (this.failedSigninLimit != null) {
      json[r'failedSigninLimit'] = this.failedSigninLimit;
    } else {
      json[r'failedSigninLimit'] = null;
    }
    if (this.favicon != null) {
      json[r'favicon'] = this.favicon;
    } else {
      json[r'favicon'] = null;
    }
    if (this.footerHtml != null) {
      json[r'footerHtml'] = this.footerHtml;
    } else {
      json[r'footerHtml'] = null;
    }
    if (this.forcedRedirectOrigin != null) {
      json[r'forcedRedirectOrigin'] = this.forcedRedirectOrigin;
    } else {
      json[r'forcedRedirectOrigin'] = null;
    }
    if (this.forgetUrl != null) {
      json[r'forgetUrl'] = this.forgetUrl;
    } else {
      json[r'forgetUrl'] = null;
    }
    if (this.formBackgroundUrl != null) {
      json[r'formBackgroundUrl'] = this.formBackgroundUrl;
    } else {
      json[r'formBackgroundUrl'] = null;
    }
    if (this.formBackgroundUrlMobile != null) {
      json[r'formBackgroundUrlMobile'] = this.formBackgroundUrlMobile;
    } else {
      json[r'formBackgroundUrlMobile'] = null;
    }
    if (this.formCss != null) {
      json[r'formCss'] = this.formCss;
    } else {
      json[r'formCss'] = null;
    }
    if (this.formCssMobile != null) {
      json[r'formCssMobile'] = this.formCssMobile;
    } else {
      json[r'formCssMobile'] = null;
    }
    if (this.formOffset != null) {
      json[r'formOffset'] = this.formOffset;
    } else {
      json[r'formOffset'] = null;
    }
    if (this.formSideHtml != null) {
      json[r'formSideHtml'] = this.formSideHtml;
    } else {
      json[r'formSideHtml'] = null;
    }
      json[r'grantTypes'] = this.grantTypes;
    if (this.headerHtml != null) {
      json[r'headerHtml'] = this.headerHtml;
    } else {
      json[r'headerHtml'] = null;
    }
    if (this.homepageUrl != null) {
      json[r'homepageUrl'] = this.homepageUrl;
    } else {
      json[r'homepageUrl'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.ipRestriction != null) {
      json[r'ipRestriction'] = this.ipRestriction;
    } else {
      json[r'ipRestriction'] = null;
    }
    if (this.ipWhitelist != null) {
      json[r'ipWhitelist'] = this.ipWhitelist;
    } else {
      json[r'ipWhitelist'] = null;
    }
    if (this.isShared != null) {
      json[r'isShared'] = this.isShared;
    } else {
      json[r'isShared'] = null;
    }
    if (this.logo != null) {
      json[r'logo'] = this.logo;
    } else {
      json[r'logo'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.order != null) {
      json[r'order'] = this.order;
    } else {
      json[r'order'] = null;
    }
    if (this.orgChoiceMode != null) {
      json[r'orgChoiceMode'] = this.orgChoiceMode;
    } else {
      json[r'orgChoiceMode'] = null;
    }
    if (this.organization != null) {
      json[r'organization'] = this.organization;
    } else {
      json[r'organization'] = null;
    }
    if (this.organizationObj != null) {
      json[r'organizationObj'] = this.organizationObj;
    } else {
      json[r'organizationObj'] = null;
    }
      json[r'otherDomains'] = this.otherDomains;
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
      json[r'providers'] = this.providers;
      json[r'redirectUris'] = this.redirectUris;
    if (this.refreshExpireInHours != null) {
      json[r'refreshExpireInHours'] = this.refreshExpireInHours;
    } else {
      json[r'refreshExpireInHours'] = null;
    }
      json[r'samlAttributes'] = this.samlAttributes;
    if (this.samlHashAlgorithm != null) {
      json[r'samlHashAlgorithm'] = this.samlHashAlgorithm;
    } else {
      json[r'samlHashAlgorithm'] = null;
    }
    if (this.samlReplyUrl != null) {
      json[r'samlReplyUrl'] = this.samlReplyUrl;
    } else {
      json[r'samlReplyUrl'] = null;
    }
      json[r'scopes'] = this.scopes;
    if (this.signinHtml != null) {
      json[r'signinHtml'] = this.signinHtml;
    } else {
      json[r'signinHtml'] = null;
    }
      json[r'signinItems'] = this.signinItems;
      json[r'signinMethods'] = this.signinMethods;
    if (this.signinUrl != null) {
      json[r'signinUrl'] = this.signinUrl;
    } else {
      json[r'signinUrl'] = null;
    }
    if (this.signupHtml != null) {
      json[r'signupHtml'] = this.signupHtml;
    } else {
      json[r'signupHtml'] = null;
    }
      json[r'signupItems'] = this.signupItems;
    if (this.signupUrl != null) {
      json[r'signupUrl'] = this.signupUrl;
    } else {
      json[r'signupUrl'] = null;
    }
    if (this.sslCert != null) {
      json[r'sslCert'] = this.sslCert;
    } else {
      json[r'sslCert'] = null;
    }
    if (this.sslMode != null) {
      json[r'sslMode'] = this.sslMode;
    } else {
      json[r'sslMode'] = null;
    }
      json[r'tags'] = this.tags;
    if (this.termsOfUse != null) {
      json[r'termsOfUse'] = this.termsOfUse;
    } else {
      json[r'termsOfUse'] = null;
    }
    if (this.themeData != null) {
      json[r'themeData'] = this.themeData;
    } else {
      json[r'themeData'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
      json[r'tokenAttributes'] = this.tokenAttributes;
      json[r'tokenFields'] = this.tokenFields;
    if (this.tokenFormat != null) {
      json[r'tokenFormat'] = this.tokenFormat;
    } else {
      json[r'tokenFormat'] = null;
    }
    if (this.tokenSigningMethod != null) {
      json[r'tokenSigningMethod'] = this.tokenSigningMethod;
    } else {
      json[r'tokenSigningMethod'] = null;
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
    if (this.upstreamHost != null) {
      json[r'upstreamHost'] = this.upstreamHost;
    } else {
      json[r'upstreamHost'] = null;
    }
    if (this.useEmailAsSamlNameId != null) {
      json[r'useEmailAsSamlNameId'] = this.useEmailAsSamlNameId;
    } else {
      json[r'useEmailAsSamlNameId'] = null;
    }
    return json;
  }

  /// Returns a new [IamApplication] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamApplication? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamApplication[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamApplication[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamApplication(
        affiliationUrl: mapValueOfType<String>(json, r'affiliationUrl'),
        category: mapValueOfType<String>(json, r'category'),
        cert: mapValueOfType<String>(json, r'cert'),
        certObj: IamCert.fromJson(json[r'certObj']),
        certPublicKey: mapValueOfType<String>(json, r'certPublicKey'),
        clientCert: mapValueOfType<String>(json, r'clientCert'),
        clientId: mapValueOfType<String>(json, r'clientId'),
        clientSecret: mapValueOfType<String>(json, r'clientSecret'),
        codeResendTimeout: mapValueOfType<int>(json, r'codeResendTimeout'),
        cookieExpireInHours: mapValueOfType<int>(json, r'cookieExpireInHours'),
        createdAt: mapDateTime(json, r'createdAt', r''),
        createdTime: mapValueOfType<String>(json, r'createdTime'),
        customScopes: IamScopeDescription.listFromJson(json[r'customScopes']),
        defaultGroup: mapValueOfType<String>(json, r'defaultGroup'),
        deleted: mapValueOfType<bool>(json, r'deleted'),
        description: mapValueOfType<String>(json, r'description'),
        disableSamlAttributes: mapValueOfType<bool>(json, r'disableSamlAttributes'),
        disableSignin: mapValueOfType<bool>(json, r'disableSignin'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        domain: mapValueOfType<String>(json, r'domain'),
        enableAutoSignin: mapValueOfType<bool>(json, r'enableAutoSignin'),
        enableCodeSignin: mapValueOfType<bool>(json, r'enableCodeSignin'),
        enableExclusiveSignin: mapValueOfType<bool>(json, r'enableExclusiveSignin'),
        enableLinkWithEmail: mapValueOfType<bool>(json, r'enableLinkWithEmail'),
        enablePassword: mapValueOfType<bool>(json, r'enablePassword'),
        enableSamlAssertionSignature: mapValueOfType<bool>(json, r'enableSamlAssertionSignature'),
        enableSamlC14n10: mapValueOfType<bool>(json, r'enableSamlC14n10'),
        enableSamlCompress: mapValueOfType<bool>(json, r'enableSamlCompress'),
        enableSamlPostBinding: mapValueOfType<bool>(json, r'enableSamlPostBinding'),
        enableSignUp: mapValueOfType<bool>(json, r'enableSignUp'),
        enableSigninSession: mapValueOfType<bool>(json, r'enableSigninSession'),
        enableWebAuthn: mapValueOfType<bool>(json, r'enableWebAuthn'),
        environment: mapValueOfType<String>(json, r'environment'),
        expireInHours: num.parse('${json[r'expireInHours']}'),
        failedSigninFrozenTime: mapValueOfType<int>(json, r'failedSigninFrozenTime'),
        failedSigninLimit: mapValueOfType<int>(json, r'failedSigninLimit'),
        favicon: mapValueOfType<String>(json, r'favicon'),
        footerHtml: mapValueOfType<String>(json, r'footerHtml'),
        forcedRedirectOrigin: mapValueOfType<String>(json, r'forcedRedirectOrigin'),
        forgetUrl: mapValueOfType<String>(json, r'forgetUrl'),
        formBackgroundUrl: mapValueOfType<String>(json, r'formBackgroundUrl'),
        formBackgroundUrlMobile: mapValueOfType<String>(json, r'formBackgroundUrlMobile'),
        formCss: mapValueOfType<String>(json, r'formCss'),
        formCssMobile: mapValueOfType<String>(json, r'formCssMobile'),
        formOffset: mapValueOfType<int>(json, r'formOffset'),
        formSideHtml: mapValueOfType<String>(json, r'formSideHtml'),
        grantTypes: json[r'grantTypes'] is Iterable
            ? (json[r'grantTypes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        headerHtml: mapValueOfType<String>(json, r'headerHtml'),
        homepageUrl: mapValueOfType<String>(json, r'homepageUrl'),
        id: mapValueOfType<String>(json, r'id'),
        ipRestriction: mapValueOfType<String>(json, r'ipRestriction'),
        ipWhitelist: mapValueOfType<String>(json, r'ipWhitelist'),
        isShared: mapValueOfType<bool>(json, r'isShared'),
        logo: mapValueOfType<String>(json, r'logo'),
        name: mapValueOfType<String>(json, r'name'),
        order: mapValueOfType<int>(json, r'order'),
        orgChoiceMode: mapValueOfType<String>(json, r'orgChoiceMode'),
        organization: mapValueOfType<String>(json, r'organization'),
        organizationObj: IamOrganization.fromJson(json[r'organizationObj']),
        otherDomains: json[r'otherDomains'] is Iterable
            ? (json[r'otherDomains'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        owner: mapValueOfType<String>(json, r'owner'),
        project: mapValueOfType<String>(json, r'project'),
        providers: IamProviderItem.listFromJson(json[r'providers']),
        redirectUris: json[r'redirectUris'] is Iterable
            ? (json[r'redirectUris'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        refreshExpireInHours: num.parse('${json[r'refreshExpireInHours']}'),
        samlAttributes: IamSamlItem.listFromJson(json[r'samlAttributes']),
        samlHashAlgorithm: mapValueOfType<String>(json, r'samlHashAlgorithm'),
        samlReplyUrl: mapValueOfType<String>(json, r'samlReplyUrl'),
        scopes: IamScopeItem.listFromJson(json[r'scopes']),
        signinHtml: mapValueOfType<String>(json, r'signinHtml'),
        signinItems: IamSigninItem.listFromJson(json[r'signinItems']),
        signinMethods: IamSigninMethod.listFromJson(json[r'signinMethods']),
        signinUrl: mapValueOfType<String>(json, r'signinUrl'),
        signupHtml: mapValueOfType<String>(json, r'signupHtml'),
        signupItems: IamSignupItem.listFromJson(json[r'signupItems']),
        signupUrl: mapValueOfType<String>(json, r'signupUrl'),
        sslCert: mapValueOfType<String>(json, r'sslCert'),
        sslMode: mapValueOfType<String>(json, r'sslMode'),
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        termsOfUse: mapValueOfType<String>(json, r'termsOfUse'),
        themeData: IamThemeData.fromJson(json[r'themeData']),
        title: mapValueOfType<String>(json, r'title'),
        tokenAttributes: IamJwtItem.listFromJson(json[r'tokenAttributes']),
        tokenFields: json[r'tokenFields'] is Iterable
            ? (json[r'tokenFields'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        tokenFormat: mapValueOfType<String>(json, r'tokenFormat'),
        tokenSigningMethod: mapValueOfType<String>(json, r'tokenSigningMethod'),
        type: mapValueOfType<String>(json, r'type'),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        upstreamHost: mapValueOfType<String>(json, r'upstreamHost'),
        useEmailAsSamlNameId: mapValueOfType<bool>(json, r'useEmailAsSamlNameId'),
      );
    }
    return null;
  }

  static List<IamApplication> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamApplication>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamApplication.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamApplication> mapFromJson(dynamic json) {
    final map = <String, IamApplication>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamApplication.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamApplication-objects as value to a dart map
  static Map<String, List<IamApplication>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamApplication>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamApplication.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

