//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Remittance {
  /// Returns a new [Remittance] instance.
  Remittance({
    this.amountCents,
    this.createdAt,
    this.id,
    this.method,
    this.reference,
    this.txn,
  });
  /// AmountCents is the amount disbursed, in cents. It was reserved against pending commission atomically when recorded, so it never exceeds what was owed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amountCents;

  /// CreatedAt is when the payout was recorded, Unix seconds UTC — when the balance moved, not necessarily when the cash landed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// ID is the payout row's server-minted handle, \"apo_\"-prefixed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Method is how it was settled. \"credits\" issued a commerce grant into the affiliate org's own wallet; any other value (wire, paypal, check, …) is a RECORD of cash a human moved out of band.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? method;

  /// Reference is the operator's settlement note — a bank id, a ledger ref. Free text, absent when none was given.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reference;

  /// Txn is the commerce ledger transaction id, set ONLY where a \"credits\" payout actually issued the grant. Absent for cash methods, which write no ledger row.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? txn;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Remittance &&
    other.amountCents == amountCents &&
    other.createdAt == createdAt &&
    other.id == id &&
    other.method == method &&
    other.reference == reference &&
    other.txn == txn;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amountCents == null ? 0 : amountCents!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (method == null ? 0 : method!.hashCode) +
    (reference == null ? 0 : reference!.hashCode) +
    (txn == null ? 0 : txn!.hashCode);

  @override
  String toString() => 'Remittance[amountCents=$amountCents, createdAt=$createdAt, id=$id, method=$method, reference=$reference, txn=$txn]';

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
    if (this.txn != null) {
      json[r'txn'] = this.txn;
    } else {
      json[r'txn'] = null;
    }
    return json;
  }

  /// Returns a new [Remittance] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Remittance? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Remittance[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Remittance[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Remittance(
        amountCents: mapValueOfType<int>(json, r'amountCents'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        id: mapValueOfType<String>(json, r'id'),
        method: mapValueOfType<String>(json, r'method'),
        reference: mapValueOfType<String>(json, r'reference'),
        txn: mapValueOfType<String>(json, r'txn'),
      );
    }
    return null;
  }

  static List<Remittance> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Remittance>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Remittance.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Remittance> mapFromJson(dynamic json) {
    final map = <String, Remittance>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Remittance.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Remittance-objects as value to a dart map
  static Map<String, List<Remittance>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Remittance>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Remittance.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

