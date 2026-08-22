//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yStatusResult {
  /// Returns a new [O11yStatusResult] instance.
  O11yStatusResult({
    this.checkedAt,
    this.deployments = const [],
    this.latencyMs,
    this.product,
    this.source_,
    this.up,
  });
  /// CheckedAt is when this answer was measured, RFC3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? checkedAt;

  /// Deployments is the per-replica inventory behind the verdict. Empty means the telemetry store reported none, not that the service runs on none.
  List<O11yDeployment> deployments;

  /// LatencyMs is the health probe's round trip in MILLISECONDS, time-boxed at two seconds. It is 0 when no probe answered, which is not a fast service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? latencyMs;

  /// Product is the service this answer is about, echoed back.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? product;

  /// Source is where the verdict came from: \"probe\" (we asked and it answered), \"datastore\" (the probe did not answer and the replica inventory decided it), \"unreachable\" (neither), or \"unknown-service\" for a well-formed product name nothing backs — which is answered without probing, since dialling an arbitrary host on a caller's say-so is the request forgery this refuses.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Up is true when the health probe succeeded OR any replica reports up, so a service reachable by either route reads up. Read Source to know which.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? up;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yStatusResult &&
    other.checkedAt == checkedAt &&
    _deepEquality.equals(other.deployments, deployments) &&
    other.latencyMs == latencyMs &&
    other.product == product &&
    other.source_ == source_ &&
    other.up == up;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (checkedAt == null ? 0 : checkedAt!.hashCode) +
    (deployments.hashCode) +
    (latencyMs == null ? 0 : latencyMs!.hashCode) +
    (product == null ? 0 : product!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (up == null ? 0 : up!.hashCode);

  @override
  String toString() => 'O11yStatusResult[checkedAt=$checkedAt, deployments=$deployments, latencyMs=$latencyMs, product=$product, source_=$source_, up=$up]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.checkedAt != null) {
      json[r'checkedAt'] = this.checkedAt;
    } else {
      json[r'checkedAt'] = null;
    }
      json[r'deployments'] = this.deployments;
    if (this.latencyMs != null) {
      json[r'latencyMs'] = this.latencyMs;
    } else {
      json[r'latencyMs'] = null;
    }
    if (this.product != null) {
      json[r'product'] = this.product;
    } else {
      json[r'product'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.up != null) {
      json[r'up'] = this.up;
    } else {
      json[r'up'] = null;
    }
    return json;
  }

  /// Returns a new [O11yStatusResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yStatusResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yStatusResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yStatusResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yStatusResult(
        checkedAt: mapValueOfType<String>(json, r'checkedAt'),
        deployments: O11yDeployment.listFromJson(json[r'deployments']),
        latencyMs: mapValueOfType<int>(json, r'latencyMs'),
        product: mapValueOfType<String>(json, r'product'),
        source_: mapValueOfType<String>(json, r'source'),
        up: mapValueOfType<bool>(json, r'up'),
      );
    }
    return null;
  }

  static List<O11yStatusResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yStatusResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yStatusResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yStatusResult> mapFromJson(dynamic json) {
    final map = <String, O11yStatusResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yStatusResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yStatusResult-objects as value to a dart map
  static Map<String, List<O11yStatusResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yStatusResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yStatusResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

