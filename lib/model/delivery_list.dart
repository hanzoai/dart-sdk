//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DeliveryList {
  /// Returns a new [DeliveryList] instance.
  DeliveryList({
    this.data = const [],
  });
  /// Data is the matching attempts, newest first.
  List<DeliveryRow> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliveryList &&
    _deepEquality.equals(other.data, data);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode);

  @override
  String toString() => 'DeliveryList[data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [DeliveryList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliveryList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeliveryList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeliveryList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeliveryList(
        data: DeliveryRow.listFromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<DeliveryList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliveryList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliveryList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliveryList> mapFromJson(dynamic json) {
    final map = <String, DeliveryList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliveryList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliveryList-objects as value to a dart map
  static Map<String, List<DeliveryList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliveryList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliveryList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

