//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ObjectList {
  /// Returns a new [ObjectList] instance.
  ObjectList({
    this.bucket,
    this.objects = const [],
    this.prefix,
    this.total,
  });
  /// Bucket is the bucket that was listed, friendly name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bucket;

  /// Objects are the entries at this level, keys RELATIVE to Prefix.
  List<ObjectItem> objects;

  /// Prefix is the sub-folder the listing was scoped to, cleaned. Empty for the bucket root.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prefix;

  /// Total is how many entries came back. The listing is BOUNDED, so a bucket with more keys than the cap answers the cap and this says so — it is not a count of what the bucket holds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ObjectList &&
    other.bucket == bucket &&
    _deepEquality.equals(other.objects, objects) &&
    other.prefix == prefix &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bucket == null ? 0 : bucket!.hashCode) +
    (objects.hashCode) +
    (prefix == null ? 0 : prefix!.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'ObjectList[bucket=$bucket, objects=$objects, prefix=$prefix, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.bucket != null) {
      json[r'bucket'] = this.bucket;
    } else {
      json[r'bucket'] = null;
    }
      json[r'objects'] = this.objects;
    if (this.prefix != null) {
      json[r'prefix'] = this.prefix;
    } else {
      json[r'prefix'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [ObjectList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ObjectList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ObjectList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ObjectList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ObjectList(
        bucket: mapValueOfType<String>(json, r'bucket'),
        objects: ObjectItem.listFromJson(json[r'objects']),
        prefix: mapValueOfType<String>(json, r'prefix'),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<ObjectList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ObjectList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ObjectList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ObjectList> mapFromJson(dynamic json) {
    final map = <String, ObjectList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ObjectList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ObjectList-objects as value to a dart map
  static Map<String, List<ObjectList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ObjectList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ObjectList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

