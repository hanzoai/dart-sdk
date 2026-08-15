//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yIdentN {
  /// Returns a new [O11yO11yIdentN] instance.
  O11yO11yIdentN({
    this.apikey,
    this.impersonation,
    this.tokenizer,
  });

  /// APIKey is the API-key provider.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yToggle? apikey;

  /// Impersonation is the impersonation provider.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yToggle? impersonation;

  /// Tokenizer is the token-based provider.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yToggle? tokenizer;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yIdentN &&
    other.apikey == apikey &&
    other.impersonation == impersonation &&
    other.tokenizer == tokenizer;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (apikey == null ? 0 : apikey!.hashCode) +
    (impersonation == null ? 0 : impersonation!.hashCode) +
    (tokenizer == null ? 0 : tokenizer!.hashCode);

  @override
  String toString() => 'O11yO11yIdentN[apikey=$apikey, impersonation=$impersonation, tokenizer=$tokenizer]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.apikey != null) {
      json[r'apikey'] = this.apikey;
    } else {
      json[r'apikey'] = null;
    }
    if (this.impersonation != null) {
      json[r'impersonation'] = this.impersonation;
    } else {
      json[r'impersonation'] = null;
    }
    if (this.tokenizer != null) {
      json[r'tokenizer'] = this.tokenizer;
    } else {
      json[r'tokenizer'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yIdentN] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yIdentN? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yIdentN[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yIdentN[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yIdentN(
        apikey: O11yO11yToggle.fromJson(json[r'apikey']),
        impersonation: O11yO11yToggle.fromJson(json[r'impersonation']),
        tokenizer: O11yO11yToggle.fromJson(json[r'tokenizer']),
      );
    }
    return null;
  }

  static List<O11yO11yIdentN> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yIdentN>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yIdentN.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yIdentN> mapFromJson(dynamic json) {
    final map = <String, O11yO11yIdentN>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yIdentN.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yIdentN-objects as value to a dart map
  static Map<String, List<O11yO11yIdentN>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yIdentN>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yIdentN.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

