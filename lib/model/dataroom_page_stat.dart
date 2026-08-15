//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DataroomPageStat {
  /// Returns a new [DataroomPageStat] instance.
  DataroomPageStat({
    this.avgDuration,
    this.pageNumber,
    this.totalDuration,
    this.views,
  });

  /// AvgDuration is totalDuration divided by views, rounded; 0 when unviewed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? avgDuration;

  /// PageNumber is the page these counts are for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pageNumber;

  /// TotalDuration is the summed dwell measure reported for the page.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalDuration;

  /// Views is how many times the page was viewed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? views;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DataroomPageStat &&
    other.avgDuration == avgDuration &&
    other.pageNumber == pageNumber &&
    other.totalDuration == totalDuration &&
    other.views == views;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (avgDuration == null ? 0 : avgDuration!.hashCode) +
    (pageNumber == null ? 0 : pageNumber!.hashCode) +
    (totalDuration == null ? 0 : totalDuration!.hashCode) +
    (views == null ? 0 : views!.hashCode);

  @override
  String toString() => 'DataroomPageStat[avgDuration=$avgDuration, pageNumber=$pageNumber, totalDuration=$totalDuration, views=$views]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.avgDuration != null) {
      json[r'avgDuration'] = this.avgDuration;
    } else {
      json[r'avgDuration'] = null;
    }
    if (this.pageNumber != null) {
      json[r'pageNumber'] = this.pageNumber;
    } else {
      json[r'pageNumber'] = null;
    }
    if (this.totalDuration != null) {
      json[r'totalDuration'] = this.totalDuration;
    } else {
      json[r'totalDuration'] = null;
    }
    if (this.views != null) {
      json[r'views'] = this.views;
    } else {
      json[r'views'] = null;
    }
    return json;
  }

  /// Returns a new [DataroomPageStat] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DataroomPageStat? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DataroomPageStat[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DataroomPageStat[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DataroomPageStat(
        avgDuration: mapValueOfType<int>(json, r'avgDuration'),
        pageNumber: mapValueOfType<int>(json, r'pageNumber'),
        totalDuration: mapValueOfType<int>(json, r'totalDuration'),
        views: mapValueOfType<int>(json, r'views'),
      );
    }
    return null;
  }

  static List<DataroomPageStat> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DataroomPageStat>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DataroomPageStat.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DataroomPageStat> mapFromJson(dynamic json) {
    final map = <String, DataroomPageStat>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DataroomPageStat.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DataroomPageStat-objects as value to a dart map
  static Map<String, List<DataroomPageStat>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DataroomPageStat>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DataroomPageStat.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

