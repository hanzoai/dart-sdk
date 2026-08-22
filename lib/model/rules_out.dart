//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RulesOut {
  /// Returns a new [RulesOut] instance.
  RulesOut({
    this.rules = const [],
  });
  /// Rules is every rule the org has set, highest priority first — the order they are matched in.
  List<Rule> rules;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RulesOut &&
    _deepEquality.equals(other.rules, rules);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (rules.hashCode);

  @override
  String toString() => 'RulesOut[rules=$rules]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'rules'] = this.rules;
    return json;
  }

  /// Returns a new [RulesOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RulesOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RulesOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RulesOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RulesOut(
        rules: Rule.listFromJson(json[r'rules']),
      );
    }
    return null;
  }

  static List<RulesOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RulesOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RulesOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RulesOut> mapFromJson(dynamic json) {
    final map = <String, RulesOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RulesOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RulesOut-objects as value to a dart map
  static Map<String, List<RulesOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RulesOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RulesOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

