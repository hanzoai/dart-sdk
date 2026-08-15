//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CategorySpend {
  /// Returns a new [CategorySpend] instance.
  CategorySpend({
    this.category,
    this.cents,
    this.count,
  });

  /// Category is the bucket the ledger's own tag mapped to. An untagged or unrecognised line gets its own honest bucket rather than being folded away.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  /// Cents is what the org spent in that bucket over the window, in US cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cents;

  /// Count is how many ledger lines rolled up into it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CategorySpend &&
    other.category == category &&
    other.cents == cents &&
    other.count == count;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (category == null ? 0 : category!.hashCode) +
    (cents == null ? 0 : cents!.hashCode) +
    (count == null ? 0 : count!.hashCode);

  @override
  String toString() => 'CategorySpend[category=$category, cents=$cents, count=$count]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.cents != null) {
      json[r'cents'] = this.cents;
    } else {
      json[r'cents'] = null;
    }
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    return json;
  }

  /// Returns a new [CategorySpend] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CategorySpend? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CategorySpend[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CategorySpend[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CategorySpend(
        category: mapValueOfType<String>(json, r'category'),
        cents: mapValueOfType<int>(json, r'cents'),
        count: mapValueOfType<int>(json, r'count'),
      );
    }
    return null;
  }

  static List<CategorySpend> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CategorySpend>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CategorySpend.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CategorySpend> mapFromJson(dynamic json) {
    final map = <String, CategorySpend>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CategorySpend.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CategorySpend-objects as value to a dart map
  static Map<String, List<CategorySpend>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CategorySpend>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CategorySpend.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

