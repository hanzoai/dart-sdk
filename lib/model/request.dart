//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Request {
  /// Returns a new [Request] instance.
  Request({
    this.doctypes = const [],
    this.index,
    this.limit,
    this.mode,
    this.offset,
    this.project,
    this.query,
  });
  /// DocTypes restricts the semantic leg to a subset of indexed knowledge types.
  List<String> doctypes;

  /// Index names the lexical index to query. Defaults to \"kb\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? index;

  /// Limit bounds the FUSED result set (default 10, max 50).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  /// Mode selects the legs: auto (default) | text | semantic | hybrid.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mode;

  /// Offset pages the fused result set.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? offset;

  /// Project narrows to one project scope within the org.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  /// Query is the natural-language or keyword query. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? query;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Request &&
    _deepEquality.equals(other.doctypes, doctypes) &&
    other.index == index &&
    other.limit == limit &&
    other.mode == mode &&
    other.offset == offset &&
    other.project == project &&
    other.query == query;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (doctypes.hashCode) +
    (index == null ? 0 : index!.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (mode == null ? 0 : mode!.hashCode) +
    (offset == null ? 0 : offset!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (query == null ? 0 : query!.hashCode);

  @override
  String toString() => 'Request[doctypes=$doctypes, index=$index, limit=$limit, mode=$mode, offset=$offset, project=$project, query=$query]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'doctypes'] = this.doctypes;
    if (this.index != null) {
      json[r'index'] = this.index;
    } else {
      json[r'index'] = null;
    }
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
    if (this.mode != null) {
      json[r'mode'] = this.mode;
    } else {
      json[r'mode'] = null;
    }
    if (this.offset != null) {
      json[r'offset'] = this.offset;
    } else {
      json[r'offset'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    if (this.query != null) {
      json[r'query'] = this.query;
    } else {
      json[r'query'] = null;
    }
    return json;
  }

  /// Returns a new [Request] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Request? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Request[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Request[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Request(
        doctypes: json[r'doctypes'] is Iterable
            ? (json[r'doctypes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        index: mapValueOfType<String>(json, r'index'),
        limit: mapValueOfType<int>(json, r'limit'),
        mode: mapValueOfType<String>(json, r'mode'),
        offset: mapValueOfType<int>(json, r'offset'),
        project: mapValueOfType<String>(json, r'project'),
        query: mapValueOfType<String>(json, r'query'),
      );
    }
    return null;
  }

  static List<Request> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Request>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Request.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Request> mapFromJson(dynamic json) {
    final map = <String, Request>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Request.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Request-objects as value to a dart map
  static Map<String, List<Request>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Request>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Request.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

