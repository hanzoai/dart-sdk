//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CreditEntry {
  /// Returns a new [CreditEntry] instance.
  CreditEntry({
    this.available,
    this.currency,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? available;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreditEntry &&
    other.available == available &&
    other.currency == currency;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (available == null ? 0 : available!.hashCode) +
    (currency == null ? 0 : currency!.hashCode);

  @override
  String toString() => 'CreditEntry[available=$available, currency=$currency]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.available != null) {
      json[r'available'] = this.available;
    } else {
      json[r'available'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    return json;
  }

  /// Returns a new [CreditEntry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreditEntry? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreditEntry[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreditEntry[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreditEntry(
        available: mapValueOfType<int>(json, r'available'),
        currency: mapValueOfType<String>(json, r'currency'),
      );
    }
    return null;
  }

  static List<CreditEntry> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreditEntry>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreditEntry.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreditEntry> mapFromJson(dynamic json) {
    final map = <String, CreditEntry>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreditEntry.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreditEntry-objects as value to a dart map
  static Map<String, List<CreditEntry>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreditEntry>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreditEntry.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

