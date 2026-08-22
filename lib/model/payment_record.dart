//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PaymentRecord {
  /// Returns a new [PaymentRecord] instance.
  PaymentRecord({
    this.amountCents,
    this.createdAt,
    this.currency,
    this.id,
    this.notes,
    this.status,
    this.subject,
    this.test,
  });
  /// AmountCents is the credited amount in whole cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amountCents;

  /// CreatedAt is when the credit was written, RFC3339.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// Currency is the ISO 4217 code.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  /// ID is the ledger transaction id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Notes is the ledger memo, carrying the processor and its reference.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? notes;

  /// Status is the payment's state. This ledger writes a deposit only AFTER the processor settled, so a payment that can be read is one that succeeded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Subject is the billing key this payment credited.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  /// Test reports whether this was a sandbox charge (test balance) or live money.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? test;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaymentRecord &&
    other.amountCents == amountCents &&
    other.createdAt == createdAt &&
    other.currency == currency &&
    other.id == id &&
    other.notes == notes &&
    other.status == status &&
    other.subject == subject &&
    other.test == test;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amountCents == null ? 0 : amountCents!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (notes == null ? 0 : notes!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (test == null ? 0 : test!.hashCode);

  @override
  String toString() => 'PaymentRecord[amountCents=$amountCents, createdAt=$createdAt, currency=$currency, id=$id, notes=$notes, status=$status, subject=$subject, test=$test]';

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
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.notes != null) {
      json[r'notes'] = this.notes;
    } else {
      json[r'notes'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.test != null) {
      json[r'test'] = this.test;
    } else {
      json[r'test'] = null;
    }
    return json;
  }

  /// Returns a new [PaymentRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PaymentRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PaymentRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaymentRecord(
        amountCents: mapValueOfType<int>(json, r'amountCents'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        currency: mapValueOfType<String>(json, r'currency'),
        id: mapValueOfType<String>(json, r'id'),
        notes: mapValueOfType<String>(json, r'notes'),
        status: mapValueOfType<String>(json, r'status'),
        subject: mapValueOfType<String>(json, r'subject'),
        test: mapValueOfType<bool>(json, r'test'),
      );
    }
    return null;
  }

  static List<PaymentRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaymentRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentRecord> mapFromJson(dynamic json) {
    final map = <String, PaymentRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentRecord-objects as value to a dart map
  static Map<String, List<PaymentRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PaymentRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaymentRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

