//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DataroomLinkStats {
  /// Returns a new [DataroomLinkStats] instance.
  DataroomLinkStats({
    this.linkId,
    this.pages = const [],
    this.totalPageViews,
    this.totalViews,
  });

  /// LinkId is the link these counts are for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? linkId;

  /// Pages is the per-page breakdown, in page order.
  List<DataroomPageStat> pages;

  /// TotalPageViews is how many page views the link received.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalPageViews;

  /// TotalViews is how many viewing sessions the link opened.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalViews;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DataroomLinkStats &&
    other.linkId == linkId &&
    _deepEquality.equals(other.pages, pages) &&
    other.totalPageViews == totalPageViews &&
    other.totalViews == totalViews;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (linkId == null ? 0 : linkId!.hashCode) +
    (pages.hashCode) +
    (totalPageViews == null ? 0 : totalPageViews!.hashCode) +
    (totalViews == null ? 0 : totalViews!.hashCode);

  @override
  String toString() => 'DataroomLinkStats[linkId=$linkId, pages=$pages, totalPageViews=$totalPageViews, totalViews=$totalViews]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.linkId != null) {
      json[r'linkId'] = this.linkId;
    } else {
      json[r'linkId'] = null;
    }
      json[r'pages'] = this.pages;
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

  /// Returns a new [DataroomLinkStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DataroomLinkStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DataroomLinkStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DataroomLinkStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DataroomLinkStats(
        linkId: mapValueOfType<String>(json, r'linkId'),
        pages: DataroomPageStat.listFromJson(json[r'pages']),
        totalPageViews: mapValueOfType<int>(json, r'totalPageViews'),
        totalViews: mapValueOfType<int>(json, r'totalViews'),
      );
    }
    return null;
  }

  static List<DataroomLinkStats> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DataroomLinkStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DataroomLinkStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DataroomLinkStats> mapFromJson(dynamic json) {
    final map = <String, DataroomLinkStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DataroomLinkStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DataroomLinkStats-objects as value to a dart map
  static Map<String, List<DataroomLinkStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DataroomLinkStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DataroomLinkStats.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

