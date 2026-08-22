//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BillingInvoice {
  /// Returns a new [BillingInvoice] instance.
  BillingInvoice({
    this.amountDue,
    this.amountPaid,
    this.attemptCount,
    this.createdAt,
    this.creditApplied,
    this.currency,
    this.customerEmail,
    this.discount,
    this.dueDate,
    this.id,
    this.lineItems = const [],
    this.number,
    this.numberStr,
    this.paidAt,
    this.paymentMethod,
    this.paymentRef,
    this.periodEnd,
    this.periodStart,
    this.status,
    this.subscriptionId,
    this.subtotal,
    this.tax,
    this.updatedAt,
    this.userId,
    this.voidedAt,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amountDue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amountPaid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? attemptCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? creditApplied;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? customerEmail;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? discount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dueDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// LineItems carries no omitempty and is never allocated empty, because the wire it reproduces sends `null` for an invoice with no lines. An empty array there would be a different answer to \"were there lines\".
  List<InvoiceLineItem> lineItems;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? number;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? numberStr;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? paidAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? paymentMethod;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? paymentRef;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? periodEnd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? periodStart;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subscriptionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? subtotal;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tax;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? voidedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BillingInvoice &&
    other.amountDue == amountDue &&
    other.amountPaid == amountPaid &&
    other.attemptCount == attemptCount &&
    other.createdAt == createdAt &&
    other.creditApplied == creditApplied &&
    other.currency == currency &&
    other.customerEmail == customerEmail &&
    other.discount == discount &&
    other.dueDate == dueDate &&
    other.id == id &&
    _deepEquality.equals(other.lineItems, lineItems) &&
    other.number == number &&
    other.numberStr == numberStr &&
    other.paidAt == paidAt &&
    other.paymentMethod == paymentMethod &&
    other.paymentRef == paymentRef &&
    other.periodEnd == periodEnd &&
    other.periodStart == periodStart &&
    other.status == status &&
    other.subscriptionId == subscriptionId &&
    other.subtotal == subtotal &&
    other.tax == tax &&
    other.updatedAt == updatedAt &&
    other.userId == userId &&
    other.voidedAt == voidedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amountDue == null ? 0 : amountDue!.hashCode) +
    (amountPaid == null ? 0 : amountPaid!.hashCode) +
    (attemptCount == null ? 0 : attemptCount!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (creditApplied == null ? 0 : creditApplied!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (customerEmail == null ? 0 : customerEmail!.hashCode) +
    (discount == null ? 0 : discount!.hashCode) +
    (dueDate == null ? 0 : dueDate!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (lineItems.hashCode) +
    (number == null ? 0 : number!.hashCode) +
    (numberStr == null ? 0 : numberStr!.hashCode) +
    (paidAt == null ? 0 : paidAt!.hashCode) +
    (paymentMethod == null ? 0 : paymentMethod!.hashCode) +
    (paymentRef == null ? 0 : paymentRef!.hashCode) +
    (periodEnd == null ? 0 : periodEnd!.hashCode) +
    (periodStart == null ? 0 : periodStart!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (subscriptionId == null ? 0 : subscriptionId!.hashCode) +
    (subtotal == null ? 0 : subtotal!.hashCode) +
    (tax == null ? 0 : tax!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (voidedAt == null ? 0 : voidedAt!.hashCode);

  @override
  String toString() => 'BillingInvoice[amountDue=$amountDue, amountPaid=$amountPaid, attemptCount=$attemptCount, createdAt=$createdAt, creditApplied=$creditApplied, currency=$currency, customerEmail=$customerEmail, discount=$discount, dueDate=$dueDate, id=$id, lineItems=$lineItems, number=$number, numberStr=$numberStr, paidAt=$paidAt, paymentMethod=$paymentMethod, paymentRef=$paymentRef, periodEnd=$periodEnd, periodStart=$periodStart, status=$status, subscriptionId=$subscriptionId, subtotal=$subtotal, tax=$tax, updatedAt=$updatedAt, userId=$userId, voidedAt=$voidedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.amountDue != null) {
      json[r'amountDue'] = this.amountDue;
    } else {
      json[r'amountDue'] = null;
    }
    if (this.amountPaid != null) {
      json[r'amountPaid'] = this.amountPaid;
    } else {
      json[r'amountPaid'] = null;
    }
    if (this.attemptCount != null) {
      json[r'attemptCount'] = this.attemptCount;
    } else {
      json[r'attemptCount'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.creditApplied != null) {
      json[r'creditApplied'] = this.creditApplied;
    } else {
      json[r'creditApplied'] = null;
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
    if (this.discount != null) {
      json[r'discount'] = this.discount;
    } else {
      json[r'discount'] = null;
    }
    if (this.dueDate != null) {
      json[r'dueDate'] = this.dueDate;
    } else {
      json[r'dueDate'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'lineItems'] = this.lineItems;
    if (this.number != null) {
      json[r'number'] = this.number;
    } else {
      json[r'number'] = null;
    }
    if (this.numberStr != null) {
      json[r'numberStr'] = this.numberStr;
    } else {
      json[r'numberStr'] = null;
    }
    if (this.paidAt != null) {
      json[r'paidAt'] = this.paidAt;
    } else {
      json[r'paidAt'] = null;
    }
    if (this.paymentMethod != null) {
      json[r'paymentMethod'] = this.paymentMethod;
    } else {
      json[r'paymentMethod'] = null;
    }
    if (this.paymentRef != null) {
      json[r'paymentRef'] = this.paymentRef;
    } else {
      json[r'paymentRef'] = null;
    }
    if (this.periodEnd != null) {
      json[r'periodEnd'] = this.periodEnd;
    } else {
      json[r'periodEnd'] = null;
    }
    if (this.periodStart != null) {
      json[r'periodStart'] = this.periodStart;
    } else {
      json[r'periodStart'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.subscriptionId != null) {
      json[r'subscriptionId'] = this.subscriptionId;
    } else {
      json[r'subscriptionId'] = null;
    }
    if (this.subtotal != null) {
      json[r'subtotal'] = this.subtotal;
    } else {
      json[r'subtotal'] = null;
    }
    if (this.tax != null) {
      json[r'tax'] = this.tax;
    } else {
      json[r'tax'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    if (this.voidedAt != null) {
      json[r'voidedAt'] = this.voidedAt;
    } else {
      json[r'voidedAt'] = null;
    }
    return json;
  }

  /// Returns a new [BillingInvoice] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BillingInvoice? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BillingInvoice[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BillingInvoice[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BillingInvoice(
        amountDue: mapValueOfType<int>(json, r'amountDue'),
        amountPaid: mapValueOfType<int>(json, r'amountPaid'),
        attemptCount: mapValueOfType<int>(json, r'attemptCount'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        creditApplied: mapValueOfType<int>(json, r'creditApplied'),
        currency: mapValueOfType<String>(json, r'currency'),
        customerEmail: mapValueOfType<String>(json, r'customerEmail'),
        discount: mapValueOfType<int>(json, r'discount'),
        dueDate: mapValueOfType<String>(json, r'dueDate'),
        id: mapValueOfType<String>(json, r'id'),
        lineItems: InvoiceLineItem.listFromJson(json[r'lineItems']),
        number: mapValueOfType<int>(json, r'number'),
        numberStr: mapValueOfType<String>(json, r'numberStr'),
        paidAt: mapValueOfType<String>(json, r'paidAt'),
        paymentMethod: mapValueOfType<String>(json, r'paymentMethod'),
        paymentRef: mapValueOfType<String>(json, r'paymentRef'),
        periodEnd: mapValueOfType<String>(json, r'periodEnd'),
        periodStart: mapValueOfType<String>(json, r'periodStart'),
        status: mapValueOfType<String>(json, r'status'),
        subscriptionId: mapValueOfType<String>(json, r'subscriptionId'),
        subtotal: mapValueOfType<int>(json, r'subtotal'),
        tax: mapValueOfType<int>(json, r'tax'),
        updatedAt: mapValueOfType<String>(json, r'updatedAt'),
        userId: mapValueOfType<String>(json, r'userId'),
        voidedAt: mapValueOfType<String>(json, r'voidedAt'),
      );
    }
    return null;
  }

  static List<BillingInvoice> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BillingInvoice>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BillingInvoice.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BillingInvoice> mapFromJson(dynamic json) {
    final map = <String, BillingInvoice>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BillingInvoice.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BillingInvoice-objects as value to a dart map
  static Map<String, List<BillingInvoice>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BillingInvoice>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BillingInvoice.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

