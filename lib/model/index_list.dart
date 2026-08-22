//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IndexList {
  /// Returns a new [IndexList] instance.
  IndexList({
    this.limit,
    this.offset,
    this.results = const [],
    this.total,
  });
  /// Limit is how many rows this page could hold.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  /// Offset is where this page starts.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? offset;

  /// Results are the index definitions themselves.
  List<IndexView> results;

  /// Total is how many indexes the org holds altogether.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IndexList &&
    other.limit == limit &&
    other.offset == offset &&
    _deepEquality.equals(other.results, results) &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (limit == null ? 0 : limit!.hashCode) +
    (offset == null ? 0 : offset!.hashCode) +
    (results.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'IndexList[limit=$limit, offset=$offset, results=$results, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
    if (this.offset != null) {
      json[r'offset'] = this.offset;
    } else {
      json[r'offset'] = null;
    }
      json[r'results'] = this.results;
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [IndexList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndexList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IndexList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IndexList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndexList(
        limit: mapValueOfType<int>(json, r'limit'),
        offset: mapValueOfType<int>(json, r'offset'),
        results: IndexView.listFromJson(json[r'results']),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<IndexList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IndexList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndexList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndexList> mapFromJson(dynamic json) {
    final map = <String, IndexList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndexList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndexList-objects as value to a dart map
  static Map<String, List<IndexList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IndexList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IndexList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

