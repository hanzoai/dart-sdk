//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CryptoOptions {
  /// Returns a new [CryptoOptions] instance.
  CryptoOptions({
    this.chains = const [],
    this.tokens = const [],
  });
  List<String> chains;

  List<String> tokens;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CryptoOptions &&
    _deepEquality.equals(other.chains, chains) &&
    _deepEquality.equals(other.tokens, tokens);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (chains.hashCode) +
    (tokens.hashCode);

  @override
  String toString() => 'CryptoOptions[chains=$chains, tokens=$tokens]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'chains'] = this.chains;
      json[r'tokens'] = this.tokens;
    return json;
  }

  /// Returns a new [CryptoOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CryptoOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CryptoOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CryptoOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CryptoOptions(
        chains: json[r'chains'] is Iterable
            ? (json[r'chains'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        tokens: json[r'tokens'] is Iterable
            ? (json[r'tokens'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<CryptoOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CryptoOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CryptoOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CryptoOptions> mapFromJson(dynamic json) {
    final map = <String, CryptoOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CryptoOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CryptoOptions-objects as value to a dart map
  static Map<String, List<CryptoOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CryptoOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CryptoOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

