//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Policy {
  /// Returns a new [Policy] instance.
  Policy({
    this.cachePaths = const {},
    this.cacheTtlSec,
    this.corsOrigins = const [],
    this.methods = const [],
    this.mode,
    this.orgRpm,
    this.perIpRpm,
    this.updatedAt,
    this.updatedBy,
    this.windowSec,
  });

  /// CachePaths overrides CacheTTLSec per path PREFIX (key \"/v1/models\" → seconds). The longest matching prefix wins.
  Map<String, int> cachePaths;

  /// CacheTTLSec is the org's default edge-cache TTL for its responses, in seconds; 0 means no caching. Unset inherits the platform default.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cacheTtlSec;

  /// CORSOrigins is the PLATFORM-scope CORS allowlist EdgeCORS admits: an exact origin, a bare host, or a \"*.host\" wildcard. Writable only by a SuperAdmin — CORS is evaluated before identity, so it has no tenant to scope to.
  List<String> corsOrigins;

  /// Methods is the allowlist of HTTP methods the edge accepts for this org. Empty means all are accepted.
  List<String> methods;

  /// Mode is the abuse gate's posture for THIS scope: \"shadow\" scores traffic and records the verdict without acting on it, \"live\" enforces it. Unset means shadow.  It is the one per-org field that does NOT inherit. Every other field here layers a platform default under the org's own value, which is right for a default: a tenant that sets no rate ceiling should get the platform's. Mode is not a default, it is an ARMING DECISION — it is what makes a statistical judgement start refusing real traffic — and inheriting it means arming one scope arms every tenant that never asked for it, without a write to their row and without anything in their config changing. So a tenant is live only if that tenant's OWN row says live, and the platform row's mode governs exactly one scope: the anonymous lane, which has no tenant of its own.  It is also not self-service. Writing it requires SuperAdmin (see the /v1/gateway config op): the subject of an abuse control does not get to switch the control off.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mode;

  /// OrgRPM is the org's OWN authenticated rate ceiling, requests per minute, as ScopeRateLimit enforces it. Unset inherits the platform default, then the static boot default.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? orgRpm;

  /// PerIPRPM is the PLATFORM-scope pre-auth flood cap: requests EdgeRateLimit admits per WindowSec from one client IP. SuperAdmin-only, same reason.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? perIpRpm;

  /// UpdatedAt is the unix second this policy row was last written. Server-stamped; a client-supplied value is ignored.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  /// UpdatedBy is the validated user id that wrote this policy row. Server-stamped; a client-supplied value is ignored.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedBy;

  /// WindowSec is the window PerIPRPM is counted over, in seconds. SuperAdmin-only.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? windowSec;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Policy &&
    _deepEquality.equals(other.cachePaths, cachePaths) &&
    other.cacheTtlSec == cacheTtlSec &&
    _deepEquality.equals(other.corsOrigins, corsOrigins) &&
    _deepEquality.equals(other.methods, methods) &&
    other.mode == mode &&
    other.orgRpm == orgRpm &&
    other.perIpRpm == perIpRpm &&
    other.updatedAt == updatedAt &&
    other.updatedBy == updatedBy &&
    other.windowSec == windowSec;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cachePaths.hashCode) +
    (cacheTtlSec == null ? 0 : cacheTtlSec!.hashCode) +
    (corsOrigins.hashCode) +
    (methods.hashCode) +
    (mode == null ? 0 : mode!.hashCode) +
    (orgRpm == null ? 0 : orgRpm!.hashCode) +
    (perIpRpm == null ? 0 : perIpRpm!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (updatedBy == null ? 0 : updatedBy!.hashCode) +
    (windowSec == null ? 0 : windowSec!.hashCode);

  @override
  String toString() => 'Policy[cachePaths=$cachePaths, cacheTtlSec=$cacheTtlSec, corsOrigins=$corsOrigins, methods=$methods, mode=$mode, orgRpm=$orgRpm, perIpRpm=$perIpRpm, updatedAt=$updatedAt, updatedBy=$updatedBy, windowSec=$windowSec]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'cache_paths'] = this.cachePaths;
    if (this.cacheTtlSec != null) {
      json[r'cache_ttl_sec'] = this.cacheTtlSec;
    } else {
      json[r'cache_ttl_sec'] = null;
    }
      json[r'cors_origins'] = this.corsOrigins;
      json[r'methods'] = this.methods;
    if (this.mode != null) {
      json[r'mode'] = this.mode;
    } else {
      json[r'mode'] = null;
    }
    if (this.orgRpm != null) {
      json[r'org_rpm'] = this.orgRpm;
    } else {
      json[r'org_rpm'] = null;
    }
    if (this.perIpRpm != null) {
      json[r'per_ip_rpm'] = this.perIpRpm;
    } else {
      json[r'per_ip_rpm'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt;
    } else {
      json[r'updated_at'] = null;
    }
    if (this.updatedBy != null) {
      json[r'updated_by'] = this.updatedBy;
    } else {
      json[r'updated_by'] = null;
    }
    if (this.windowSec != null) {
      json[r'window_sec'] = this.windowSec;
    } else {
      json[r'window_sec'] = null;
    }
    return json;
  }

  /// Returns a new [Policy] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Policy? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Policy[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Policy[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Policy(
        cachePaths: mapCastOfType<String, int>(json, r'cache_paths') ?? const {},
        cacheTtlSec: mapValueOfType<int>(json, r'cache_ttl_sec'),
        corsOrigins: json[r'cors_origins'] is Iterable
            ? (json[r'cors_origins'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        methods: json[r'methods'] is Iterable
            ? (json[r'methods'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        mode: mapValueOfType<String>(json, r'mode'),
        orgRpm: mapValueOfType<int>(json, r'org_rpm'),
        perIpRpm: mapValueOfType<int>(json, r'per_ip_rpm'),
        updatedAt: mapValueOfType<int>(json, r'updated_at'),
        updatedBy: mapValueOfType<String>(json, r'updated_by'),
        windowSec: mapValueOfType<int>(json, r'window_sec'),
      );
    }
    return null;
  }

  static List<Policy> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Policy>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Policy.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Policy> mapFromJson(dynamic json) {
    final map = <String, Policy>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Policy.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Policy-objects as value to a dart map
  static Map<String, List<Policy>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Policy>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Policy.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

