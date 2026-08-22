//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class InvoiceLineItem {
  /// Returns a new [InvoiceLineItem] instance.
  InvoiceLineItem({
    this.amount,
    this.currency,
    this.description,
    this.id,
    this.meterId,
    this.periodEnd,
    this.periodStart,
    this.planId,
    this.planName,
    this.quantity,
    this.type,
    this.unitPrice,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amount;

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
  String? description;

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
  String? meterId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? periodEnd;

  /// The billed period. Both carry omitempty and neither is ever empty, which looks contradictory and is not: the shape they reproduce is a time value, and omitempty does nothing to a struct — so those keys render even for the zero instant. The adapter formats the zero instant rather than skipping it, which is what keeps the two wires the same.
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
  String? planId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? planName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? quantity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? unitPrice;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InvoiceLineItem &&
    other.amount == amount &&
    other.currency == currency &&
    other.description == description &&
    other.id == id &&
    other.meterId == meterId &&
    other.periodEnd == periodEnd &&
    other.periodStart == periodStart &&
    other.planId == planId &&
    other.planName == planName &&
    other.quantity == quantity &&
    other.type == type &&
    other.unitPrice == unitPrice;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amount == null ? 0 : amount!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (meterId == null ? 0 : meterId!.hashCode) +
    (periodEnd == null ? 0 : periodEnd!.hashCode) +
    (periodStart == null ? 0 : periodStart!.hashCode) +
    (planId == null ? 0 : planId!.hashCode) +
    (planName == null ? 0 : planName!.hashCode) +
    (quantity == null ? 0 : quantity!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (unitPrice == null ? 0 : unitPrice!.hashCode);

  @override
  String toString() => 'InvoiceLineItem[amount=$amount, currency=$currency, description=$description, id=$id, meterId=$meterId, periodEnd=$periodEnd, periodStart=$periodStart, planId=$planId, planName=$planName, quantity=$quantity, type=$type, unitPrice=$unitPrice]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.meterId != null) {
      json[r'meterId'] = this.meterId;
    } else {
      json[r'meterId'] = null;
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
    if (this.planId != null) {
      json[r'planId'] = this.planId;
    } else {
      json[r'planId'] = null;
    }
    if (this.planName != null) {
      json[r'planName'] = this.planName;
    } else {
      json[r'planName'] = null;
    }
    if (this.quantity != null) {
      json[r'quantity'] = this.quantity;
    } else {
      json[r'quantity'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.unitPrice != null) {
      json[r'unitPrice'] = this.unitPrice;
    } else {
      json[r'unitPrice'] = null;
    }
    return json;
  }

  /// Returns a new [InvoiceLineItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InvoiceLineItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InvoiceLineItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InvoiceLineItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InvoiceLineItem(
        amount: mapValueOfType<int>(json, r'amount'),
        currency: mapValueOfType<String>(json, r'currency'),
        description: mapValueOfType<String>(json, r'description'),
        id: mapValueOfType<String>(json, r'id'),
        meterId: mapValueOfType<String>(json, r'meterId'),
        periodEnd: mapValueOfType<String>(json, r'periodEnd'),
        periodStart: mapValueOfType<String>(json, r'periodStart'),
        planId: mapValueOfType<String>(json, r'planId'),
        planName: mapValueOfType<String>(json, r'planName'),
        quantity: mapValueOfType<int>(json, r'quantity'),
        type: mapValueOfType<String>(json, r'type'),
        unitPrice: mapValueOfType<int>(json, r'unitPrice'),
      );
    }
    return null;
  }

  static List<InvoiceLineItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvoiceLineItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvoiceLineItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InvoiceLineItem> mapFromJson(dynamic json) {
    final map = <String, InvoiceLineItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InvoiceLineItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InvoiceLineItem-objects as value to a dart map
  static Map<String, List<InvoiceLineItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InvoiceLineItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InvoiceLineItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

