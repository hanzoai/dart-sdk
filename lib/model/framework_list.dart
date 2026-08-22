//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FrameworkList {
  /// Returns a new [FrameworkList] instance.
  FrameworkList({
    this.frameworks = const [],
  });
  /// Frameworks is each framework and how many clauses it publishes.
  List<FrameworkRow> frameworks;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FrameworkList &&
    _deepEquality.equals(other.frameworks, frameworks);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (frameworks.hashCode);

  @override
  String toString() => 'FrameworkList[frameworks=$frameworks]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'frameworks'] = this.frameworks;
    return json;
  }

  /// Returns a new [FrameworkList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FrameworkList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FrameworkList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FrameworkList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FrameworkList(
        frameworks: FrameworkRow.listFromJson(json[r'frameworks']),
      );
    }
    return null;
  }

  static List<FrameworkList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FrameworkList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FrameworkList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FrameworkList> mapFromJson(dynamic json) {
    final map = <String, FrameworkList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FrameworkList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FrameworkList-objects as value to a dart map
  static Map<String, List<FrameworkList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FrameworkList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FrameworkList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

