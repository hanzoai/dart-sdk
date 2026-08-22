//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FunctionDetail {
  /// Returns a new [FunctionDetail] instance.
  FunctionDetail({
    this.avgDurationMs,
    this.createdAt,
    this.endpoint,
    this.envCount,
    this.environment,
    this.errors7d,
    this.image,
    this.invocations7d,
    this.lastDeployedAt,
    this.memoryLimit,
    this.name,
    this.namespace,
    this.recentInvocations = const [],
    this.secrets = const [],
    this.status,
    this.successRate,
    this.target,
    this.timeoutSec,
    this.triggers = const [],
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? avgDurationMs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? endpoint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? envCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? environment;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? errors7d;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? invocations7d;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastDeployedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? memoryLimit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? namespace;

  /// RecentInvocations is its twenty most recent runs, newest first.
  List<InvocationView> recentInvocations;

  /// Secrets are the NAMES it mounts. Values are never read or returned.
  List<String> secrets;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? successRate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? target;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timeoutSec;

  /// Triggers is how this function is reached.
  List<TriggerView> triggers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FunctionDetail &&
    other.avgDurationMs == avgDurationMs &&
    other.createdAt == createdAt &&
    other.endpoint == endpoint &&
    other.envCount == envCount &&
    other.environment == environment &&
    other.errors7d == errors7d &&
    other.image == image &&
    other.invocations7d == invocations7d &&
    other.lastDeployedAt == lastDeployedAt &&
    other.memoryLimit == memoryLimit &&
    other.name == name &&
    other.namespace == namespace &&
    _deepEquality.equals(other.recentInvocations, recentInvocations) &&
    _deepEquality.equals(other.secrets, secrets) &&
    other.status == status &&
    other.successRate == successRate &&
    other.target == target &&
    other.timeoutSec == timeoutSec &&
    _deepEquality.equals(other.triggers, triggers);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (avgDurationMs == null ? 0 : avgDurationMs!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (endpoint == null ? 0 : endpoint!.hashCode) +
    (envCount == null ? 0 : envCount!.hashCode) +
    (environment == null ? 0 : environment!.hashCode) +
    (errors7d == null ? 0 : errors7d!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (invocations7d == null ? 0 : invocations7d!.hashCode) +
    (lastDeployedAt == null ? 0 : lastDeployedAt!.hashCode) +
    (memoryLimit == null ? 0 : memoryLimit!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode) +
    (recentInvocations.hashCode) +
    (secrets.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (successRate == null ? 0 : successRate!.hashCode) +
    (target == null ? 0 : target!.hashCode) +
    (timeoutSec == null ? 0 : timeoutSec!.hashCode) +
    (triggers.hashCode);

  @override
  String toString() => 'FunctionDetail[avgDurationMs=$avgDurationMs, createdAt=$createdAt, endpoint=$endpoint, envCount=$envCount, environment=$environment, errors7d=$errors7d, image=$image, invocations7d=$invocations7d, lastDeployedAt=$lastDeployedAt, memoryLimit=$memoryLimit, name=$name, namespace=$namespace, recentInvocations=$recentInvocations, secrets=$secrets, status=$status, successRate=$successRate, target=$target, timeoutSec=$timeoutSec, triggers=$triggers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.avgDurationMs != null) {
      json[r'avgDurationMs'] = this.avgDurationMs;
    } else {
      json[r'avgDurationMs'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.endpoint != null) {
      json[r'endpoint'] = this.endpoint;
    } else {
      json[r'endpoint'] = null;
    }
    if (this.envCount != null) {
      json[r'envCount'] = this.envCount;
    } else {
      json[r'envCount'] = null;
    }
    if (this.environment != null) {
      json[r'environment'] = this.environment;
    } else {
      json[r'environment'] = null;
    }
    if (this.errors7d != null) {
      json[r'errors7d'] = this.errors7d;
    } else {
      json[r'errors7d'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.invocations7d != null) {
      json[r'invocations7d'] = this.invocations7d;
    } else {
      json[r'invocations7d'] = null;
    }
    if (this.lastDeployedAt != null) {
      json[r'lastDeployedAt'] = this.lastDeployedAt;
    } else {
      json[r'lastDeployedAt'] = null;
    }
    if (this.memoryLimit != null) {
      json[r'memoryLimit'] = this.memoryLimit;
    } else {
      json[r'memoryLimit'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.namespace != null) {
      json[r'namespace'] = this.namespace;
    } else {
      json[r'namespace'] = null;
    }
      json[r'recentInvocations'] = this.recentInvocations;
      json[r'secrets'] = this.secrets;
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.successRate != null) {
      json[r'successRate'] = this.successRate;
    } else {
      json[r'successRate'] = null;
    }
    if (this.target != null) {
      json[r'target'] = this.target;
    } else {
      json[r'target'] = null;
    }
    if (this.timeoutSec != null) {
      json[r'timeoutSec'] = this.timeoutSec;
    } else {
      json[r'timeoutSec'] = null;
    }
      json[r'triggers'] = this.triggers;
    return json;
  }

  /// Returns a new [FunctionDetail] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FunctionDetail? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FunctionDetail[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FunctionDetail[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FunctionDetail(
        avgDurationMs: num.parse('${json[r'avgDurationMs']}'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        endpoint: mapValueOfType<String>(json, r'endpoint'),
        envCount: mapValueOfType<int>(json, r'envCount'),
        environment: mapValueOfType<String>(json, r'environment'),
        errors7d: mapValueOfType<int>(json, r'errors7d'),
        image: mapValueOfType<String>(json, r'image'),
        invocations7d: mapValueOfType<int>(json, r'invocations7d'),
        lastDeployedAt: mapValueOfType<String>(json, r'lastDeployedAt'),
        memoryLimit: mapValueOfType<String>(json, r'memoryLimit'),
        name: mapValueOfType<String>(json, r'name'),
        namespace: mapValueOfType<String>(json, r'namespace'),
        recentInvocations: InvocationView.listFromJson(json[r'recentInvocations']),
        secrets: json[r'secrets'] is Iterable
            ? (json[r'secrets'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        status: mapValueOfType<String>(json, r'status'),
        successRate: num.parse('${json[r'successRate']}'),
        target: mapValueOfType<String>(json, r'target'),
        timeoutSec: mapValueOfType<int>(json, r'timeoutSec'),
        triggers: TriggerView.listFromJson(json[r'triggers']),
      );
    }
    return null;
  }

  static List<FunctionDetail> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FunctionDetail>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FunctionDetail.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FunctionDetail> mapFromJson(dynamic json) {
    final map = <String, FunctionDetail>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FunctionDetail.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FunctionDetail-objects as value to a dart map
  static Map<String, List<FunctionDetail>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FunctionDetail>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FunctionDetail.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

