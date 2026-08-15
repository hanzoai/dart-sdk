//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SessionUser {
  /// Returns a new [SessionUser] instance.
  SessionUser({
    this.groups = const [],
    this.iss,
    this.loggedIn,
    this.loginUrl,
    this.logoutUrl,
    this.username,
  });

  /// Groups is the caller's group list, always empty here: this console authorizes on the platform SuperAdmin fact alone, not on argocd RBAC groups. Absent for an anonymous caller.
  List<String> groups;

  /// Iss is the token issuer as the SPA expects to see it — the literal \"argocd\", so the UI never triggers an SSO redirect of its own. Absent for an anonymous caller.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iss;

  /// LoggedIn reports whether this browser holds a session this console accepts.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? loggedIn;

  /// LoginURL is where an anonymous caller signs in. Absent once signed in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? loginUrl;

  /// LogoutURL is where a signed-in caller ends the session. Absent when anonymous.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logoutUrl;

  /// Username is the validated principal's user ID — the opaque gateway id, which is what argocd's UI renders as the signed-in user here — or \"admin\" when the principal carries none. Absent when anonymous.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SessionUser &&
    _deepEquality.equals(other.groups, groups) &&
    other.iss == iss &&
    other.loggedIn == loggedIn &&
    other.loginUrl == loginUrl &&
    other.logoutUrl == logoutUrl &&
    other.username == username;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (groups.hashCode) +
    (iss == null ? 0 : iss!.hashCode) +
    (loggedIn == null ? 0 : loggedIn!.hashCode) +
    (loginUrl == null ? 0 : loginUrl!.hashCode) +
    (logoutUrl == null ? 0 : logoutUrl!.hashCode) +
    (username == null ? 0 : username!.hashCode);

  @override
  String toString() => 'SessionUser[groups=$groups, iss=$iss, loggedIn=$loggedIn, loginUrl=$loginUrl, logoutUrl=$logoutUrl, username=$username]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'groups'] = this.groups;
    if (this.iss != null) {
      json[r'iss'] = this.iss;
    } else {
      json[r'iss'] = null;
    }
    if (this.loggedIn != null) {
      json[r'loggedIn'] = this.loggedIn;
    } else {
      json[r'loggedIn'] = null;
    }
    if (this.loginUrl != null) {
      json[r'loginUrl'] = this.loginUrl;
    } else {
      json[r'loginUrl'] = null;
    }
    if (this.logoutUrl != null) {
      json[r'logoutUrl'] = this.logoutUrl;
    } else {
      json[r'logoutUrl'] = null;
    }
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
    return json;
  }

  /// Returns a new [SessionUser] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SessionUser? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SessionUser[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SessionUser[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SessionUser(
        groups: json[r'groups'] is Iterable
            ? (json[r'groups'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        iss: mapValueOfType<String>(json, r'iss'),
        loggedIn: mapValueOfType<bool>(json, r'loggedIn'),
        loginUrl: mapValueOfType<String>(json, r'loginUrl'),
        logoutUrl: mapValueOfType<String>(json, r'logoutUrl'),
        username: mapValueOfType<String>(json, r'username'),
      );
    }
    return null;
  }

  static List<SessionUser> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SessionUser>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SessionUser.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SessionUser> mapFromJson(dynamic json) {
    final map = <String, SessionUser>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SessionUser.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SessionUser-objects as value to a dart map
  static Map<String, List<SessionUser>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SessionUser>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SessionUser.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

