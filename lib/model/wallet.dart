//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Wallet {
  /// Returns a new [Wallet] instance.
  Wallet({
    this.accountId,
    this.address,
    this.agent,
    this.chain,
    this.createdAt,
    this.custody,
    this.financeAccount,
    this.id,
    this.name,
    this.org,
    this.project,
    this.tier,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  /// Address is the on-chain address. For kms/mpc/treasury it is the EOA a signature from this wallet recovers to; for safe it is the CREATE2 address of the Safe CONTRACT, which holds no key — its approvals recover to the MPC owner instead. Rotating a kms wallet mints a new key and therefore a NEW address, and funds and approvals at the old one do not follow; mpc, treasury and safe addresses are invariant under rotation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? address;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? agent;

  /// Chain is the EVM chain the wallet is bound to, CAIP-2 \"eip155:<n>\" or a bare decimal chain id. Empty is chain-agnostic: the ring signs an unbound digest, and a Safe falls back to the Hanzo L1 (36963) because a Safe and its EIP-712 domain must be chain-bound.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? chain;

  /// CreatedAt is when the wallet was provisioned, Unix seconds. Listings order by it, newest first.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// Custody is the backend holding the signing material, fixed at creation: \"kms\" (a secp256k1 key sealed under KMS and opened in-process), \"mpc\" or \"treasury\" (an m-of-n threshold key on the deployed ring, which differ by governance and not by signing mechanics), or \"safe\" (a Safe contract owned by an MPC key). A kind the deployment has not wired refuses with 503 rather than fabricating a signature.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? custody;

  /// FinanceAccount is the finance ledger account bound to this wallet — the lookup that turns a ledger account back into an on-chain signer. Absent is the normal state and means unbound; the column is NULL until something binds it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? financeAccount;

  /// ID is the wallet id, minted by the server as \"wal_\" + 24 hex. It is the last segment of the key ref, and it is the LEDGER SUBJECT an x402 payment into this wallet credits — so it names money as well as key material.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Name is the display label given at creation. It addresses nothing: the key ref is derived from the scope and the id, so renaming moves no material.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  /// Tier is the wallet tier the ring keys its TierPolicy on: hot, warm, cold, gas, bridge, contract_admin, validator, quarantine or disaster_recovery. It defaults to hot and is refused at the boundary if it is none of the nine.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tier;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Wallet &&
    other.accountId == accountId &&
    other.address == address &&
    other.agent == agent &&
    other.chain == chain &&
    other.createdAt == createdAt &&
    other.custody == custody &&
    other.financeAccount == financeAccount &&
    other.id == id &&
    other.name == name &&
    other.org == org &&
    other.project == project &&
    other.tier == tier;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountId == null ? 0 : accountId!.hashCode) +
    (address == null ? 0 : address!.hashCode) +
    (agent == null ? 0 : agent!.hashCode) +
    (chain == null ? 0 : chain!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (custody == null ? 0 : custody!.hashCode) +
    (financeAccount == null ? 0 : financeAccount!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (tier == null ? 0 : tier!.hashCode);

  @override
  String toString() => 'Wallet[accountId=$accountId, address=$address, agent=$agent, chain=$chain, createdAt=$createdAt, custody=$custody, financeAccount=$financeAccount, id=$id, name=$name, org=$org, project=$project, tier=$tier]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
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
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.custody != null) {
      json[r'custody'] = this.custody;
    } else {
      json[r'custody'] = null;
    }
    if (this.financeAccount != null) {
      json[r'financeAccount'] = this.financeAccount;
    } else {
      json[r'financeAccount'] = null;
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
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    if (this.tier != null) {
      json[r'tier'] = this.tier;
    } else {
      json[r'tier'] = null;
    }
    return json;
  }

  /// Returns a new [Wallet] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Wallet? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Wallet[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Wallet[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Wallet(
        accountId: mapValueOfType<String>(json, r'accountId'),
        address: mapValueOfType<String>(json, r'address'),
        agent: mapValueOfType<String>(json, r'agent'),
        chain: mapValueOfType<String>(json, r'chain'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        custody: mapValueOfType<String>(json, r'custody'),
        financeAccount: mapValueOfType<String>(json, r'financeAccount'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        org: mapValueOfType<String>(json, r'org'),
        project: mapValueOfType<String>(json, r'project'),
        tier: mapValueOfType<String>(json, r'tier'),
      );
    }
    return null;
  }

  static List<Wallet> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Wallet>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Wallet.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Wallet> mapFromJson(dynamic json) {
    final map = <String, Wallet>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Wallet.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Wallet-objects as value to a dart map
  static Map<String, List<Wallet>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Wallet>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Wallet.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

