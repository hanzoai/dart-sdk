//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RegisterResult {
  /// Returns a new [RegisterResult] instance.
  RegisterResult({
    this.quote,
    this.record,
  });

  /// the price it was bought at
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Offer? quote;

  /// the ownership row this purchase issued
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Holding? record;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RegisterResult &&
    other.quote == quote &&
    other.record == record;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (quote == null ? 0 : quote!.hashCode) +
    (record == null ? 0 : record!.hashCode);

  @override
  String toString() => 'RegisterResult[quote=$quote, record=$record]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.quote != null) {
      json[r'quote'] = this.quote;
    } else {
      json[r'quote'] = null;
    }
    if (this.record != null) {
      json[r'record'] = this.record;
    } else {
      json[r'record'] = null;
    }
    return json;
  }

  /// Returns a new [RegisterResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RegisterResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RegisterResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RegisterResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RegisterResult(
        quote: Offer.fromJson(json[r'quote']),
        record: Holding.fromJson(json[r'record']),
      );
    }
    return null;
  }

  static List<RegisterResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RegisterResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RegisterResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RegisterResult> mapFromJson(dynamic json) {
    final map = <String, RegisterResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RegisterResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RegisterResult-objects as value to a dart map
  static Map<String, List<RegisterResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RegisterResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RegisterResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

