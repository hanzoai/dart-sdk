//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Response {
  /// Returns a new [Response] instance.
  Response({
    this.backends = const [],
    this.hits = const [],
    this.mode,
    this.status,
    this.tookMs,
  });
  /// Backends is the per-leg report. Always populated.
  List<BackendStatus> backends;

  /// Hits is the fused, ranked result set.
  List<Hit> hits;

  /// Mode is the mode actually used after `auto` resolution.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mode;

  /// Status is the query's overall honesty signal:   ok          every consulted leg answered.   partial     at least one leg failed; Hits holds the survivors' results.   unavailable every consulted leg failed; Hits is empty AND that is stated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// TookMS is the whole query's wall time in milliseconds — every leg it consulted, plus fusion and paging. Each leg's own share is in Backends[].TookMS; the legs run in sequence, so this is at least their sum.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tookMs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Response &&
    _deepEquality.equals(other.backends, backends) &&
    _deepEquality.equals(other.hits, hits) &&
    other.mode == mode &&
    other.status == status &&
    other.tookMs == tookMs;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (backends.hashCode) +
    (hits.hashCode) +
    (mode == null ? 0 : mode!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (tookMs == null ? 0 : tookMs!.hashCode);

  @override
  String toString() => 'Response[backends=$backends, hits=$hits, mode=$mode, status=$status, tookMs=$tookMs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'backends'] = this.backends;
      json[r'hits'] = this.hits;
    if (this.mode != null) {
      json[r'mode'] = this.mode;
    } else {
      json[r'mode'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.tookMs != null) {
      json[r'took_ms'] = this.tookMs;
    } else {
      json[r'took_ms'] = null;
    }
    return json;
  }

  /// Returns a new [Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Response(
        backends: BackendStatus.listFromJson(json[r'backends']),
        hits: Hit.listFromJson(json[r'hits']),
        mode: mapValueOfType<String>(json, r'mode'),
        status: mapValueOfType<String>(json, r'status'),
        tookMs: mapValueOfType<int>(json, r'took_ms'),
      );
    }
    return null;
  }

  static List<Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Response> mapFromJson(dynamic json) {
    final map = <String, Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Response-objects as value to a dart map
  static Map<String, List<Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

