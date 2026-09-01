//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Tokens {
  /// Returns a new [Tokens] instance.
  Tokens({
    this.chain,
    this.reach,
    this.tokens = const [],
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? chain;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Reach? reach;

  /// Tokens is `[]` where the indexer holds none and `null` where the read failed.
  List<Token> tokens;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Tokens &&
    other.chain == chain &&
    other.reach == reach &&
    _deepEquality.equals(other.tokens, tokens);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (chain == null ? 0 : chain!.hashCode) +
    (reach == null ? 0 : reach!.hashCode) +
    (tokens.hashCode);

  @override
  String toString() => 'Tokens[chain=$chain, reach=$reach, tokens=$tokens]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.chain != null) {
      json[r'chain'] = this.chain;
    } else {
      json[r'chain'] = null;
    }
    if (this.reach != null) {
      json[r'reach'] = this.reach;
    } else {
      json[r'reach'] = null;
    }
      json[r'tokens'] = this.tokens;
    return json;
  }

  /// Returns a new [Tokens] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Tokens? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Tokens[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Tokens[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Tokens(
        chain: mapValueOfType<String>(json, r'chain'),
        reach: Reach.fromJson(json[r'reach']),
        tokens: Token.listFromJson(json[r'tokens']),
      );
    }
    return null;
  }

  static List<Tokens> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Tokens>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Tokens.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Tokens> mapFromJson(dynamic json) {
    final map = <String, Tokens>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Tokens.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Tokens-objects as value to a dart map
  static Map<String, List<Tokens>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Tokens>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Tokens.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

