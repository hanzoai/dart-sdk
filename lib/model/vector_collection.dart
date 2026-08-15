//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class VectorCollection {
  /// Returns a new [VectorCollection] instance.
  VectorCollection({
    this.createdAt,
    this.dimension,
    this.distanceMetric,
    this.name,
    this.storageBytes,
    this.vectorCount,
  });

  /// CreatedAt is the collection's creation time (RFC 3339); Qdrant does not report one, so it is empty today.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// Dimension is the size of one vector in the collection.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dimension;

  /// DistanceMetric is the collection's distance function; \"cosine\" when the collection's detail could not be read.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? distanceMetric;

  /// Name is the collection name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// StorageBytes is the collection's on-disk size, omitted when unknown.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? storageBytes;

  /// VectorCount is the collection's point count.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vectorCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VectorCollection &&
    other.createdAt == createdAt &&
    other.dimension == dimension &&
    other.distanceMetric == distanceMetric &&
    other.name == name &&
    other.storageBytes == storageBytes &&
    other.vectorCount == vectorCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (dimension == null ? 0 : dimension!.hashCode) +
    (distanceMetric == null ? 0 : distanceMetric!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (storageBytes == null ? 0 : storageBytes!.hashCode) +
    (vectorCount == null ? 0 : vectorCount!.hashCode);

  @override
  String toString() => 'VectorCollection[createdAt=$createdAt, dimension=$dimension, distanceMetric=$distanceMetric, name=$name, storageBytes=$storageBytes, vectorCount=$vectorCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.dimension != null) {
      json[r'dimension'] = this.dimension;
    } else {
      json[r'dimension'] = null;
    }
    if (this.distanceMetric != null) {
      json[r'distanceMetric'] = this.distanceMetric;
    } else {
      json[r'distanceMetric'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.storageBytes != null) {
      json[r'storageBytes'] = this.storageBytes;
    } else {
      json[r'storageBytes'] = null;
    }
    if (this.vectorCount != null) {
      json[r'vectorCount'] = this.vectorCount;
    } else {
      json[r'vectorCount'] = null;
    }
    return json;
  }

  /// Returns a new [VectorCollection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VectorCollection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VectorCollection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VectorCollection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VectorCollection(
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        dimension: mapValueOfType<int>(json, r'dimension'),
        distanceMetric: mapValueOfType<String>(json, r'distanceMetric'),
        name: mapValueOfType<String>(json, r'name'),
        storageBytes: mapValueOfType<int>(json, r'storageBytes'),
        vectorCount: mapValueOfType<int>(json, r'vectorCount'),
      );
    }
    return null;
  }

  static List<VectorCollection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VectorCollection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VectorCollection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VectorCollection> mapFromJson(dynamic json) {
    final map = <String, VectorCollection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VectorCollection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VectorCollection-objects as value to a dart map
  static Map<String, List<VectorCollection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VectorCollection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VectorCollection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

