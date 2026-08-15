//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GithubInstallationView {
  /// Returns a new [GithubInstallationView] instance.
  GithubInstallationView({
    this.connected,
    this.grant,
    this.htmlUrl,
    this.login,
    this.type,
  });

  /// Connected reports whether THIS org has already bound this account.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? connected;

  /// Grant is \"all\" or \"selected\" — how many of the account's repositories the install covers. A reader deciding what to import needs the reach, not just the name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? grant;

  /// HTMLURL is the account's page on GitHub.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? htmlUrl;

  /// Login is the GitHub account name — the org or user the App is installed on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? login;

  /// Type is \"Organization\" or \"User\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GithubInstallationView &&
    other.connected == connected &&
    other.grant == grant &&
    other.htmlUrl == htmlUrl &&
    other.login == login &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (connected == null ? 0 : connected!.hashCode) +
    (grant == null ? 0 : grant!.hashCode) +
    (htmlUrl == null ? 0 : htmlUrl!.hashCode) +
    (login == null ? 0 : login!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'GithubInstallationView[connected=$connected, grant=$grant, htmlUrl=$htmlUrl, login=$login, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.connected != null) {
      json[r'connected'] = this.connected;
    } else {
      json[r'connected'] = null;
    }
    if (this.grant != null) {
      json[r'grant'] = this.grant;
    } else {
      json[r'grant'] = null;
    }
    if (this.htmlUrl != null) {
      json[r'htmlUrl'] = this.htmlUrl;
    } else {
      json[r'htmlUrl'] = null;
    }
    if (this.login != null) {
      json[r'login'] = this.login;
    } else {
      json[r'login'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [GithubInstallationView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GithubInstallationView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GithubInstallationView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GithubInstallationView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GithubInstallationView(
        connected: mapValueOfType<bool>(json, r'connected'),
        grant: mapValueOfType<String>(json, r'grant'),
        htmlUrl: mapValueOfType<String>(json, r'htmlUrl'),
        login: mapValueOfType<String>(json, r'login'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<GithubInstallationView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GithubInstallationView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GithubInstallationView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GithubInstallationView> mapFromJson(dynamic json) {
    final map = <String, GithubInstallationView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GithubInstallationView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GithubInstallationView-objects as value to a dart map
  static Map<String, List<GithubInstallationView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GithubInstallationView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GithubInstallationView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

