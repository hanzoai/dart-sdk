//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AuthorRepo {
  /// Returns a new [AuthorRepo] instance.
  AuthorRepo({
    this.badgeMarkdown,
    this.createdAt,
    this.method,
    this.repoUrl,
    this.verified,
    this.verifiedAt,
  });
  /// BadgeMarkdown is the ready-to-paste README snippet, DERIVED for each response from this deployment's badge host and never stored: a \"Deploy on Hanzo\" image linking to the one-click import of this repository. Re-hosting the builder changes every badge without touching a row.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? badgeMarkdown;

  /// CreatedAt is unix seconds when the claim was first recorded. It equals verifiedAt on the first proof and then stays put while verifiedAt moves, so the pair reads as \"claimed since / last proven\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// Method is HOW ownership was proven: \"oauth\" — an IAM-linked forge token showed admin or push on the repository; \"file\" — a hanzo.json on the default branch carried this author's verify code; or \"maintainer\" — the repository sits in a first-party namespace, where ownership is intrinsic and the treasury author holds it with no proof step. Omitted on a row written before the method was recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? method;

  /// RepoURL is the claim key in canonical form — lowercased \"host/owner/name\", no scheme, no .git, host ∈ {github.com, gitlab.com}. A deploy's source repo is normalized through the same function before attribution, so the two sides can never miss on a cosmetic difference. UNIQUE across every author: first proven claim wins.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repoUrl;

  /// Verified reports that ownership was proven. Only a proven claim is ever written, so it is true on every row this surface returns; the deploy path re-reads it regardless, because an unverified claim attributes nothing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? verified;

  /// VerifiedAt is unix seconds of the most recent successful proof. Re-verifying refreshes it, and the method beside it, in place.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? verifiedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthorRepo &&
    other.badgeMarkdown == badgeMarkdown &&
    other.createdAt == createdAt &&
    other.method == method &&
    other.repoUrl == repoUrl &&
    other.verified == verified &&
    other.verifiedAt == verifiedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (badgeMarkdown == null ? 0 : badgeMarkdown!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (method == null ? 0 : method!.hashCode) +
    (repoUrl == null ? 0 : repoUrl!.hashCode) +
    (verified == null ? 0 : verified!.hashCode) +
    (verifiedAt == null ? 0 : verifiedAt!.hashCode);

  @override
  String toString() => 'AuthorRepo[badgeMarkdown=$badgeMarkdown, createdAt=$createdAt, method=$method, repoUrl=$repoUrl, verified=$verified, verifiedAt=$verifiedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.badgeMarkdown != null) {
      json[r'badgeMarkdown'] = this.badgeMarkdown;
    } else {
      json[r'badgeMarkdown'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.method != null) {
      json[r'method'] = this.method;
    } else {
      json[r'method'] = null;
    }
    if (this.repoUrl != null) {
      json[r'repoUrl'] = this.repoUrl;
    } else {
      json[r'repoUrl'] = null;
    }
    if (this.verified != null) {
      json[r'verified'] = this.verified;
    } else {
      json[r'verified'] = null;
    }
    if (this.verifiedAt != null) {
      json[r'verifiedAt'] = this.verifiedAt;
    } else {
      json[r'verifiedAt'] = null;
    }
    return json;
  }

  /// Returns a new [AuthorRepo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuthorRepo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AuthorRepo[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AuthorRepo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuthorRepo(
        badgeMarkdown: mapValueOfType<String>(json, r'badgeMarkdown'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        method: mapValueOfType<String>(json, r'method'),
        repoUrl: mapValueOfType<String>(json, r'repoUrl'),
        verified: mapValueOfType<bool>(json, r'verified'),
        verifiedAt: mapValueOfType<int>(json, r'verifiedAt'),
      );
    }
    return null;
  }

  static List<AuthorRepo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuthorRepo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuthorRepo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuthorRepo> mapFromJson(dynamic json) {
    final map = <String, AuthorRepo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuthorRepo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuthorRepo-objects as value to a dart map
  static Map<String, List<AuthorRepo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuthorRepo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuthorRepo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

