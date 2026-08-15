//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class OrgView {
  /// Returns a new [OrgView] instance.
  OrgView({
    this.badgeMarkdown,
    this.createdAt,
    this.method,
    this.ownerUrl,
    this.verified,
    this.verifiedAt,
  });

  /// BadgeMarkdown is the ready-to-paste README snippet, DERIVED for each response from this deployment's badge host and never stored — here it deep-links the OWNER's template import rather than one repository's.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? badgeMarkdown;

  /// CreatedAt is unix seconds when the owner claim was first recorded — equal to verifiedAt on the first proof, then fixed while verifiedAt moves.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// Method is HOW the owner was proven, always against its \".github\" control repository: \"oauth\" — an IAM-linked forge token showed admin or push on it; or \"file\" — a hanzo.json on its default branch carried this author's verify code. The \"maintainer\" shortcut is a per-repository attribution and never appears here. Omitted on a row written before the method was recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? method;

  /// OwnerURL is the claim key in canonical form — lowercased \"host/owner\" with NO repository segment, host ∈ {github.com, gitlab.com}. It covers every repository under that owner, so code with no claim of its own still earns; a per-repository claim outranks it. UNIQUE across every author: first proven claim wins.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ownerUrl;

  /// Verified reports that ownership of the WHOLE owner was proven — against that owner's \".github\" control repository, which is exactly as strong as a per-repository claim. Only a proven claim is written, so every row returned here is true.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? verified;

  /// VerifiedAt is unix seconds of the most recent successful proof of the owner; re-verifying refreshes it, and the method beside it, in place.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? verifiedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrgView &&
    other.badgeMarkdown == badgeMarkdown &&
    other.createdAt == createdAt &&
    other.method == method &&
    other.ownerUrl == ownerUrl &&
    other.verified == verified &&
    other.verifiedAt == verifiedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (badgeMarkdown == null ? 0 : badgeMarkdown!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (method == null ? 0 : method!.hashCode) +
    (ownerUrl == null ? 0 : ownerUrl!.hashCode) +
    (verified == null ? 0 : verified!.hashCode) +
    (verifiedAt == null ? 0 : verifiedAt!.hashCode);

  @override
  String toString() => 'OrgView[badgeMarkdown=$badgeMarkdown, createdAt=$createdAt, method=$method, ownerUrl=$ownerUrl, verified=$verified, verifiedAt=$verifiedAt]';

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
    if (this.ownerUrl != null) {
      json[r'ownerUrl'] = this.ownerUrl;
    } else {
      json[r'ownerUrl'] = null;
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

  /// Returns a new [OrgView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrgView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrgView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrgView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrgView(
        badgeMarkdown: mapValueOfType<String>(json, r'badgeMarkdown'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        method: mapValueOfType<String>(json, r'method'),
        ownerUrl: mapValueOfType<String>(json, r'ownerUrl'),
        verified: mapValueOfType<bool>(json, r'verified'),
        verifiedAt: mapValueOfType<int>(json, r'verifiedAt'),
      );
    }
    return null;
  }

  static List<OrgView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrgView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrgView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrgView> mapFromJson(dynamic json) {
    final map = <String, OrgView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrgView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrgView-objects as value to a dart map
  static Map<String, List<OrgView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrgView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrgView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

