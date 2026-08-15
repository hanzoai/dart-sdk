//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SaaSCategory {
  /// Returns a new [SaaSCategory] instance.
  SaaSCategory({
    this.category,
    this.mrrCents,
    this.subscriptions,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mrrCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? subscriptions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SaaSCategory &&
    other.category == category &&
    other.mrrCents == mrrCents &&
    other.subscriptions == subscriptions;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (category == null ? 0 : category!.hashCode) +
    (mrrCents == null ? 0 : mrrCents!.hashCode) +
    (subscriptions == null ? 0 : subscriptions!.hashCode);

  @override
  String toString() => 'SaaSCategory[category=$category, mrrCents=$mrrCents, subscriptions=$subscriptions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.mrrCents != null) {
      json[r'mrrCents'] = this.mrrCents;
    } else {
      json[r'mrrCents'] = null;
    }
    if (this.subscriptions != null) {
      json[r'subscriptions'] = this.subscriptions;
    } else {
      json[r'subscriptions'] = null;
    }
    return json;
  }

  /// Returns a new [SaaSCategory] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SaaSCategory? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SaaSCategory[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SaaSCategory[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SaaSCategory(
        category: mapValueOfType<String>(json, r'category'),
        mrrCents: mapValueOfType<int>(json, r'mrrCents'),
        subscriptions: mapValueOfType<int>(json, r'subscriptions'),
      );
    }
    return null;
  }

  static List<SaaSCategory> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SaaSCategory>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SaaSCategory.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SaaSCategory> mapFromJson(dynamic json) {
    final map = <String, SaaSCategory>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SaaSCategory.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SaaSCategory-objects as value to a dart map
  static Map<String, List<SaaSCategory>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SaaSCategory>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SaaSCategory.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

