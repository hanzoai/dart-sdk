//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BuyInput {
  /// Returns a new [BuyInput] instance.
  BuyInput({
    this.e164,
  });
  /// E164 is the number to buy, in E.164 (a leading + and digits), exactly as the search returned it. This is the number itself, not the id from a search result.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? e164;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BuyInput &&
    other.e164 == e164;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (e164 == null ? 0 : e164!.hashCode);

  @override
  String toString() => 'BuyInput[e164=$e164]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.e164 != null) {
      json[r'e164'] = this.e164;
    } else {
      json[r'e164'] = null;
    }
    return json;
  }

  /// Returns a new [BuyInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BuyInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BuyInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BuyInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BuyInput(
        e164: mapValueOfType<String>(json, r'e164'),
      );
    }
    return null;
  }

  static List<BuyInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BuyInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BuyInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BuyInput> mapFromJson(dynamic json) {
    final map = <String, BuyInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BuyInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BuyInput-objects as value to a dart map
  static Map<String, List<BuyInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BuyInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BuyInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

