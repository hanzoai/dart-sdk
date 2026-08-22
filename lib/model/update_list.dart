//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class UpdateList {
  /// Returns a new [UpdateList] instance.
  UpdateList({
    this.updates = const [],
  });
  /// Updates is the entries, each carrying the date it describes.
  List<Object> updates;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateList &&
    _deepEquality.equals(other.updates, updates);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (updates.hashCode);

  @override
  String toString() => 'UpdateList[updates=$updates]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'updates'] = this.updates;
    return json;
  }

  /// Returns a new [UpdateList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateList(
        updates: json[r'updates'] is Iterable
            ? (json[r'updates'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<UpdateList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateList> mapFromJson(dynamic json) {
    final map = <String, UpdateList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateList-objects as value to a dart map
  static Map<String, List<UpdateList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

