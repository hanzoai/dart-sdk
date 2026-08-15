//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Receipt {
  /// Returns a new [Receipt] instance.
  Receipt({
    this.amount,
    this.from,
    this.id,
    this.network,
    this.nonce,
    this.payee,
    this.payeeOrg,
    this.payer,
    this.resource,
    this.settledAt,
    this.settledVia,
    this.txHash,
  });

  /// exact 18-dp USD (money.Amount string)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? amount;

  /// payer address
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? from;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? network;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nonce;

  /// recipient address
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? payee;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? payeeOrg;

  /// payer ORG (the debited ledger)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? payer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? resource;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? settledAt;

  /// \"ledger\" (live) | \"chain\" (seam)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? settledVia;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? txHash;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Receipt &&
    other.amount == amount &&
    other.from == from &&
    other.id == id &&
    other.network == network &&
    other.nonce == nonce &&
    other.payee == payee &&
    other.payeeOrg == payeeOrg &&
    other.payer == payer &&
    other.resource == resource &&
    other.settledAt == settledAt &&
    other.settledVia == settledVia &&
    other.txHash == txHash;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amount == null ? 0 : amount!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (network == null ? 0 : network!.hashCode) +
    (nonce == null ? 0 : nonce!.hashCode) +
    (payee == null ? 0 : payee!.hashCode) +
    (payeeOrg == null ? 0 : payeeOrg!.hashCode) +
    (payer == null ? 0 : payer!.hashCode) +
    (resource == null ? 0 : resource!.hashCode) +
    (settledAt == null ? 0 : settledAt!.hashCode) +
    (settledVia == null ? 0 : settledVia!.hashCode) +
    (txHash == null ? 0 : txHash!.hashCode);

  @override
  String toString() => 'Receipt[amount=$amount, from=$from, id=$id, network=$network, nonce=$nonce, payee=$payee, payeeOrg=$payeeOrg, payer=$payer, resource=$resource, settledAt=$settledAt, settledVia=$settledVia, txHash=$txHash]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.network != null) {
      json[r'network'] = this.network;
    } else {
      json[r'network'] = null;
    }
    if (this.nonce != null) {
      json[r'nonce'] = this.nonce;
    } else {
      json[r'nonce'] = null;
    }
    if (this.payee != null) {
      json[r'payee'] = this.payee;
    } else {
      json[r'payee'] = null;
    }
    if (this.payeeOrg != null) {
      json[r'payeeOrg'] = this.payeeOrg;
    } else {
      json[r'payeeOrg'] = null;
    }
    if (this.payer != null) {
      json[r'payer'] = this.payer;
    } else {
      json[r'payer'] = null;
    }
    if (this.resource != null) {
      json[r'resource'] = this.resource;
    } else {
      json[r'resource'] = null;
    }
    if (this.settledAt != null) {
      json[r'settledAt'] = this.settledAt;
    } else {
      json[r'settledAt'] = null;
    }
    if (this.settledVia != null) {
      json[r'settledVia'] = this.settledVia;
    } else {
      json[r'settledVia'] = null;
    }
    if (this.txHash != null) {
      json[r'txHash'] = this.txHash;
    } else {
      json[r'txHash'] = null;
    }
    return json;
  }

  /// Returns a new [Receipt] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Receipt? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Receipt[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Receipt[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Receipt(
        amount: mapValueOfType<String>(json, r'amount'),
        from: mapValueOfType<String>(json, r'from'),
        id: mapValueOfType<String>(json, r'id'),
        network: mapValueOfType<String>(json, r'network'),
        nonce: mapValueOfType<String>(json, r'nonce'),
        payee: mapValueOfType<String>(json, r'payee'),
        payeeOrg: mapValueOfType<String>(json, r'payeeOrg'),
        payer: mapValueOfType<String>(json, r'payer'),
        resource: mapValueOfType<String>(json, r'resource'),
        settledAt: mapValueOfType<int>(json, r'settledAt'),
        settledVia: mapValueOfType<String>(json, r'settledVia'),
        txHash: mapValueOfType<String>(json, r'txHash'),
      );
    }
    return null;
  }

  static List<Receipt> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Receipt>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Receipt.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Receipt> mapFromJson(dynamic json) {
    final map = <String, Receipt>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Receipt.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Receipt-objects as value to a dart map
  static Map<String, List<Receipt>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Receipt>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Receipt.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

