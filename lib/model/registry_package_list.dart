//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RegistryPackageList {
  /// Returns a new [RegistryPackageList] instance.
  RegistryPackageList({
    this.data = const [],
  });

  /// Data is the packages in the org's scope.
  List<RegistryPackage> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RegistryPackageList &&
    _deepEquality.equals(other.data, data);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode);

  @override
  String toString() => 'RegistryPackageList[data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [RegistryPackageList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RegistryPackageList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RegistryPackageList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RegistryPackageList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RegistryPackageList(
        data: RegistryPackage.listFromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<RegistryPackageList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RegistryPackageList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RegistryPackageList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RegistryPackageList> mapFromJson(dynamic json) {
    final map = <String, RegistryPackageList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RegistryPackageList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RegistryPackageList-objects as value to a dart map
  static Map<String, List<RegistryPackageList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RegistryPackageList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RegistryPackageList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

