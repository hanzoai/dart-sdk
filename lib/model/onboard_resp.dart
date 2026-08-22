//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class OnboardResp {
  /// Returns a new [OnboardResp] instance.
  OnboardResp({
    this.accessKey,
    this.accessSecret,
    this.additional,
    this.displayName,
    this.org,
  });
  /// AccessKey is the identifier of the org-scoped credential provisioning minted with the organization. Present on a first run that actually minted one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accessKey;

  /// AccessSecret is that credential's confidential half, returned ONCE — on the response that mints it and never again. IAM keeps only its argon2id digest and blanks the plaintext, so this is the single moment it exists in a form its owner can read; a replay of the same provision re-reveals nothing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accessSecret;

  /// Additional is true when the caller already had an organization and this one was created WITHOUT moving them into it — they reach it via the org switcher.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? additional;

  /// DisplayName is the organization's human name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  /// Org is the created organization's slug, which is what X-Org-Id carries.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OnboardResp &&
    other.accessKey == accessKey &&
    other.accessSecret == accessSecret &&
    other.additional == additional &&
    other.displayName == displayName &&
    other.org == org;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accessKey == null ? 0 : accessKey!.hashCode) +
    (accessSecret == null ? 0 : accessSecret!.hashCode) +
    (additional == null ? 0 : additional!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (org == null ? 0 : org!.hashCode);

  @override
  String toString() => 'OnboardResp[accessKey=$accessKey, accessSecret=$accessSecret, additional=$additional, displayName=$displayName, org=$org]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accessKey != null) {
      json[r'accessKey'] = this.accessKey;
    } else {
      json[r'accessKey'] = null;
    }
    if (this.accessSecret != null) {
      json[r'accessSecret'] = this.accessSecret;
    } else {
      json[r'accessSecret'] = null;
    }
    if (this.additional != null) {
      json[r'additional'] = this.additional;
    } else {
      json[r'additional'] = null;
    }
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    return json;
  }

  /// Returns a new [OnboardResp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OnboardResp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OnboardResp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OnboardResp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OnboardResp(
        accessKey: mapValueOfType<String>(json, r'accessKey'),
        accessSecret: mapValueOfType<String>(json, r'accessSecret'),
        additional: mapValueOfType<bool>(json, r'additional'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        org: mapValueOfType<String>(json, r'org'),
      );
    }
    return null;
  }

  static List<OnboardResp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OnboardResp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OnboardResp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OnboardResp> mapFromJson(dynamic json) {
    final map = <String, OnboardResp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OnboardResp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OnboardResp-objects as value to a dart map
  static Map<String, List<OnboardResp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OnboardResp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OnboardResp.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

