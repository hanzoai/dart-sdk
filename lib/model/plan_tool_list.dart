//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PlanToolList {
  /// Returns a new [PlanToolList] instance.
  PlanToolList({
    this.tools = const [],
  });

  /// Tools are the metered tools, each an opaque object exactly as the catalog emits it — typically name, billing unit and price.
  List<Object> tools;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PlanToolList &&
    _deepEquality.equals(other.tools, tools);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tools.hashCode);

  @override
  String toString() => 'PlanToolList[tools=$tools]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'tools'] = this.tools;
    return json;
  }

  /// Returns a new [PlanToolList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PlanToolList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PlanToolList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PlanToolList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PlanToolList(
        tools: json[r'tools'] is Iterable
            ? (json[r'tools'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<PlanToolList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PlanToolList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlanToolList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PlanToolList> mapFromJson(dynamic json) {
    final map = <String, PlanToolList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PlanToolList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PlanToolList-objects as value to a dart map
  static Map<String, List<PlanToolList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PlanToolList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PlanToolList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

