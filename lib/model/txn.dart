//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Txn {
  /// Returns a new [Txn] instance.
  Txn({
    this.amountCents,
    this.category,
    this.categoryName,
    this.date,
    this.description,
    this.source_,
    this.vendor,
    this.voucherId,
  });
  /// AmountCents is the voucher's total, in whole cents — its total debit, which equals its total credit because every voucher balances. It is the size of the entry and carries no direction; the category says which way it went.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amountCents;

  /// Category is the chart-of-accounts NUMBER of the income or expense account this voucher touched — where it lands on the P&L, not a free-text label.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  /// CategoryName is that account's human name, so a caller need not carry the chart to render the row.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? categoryName;

  /// Date is when the voucher POSTED — the accounting date the reports window on, which for an imported bank row is the bank's date and not the day it landed here.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? date;

  /// Description is the line a person reads: the memo carried in from the source.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Source is where the entry came from: bank_txn for an imported statement line, scan for a receipt or bill read by the scanner, commerce_txn for a sale booked by the store.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Vendor is the counterparty, resolved from whatever the source knew — a bank row's merchant, a scanned bill's supplier. Absent when the source named none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? vendor;

  /// VoucherID identifies the underlying double-entry voucher, so a caller can open the full set of legs behind this single register line.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? voucherId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Txn &&
    other.amountCents == amountCents &&
    other.category == category &&
    other.categoryName == categoryName &&
    other.date == date &&
    other.description == description &&
    other.source_ == source_ &&
    other.vendor == vendor &&
    other.voucherId == voucherId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amountCents == null ? 0 : amountCents!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (categoryName == null ? 0 : categoryName!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (vendor == null ? 0 : vendor!.hashCode) +
    (voucherId == null ? 0 : voucherId!.hashCode);

  @override
  String toString() => 'Txn[amountCents=$amountCents, category=$category, categoryName=$categoryName, date=$date, description=$description, source_=$source_, vendor=$vendor, voucherId=$voucherId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.amountCents != null) {
      json[r'amountCents'] = this.amountCents;
    } else {
      json[r'amountCents'] = null;
    }
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.categoryName != null) {
      json[r'categoryName'] = this.categoryName;
    } else {
      json[r'categoryName'] = null;
    }
    if (this.date != null) {
      json[r'date'] = this.date;
    } else {
      json[r'date'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.vendor != null) {
      json[r'vendor'] = this.vendor;
    } else {
      json[r'vendor'] = null;
    }
    if (this.voucherId != null) {
      json[r'voucherId'] = this.voucherId;
    } else {
      json[r'voucherId'] = null;
    }
    return json;
  }

  /// Returns a new [Txn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Txn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Txn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Txn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Txn(
        amountCents: mapValueOfType<int>(json, r'amountCents'),
        category: mapValueOfType<String>(json, r'category'),
        categoryName: mapValueOfType<String>(json, r'categoryName'),
        date: mapValueOfType<String>(json, r'date'),
        description: mapValueOfType<String>(json, r'description'),
        source_: mapValueOfType<String>(json, r'source'),
        vendor: mapValueOfType<String>(json, r'vendor'),
        voucherId: mapValueOfType<int>(json, r'voucherId'),
      );
    }
    return null;
  }

  static List<Txn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Txn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Txn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Txn> mapFromJson(dynamic json) {
    final map = <String, Txn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Txn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Txn-objects as value to a dart map
  static Map<String, List<Txn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Txn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Txn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

