//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DataroomStats {
  /// Returns a new [DataroomStats] instance.
  DataroomStats({
    this.dataroomId,
    this.links = const [],
    this.totalPageViews,
    this.totalViews,
  });
  /// DataroomId is the room these counts are for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataroomId;

  /// Links is the same per-page breakdown for each link into the room.
  List<DataroomLinkStats> links;

  /// TotalPageViews is the room's page views across every link.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalPageViews;

  /// TotalViews is the room's viewing sessions across every link.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalViews;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DataroomStats &&
    other.dataroomId == dataroomId &&
    _deepEquality.equals(other.links, links) &&
    other.totalPageViews == totalPageViews &&
    other.totalViews == totalViews;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dataroomId == null ? 0 : dataroomId!.hashCode) +
    (links.hashCode) +
    (totalPageViews == null ? 0 : totalPageViews!.hashCode) +
    (totalViews == null ? 0 : totalViews!.hashCode);

  @override
  String toString() => 'DataroomStats[dataroomId=$dataroomId, links=$links, totalPageViews=$totalPageViews, totalViews=$totalViews]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.dataroomId != null) {
      json[r'dataroomId'] = this.dataroomId;
    } else {
      json[r'dataroomId'] = null;
    }
      json[r'links'] = this.links;
    if (this.totalPageViews != null) {
      json[r'totalPageViews'] = this.totalPageViews;
    } else {
      json[r'totalPageViews'] = null;
    }
    if (this.totalViews != null) {
      json[r'totalViews'] = this.totalViews;
    } else {
      json[r'totalViews'] = null;
    }
    return json;
  }

  /// Returns a new [DataroomStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DataroomStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DataroomStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DataroomStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DataroomStats(
        dataroomId: mapValueOfType<String>(json, r'dataroomId'),
        links: DataroomLinkStats.listFromJson(json[r'links']),
        totalPageViews: mapValueOfType<int>(json, r'totalPageViews'),
        totalViews: mapValueOfType<int>(json, r'totalViews'),
      );
    }
    return null;
  }

  static List<DataroomStats> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DataroomStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DataroomStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DataroomStats> mapFromJson(dynamic json) {
    final map = <String, DataroomStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DataroomStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DataroomStats-objects as value to a dart map
  static Map<String, List<DataroomStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DataroomStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DataroomStats.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

