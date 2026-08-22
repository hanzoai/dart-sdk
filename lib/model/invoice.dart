//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Invoice {
  /// Returns a new [Invoice] instance.
  Invoice({
    this.amountDueCents,
    this.amountPaidCents,
    this.createdAt,
    this.currency,
    this.customerEmail,
    this.id,
    this.lines = const [],
    this.number,
    this.paymentRef,
    this.status,
    this.subtotalCents,
    this.userId,
  });
  /// AmountDueCents is what remains collectible.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amountDueCents;

  /// AmountPaidCents is what has been collected so far.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amountPaidCents;

  /// CreatedAt is when the draft was raised, RFC3339.
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

  /// CustomerEmail is where it is sent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? customerEmail;

  /// ID is the invoice id — what the issue, collect and void ops address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Lines are the charges on the invoice.
  List<InvoiceLine> lines;

  /// Number is the human-facing invoice number, e.g. \"INV-0042\". A draft has none; issuing assigns it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? number;

  /// PaymentRef is the processor reference for the collection, once paid.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? paymentRef;

  /// Status is draft, open, paid, void or uncollectible. A draft is not collectible; issuing moves it to open.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// SubtotalCents is the sum of the lines.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? subtotalCents;

  /// UserID is the customer billed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Invoice &&
    other.amountDueCents == amountDueCents &&
    other.amountPaidCents == amountPaidCents &&
    other.createdAt == createdAt &&
    other.currency == currency &&
    other.customerEmail == customerEmail &&
    other.id == id &&
    _deepEquality.equals(other.lines, lines) &&
    other.number == number &&
    other.paymentRef == paymentRef &&
    other.status == status &&
    other.subtotalCents == subtotalCents &&
    other.userId == userId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amountDueCents == null ? 0 : amountDueCents!.hashCode) +
    (amountPaidCents == null ? 0 : amountPaidCents!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (customerEmail == null ? 0 : customerEmail!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (lines.hashCode) +
    (number == null ? 0 : number!.hashCode) +
    (paymentRef == null ? 0 : paymentRef!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (subtotalCents == null ? 0 : subtotalCents!.hashCode) +
    (userId == null ? 0 : userId!.hashCode);

  @override
  String toString() => 'Invoice[amountDueCents=$amountDueCents, amountPaidCents=$amountPaidCents, createdAt=$createdAt, currency=$currency, customerEmail=$customerEmail, id=$id, lines=$lines, number=$number, paymentRef=$paymentRef, status=$status, subtotalCents=$subtotalCents, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.amountDueCents != null) {
      json[r'amountDueCents'] = this.amountDueCents;
    } else {
      json[r'amountDueCents'] = null;
    }
    if (this.amountPaidCents != null) {
      json[r'amountPaidCents'] = this.amountPaidCents;
    } else {
      json[r'amountPaidCents'] = null;
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
    if (this.customerEmail != null) {
      json[r'customerEmail'] = this.customerEmail;
    } else {
      json[r'customerEmail'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'lines'] = this.lines;
    if (this.number != null) {
      json[r'number'] = this.number;
    } else {
      json[r'number'] = null;
    }
    if (this.paymentRef != null) {
      json[r'paymentRef'] = this.paymentRef;
    } else {
      json[r'paymentRef'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.subtotalCents != null) {
      json[r'subtotalCents'] = this.subtotalCents;
    } else {
      json[r'subtotalCents'] = null;
    }
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    return json;
  }

  /// Returns a new [Invoice] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Invoice? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Invoice[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Invoice[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Invoice(
        amountDueCents: mapValueOfType<int>(json, r'amountDueCents'),
        amountPaidCents: mapValueOfType<int>(json, r'amountPaidCents'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        currency: mapValueOfType<String>(json, r'currency'),
        customerEmail: mapValueOfType<String>(json, r'customerEmail'),
        id: mapValueOfType<String>(json, r'id'),
        lines: InvoiceLine.listFromJson(json[r'lines']),
        number: mapValueOfType<String>(json, r'number'),
        paymentRef: mapValueOfType<String>(json, r'paymentRef'),
        status: mapValueOfType<String>(json, r'status'),
        subtotalCents: mapValueOfType<int>(json, r'subtotalCents'),
        userId: mapValueOfType<String>(json, r'userId'),
      );
    }
    return null;
  }

  static List<Invoice> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Invoice>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Invoice.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Invoice> mapFromJson(dynamic json) {
    final map = <String, Invoice>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Invoice.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Invoice-objects as value to a dart map
  static Map<String, List<Invoice>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Invoice>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Invoice.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

