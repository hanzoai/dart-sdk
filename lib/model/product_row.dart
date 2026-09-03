//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProductRow {
  /// Returns a new [ProductRow] instance.
  ProductRow({
    this.orders,
    this.productId,
    this.revenue,
    this.units,
  });
  /// Orders is how many order_completed events carried it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? orders;

  /// ProductID is the product the order events named.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? productId;

  /// Revenue is the total they carried, in the events' own currency unit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? revenue;

  /// Units is the summed quantity sold.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? units;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProductRow &&
    other.orders == orders &&
    other.productId == productId &&
    other.revenue == revenue &&
    other.units == units;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (orders == null ? 0 : orders!.hashCode) +
    (productId == null ? 0 : productId!.hashCode) +
    (revenue == null ? 0 : revenue!.hashCode) +
    (units == null ? 0 : units!.hashCode);

  @override
  String toString() => 'ProductRow[orders=$orders, productId=$productId, revenue=$revenue, units=$units]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.orders != null) {
      json[r'orders'] = this.orders;
    } else {
      json[r'orders'] = null;
    }
    if (this.productId != null) {
      json[r'productId'] = this.productId;
    } else {
      json[r'productId'] = null;
    }
    if (this.revenue != null) {
      json[r'revenue'] = this.revenue;
    } else {
      json[r'revenue'] = null;
    }
    if (this.units != null) {
      json[r'units'] = this.units;
    } else {
      json[r'units'] = null;
    }
    return json;
  }

  /// Returns a new [ProductRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProductRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProductRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProductRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProductRow(
        orders: mapValueOfType<int>(json, r'orders'),
        productId: mapValueOfType<String>(json, r'productId'),
        revenue: mapValueOfType<double>(json, r'revenue'),
        units: mapValueOfType<int>(json, r'units'),
      );
    }
    return null;
  }

  static List<ProductRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProductRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProductRow> mapFromJson(dynamic json) {
    final map = <String, ProductRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProductRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProductRow-objects as value to a dart map
  static Map<String, List<ProductRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProductRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProductRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

