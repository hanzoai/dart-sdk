//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class NewsResponse {
  /// Returns a new [NewsResponse] instance.
  NewsResponse({
    this.items = const [],
  });

  /// Items is the merged, filtered, deduped feed, freshest first and capped at 50. A source that failed is skipped rather than failing the read, so this can be shorter than the pipeline's reach — it is never an error.
  List<NewsItem> items;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NewsResponse &&
    _deepEquality.equals(other.items, items);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (items.hashCode);

  @override
  String toString() => 'NewsResponse[items=$items]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'items'] = this.items;
    return json;
  }

  /// Returns a new [NewsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NewsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NewsResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NewsResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NewsResponse(
        items: NewsItem.listFromJson(json[r'items']),
      );
    }
    return null;
  }

  static List<NewsResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NewsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NewsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NewsResponse> mapFromJson(dynamic json) {
    final map = <String, NewsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NewsResponse-objects as value to a dart map
  static Map<String, List<NewsResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NewsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NewsResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

