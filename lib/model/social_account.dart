//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SocialAccount {
  /// Returns a new [SocialAccount] instance.
  SocialAccount({
    this.createdAt,
    this.handle,
    this.id,
    this.provider,
    this.status,
    this.updatedAt,
  });
  /// CreatedAt is when the account was connected, as a unix timestamp in seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// Handle is the account's public name on the network, as the customer knows it. Trimmed and bounded at 1024 characters.  Example: \"@acme\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? handle;

  /// ID is the account's identifier, minted on connect and the id every later call addresses it by.  Example: \"acct_7f3c1a\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Provider is the network this account is on: x, facebook, instagram, linkedin, tiktok, youtube or threads.  Example: \"x\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Status is the connection lifecycle: connected, disconnected or error. Only a connected account is a publish target.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// UpdatedAt is when the account row last changed, as a unix timestamp in seconds. The listing is ordered by it, newest first.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SocialAccount &&
    other.createdAt == createdAt &&
    other.handle == handle &&
    other.id == id &&
    other.provider == provider &&
    other.status == status &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (handle == null ? 0 : handle!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'SocialAccount[createdAt=$createdAt, handle=$handle, id=$id, provider=$provider, status=$status, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.handle != null) {
      json[r'handle'] = this.handle;
    } else {
      json[r'handle'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [SocialAccount] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SocialAccount? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SocialAccount[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SocialAccount[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SocialAccount(
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        handle: mapValueOfType<String>(json, r'handle'),
        id: mapValueOfType<String>(json, r'id'),
        provider: mapValueOfType<String>(json, r'provider'),
        status: mapValueOfType<String>(json, r'status'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<SocialAccount> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SocialAccount>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SocialAccount.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SocialAccount> mapFromJson(dynamic json) {
    final map = <String, SocialAccount>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SocialAccount.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SocialAccount-objects as value to a dart map
  static Map<String, List<SocialAccount>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SocialAccount>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SocialAccount.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

