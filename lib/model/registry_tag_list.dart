//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RegistryTagList {
  /// Returns a new [RegistryTagList] instance.
  RegistryTagList({
    this.data = const [],
    this.image,
    this.ref,
  });
  /// Data is the tag names, as the registry reports them.
  List<String> data;

  /// Image is the repository name inside the org's namespace.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

  /// Ref is the full repository reference the tags belong to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ref;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RegistryTagList &&
    _deepEquality.equals(other.data, data) &&
    other.image == image &&
    other.ref == ref;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (ref == null ? 0 : ref!.hashCode);

  @override
  String toString() => 'RegistryTagList[data=$data, image=$image, ref=$ref]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.ref != null) {
      json[r'ref'] = this.ref;
    } else {
      json[r'ref'] = null;
    }
    return json;
  }

  /// Returns a new [RegistryTagList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RegistryTagList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RegistryTagList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RegistryTagList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RegistryTagList(
        data: json[r'data'] is Iterable
            ? (json[r'data'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        image: mapValueOfType<String>(json, r'image'),
        ref: mapValueOfType<String>(json, r'ref'),
      );
    }
    return null;
  }

  static List<RegistryTagList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RegistryTagList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RegistryTagList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RegistryTagList> mapFromJson(dynamic json) {
    final map = <String, RegistryTagList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RegistryTagList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RegistryTagList-objects as value to a dart map
  static Map<String, List<RegistryTagList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RegistryTagList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RegistryTagList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

