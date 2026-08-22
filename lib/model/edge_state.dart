//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EdgeState {
  /// Returns a new [EdgeState] instance.
  EdgeState({
    this.configured,
    this.error,
    this.freshness,
    this.policy = const {},
    this.provider,
    this.reach = const [],
    this.status,
  });
  /// Configured is whether the edge holds credentials to act at all. False means every purge is a no-op.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? configured;

  /// Error is the blocker, so an operator reads it instead of guessing at it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  /// Freshness says, in one phrase, how long after a publish a reader sees it. It is the sentence an operator actually wants; the booleans above are how a machine reads the same fact.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? freshness;

  /// Policy is the Cache-Control this edge serves each class of object with. It is DERIVED from the one canonical function, never a second copy: half the confusion when a publish looks stale is not knowing what the TTLs are, and reading them out of the source is not something an operator should have to do to answer \"how long until this is live\".
  Map<String, String> policy;

  /// Provider is the CDN behind this edge, or \"none\". It is the first thing an operator wants and the only vendor name this API returns.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Reach is the apexes a publish is invalidated on. A site is served on more than one — the site plane's own and the first-party apex — and a purge that covers one of them looks identical from here to a purge that covers both.
  List<String> reach;

  /// Status is \"ok\" when a publish reaches readers immediately, else \"degraded\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdgeState &&
    other.configured == configured &&
    other.error == error &&
    other.freshness == freshness &&
    _deepEquality.equals(other.policy, policy) &&
    other.provider == provider &&
    _deepEquality.equals(other.reach, reach) &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (configured == null ? 0 : configured!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (freshness == null ? 0 : freshness!.hashCode) +
    (policy.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (reach.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'EdgeState[configured=$configured, error=$error, freshness=$freshness, policy=$policy, provider=$provider, reach=$reach, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.configured != null) {
      json[r'configured'] = this.configured;
    } else {
      json[r'configured'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.freshness != null) {
      json[r'freshness'] = this.freshness;
    } else {
      json[r'freshness'] = null;
    }
      json[r'policy'] = this.policy;
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
      json[r'reach'] = this.reach;
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [EdgeState] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdgeState? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdgeState[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdgeState[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdgeState(
        configured: mapValueOfType<bool>(json, r'configured'),
        error: mapValueOfType<String>(json, r'error'),
        freshness: mapValueOfType<String>(json, r'freshness'),
        policy: mapCastOfType<String, String>(json, r'policy') ?? const {},
        provider: mapValueOfType<String>(json, r'provider'),
        reach: json[r'reach'] is Iterable
            ? (json[r'reach'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<EdgeState> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdgeState>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdgeState.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdgeState> mapFromJson(dynamic json) {
    final map = <String, EdgeState>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdgeState.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdgeState-objects as value to a dart map
  static Map<String, List<EdgeState>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdgeState>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdgeState.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

