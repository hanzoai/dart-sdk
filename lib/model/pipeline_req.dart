//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PipelineReq {
  /// Returns a new [PipelineReq] instance.
  PipelineReq({
    this.feeds = const [],
    this.filters,
  });
  /// Feeds is the RSS/Atom feed URLs to read, at most 64. Each must be an http(s) URL whose host is on the server's allowlist — the SSRF guard is applied here, at the write, so a stored pipeline can never name a host the fetcher would refuse. Blank entries are dropped and duplicates collapse.
  List<String> feeds;

  /// Filters narrows the merged feed. Terms are trimmed, de-duplicated case-insensitively, and capped at 64 per axis.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Filters? filters;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PipelineReq &&
    _deepEquality.equals(other.feeds, feeds) &&
    other.filters == filters;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (feeds.hashCode) +
    (filters == null ? 0 : filters!.hashCode);

  @override
  String toString() => 'PipelineReq[feeds=$feeds, filters=$filters]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'feeds'] = this.feeds;
    if (this.filters != null) {
      json[r'filters'] = this.filters;
    } else {
      json[r'filters'] = null;
    }
    return json;
  }

  /// Returns a new [PipelineReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PipelineReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PipelineReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PipelineReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PipelineReq(
        feeds: json[r'feeds'] is Iterable
            ? (json[r'feeds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        filters: Filters.fromJson(json[r'filters']),
      );
    }
    return null;
  }

  static List<PipelineReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PipelineReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PipelineReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PipelineReq> mapFromJson(dynamic json) {
    final map = <String, PipelineReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PipelineReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PipelineReq-objects as value to a dart map
  static Map<String, List<PipelineReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PipelineReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PipelineReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

