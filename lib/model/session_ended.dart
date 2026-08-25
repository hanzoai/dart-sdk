//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SessionEnded {
  /// Returns a new [SessionEnded] instance.
  SessionEnded({
    this.loggedIn,
    this.loginUrl,
  });
  /// LoggedIn is always false — this is the answer to having just signed out, so it states the resulting session state rather than reporting the request's outcome. It is not omitempty: false is the whole answer.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? loggedIn;

  /// LoginURL is where to sign in again. Always present, because a caller that has just signed out is exactly the caller who needs it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? loginUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SessionEnded &&
    other.loggedIn == loggedIn &&
    other.loginUrl == loginUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (loggedIn == null ? 0 : loggedIn!.hashCode) +
    (loginUrl == null ? 0 : loginUrl!.hashCode);

  @override
  String toString() => 'SessionEnded[loggedIn=$loggedIn, loginUrl=$loginUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    return json;
  }

  /// Returns a new [SessionEnded] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SessionEnded? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SessionEnded[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SessionEnded[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SessionEnded(
        loggedIn: mapValueOfType<bool>(json, r'loggedIn'),
        loginUrl: mapValueOfType<String>(json, r'loginUrl'),
      );
    }
    return null;
  }

  static List<SessionEnded> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SessionEnded>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SessionEnded.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SessionEnded> mapFromJson(dynamic json) {
    final map = <String, SessionEnded>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SessionEnded.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SessionEnded-objects as value to a dart map
  static Map<String, List<SessionEnded>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SessionEnded>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SessionEnded.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

