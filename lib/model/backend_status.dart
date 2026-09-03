//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BackendStatus {
  /// Returns a new [BackendStatus] instance.
  BackendStatus({
    this.error,
    this.hits,
    this.name,
    this.status,
    this.tookMs,
  });
  /// Error is the failure text from a leg whose status is degraded — the reason a configured backend could not answer. Absent otherwise.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  /// Hits is how many results this leg returned, counted BEFORE fusion, so it is not the number that survived into Fusion.Hits — fusion merges what both legs found and the caller's limit and offset then page it. 0 for a leg that did not run.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? hits;

  /// Name is which leg this reports: \"index\", the lexical store, \"vector\", the semantic one, \"code\", the org's own repositories, or \"rerank\", the relevance pass over the fused window. Match.Backend uses the same names.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Status is one of ok, degraded, disabled, skipped — four distinct operational facts that are never collapsed. It ran and answered; it is configured and FAILED (Error says how, and only this one is a fault); this deployment never provisioned it; or the request's mode excluded it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// TookMS is how long this leg took, in milliseconds, timed around its own call and excluding fusion. 0 for a leg that was skipped or is disabled, since nothing was called.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tookMs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BackendStatus &&
    other.error == error &&
    other.hits == hits &&
    other.name == name &&
    other.status == status &&
    other.tookMs == tookMs;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error == null ? 0 : error!.hashCode) +
    (hits == null ? 0 : hits!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (tookMs == null ? 0 : tookMs!.hashCode);

  @override
  String toString() => 'BackendStatus[error=$error, hits=$hits, name=$name, status=$status, tookMs=$tookMs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.hits != null) {
      json[r'hits'] = this.hits;
    } else {
      json[r'hits'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
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

  /// Returns a new [BackendStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BackendStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BackendStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BackendStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BackendStatus(
        error: mapValueOfType<String>(json, r'error'),
        hits: mapValueOfType<int>(json, r'hits'),
        name: mapValueOfType<String>(json, r'name'),
        status: mapValueOfType<String>(json, r'status'),
        tookMs: mapValueOfType<int>(json, r'took_ms'),
      );
    }
    return null;
  }

  static List<BackendStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BackendStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BackendStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BackendStatus> mapFromJson(dynamic json) {
    final map = <String, BackendStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BackendStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BackendStatus-objects as value to a dart map
  static Map<String, List<BackendStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BackendStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BackendStatus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

