//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class InvoiceLine {
  /// Returns a new [InvoiceLine] instance.
  InvoiceLine({
    this.amount,
    this.description,
    this.quantity,
    this.unitPrice,
  });
  /// Amount is the line total in whole cents (250000 is $2,500.00).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amount;

  /// Description is the human-readable line, e.g. \"Advisory retainer — August\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Quantity is the number of units, when the line is metered. Optional.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? quantity;

  /// UnitPrice is the per-unit price in cents, when the line is metered. Optional.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? unitPrice;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InvoiceLine &&
    other.amount == amount &&
    other.description == description &&
    other.quantity == quantity &&
    other.unitPrice == unitPrice;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amount == null ? 0 : amount!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (quantity == null ? 0 : quantity!.hashCode) +
    (unitPrice == null ? 0 : unitPrice!.hashCode);

  @override
  String toString() => 'InvoiceLine[amount=$amount, description=$description, quantity=$quantity, unitPrice=$unitPrice]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.quantity != null) {
      json[r'quantity'] = this.quantity;
    } else {
      json[r'quantity'] = null;
    }
    if (this.unitPrice != null) {
      json[r'unitPrice'] = this.unitPrice;
    } else {
      json[r'unitPrice'] = null;
    }
    return json;
  }

  /// Returns a new [InvoiceLine] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InvoiceLine? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InvoiceLine[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InvoiceLine[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InvoiceLine(
        amount: mapValueOfType<int>(json, r'amount'),
        description: mapValueOfType<String>(json, r'description'),
        quantity: mapValueOfType<int>(json, r'quantity'),
        unitPrice: mapValueOfType<int>(json, r'unitPrice'),
      );
    }
    return null;
  }

  static List<InvoiceLine> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvoiceLine>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvoiceLine.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InvoiceLine> mapFromJson(dynamic json) {
    final map = <String, InvoiceLine>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InvoiceLine.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InvoiceLine-objects as value to a dart map
  static Map<String, List<InvoiceLine>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InvoiceLine>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InvoiceLine.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

