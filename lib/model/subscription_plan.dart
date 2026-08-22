//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SubscriptionPlan {
  /// Returns a new [SubscriptionPlan] instance.
  SubscriptionPlan({
    this.currency,
    this.id,
    this.interval,
    this.name,
    this.price,
  });
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
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? interval;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? price;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SubscriptionPlan &&
    other.currency == currency &&
    other.id == id &&
    other.interval == interval &&
    other.name == name &&
    other.price == price;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (currency == null ? 0 : currency!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (interval == null ? 0 : interval!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (price == null ? 0 : price!.hashCode);

  @override
  String toString() => 'SubscriptionPlan[currency=$currency, id=$id, interval=$interval, name=$name, price=$price]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.interval != null) {
      json[r'interval'] = this.interval;
    } else {
      json[r'interval'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    return json;
  }

  /// Returns a new [SubscriptionPlan] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SubscriptionPlan? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SubscriptionPlan[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SubscriptionPlan[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SubscriptionPlan(
        currency: mapValueOfType<String>(json, r'currency'),
        id: mapValueOfType<String>(json, r'id'),
        interval: mapValueOfType<String>(json, r'interval'),
        name: mapValueOfType<String>(json, r'name'),
        price: mapValueOfType<int>(json, r'price'),
      );
    }
    return null;
  }

  static List<SubscriptionPlan> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubscriptionPlan>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubscriptionPlan.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SubscriptionPlan> mapFromJson(dynamic json) {
    final map = <String, SubscriptionPlan>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SubscriptionPlan.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SubscriptionPlan-objects as value to a dart map
  static Map<String, List<SubscriptionPlan>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SubscriptionPlan>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SubscriptionPlan.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

