//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CommitJSON {
  /// Returns a new [CommitJSON] instance.
  CommitJSON({
    this.authorEmail,
    this.authorName,
    this.date,
    this.message,
    this.sha,
    this.shortSha,
  });
  /// AuthorEmail is the commit author's email.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authorEmail;

  /// AuthorName is the commit author's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authorName;

  /// Date is the author date, RFC 3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? date;

  /// Message is the commit's SUBJECT — its first line only.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  /// SHA is the full commit hash.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sha;

  /// ShortSHA is the abbreviated hash a UI displays.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shortSha;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CommitJSON &&
    other.authorEmail == authorEmail &&
    other.authorName == authorName &&
    other.date == date &&
    other.message == message &&
    other.sha == sha &&
    other.shortSha == shortSha;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (authorEmail == null ? 0 : authorEmail!.hashCode) +
    (authorName == null ? 0 : authorName!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (sha == null ? 0 : sha!.hashCode) +
    (shortSha == null ? 0 : shortSha!.hashCode);

  @override
  String toString() => 'CommitJSON[authorEmail=$authorEmail, authorName=$authorName, date=$date, message=$message, sha=$sha, shortSha=$shortSha]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.authorEmail != null) {
      json[r'authorEmail'] = this.authorEmail;
    } else {
      json[r'authorEmail'] = null;
    }
    if (this.authorName != null) {
      json[r'authorName'] = this.authorName;
    } else {
      json[r'authorName'] = null;
    }
    if (this.date != null) {
      json[r'date'] = this.date;
    } else {
      json[r'date'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.sha != null) {
      json[r'sha'] = this.sha;
    } else {
      json[r'sha'] = null;
    }
    if (this.shortSha != null) {
      json[r'shortSha'] = this.shortSha;
    } else {
      json[r'shortSha'] = null;
    }
    return json;
  }

  /// Returns a new [CommitJSON] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CommitJSON? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CommitJSON[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CommitJSON[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CommitJSON(
        authorEmail: mapValueOfType<String>(json, r'authorEmail'),
        authorName: mapValueOfType<String>(json, r'authorName'),
        date: mapValueOfType<String>(json, r'date'),
        message: mapValueOfType<String>(json, r'message'),
        sha: mapValueOfType<String>(json, r'sha'),
        shortSha: mapValueOfType<String>(json, r'shortSha'),
      );
    }
    return null;
  }

  static List<CommitJSON> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CommitJSON>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CommitJSON.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CommitJSON> mapFromJson(dynamic json) {
    final map = <String, CommitJSON>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CommitJSON.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CommitJSON-objects as value to a dart map
  static Map<String, List<CommitJSON>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CommitJSON>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CommitJSON.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

