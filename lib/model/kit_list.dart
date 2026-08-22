//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class KitList {
  /// Returns a new [KitList] instance.
  KitList({
    this.data = const [],
  });
  /// Data is the public catalog followed by the caller org's own kits.
  List<StarterKit> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is KitList &&
    _deepEquality.equals(other.data, data);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode);

  @override
  String toString() => 'KitList[data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [KitList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static KitList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "KitList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "KitList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return KitList(
        data: StarterKit.listFromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<KitList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <KitList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KitList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, KitList> mapFromJson(dynamic json) {
    final map = <String, KitList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = KitList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of KitList-objects as value to a dart map
  static Map<String, List<KitList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<KitList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = KitList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

