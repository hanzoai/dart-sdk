//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RouterList {
  /// Returns a new [RouterList] instance.
  RouterList({
    this.routers = const [],
  });
  /// Routers is one row per ZT edge-router tagged with the caller's org role.
  List<RouterView> routers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RouterList &&
    _deepEquality.equals(other.routers, routers);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (routers.hashCode);

  @override
  String toString() => 'RouterList[routers=$routers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'routers'] = this.routers;
    return json;
  }

  /// Returns a new [RouterList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RouterList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RouterList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RouterList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RouterList(
        routers: RouterView.listFromJson(json[r'routers']),
      );
    }
    return null;
  }

  static List<RouterList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RouterList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RouterList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RouterList> mapFromJson(dynamic json) {
    final map = <String, RouterList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RouterList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RouterList-objects as value to a dart map
  static Map<String, List<RouterList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RouterList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RouterList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

