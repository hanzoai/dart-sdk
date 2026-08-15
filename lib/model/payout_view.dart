//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PayoutView {
  /// Returns a new [PayoutView] instance.
  PayoutView({
    this.amountCents,
    this.createdAt,
    this.id,
    this.method,
    this.reference,
    this.settlement,
    this.txn,
  });

  /// AmountCents is the amount RESERVED against pending royalty, in integer USD cents, always positive. The reservation is atomic and can never exceed accrued − paid, so this is owed money moved out of pending — not money moved.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amountCents;

  /// CreatedAt is unix seconds when the payout was RECORDED — the moment the amount left pending, not the moment a human moved the money.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// ID is the payout row's server-minted handle, \"apo_\"-prefixed. A caller never supplies it; it is what an operator quotes when reconciling a settlement.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Method is how the operator says this settles, lowercased as recorded. \"credits\" is the one method that means the author's own wallet; anything else — wire, paypal, check — is a cash disbursement a human performs. Recording it pays nobody either way.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? method;

  /// Reference is the operator's external handle for the settlement: a wire confirmation, a PayPal transaction id. Absent when none was given.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reference;

  /// Settlement discloses treasury-vs-wallet-vs-cash on every payout, to the author and to the admin mirror alike — the disclosure that keeps a first-party settlement legible as internal accounting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? settlement;

  /// Txn is the commerce ledger transaction id of a SETTLED credits payout, and it is absent on every payout this service records. Recording moves no money, and authors asks the money plane exactly one question — what has this org spent? — with no write to answer it with, so there is no receipt to carry. It fills in only when a settlement stamps its transaction back onto the row.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? txn;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PayoutView &&
    other.amountCents == amountCents &&
    other.createdAt == createdAt &&
    other.id == id &&
    other.method == method &&
    other.reference == reference &&
    other.settlement == settlement &&
    other.txn == txn;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amountCents == null ? 0 : amountCents!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (method == null ? 0 : method!.hashCode) +
    (reference == null ? 0 : reference!.hashCode) +
    (settlement == null ? 0 : settlement!.hashCode) +
    (txn == null ? 0 : txn!.hashCode);

  @override
  String toString() => 'PayoutView[amountCents=$amountCents, createdAt=$createdAt, id=$id, method=$method, reference=$reference, settlement=$settlement, txn=$txn]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.amountCents != null) {
      json[r'amountCents'] = this.amountCents;
    } else {
      json[r'amountCents'] = null;
    }
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
    if (this.method != null) {
      json[r'method'] = this.method;
    } else {
      json[r'method'] = null;
    }
    if (this.reference != null) {
      json[r'reference'] = this.reference;
    } else {
      json[r'reference'] = null;
    }
    if (this.settlement != null) {
      json[r'settlement'] = this.settlement;
    } else {
      json[r'settlement'] = null;
    }
    if (this.txn != null) {
      json[r'txn'] = this.txn;
    } else {
      json[r'txn'] = null;
    }
    return json;
  }

  /// Returns a new [PayoutView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PayoutView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PayoutView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PayoutView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PayoutView(
        amountCents: mapValueOfType<int>(json, r'amountCents'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        id: mapValueOfType<String>(json, r'id'),
        method: mapValueOfType<String>(json, r'method'),
        reference: mapValueOfType<String>(json, r'reference'),
        settlement: mapValueOfType<String>(json, r'settlement'),
        txn: mapValueOfType<String>(json, r'txn'),
      );
    }
    return null;
  }

  static List<PayoutView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PayoutView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PayoutView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PayoutView> mapFromJson(dynamic json) {
    final map = <String, PayoutView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PayoutView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PayoutView-objects as value to a dart map
  static Map<String, List<PayoutView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PayoutView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PayoutView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

