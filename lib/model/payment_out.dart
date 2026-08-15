//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PaymentOut {
  /// Returns a new [PaymentOut] instance.
  PaymentOut({
    this.balanceCents,
    this.id,
    this.processorRef,
    this.status,
    this.test,
  });

  /// BalanceCents is the org's balance AFTER this payment, read back from the same key just credited so it matches what the balance endpoint reports.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? balanceCents;

  /// ID is the ledger transaction id for the credit. It is what getPayment reads back, and the customer-visible receipt for the money.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// ProcessorRef is the payment processor's own reference for the charge (Square's payment id). It is the field that proves money actually moved at the gateway rather than only in our ledger — the thing to quote when reconciling against a processor dashboard.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? processorRef;

  /// Status is \"ok\" on a settled charge. A charge that did not settle is an error with the processor's reason, never a status field to inspect.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Test reports which bucket this credited: true is a SANDBOX charge crediting the test balance, false is live money. It is always stated so a receipt can never be mistaken for the other kind.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? test;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaymentOut &&
    other.balanceCents == balanceCents &&
    other.id == id &&
    other.processorRef == processorRef &&
    other.status == status &&
    other.test == test;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (balanceCents == null ? 0 : balanceCents!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (processorRef == null ? 0 : processorRef!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (test == null ? 0 : test!.hashCode);

  @override
  String toString() => 'PaymentOut[balanceCents=$balanceCents, id=$id, processorRef=$processorRef, status=$status, test=$test]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.balanceCents != null) {
      json[r'balanceCents'] = this.balanceCents;
    } else {
      json[r'balanceCents'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.processorRef != null) {
      json[r'processorRef'] = this.processorRef;
    } else {
      json[r'processorRef'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.test != null) {
      json[r'test'] = this.test;
    } else {
      json[r'test'] = null;
    }
    return json;
  }

  /// Returns a new [PaymentOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PaymentOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PaymentOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaymentOut(
        balanceCents: mapValueOfType<int>(json, r'balanceCents'),
        id: mapValueOfType<String>(json, r'id'),
        processorRef: mapValueOfType<String>(json, r'processorRef'),
        status: mapValueOfType<String>(json, r'status'),
        test: mapValueOfType<bool>(json, r'test'),
      );
    }
    return null;
  }

  static List<PaymentOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaymentOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentOut> mapFromJson(dynamic json) {
    final map = <String, PaymentOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentOut-objects as value to a dart map
  static Map<String, List<PaymentOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PaymentOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaymentOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

