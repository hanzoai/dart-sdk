//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Token {
  /// Returns a new [Token] instance.
  Token({
    this.at,
    this.decimals,
    this.name,
    this.symbol,
  });
  /// At is the token's contract address, lowercase.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? at;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? decimals;

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
  String? symbol;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Token &&
    other.at == at &&
    other.decimals == decimals &&
    other.name == name &&
    other.symbol == symbol;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (at == null ? 0 : at!.hashCode) +
    (decimals == null ? 0 : decimals!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (symbol == null ? 0 : symbol!.hashCode);

  @override
  String toString() => 'Token[at=$at, decimals=$decimals, name=$name, symbol=$symbol]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.at != null) {
      json[r'at'] = this.at;
    } else {
      json[r'at'] = null;
    }
    if (this.decimals != null) {
      json[r'decimals'] = this.decimals;
    } else {
      json[r'decimals'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.symbol != null) {
      json[r'symbol'] = this.symbol;
    } else {
      json[r'symbol'] = null;
    }
    return json;
  }

  /// Returns a new [Token] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Token? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Token[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Token[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Token(
        at: mapValueOfType<String>(json, r'at'),
        decimals: mapValueOfType<int>(json, r'decimals'),
        name: mapValueOfType<String>(json, r'name'),
        symbol: mapValueOfType<String>(json, r'symbol'),
      );
    }
    return null;
  }

  static List<Token> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Token>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Token.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Token> mapFromJson(dynamic json) {
    final map = <String, Token>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Token.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Token-objects as value to a dart map
  static Map<String, List<Token>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Token>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Token.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

