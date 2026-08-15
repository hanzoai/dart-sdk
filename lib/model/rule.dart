//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Rule {
  /// Returns a new [Rule] instance.
  Rule({
    this.category,
    this.pattern,
    this.priority,
  });

  /// Category is the COA expense account a matching bill books to. An upsert normalizes a slug (\"cloud\") to its account number.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  /// Pattern is the merchant substring the rule matches on, case-insensitively. It is also the key an upsert writes by.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pattern;

  /// Priority breaks ties: when several patterns match, the highest wins.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? priority;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Rule &&
    other.category == category &&
    other.pattern == pattern &&
    other.priority == priority;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (category == null ? 0 : category!.hashCode) +
    (pattern == null ? 0 : pattern!.hashCode) +
    (priority == null ? 0 : priority!.hashCode);

  @override
  String toString() => 'Rule[category=$category, pattern=$pattern, priority=$priority]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.pattern != null) {
      json[r'pattern'] = this.pattern;
    } else {
      json[r'pattern'] = null;
    }
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
    }
    return json;
  }

  /// Returns a new [Rule] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Rule? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Rule[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Rule[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Rule(
        category: mapValueOfType<String>(json, r'category'),
        pattern: mapValueOfType<String>(json, r'pattern'),
        priority: mapValueOfType<int>(json, r'priority'),
      );
    }
    return null;
  }

  static List<Rule> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Rule>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Rule.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Rule> mapFromJson(dynamic json) {
    final map = <String, Rule>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Rule.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Rule-objects as value to a dart map
  static Map<String, List<Rule>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Rule>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Rule.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

