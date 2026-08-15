//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ConsoleSettings {
  /// Returns a new [ConsoleSettings] instance.
  ConsoleSettings({
    this.appsInAnyNamespaceEnabled,
    this.dexConfig,
    this.execEnabled,
    this.googleAnalytics,
    this.help,
    this.hydratorEnabled,
    this.kustomizeVersions = const [],
    this.oidcConfig,
    this.plugins = const [],
    this.statusBadgeEnabled,
    this.statusBadgeRootUrl,
    this.syncWithReplaceAllowed,
    this.uiBannerContent,
    this.uiCssURL,
    this.url,
    this.userLoginsDisabled,
  });

  /// AppsInAnyNamespaceEnabled is false: applications are projected from operator App CRs in the platform namespaces, never declared in an arbitrary one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? appsInAnyNamespaceEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ConsoleSettingsDexConfig? dexConfig;

  /// ExecEnabled is false: this plane serves no container terminal.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? execEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ConsoleSettingsGoogleAnalytics? googleAnalytics;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ConsoleSettingsHelp? help;

  /// HydratorEnabled is false: there is no manifest hydrator on this plane.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hydratorEnabled;

  /// KustomizeVersions is always empty: an App CR is an image pin, not a kustomize build.
  List<String> kustomizeVersions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? oidcConfig;

  /// Plugins is always empty: this plane loads no argocd config-management plugins.
  List<Object> plugins;

  /// StatusBadgeEnabled is false: no badge endpoint is served.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? statusBadgeEnabled;

  /// StatusBadgeRootUrl is always empty, for the same reason.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? statusBadgeRootUrl;

  /// SyncWithReplaceAllowed is false: a sync here asks the operator to reconcile an App CR, and never replaces an object.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? syncWithReplaceAllowed;

  /// UiBannerContent is always empty: this console shows no banner.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uiBannerContent;

  /// UiCssURL is always empty: no stylesheet is injected.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uiCssURL;

  /// Url is the console's public origin, https://cd.hanzo.ai.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  /// UserLoginsDisabled is true: the SPA must not render its own username/password form. Signing in goes through IAM, at GET /v1/deploy/login.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? userLoginsDisabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConsoleSettings &&
    other.appsInAnyNamespaceEnabled == appsInAnyNamespaceEnabled &&
    other.dexConfig == dexConfig &&
    other.execEnabled == execEnabled &&
    other.googleAnalytics == googleAnalytics &&
    other.help == help &&
    other.hydratorEnabled == hydratorEnabled &&
    _deepEquality.equals(other.kustomizeVersions, kustomizeVersions) &&
    other.oidcConfig == oidcConfig &&
    _deepEquality.equals(other.plugins, plugins) &&
    other.statusBadgeEnabled == statusBadgeEnabled &&
    other.statusBadgeRootUrl == statusBadgeRootUrl &&
    other.syncWithReplaceAllowed == syncWithReplaceAllowed &&
    other.uiBannerContent == uiBannerContent &&
    other.uiCssURL == uiCssURL &&
    other.url == url &&
    other.userLoginsDisabled == userLoginsDisabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (appsInAnyNamespaceEnabled == null ? 0 : appsInAnyNamespaceEnabled!.hashCode) +
    (dexConfig == null ? 0 : dexConfig!.hashCode) +
    (execEnabled == null ? 0 : execEnabled!.hashCode) +
    (googleAnalytics == null ? 0 : googleAnalytics!.hashCode) +
    (help == null ? 0 : help!.hashCode) +
    (hydratorEnabled == null ? 0 : hydratorEnabled!.hashCode) +
    (kustomizeVersions.hashCode) +
    (oidcConfig == null ? 0 : oidcConfig!.hashCode) +
    (plugins.hashCode) +
    (statusBadgeEnabled == null ? 0 : statusBadgeEnabled!.hashCode) +
    (statusBadgeRootUrl == null ? 0 : statusBadgeRootUrl!.hashCode) +
    (syncWithReplaceAllowed == null ? 0 : syncWithReplaceAllowed!.hashCode) +
    (uiBannerContent == null ? 0 : uiBannerContent!.hashCode) +
    (uiCssURL == null ? 0 : uiCssURL!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (userLoginsDisabled == null ? 0 : userLoginsDisabled!.hashCode);

  @override
  String toString() => 'ConsoleSettings[appsInAnyNamespaceEnabled=$appsInAnyNamespaceEnabled, dexConfig=$dexConfig, execEnabled=$execEnabled, googleAnalytics=$googleAnalytics, help=$help, hydratorEnabled=$hydratorEnabled, kustomizeVersions=$kustomizeVersions, oidcConfig=$oidcConfig, plugins=$plugins, statusBadgeEnabled=$statusBadgeEnabled, statusBadgeRootUrl=$statusBadgeRootUrl, syncWithReplaceAllowed=$syncWithReplaceAllowed, uiBannerContent=$uiBannerContent, uiCssURL=$uiCssURL, url=$url, userLoginsDisabled=$userLoginsDisabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.appsInAnyNamespaceEnabled != null) {
      json[r'appsInAnyNamespaceEnabled'] = this.appsInAnyNamespaceEnabled;
    } else {
      json[r'appsInAnyNamespaceEnabled'] = null;
    }
    if (this.dexConfig != null) {
      json[r'dexConfig'] = this.dexConfig;
    } else {
      json[r'dexConfig'] = null;
    }
    if (this.execEnabled != null) {
      json[r'execEnabled'] = this.execEnabled;
    } else {
      json[r'execEnabled'] = null;
    }
    if (this.googleAnalytics != null) {
      json[r'googleAnalytics'] = this.googleAnalytics;
    } else {
      json[r'googleAnalytics'] = null;
    }
    if (this.help != null) {
      json[r'help'] = this.help;
    } else {
      json[r'help'] = null;
    }
    if (this.hydratorEnabled != null) {
      json[r'hydratorEnabled'] = this.hydratorEnabled;
    } else {
      json[r'hydratorEnabled'] = null;
    }
      json[r'kustomizeVersions'] = this.kustomizeVersions;
    if (this.oidcConfig != null) {
      json[r'oidcConfig'] = this.oidcConfig;
    } else {
      json[r'oidcConfig'] = null;
    }
      json[r'plugins'] = this.plugins;
    if (this.statusBadgeEnabled != null) {
      json[r'statusBadgeEnabled'] = this.statusBadgeEnabled;
    } else {
      json[r'statusBadgeEnabled'] = null;
    }
    if (this.statusBadgeRootUrl != null) {
      json[r'statusBadgeRootUrl'] = this.statusBadgeRootUrl;
    } else {
      json[r'statusBadgeRootUrl'] = null;
    }
    if (this.syncWithReplaceAllowed != null) {
      json[r'syncWithReplaceAllowed'] = this.syncWithReplaceAllowed;
    } else {
      json[r'syncWithReplaceAllowed'] = null;
    }
    if (this.uiBannerContent != null) {
      json[r'uiBannerContent'] = this.uiBannerContent;
    } else {
      json[r'uiBannerContent'] = null;
    }
    if (this.uiCssURL != null) {
      json[r'uiCssURL'] = this.uiCssURL;
    } else {
      json[r'uiCssURL'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.userLoginsDisabled != null) {
      json[r'userLoginsDisabled'] = this.userLoginsDisabled;
    } else {
      json[r'userLoginsDisabled'] = null;
    }
    return json;
  }

  /// Returns a new [ConsoleSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConsoleSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConsoleSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConsoleSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConsoleSettings(
        appsInAnyNamespaceEnabled: mapValueOfType<bool>(json, r'appsInAnyNamespaceEnabled'),
        dexConfig: ConsoleSettingsDexConfig.fromJson(json[r'dexConfig']),
        execEnabled: mapValueOfType<bool>(json, r'execEnabled'),
        googleAnalytics: ConsoleSettingsGoogleAnalytics.fromJson(json[r'googleAnalytics']),
        help: ConsoleSettingsHelp.fromJson(json[r'help']),
        hydratorEnabled: mapValueOfType<bool>(json, r'hydratorEnabled'),
        kustomizeVersions: json[r'kustomizeVersions'] is Iterable
            ? (json[r'kustomizeVersions'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        oidcConfig: mapValueOfType<Object>(json, r'oidcConfig'),
        plugins: json[r'plugins'] is Iterable
            ? (json[r'plugins'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        statusBadgeEnabled: mapValueOfType<bool>(json, r'statusBadgeEnabled'),
        statusBadgeRootUrl: mapValueOfType<String>(json, r'statusBadgeRootUrl'),
        syncWithReplaceAllowed: mapValueOfType<bool>(json, r'syncWithReplaceAllowed'),
        uiBannerContent: mapValueOfType<String>(json, r'uiBannerContent'),
        uiCssURL: mapValueOfType<String>(json, r'uiCssURL'),
        url: mapValueOfType<String>(json, r'url'),
        userLoginsDisabled: mapValueOfType<bool>(json, r'userLoginsDisabled'),
      );
    }
    return null;
  }

  static List<ConsoleSettings> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConsoleSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConsoleSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConsoleSettings> mapFromJson(dynamic json) {
    final map = <String, ConsoleSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConsoleSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConsoleSettings-objects as value to a dart map
  static Map<String, List<ConsoleSettings>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConsoleSettings>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConsoleSettings.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

