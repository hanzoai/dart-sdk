//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ConnectRequest {
  /// Returns a new [ConnectRequest] instance.
  ConnectRequest({
    this.githubLogin,
    this.login,
    this.provider,
  });

  /// GithubLogin is the account to link. Used only when IAM holds no linked account for the provider — a linked account is stronger proof and always wins.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? githubLogin;

  /// Login is the provider-neutral alias for GithubLogin, preferred when both are sent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? login;

  /// Provider is the forge to enrol with: github (the default) or gitlab.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectRequest &&
    other.githubLogin == githubLogin &&
    other.login == login &&
    other.provider == provider;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (githubLogin == null ? 0 : githubLogin!.hashCode) +
    (login == null ? 0 : login!.hashCode) +
    (provider == null ? 0 : provider!.hashCode);

  @override
  String toString() => 'ConnectRequest[githubLogin=$githubLogin, login=$login, provider=$provider]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.githubLogin != null) {
      json[r'githubLogin'] = this.githubLogin;
    } else {
      json[r'githubLogin'] = null;
    }
    if (this.login != null) {
      json[r'login'] = this.login;
    } else {
      json[r'login'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    return json;
  }

  /// Returns a new [ConnectRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnectRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConnectRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConnectRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConnectRequest(
        githubLogin: mapValueOfType<String>(json, r'githubLogin'),
        login: mapValueOfType<String>(json, r'login'),
        provider: mapValueOfType<String>(json, r'provider'),
      );
    }
    return null;
  }

  static List<ConnectRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnectRequest> mapFromJson(dynamic json) {
    final map = <String, ConnectRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnectRequest-objects as value to a dart map
  static Map<String, List<ConnectRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnectRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConnectRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

