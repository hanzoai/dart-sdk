//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TriggerList {
  /// Returns a new [TriggerList] instance.
  TriggerList({
    this.triggers = const [],
  });
  /// Triggers is one row per function, describing how it is reached.
  List<TriggerView> triggers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TriggerList &&
    _deepEquality.equals(other.triggers, triggers);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (triggers.hashCode);

  @override
  String toString() => 'TriggerList[triggers=$triggers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'triggers'] = this.triggers;
    return json;
  }

  /// Returns a new [TriggerList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TriggerList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TriggerList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TriggerList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TriggerList(
        triggers: TriggerView.listFromJson(json[r'triggers']),
      );
    }
    return null;
  }

  static List<TriggerList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TriggerList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TriggerList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TriggerList> mapFromJson(dynamic json) {
    final map = <String, TriggerList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TriggerList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TriggerList-objects as value to a dart map
  static Map<String, List<TriggerList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TriggerList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TriggerList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

