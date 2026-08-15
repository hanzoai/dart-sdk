//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Enrolment {
  /// Returns a new [Enrolment] instance.
  Enrolment({
    this.created,
    this.githubLogin,
    this.id,
    this.shareBps,
    this.status,
    this.verified,
    this.verifyCode,
    this.verifyFile,
    this.verifySnippet,
  });

  /// Created reports whether this call enrolled the org (201) or found an existing enrolment (200).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? created;

  /// GithubLogin is the linked forge account.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? githubLogin;

  /// ID is the author record's server-minted handle, \"aut_\"-prefixed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// ShareBps is this author's royalty share in basis points of the spend their deployed work generates.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? shareBps;

  /// Status is connected, approved or suspended. Only an approved author earns.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Verified reports whether any repository or owner claim has been proven yet.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? verified;

  /// VerifyCode is this author's stable proof token — the value a repository's verify file must carry.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? verifyCode;

  /// VerifyFile is the repo-root file the file method reads, on the default branch.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? verifyFile;

  /// VerifySnippet is that file's exact contents, ready to commit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? verifySnippet;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Enrolment &&
    other.created == created &&
    other.githubLogin == githubLogin &&
    other.id == id &&
    other.shareBps == shareBps &&
    other.status == status &&
    other.verified == verified &&
    other.verifyCode == verifyCode &&
    other.verifyFile == verifyFile &&
    other.verifySnippet == verifySnippet;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created == null ? 0 : created!.hashCode) +
    (githubLogin == null ? 0 : githubLogin!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (shareBps == null ? 0 : shareBps!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (verified == null ? 0 : verified!.hashCode) +
    (verifyCode == null ? 0 : verifyCode!.hashCode) +
    (verifyFile == null ? 0 : verifyFile!.hashCode) +
    (verifySnippet == null ? 0 : verifySnippet!.hashCode);

  @override
  String toString() => 'Enrolment[created=$created, githubLogin=$githubLogin, id=$id, shareBps=$shareBps, status=$status, verified=$verified, verifyCode=$verifyCode, verifyFile=$verifyFile, verifySnippet=$verifySnippet]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.githubLogin != null) {
      json[r'githubLogin'] = this.githubLogin;
    } else {
      json[r'githubLogin'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.shareBps != null) {
      json[r'shareBps'] = this.shareBps;
    } else {
      json[r'shareBps'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.verified != null) {
      json[r'verified'] = this.verified;
    } else {
      json[r'verified'] = null;
    }
    if (this.verifyCode != null) {
      json[r'verifyCode'] = this.verifyCode;
    } else {
      json[r'verifyCode'] = null;
    }
    if (this.verifyFile != null) {
      json[r'verifyFile'] = this.verifyFile;
    } else {
      json[r'verifyFile'] = null;
    }
    if (this.verifySnippet != null) {
      json[r'verifySnippet'] = this.verifySnippet;
    } else {
      json[r'verifySnippet'] = null;
    }
    return json;
  }

  /// Returns a new [Enrolment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Enrolment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Enrolment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Enrolment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Enrolment(
        created: mapValueOfType<bool>(json, r'created'),
        githubLogin: mapValueOfType<String>(json, r'githubLogin'),
        id: mapValueOfType<String>(json, r'id'),
        shareBps: mapValueOfType<int>(json, r'shareBps'),
        status: mapValueOfType<String>(json, r'status'),
        verified: mapValueOfType<bool>(json, r'verified'),
        verifyCode: mapValueOfType<String>(json, r'verifyCode'),
        verifyFile: mapValueOfType<String>(json, r'verifyFile'),
        verifySnippet: mapValueOfType<String>(json, r'verifySnippet'),
      );
    }
    return null;
  }

  static List<Enrolment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Enrolment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Enrolment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Enrolment> mapFromJson(dynamic json) {
    final map = <String, Enrolment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Enrolment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Enrolment-objects as value to a dart map
  static Map<String, List<Enrolment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Enrolment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Enrolment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

