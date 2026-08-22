//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PagesDeploy {
  /// Returns a new [PagesDeploy] instance.
  PagesDeploy({
    this.branch,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? branch;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PagesDeploy &&
    other.branch == branch;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (branch == null ? 0 : branch!.hashCode);

  @override
  String toString() => 'PagesDeploy[branch=$branch]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.branch != null) {
      json[r'branch'] = this.branch;
    } else {
      json[r'branch'] = null;
    }
    return json;
  }

  /// Returns a new [PagesDeploy] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PagesDeploy? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PagesDeploy[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PagesDeploy[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PagesDeploy(
        branch: mapValueOfType<String>(json, r'branch'),
      );
    }
    return null;
  }

  static List<PagesDeploy> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PagesDeploy>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PagesDeploy.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PagesDeploy> mapFromJson(dynamic json) {
    final map = <String, PagesDeploy>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PagesDeploy.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PagesDeploy-objects as value to a dart map
  static Map<String, List<PagesDeploy>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PagesDeploy>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PagesDeploy.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

