//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yFilterAttributeValueResponse {
  /// Returns a new [O11yFilterAttributeValueResponse] instance.
  O11yFilterAttributeValueResponse({
    this.boolAttributeValues = const [],
    this.numberAttributeValues = const [],
    this.relatedValues,
    this.stringAttributeValues = const [],
  });
  List<bool> boolAttributeValues;

  List<Object> numberAttributeValues;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yFilterAttributeValueResponse? relatedValues;

  List<String> stringAttributeValues;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yFilterAttributeValueResponse &&
    _deepEquality.equals(other.boolAttributeValues, boolAttributeValues) &&
    _deepEquality.equals(other.numberAttributeValues, numberAttributeValues) &&
    other.relatedValues == relatedValues &&
    _deepEquality.equals(other.stringAttributeValues, stringAttributeValues);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (boolAttributeValues.hashCode) +
    (numberAttributeValues.hashCode) +
    (relatedValues == null ? 0 : relatedValues!.hashCode) +
    (stringAttributeValues.hashCode);

  @override
  String toString() => 'O11yFilterAttributeValueResponse[boolAttributeValues=$boolAttributeValues, numberAttributeValues=$numberAttributeValues, relatedValues=$relatedValues, stringAttributeValues=$stringAttributeValues]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'boolAttributeValues'] = this.boolAttributeValues;
      json[r'numberAttributeValues'] = this.numberAttributeValues;
    if (this.relatedValues != null) {
      json[r'relatedValues'] = this.relatedValues;
    } else {
      json[r'relatedValues'] = null;
    }
      json[r'stringAttributeValues'] = this.stringAttributeValues;
    return json;
  }

  /// Returns a new [O11yFilterAttributeValueResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yFilterAttributeValueResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yFilterAttributeValueResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yFilterAttributeValueResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yFilterAttributeValueResponse(
        boolAttributeValues: json[r'boolAttributeValues'] is Iterable
            ? (json[r'boolAttributeValues'] as Iterable).cast<bool>().toList(growable: false)
            : const [],
        numberAttributeValues: json[r'numberAttributeValues'] is Iterable
            ? (json[r'numberAttributeValues'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        relatedValues: O11yFilterAttributeValueResponse.fromJson(json[r'relatedValues']),
        stringAttributeValues: json[r'stringAttributeValues'] is Iterable
            ? (json[r'stringAttributeValues'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<O11yFilterAttributeValueResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yFilterAttributeValueResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yFilterAttributeValueResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yFilterAttributeValueResponse> mapFromJson(dynamic json) {
    final map = <String, O11yFilterAttributeValueResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yFilterAttributeValueResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yFilterAttributeValueResponse-objects as value to a dart map
  static Map<String, List<O11yFilterAttributeValueResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yFilterAttributeValueResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yFilterAttributeValueResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

