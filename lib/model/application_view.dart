//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ApplicationView {
  /// Returns a new [ApplicationView] instance.
  ApplicationView({
    this.createdTime,
    this.credentials = const [],
    this.deployments = const [],
    this.events = const [],
    this.metrics,
    this.namespace,
    this.services = const [],
    this.status,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdTime;

  List<EnvVariable> credentials;

  List<DeploymentDetail> deployments;

  List<ApplicationEvent> events;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ResourceMetrics? metrics;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? namespace;

  List<ServiceDetail> services;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApplicationView &&
    other.createdTime == createdTime &&
    _deepEquality.equals(other.credentials, credentials) &&
    _deepEquality.equals(other.deployments, deployments) &&
    _deepEquality.equals(other.events, events) &&
    other.metrics == metrics &&
    other.namespace == namespace &&
    _deepEquality.equals(other.services, services) &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdTime == null ? 0 : createdTime!.hashCode) +
    (credentials.hashCode) +
    (deployments.hashCode) +
    (events.hashCode) +
    (metrics == null ? 0 : metrics!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode) +
    (services.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'ApplicationView[createdTime=$createdTime, credentials=$credentials, deployments=$deployments, events=$events, metrics=$metrics, namespace=$namespace, services=$services, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdTime != null) {
      json[r'createdTime'] = this.createdTime;
    } else {
      json[r'createdTime'] = null;
    }
      json[r'credentials'] = this.credentials;
      json[r'deployments'] = this.deployments;
      json[r'events'] = this.events;
    if (this.metrics != null) {
      json[r'metrics'] = this.metrics;
    } else {
      json[r'metrics'] = null;
    }
    if (this.namespace != null) {
      json[r'namespace'] = this.namespace;
    } else {
      json[r'namespace'] = null;
    }
      json[r'services'] = this.services;
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [ApplicationView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApplicationView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ApplicationView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ApplicationView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ApplicationView(
        createdTime: mapValueOfType<String>(json, r'createdTime'),
        credentials: EnvVariable.listFromJson(json[r'credentials']),
        deployments: DeploymentDetail.listFromJson(json[r'deployments']),
        events: ApplicationEvent.listFromJson(json[r'events']),
        metrics: ResourceMetrics.fromJson(json[r'metrics']),
        namespace: mapValueOfType<String>(json, r'namespace'),
        services: ServiceDetail.listFromJson(json[r'services']),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<ApplicationView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApplicationView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApplicationView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApplicationView> mapFromJson(dynamic json) {
    final map = <String, ApplicationView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApplicationView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApplicationView-objects as value to a dart map
  static Map<String, List<ApplicationView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApplicationView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApplicationView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

