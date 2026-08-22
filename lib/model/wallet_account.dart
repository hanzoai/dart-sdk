//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class WalletAccount {
  /// Returns a new [WalletAccount] instance.
  WalletAccount({
    this.createdAt,
    this.id,
    this.name,
    this.org,
  });
  /// CreatedAt is when the account was opened, Unix seconds. Listings order by it, newest first.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// ID is the account id, minted by the server as \"acct_\" + 24 hex. Wallets name it as their accountId, and it becomes a segment of each of their key refs — so it addresses key material and cannot be reassigned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Name is the label given at creation, trimmed and required. It groups wallets: it is not a key, holds no balance, and is not unique in the org.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Org is the tenant that owns the account, stamped from the validated principal rather than taken from the request. Every read is physically scoped to it, so another tenant's accounts are not reachable at all.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WalletAccount &&
    other.createdAt == createdAt &&
    other.id == id &&
    other.name == name &&
    other.org == org;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (org == null ? 0 : org!.hashCode);

  @override
  String toString() => 'WalletAccount[createdAt=$createdAt, id=$id, name=$name, org=$org]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    return json;
  }

  /// Returns a new [WalletAccount] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WalletAccount? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WalletAccount[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WalletAccount[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WalletAccount(
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        org: mapValueOfType<String>(json, r'org'),
      );
    }
    return null;
  }

  static List<WalletAccount> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WalletAccount>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WalletAccount.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WalletAccount> mapFromJson(dynamic json) {
    final map = <String, WalletAccount>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WalletAccount.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WalletAccount-objects as value to a dart map
  static Map<String, List<WalletAccount>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WalletAccount>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WalletAccount.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

