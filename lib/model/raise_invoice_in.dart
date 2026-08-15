//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RaiseInvoiceIn {
  /// Returns a new [RaiseInvoiceIn] instance.
  RaiseInvoiceIn({
    this.currency,
    this.customerEmail,
    this.lines = const [],
    this.userId,
  });

  /// Currency is the ISO 4217 code, lower-cased. Empty means usd.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  /// CustomerEmail is where the invoice is sent. Optional.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? customerEmail;

  /// Lines are the charges. The invoice subtotal and amount due are COMPUTED from these — there is no total field to send, because a total that disagreed with its own lines would bill a number nobody could derive.
  List<InvoiceLineIn> lines;

  /// UserID identifies the customer being billed, within the caller's own org. Required — an invoice with no addressee is not an invoice.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RaiseInvoiceIn &&
    other.currency == currency &&
    other.customerEmail == customerEmail &&
    _deepEquality.equals(other.lines, lines) &&
    other.userId == userId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (currency == null ? 0 : currency!.hashCode) +
    (customerEmail == null ? 0 : customerEmail!.hashCode) +
    (lines.hashCode) +
    (userId == null ? 0 : userId!.hashCode);

  @override
  String toString() => 'RaiseInvoiceIn[currency=$currency, customerEmail=$customerEmail, lines=$lines, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
      json[r'lines'] = this.lines;
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    return json;
  }

  /// Returns a new [RaiseInvoiceIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RaiseInvoiceIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RaiseInvoiceIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RaiseInvoiceIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RaiseInvoiceIn(
        currency: mapValueOfType<String>(json, r'currency'),
        customerEmail: mapValueOfType<String>(json, r'customerEmail'),
        lines: InvoiceLineIn.listFromJson(json[r'lines']),
        userId: mapValueOfType<String>(json, r'userId'),
      );
    }
    return null;
  }

  static List<RaiseInvoiceIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RaiseInvoiceIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RaiseInvoiceIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RaiseInvoiceIn> mapFromJson(dynamic json) {
    final map = <String, RaiseInvoiceIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RaiseInvoiceIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RaiseInvoiceIn-objects as value to a dart map
  static Map<String, List<RaiseInvoiceIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RaiseInvoiceIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RaiseInvoiceIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

