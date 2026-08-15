//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class VectorStats {
  /// Returns a new [VectorStats] instance.
  VectorStats({
    this.totalCollections,
    this.totalStorageBytes,
    this.totalVectors,
  });

  /// TotalCollections is how many collections the store holds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalCollections;

  /// TotalStorageBytes is the sum of every collection's on-disk size.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalStorageBytes;

  /// TotalVectors is the sum of every collection's point count.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalVectors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VectorStats &&
    other.totalCollections == totalCollections &&
    other.totalStorageBytes == totalStorageBytes &&
    other.totalVectors == totalVectors;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (totalCollections == null ? 0 : totalCollections!.hashCode) +
    (totalStorageBytes == null ? 0 : totalStorageBytes!.hashCode) +
    (totalVectors == null ? 0 : totalVectors!.hashCode);

  @override
  String toString() => 'VectorStats[totalCollections=$totalCollections, totalStorageBytes=$totalStorageBytes, totalVectors=$totalVectors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.totalCollections != null) {
      json[r'totalCollections'] = this.totalCollections;
    } else {
      json[r'totalCollections'] = null;
    }
    if (this.totalStorageBytes != null) {
      json[r'totalStorageBytes'] = this.totalStorageBytes;
    } else {
      json[r'totalStorageBytes'] = null;
    }
    if (this.totalVectors != null) {
      json[r'totalVectors'] = this.totalVectors;
    } else {
      json[r'totalVectors'] = null;
    }
    return json;
  }

  /// Returns a new [VectorStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VectorStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VectorStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VectorStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VectorStats(
        totalCollections: mapValueOfType<int>(json, r'totalCollections'),
        totalStorageBytes: mapValueOfType<int>(json, r'totalStorageBytes'),
        totalVectors: mapValueOfType<int>(json, r'totalVectors'),
      );
    }
    return null;
  }

  static List<VectorStats> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VectorStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VectorStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VectorStats> mapFromJson(dynamic json) {
    final map = <String, VectorStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VectorStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VectorStats-objects as value to a dart map
  static Map<String, List<VectorStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VectorStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VectorStats.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

