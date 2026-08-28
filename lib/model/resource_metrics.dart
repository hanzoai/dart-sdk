//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ResourceMetrics {
  /// Returns a new [ResourceMetrics] instance.
  ResourceMetrics({
    this.cpuPercentage,
    this.cpuUsage,
    this.memoryPercentage,
    this.memoryUsage,
    this.podCount,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? cpuPercentage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cpuUsage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? memoryPercentage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? memoryUsage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? podCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResourceMetrics &&
    other.cpuPercentage == cpuPercentage &&
    other.cpuUsage == cpuUsage &&
    other.memoryPercentage == memoryPercentage &&
    other.memoryUsage == memoryUsage &&
    other.podCount == podCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cpuPercentage == null ? 0 : cpuPercentage!.hashCode) +
    (cpuUsage == null ? 0 : cpuUsage!.hashCode) +
    (memoryPercentage == null ? 0 : memoryPercentage!.hashCode) +
    (memoryUsage == null ? 0 : memoryUsage!.hashCode) +
    (podCount == null ? 0 : podCount!.hashCode);

  @override
  String toString() => 'ResourceMetrics[cpuPercentage=$cpuPercentage, cpuUsage=$cpuUsage, memoryPercentage=$memoryPercentage, memoryUsage=$memoryUsage, podCount=$podCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cpuPercentage != null) {
      json[r'cpuPercentage'] = this.cpuPercentage;
    } else {
      json[r'cpuPercentage'] = null;
    }
    if (this.cpuUsage != null) {
      json[r'cpuUsage'] = this.cpuUsage;
    } else {
      json[r'cpuUsage'] = null;
    }
    if (this.memoryPercentage != null) {
      json[r'memoryPercentage'] = this.memoryPercentage;
    } else {
      json[r'memoryPercentage'] = null;
    }
    if (this.memoryUsage != null) {
      json[r'memoryUsage'] = this.memoryUsage;
    } else {
      json[r'memoryUsage'] = null;
    }
    if (this.podCount != null) {
      json[r'podCount'] = this.podCount;
    } else {
      json[r'podCount'] = null;
    }
    return json;
  }

  /// Returns a new [ResourceMetrics] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ResourceMetrics? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ResourceMetrics[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ResourceMetrics[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ResourceMetrics(
        cpuPercentage: num.parse('${json[r'cpuPercentage']}'),
        cpuUsage: mapValueOfType<String>(json, r'cpuUsage'),
        memoryPercentage: num.parse('${json[r'memoryPercentage']}'),
        memoryUsage: mapValueOfType<String>(json, r'memoryUsage'),
        podCount: mapValueOfType<int>(json, r'podCount'),
      );
    }
    return null;
  }

  static List<ResourceMetrics> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ResourceMetrics>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResourceMetrics.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ResourceMetrics> mapFromJson(dynamic json) {
    final map = <String, ResourceMetrics>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ResourceMetrics.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ResourceMetrics-objects as value to a dart map
  static Map<String, List<ResourceMetrics>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ResourceMetrics>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ResourceMetrics.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

