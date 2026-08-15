//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CustomerTxn {
  /// Returns a new [CustomerTxn] instance.
  CustomerTxn({
    this.cents,
    this.currency,
    this.id,
    this.notes,
    this.time,
    this.type,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cents;

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
  String? notes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? time;

  /// \"deposit\" (credit) | \"withdraw\" (usage)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CustomerTxn &&
    other.cents == cents &&
    other.currency == currency &&
    other.id == id &&
    other.notes == notes &&
    other.time == time &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cents == null ? 0 : cents!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (notes == null ? 0 : notes!.hashCode) +
    (time == null ? 0 : time!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'CustomerTxn[cents=$cents, currency=$currency, id=$id, notes=$notes, time=$time, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cents != null) {
      json[r'cents'] = this.cents;
    } else {
      json[r'cents'] = null;
    }
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
    if (this.notes != null) {
      json[r'notes'] = this.notes;
    } else {
      json[r'notes'] = null;
    }
    if (this.time != null) {
      json[r'time'] = this.time;
    } else {
      json[r'time'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [CustomerTxn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CustomerTxn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CustomerTxn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CustomerTxn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CustomerTxn(
        cents: mapValueOfType<int>(json, r'cents'),
        currency: mapValueOfType<String>(json, r'currency'),
        id: mapValueOfType<String>(json, r'id'),
        notes: mapValueOfType<String>(json, r'notes'),
        time: mapValueOfType<String>(json, r'time'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<CustomerTxn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CustomerTxn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CustomerTxn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CustomerTxn> mapFromJson(dynamic json) {
    final map = <String, CustomerTxn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CustomerTxn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CustomerTxn-objects as value to a dart map
  static Map<String, List<CustomerTxn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CustomerTxn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CustomerTxn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

