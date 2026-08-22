//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IndexDocuments {
  /// Returns a new [IndexDocuments] instance.
  IndexDocuments({
    this.limit,
    this.offset,
    this.results = const [],
    this.total,
  });
  /// Limit is how many documents this page could hold.
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

  /// Results are the documents themselves, exactly as they were stored.
  List<Object> results;

  /// Total is how many documents the index holds altogether.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IndexDocuments &&
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
  String toString() => 'IndexDocuments[limit=$limit, offset=$offset, results=$results, total=$total]';

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

  /// Returns a new [IndexDocuments] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndexDocuments? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IndexDocuments[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IndexDocuments[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndexDocuments(
        limit: mapValueOfType<int>(json, r'limit'),
        offset: mapValueOfType<int>(json, r'offset'),
        results: json[r'results'] is Iterable
            ? (json[r'results'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<IndexDocuments> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IndexDocuments>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndexDocuments.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndexDocuments> mapFromJson(dynamic json) {
    final map = <String, IndexDocuments>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndexDocuments.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndexDocuments-objects as value to a dart map
  static Map<String, List<IndexDocuments>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IndexDocuments>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IndexDocuments.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

