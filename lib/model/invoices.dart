//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Invoices {
  /// Returns a new [Invoices] instance.
  Invoices({
    this.count,
    this.invoices = const [],
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  List<BillingInvoice> invoices;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Invoices &&
    other.count == count &&
    _deepEquality.equals(other.invoices, invoices);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (count == null ? 0 : count!.hashCode) +
    (invoices.hashCode);

  @override
  String toString() => 'Invoices[count=$count, invoices=$invoices]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
      json[r'invoices'] = this.invoices;
    return json;
  }

  /// Returns a new [Invoices] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Invoices? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Invoices[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Invoices[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Invoices(
        count: mapValueOfType<int>(json, r'count'),
        invoices: BillingInvoice.listFromJson(json[r'invoices']),
      );
    }
    return null;
  }

  static List<Invoices> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Invoices>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Invoices.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Invoices> mapFromJson(dynamic json) {
    final map = <String, Invoices>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Invoices.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Invoices-objects as value to a dart map
  static Map<String, List<Invoices>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Invoices>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Invoices.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

