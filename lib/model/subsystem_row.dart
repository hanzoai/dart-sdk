//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SubsystemRow {
  /// Returns a new [SubsystemRow] instance.
  SubsystemRow({
    this.enabled,
    this.errorRate,
    this.errors,
    this.lastErrorAt,
    this.lastErrorMessage,
    this.lastErrorRoute,
    this.lastErrorStatus,
    this.latencyP50Ms,
    this.latencyP95Ms,
    this.latencyP99Ms,
    this.name,
    this.prefixes = const [],
    this.requests,
    this.requestsPerMin,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  /// percent (0..100)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? errorRate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? errors;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastErrorAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastErrorMessage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastErrorRoute;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastErrorStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? latencyP50Ms;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? latencyP95Ms;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? latencyP99Ms;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  List<String> prefixes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? requests;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? requestsPerMin;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SubsystemRow &&
    other.enabled == enabled &&
    other.errorRate == errorRate &&
    other.errors == errors &&
    other.lastErrorAt == lastErrorAt &&
    other.lastErrorMessage == lastErrorMessage &&
    other.lastErrorRoute == lastErrorRoute &&
    other.lastErrorStatus == lastErrorStatus &&
    other.latencyP50Ms == latencyP50Ms &&
    other.latencyP95Ms == latencyP95Ms &&
    other.latencyP99Ms == latencyP99Ms &&
    other.name == name &&
    _deepEquality.equals(other.prefixes, prefixes) &&
    other.requests == requests &&
    other.requestsPerMin == requestsPerMin;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled == null ? 0 : enabled!.hashCode) +
    (errorRate == null ? 0 : errorRate!.hashCode) +
    (errors == null ? 0 : errors!.hashCode) +
    (lastErrorAt == null ? 0 : lastErrorAt!.hashCode) +
    (lastErrorMessage == null ? 0 : lastErrorMessage!.hashCode) +
    (lastErrorRoute == null ? 0 : lastErrorRoute!.hashCode) +
    (lastErrorStatus == null ? 0 : lastErrorStatus!.hashCode) +
    (latencyP50Ms == null ? 0 : latencyP50Ms!.hashCode) +
    (latencyP95Ms == null ? 0 : latencyP95Ms!.hashCode) +
    (latencyP99Ms == null ? 0 : latencyP99Ms!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (prefixes.hashCode) +
    (requests == null ? 0 : requests!.hashCode) +
    (requestsPerMin == null ? 0 : requestsPerMin!.hashCode);

  @override
  String toString() => 'SubsystemRow[enabled=$enabled, errorRate=$errorRate, errors=$errors, lastErrorAt=$lastErrorAt, lastErrorMessage=$lastErrorMessage, lastErrorRoute=$lastErrorRoute, lastErrorStatus=$lastErrorStatus, latencyP50Ms=$latencyP50Ms, latencyP95Ms=$latencyP95Ms, latencyP99Ms=$latencyP99Ms, name=$name, prefixes=$prefixes, requests=$requests, requestsPerMin=$requestsPerMin]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    if (this.errorRate != null) {
      json[r'errorRate'] = this.errorRate;
    } else {
      json[r'errorRate'] = null;
    }
    if (this.errors != null) {
      json[r'errors'] = this.errors;
    } else {
      json[r'errors'] = null;
    }
    if (this.lastErrorAt != null) {
      json[r'lastErrorAt'] = this.lastErrorAt;
    } else {
      json[r'lastErrorAt'] = null;
    }
    if (this.lastErrorMessage != null) {
      json[r'lastErrorMessage'] = this.lastErrorMessage;
    } else {
      json[r'lastErrorMessage'] = null;
    }
    if (this.lastErrorRoute != null) {
      json[r'lastErrorRoute'] = this.lastErrorRoute;
    } else {
      json[r'lastErrorRoute'] = null;
    }
    if (this.lastErrorStatus != null) {
      json[r'lastErrorStatus'] = this.lastErrorStatus;
    } else {
      json[r'lastErrorStatus'] = null;
    }
    if (this.latencyP50Ms != null) {
      json[r'latencyP50Ms'] = this.latencyP50Ms;
    } else {
      json[r'latencyP50Ms'] = null;
    }
    if (this.latencyP95Ms != null) {
      json[r'latencyP95Ms'] = this.latencyP95Ms;
    } else {
      json[r'latencyP95Ms'] = null;
    }
    if (this.latencyP99Ms != null) {
      json[r'latencyP99Ms'] = this.latencyP99Ms;
    } else {
      json[r'latencyP99Ms'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'prefixes'] = this.prefixes;
    if (this.requests != null) {
      json[r'requests'] = this.requests;
    } else {
      json[r'requests'] = null;
    }
    if (this.requestsPerMin != null) {
      json[r'requestsPerMin'] = this.requestsPerMin;
    } else {
      json[r'requestsPerMin'] = null;
    }
    return json;
  }

  /// Returns a new [SubsystemRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SubsystemRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SubsystemRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SubsystemRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SubsystemRow(
        enabled: mapValueOfType<bool>(json, r'enabled'),
        errorRate: num.parse('${json[r'errorRate']}'),
        errors: mapValueOfType<int>(json, r'errors'),
        lastErrorAt: mapValueOfType<String>(json, r'lastErrorAt'),
        lastErrorMessage: mapValueOfType<String>(json, r'lastErrorMessage'),
        lastErrorRoute: mapValueOfType<String>(json, r'lastErrorRoute'),
        lastErrorStatus: mapValueOfType<String>(json, r'lastErrorStatus'),
        latencyP50Ms: num.parse('${json[r'latencyP50Ms']}'),
        latencyP95Ms: num.parse('${json[r'latencyP95Ms']}'),
        latencyP99Ms: num.parse('${json[r'latencyP99Ms']}'),
        name: mapValueOfType<String>(json, r'name'),
        prefixes: json[r'prefixes'] is Iterable
            ? (json[r'prefixes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        requests: mapValueOfType<int>(json, r'requests'),
        requestsPerMin: num.parse('${json[r'requestsPerMin']}'),
      );
    }
    return null;
  }

  static List<SubsystemRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubsystemRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubsystemRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SubsystemRow> mapFromJson(dynamic json) {
    final map = <String, SubsystemRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SubsystemRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SubsystemRow-objects as value to a dart map
  static Map<String, List<SubsystemRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SubsystemRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SubsystemRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

