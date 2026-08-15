//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Order {
  /// Returns a new [Order] instance.
  Order({
    this.contacts,
    required this.domain,
    this.years,
  });

  /// Contacts is the WHOIS contact set. Omit it and the registrar uses the reseller account's default contacts.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Contacts? contacts;

  /// Domain is the name to buy. It is required.
  String domain;

  /// Years is the term to buy, defaulting to 1.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? years;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Order &&
    other.contacts == contacts &&
    other.domain == domain &&
    other.years == years;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (contacts == null ? 0 : contacts!.hashCode) +
    (domain.hashCode) +
    (years == null ? 0 : years!.hashCode);

  @override
  String toString() => 'Order[contacts=$contacts, domain=$domain, years=$years]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.contacts != null) {
      json[r'contacts'] = this.contacts;
    } else {
      json[r'contacts'] = null;
    }
      json[r'domain'] = this.domain;
    if (this.years != null) {
      json[r'years'] = this.years;
    } else {
      json[r'years'] = null;
    }
    return json;
  }

  /// Returns a new [Order] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Order? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Order[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Order[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Order(
        contacts: Contacts.fromJson(json[r'contacts']),
        domain: mapValueOfType<String>(json, r'domain')!,
        years: mapValueOfType<int>(json, r'years'),
      );
    }
    return null;
  }

  static List<Order> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Order>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Order.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Order> mapFromJson(dynamic json) {
    final map = <String, Order>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Order.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Order-objects as value to a dart map
  static Map<String, List<Order>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Order>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Order.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'domain',
  };
}

