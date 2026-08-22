//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IndexHits {
  /// Returns a new [IndexHits] instance.
  IndexHits({
    this.estimatedTotalHits,
    this.hits = const [],
    this.limit,
    this.offset,
    this.processingTimeMs,
    this.query,
  });
  /// EstimatedTotalHits is the dialect's name for the match count. Every hit is materialised here, so for this page it is exact rather than estimated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? estimatedTotalHits;

  /// Hits are the matching documents, most relevant first, exactly as stored.
  List<Object> hits;

  /// Limit is how many hits this page could hold.
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

  /// ProcessingTimeMs is how long the query took, in milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? processingTimeMs;

  /// Query echoes the search terms, which is what a client renders above the results.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? query;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IndexHits &&
    other.estimatedTotalHits == estimatedTotalHits &&
    _deepEquality.equals(other.hits, hits) &&
    other.limit == limit &&
    other.offset == offset &&
    other.processingTimeMs == processingTimeMs &&
    other.query == query;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (estimatedTotalHits == null ? 0 : estimatedTotalHits!.hashCode) +
    (hits.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (offset == null ? 0 : offset!.hashCode) +
    (processingTimeMs == null ? 0 : processingTimeMs!.hashCode) +
    (query == null ? 0 : query!.hashCode);

  @override
  String toString() => 'IndexHits[estimatedTotalHits=$estimatedTotalHits, hits=$hits, limit=$limit, offset=$offset, processingTimeMs=$processingTimeMs, query=$query]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.estimatedTotalHits != null) {
      json[r'estimatedTotalHits'] = this.estimatedTotalHits;
    } else {
      json[r'estimatedTotalHits'] = null;
    }
      json[r'hits'] = this.hits;
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
    if (this.processingTimeMs != null) {
      json[r'processingTimeMs'] = this.processingTimeMs;
    } else {
      json[r'processingTimeMs'] = null;
    }
    if (this.query != null) {
      json[r'query'] = this.query;
    } else {
      json[r'query'] = null;
    }
    return json;
  }

  /// Returns a new [IndexHits] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndexHits? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IndexHits[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IndexHits[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndexHits(
        estimatedTotalHits: mapValueOfType<int>(json, r'estimatedTotalHits'),
        hits: json[r'hits'] is Iterable
            ? (json[r'hits'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        limit: mapValueOfType<int>(json, r'limit'),
        offset: mapValueOfType<int>(json, r'offset'),
        processingTimeMs: mapValueOfType<int>(json, r'processingTimeMs'),
        query: mapValueOfType<String>(json, r'query'),
      );
    }
    return null;
  }

  static List<IndexHits> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IndexHits>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndexHits.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndexHits> mapFromJson(dynamic json) {
    final map = <String, IndexHits>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndexHits.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndexHits-objects as value to a dart map
  static Map<String, List<IndexHits>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IndexHits>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IndexHits.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

