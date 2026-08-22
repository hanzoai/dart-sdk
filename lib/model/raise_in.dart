//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RaiseIn {
  /// Returns a new [RaiseIn] instance.
  RaiseIn({
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
  List<InvoiceLine> lines;

  /// UserID identifies the customer being billed, within the caller's own org. Required — an invoice with no addressee is not an invoice.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RaiseIn &&
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
  String toString() => 'RaiseIn[currency=$currency, customerEmail=$customerEmail, lines=$lines, userId=$userId]';

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

  /// Returns a new [RaiseIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RaiseIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RaiseIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RaiseIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RaiseIn(
        currency: mapValueOfType<String>(json, r'currency'),
        customerEmail: mapValueOfType<String>(json, r'customerEmail'),
        lines: InvoiceLine.listFromJson(json[r'lines']),
        userId: mapValueOfType<String>(json, r'userId'),
      );
    }
    return null;
  }

  static List<RaiseIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RaiseIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RaiseIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RaiseIn> mapFromJson(dynamic json) {
    final map = <String, RaiseIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RaiseIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RaiseIn-objects as value to a dart map
  static Map<String, List<RaiseIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RaiseIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RaiseIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

