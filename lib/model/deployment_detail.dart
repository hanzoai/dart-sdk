//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DeploymentDetail {
  /// Returns a new [DeploymentDetail] instance.
  DeploymentDetail({
    this.containers = const [],
    this.createdTime,
    this.name,
    this.readyReplicas,
    this.replicas,
    this.status,
  });

  List<ContainerDetail> containers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdTime;

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
  int? readyReplicas;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? replicas;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeploymentDetail &&
    _deepEquality.equals(other.containers, containers) &&
    other.createdTime == createdTime &&
    other.name == name &&
    other.readyReplicas == readyReplicas &&
    other.replicas == replicas &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (containers.hashCode) +
    (createdTime == null ? 0 : createdTime!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (readyReplicas == null ? 0 : readyReplicas!.hashCode) +
    (replicas == null ? 0 : replicas!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'DeploymentDetail[containers=$containers, createdTime=$createdTime, name=$name, readyReplicas=$readyReplicas, replicas=$replicas, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'containers'] = this.containers;
    if (this.createdTime != null) {
      json[r'createdTime'] = this.createdTime;
    } else {
      json[r'createdTime'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.readyReplicas != null) {
      json[r'readyReplicas'] = this.readyReplicas;
    } else {
      json[r'readyReplicas'] = null;
    }
    if (this.replicas != null) {
      json[r'replicas'] = this.replicas;
    } else {
      json[r'replicas'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [DeploymentDetail] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeploymentDetail? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeploymentDetail[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeploymentDetail[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeploymentDetail(
        containers: ContainerDetail.listFromJson(json[r'containers']),
        createdTime: mapValueOfType<String>(json, r'createdTime'),
        name: mapValueOfType<String>(json, r'name'),
        readyReplicas: mapValueOfType<int>(json, r'readyReplicas'),
        replicas: mapValueOfType<int>(json, r'replicas'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<DeploymentDetail> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeploymentDetail>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeploymentDetail.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeploymentDetail> mapFromJson(dynamic json) {
    final map = <String, DeploymentDetail>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeploymentDetail.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeploymentDetail-objects as value to a dart map
  static Map<String, List<DeploymentDetail>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeploymentDetail>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeploymentDetail.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

