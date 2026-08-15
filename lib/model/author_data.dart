//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AuthorData {
  /// Returns a new [AuthorData] instance.
  AuthorData({
    this.author,
  });

  /// Author is the author record after the change. Its repository and deploy counts are 0 here — this is the mutated row, not a re-listing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AdminAuthorView? author;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthorData &&
    other.author == author;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (author == null ? 0 : author!.hashCode);

  @override
  String toString() => 'AuthorData[author=$author]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.author != null) {
      json[r'author'] = this.author;
    } else {
      json[r'author'] = null;
    }
    return json;
  }

  /// Returns a new [AuthorData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuthorData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AuthorData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AuthorData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuthorData(
        author: AdminAuthorView.fromJson(json[r'author']),
      );
    }
    return null;
  }

  static List<AuthorData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuthorData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuthorData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuthorData> mapFromJson(dynamic json) {
    final map = <String, AuthorData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuthorData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuthorData-objects as value to a dart map
  static Map<String, List<AuthorData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuthorData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuthorData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

