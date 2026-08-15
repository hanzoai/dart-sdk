//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CollectOut {
  /// Returns a new [CollectOut] instance.
  CollectOut({
    this.balanceUsedCents,
    this.cardChargedCents,
    this.creditUsedCents,
    this.invoice,
    this.paid,
    this.processorRef,
    this.reason,
  });

  /// BalanceUsedCents is how much was covered by prepaid balance.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? balanceUsedCents;

  /// CardChargedCents is how much was charged to the card on file.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cardChargedCents;

  /// CreditUsedCents is how much was covered by credit grants.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? creditUsedCents;

  /// Invoice is the invoice AFTER the attempt — its status is the authority on what happened, not this struct's other fields.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  InvoiceOut? invoice;

  /// Paid reports whether the invoice is now settled in full. A false here with no error is a DECLINE: the invoice stays open and may be collected again.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? paid;

  /// ProcessorRef is the processor's reference for any card charge — the field that proves money moved at the gateway rather than only in our ledger.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? processorRef;

  /// Reason explains a decline or partial collection. Empty on success.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CollectOut &&
    other.balanceUsedCents == balanceUsedCents &&
    other.cardChargedCents == cardChargedCents &&
    other.creditUsedCents == creditUsedCents &&
    other.invoice == invoice &&
    other.paid == paid &&
    other.processorRef == processorRef &&
    other.reason == reason;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (balanceUsedCents == null ? 0 : balanceUsedCents!.hashCode) +
    (cardChargedCents == null ? 0 : cardChargedCents!.hashCode) +
    (creditUsedCents == null ? 0 : creditUsedCents!.hashCode) +
    (invoice == null ? 0 : invoice!.hashCode) +
    (paid == null ? 0 : paid!.hashCode) +
    (processorRef == null ? 0 : processorRef!.hashCode) +
    (reason == null ? 0 : reason!.hashCode);

  @override
  String toString() => 'CollectOut[balanceUsedCents=$balanceUsedCents, cardChargedCents=$cardChargedCents, creditUsedCents=$creditUsedCents, invoice=$invoice, paid=$paid, processorRef=$processorRef, reason=$reason]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.balanceUsedCents != null) {
      json[r'balanceUsedCents'] = this.balanceUsedCents;
    } else {
      json[r'balanceUsedCents'] = null;
    }
    if (this.cardChargedCents != null) {
      json[r'cardChargedCents'] = this.cardChargedCents;
    } else {
      json[r'cardChargedCents'] = null;
    }
    if (this.creditUsedCents != null) {
      json[r'creditUsedCents'] = this.creditUsedCents;
    } else {
      json[r'creditUsedCents'] = null;
    }
    if (this.invoice != null) {
      json[r'invoice'] = this.invoice;
    } else {
      json[r'invoice'] = null;
    }
    if (this.paid != null) {
      json[r'paid'] = this.paid;
    } else {
      json[r'paid'] = null;
    }
    if (this.processorRef != null) {
      json[r'processorRef'] = this.processorRef;
    } else {
      json[r'processorRef'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    return json;
  }

  /// Returns a new [CollectOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CollectOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CollectOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CollectOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CollectOut(
        balanceUsedCents: mapValueOfType<int>(json, r'balanceUsedCents'),
        cardChargedCents: mapValueOfType<int>(json, r'cardChargedCents'),
        creditUsedCents: mapValueOfType<int>(json, r'creditUsedCents'),
        invoice: InvoiceOut.fromJson(json[r'invoice']),
        paid: mapValueOfType<bool>(json, r'paid'),
        processorRef: mapValueOfType<String>(json, r'processorRef'),
        reason: mapValueOfType<String>(json, r'reason'),
      );
    }
    return null;
  }

  static List<CollectOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CollectOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CollectOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CollectOut> mapFromJson(dynamic json) {
    final map = <String, CollectOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CollectOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CollectOut-objects as value to a dart map
  static Map<String, List<CollectOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CollectOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CollectOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

