//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CreateWalletIn {
  /// Returns a new [CreateWalletIn] instance.
  CreateWalletIn({
    this.accountId,
    this.agent,
    this.chain,
    this.custody,
    this.name,
    this.tier,
  });

  /// AccountID is the account this wallet belongs to. Required, and it must be an account of the caller's own org — an unknown one is a 404.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  /// Agent optionally narrows the wallet to one agent within the org. It becomes a segment of the key ref, so it must be a url-safe segment with no slash.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? agent;

  /// Chain is the EVM chain this wallet is for, as \"eip155:<n>\" or a bare decimal chain id. Optional; a Safe defaults to the Hanzo L1 (36963).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? chain;

  /// Custody selects the signing backend: \"kms\" (in-process, always available), \"mpc\" or \"treasury\" (the deployed MPC ring), or \"safe\" (a Safe smart wallet owned by an MPC key). Empty uses the deployment's default. A backend that is not configured fails CLOSED with 503 rather than fabricating a signature.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? custody;

  /// Name is the wallet's display label. Optional.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Tier is the MPC wallet tier: hot, warm, cold, gas, bridge, contract_admin, validator, quarantine or disaster_recovery. Empty defaults to hot.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tier;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateWalletIn &&
    other.accountId == accountId &&
    other.agent == agent &&
    other.chain == chain &&
    other.custody == custody &&
    other.name == name &&
    other.tier == tier;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountId == null ? 0 : accountId!.hashCode) +
    (agent == null ? 0 : agent!.hashCode) +
    (chain == null ? 0 : chain!.hashCode) +
    (custody == null ? 0 : custody!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (tier == null ? 0 : tier!.hashCode);

  @override
  String toString() => 'CreateWalletIn[accountId=$accountId, agent=$agent, chain=$chain, custody=$custody, name=$name, tier=$tier]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
    if (this.agent != null) {
      json[r'agent'] = this.agent;
    } else {
      json[r'agent'] = null;
    }
    if (this.chain != null) {
      json[r'chain'] = this.chain;
    } else {
      json[r'chain'] = null;
    }
    if (this.custody != null) {
      json[r'custody'] = this.custody;
    } else {
      json[r'custody'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.tier != null) {
      json[r'tier'] = this.tier;
    } else {
      json[r'tier'] = null;
    }
    return json;
  }

  /// Returns a new [CreateWalletIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateWalletIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateWalletIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateWalletIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateWalletIn(
        accountId: mapValueOfType<String>(json, r'accountId'),
        agent: mapValueOfType<String>(json, r'agent'),
        chain: mapValueOfType<String>(json, r'chain'),
        custody: mapValueOfType<String>(json, r'custody'),
        name: mapValueOfType<String>(json, r'name'),
        tier: mapValueOfType<String>(json, r'tier'),
      );
    }
    return null;
  }

  static List<CreateWalletIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateWalletIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateWalletIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateWalletIn> mapFromJson(dynamic json) {
    final map = <String, CreateWalletIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateWalletIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateWalletIn-objects as value to a dart map
  static Map<String, List<CreateWalletIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateWalletIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateWalletIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

