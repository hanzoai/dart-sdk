//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FinancePaymentMethod {
  /// Returns a new [FinancePaymentMethod] instance.
  FinancePaymentMethod({
    this.brand,
    this.expMonth,
    this.expYear,
    this.id,
    this.isDefault,
    this.last4,
    this.type,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? brand;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expMonth;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expYear;

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
  bool? isDefault;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? last4;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FinancePaymentMethod &&
    other.brand == brand &&
    other.expMonth == expMonth &&
    other.expYear == expYear &&
    other.id == id &&
    other.isDefault == isDefault &&
    other.last4 == last4 &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (brand == null ? 0 : brand!.hashCode) +
    (expMonth == null ? 0 : expMonth!.hashCode) +
    (expYear == null ? 0 : expYear!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (isDefault == null ? 0 : isDefault!.hashCode) +
    (last4 == null ? 0 : last4!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'FinancePaymentMethod[brand=$brand, expMonth=$expMonth, expYear=$expYear, id=$id, isDefault=$isDefault, last4=$last4, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.brand != null) {
      json[r'brand'] = this.brand;
    } else {
      json[r'brand'] = null;
    }
    if (this.expMonth != null) {
      json[r'expMonth'] = this.expMonth;
    } else {
      json[r'expMonth'] = null;
    }
    if (this.expYear != null) {
      json[r'expYear'] = this.expYear;
    } else {
      json[r'expYear'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.isDefault != null) {
      json[r'isDefault'] = this.isDefault;
    } else {
      json[r'isDefault'] = null;
    }
    if (this.last4 != null) {
      json[r'last4'] = this.last4;
    } else {
      json[r'last4'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [FinancePaymentMethod] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FinancePaymentMethod? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FinancePaymentMethod[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FinancePaymentMethod[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FinancePaymentMethod(
        brand: mapValueOfType<String>(json, r'brand'),
        expMonth: mapValueOfType<int>(json, r'expMonth'),
        expYear: mapValueOfType<int>(json, r'expYear'),
        id: mapValueOfType<String>(json, r'id'),
        isDefault: mapValueOfType<bool>(json, r'isDefault'),
        last4: mapValueOfType<String>(json, r'last4'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<FinancePaymentMethod> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FinancePaymentMethod>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FinancePaymentMethod.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FinancePaymentMethod> mapFromJson(dynamic json) {
    final map = <String, FinancePaymentMethod>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FinancePaymentMethod.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FinancePaymentMethod-objects as value to a dart map
  static Map<String, List<FinancePaymentMethod>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FinancePaymentMethod>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FinancePaymentMethod.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

