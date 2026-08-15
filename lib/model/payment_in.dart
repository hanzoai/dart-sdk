//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PaymentIn {
  /// Returns a new [PaymentIn] instance.
  PaymentIn({
    this.amountCents,
    this.currency,
    this.idempotencyKey,
    this.sourceId,
  });

  /// AmountCents is the amount to charge, in whole cents (5000 is $50.00). Server-side bounds apply and are authoritative — the default floor is $1 and the ceiling $5,000, so a fat-fingered or hostile amount is refused before any money moves.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amountCents;

  /// Currency is the ISO 4217 code, lower-cased. Empty means usd.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  /// IdempotencyKey makes a retry safe: the same key never charges twice, it replays the first result. Sending one is strongly recommended for an agent, which retries by construction. Empty falls back to a windowed key derived from the amount and currency, so a double-submit inside 15 minutes still collapses onto one charge.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? idempotencyKey;

  /// SourceID is the single-use payment token that stands in for the card: a Square Web Payments SDK nonce minted in the browser, or a Square sandbox test nonce when the org's credentials are sandbox ones. The card number itself never reaches this process, which is what keeps it out of PCI scope.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaymentIn &&
    other.amountCents == amountCents &&
    other.currency == currency &&
    other.idempotencyKey == idempotencyKey &&
    other.sourceId == sourceId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amountCents == null ? 0 : amountCents!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (idempotencyKey == null ? 0 : idempotencyKey!.hashCode) +
    (sourceId == null ? 0 : sourceId!.hashCode);

  @override
  String toString() => 'PaymentIn[amountCents=$amountCents, currency=$currency, idempotencyKey=$idempotencyKey, sourceId=$sourceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.amountCents != null) {
      json[r'amountCents'] = this.amountCents;
    } else {
      json[r'amountCents'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.idempotencyKey != null) {
      json[r'idempotencyKey'] = this.idempotencyKey;
    } else {
      json[r'idempotencyKey'] = null;
    }
    if (this.sourceId != null) {
      json[r'sourceId'] = this.sourceId;
    } else {
      json[r'sourceId'] = null;
    }
    return json;
  }

  /// Returns a new [PaymentIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PaymentIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PaymentIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaymentIn(
        amountCents: mapValueOfType<int>(json, r'amountCents'),
        currency: mapValueOfType<String>(json, r'currency'),
        idempotencyKey: mapValueOfType<String>(json, r'idempotencyKey'),
        sourceId: mapValueOfType<String>(json, r'sourceId'),
      );
    }
    return null;
  }

  static List<PaymentIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaymentIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentIn> mapFromJson(dynamic json) {
    final map = <String, PaymentIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentIn-objects as value to a dart map
  static Map<String, List<PaymentIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PaymentIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaymentIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

