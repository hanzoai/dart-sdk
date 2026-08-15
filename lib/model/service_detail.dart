//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ServiceDetail {
  /// Returns a new [ServiceDetail] instance.
  ServiceDetail({
    this.clusterIP,
    this.createdTime,
    this.externalHost,
    this.externalIP,
    this.internalHost,
    this.name,
    this.ports = const [],
    this.type,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clusterIP;

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
  String? externalHost;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalIP;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? internalHost;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  List<ServicePort> ports;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServiceDetail &&
    other.clusterIP == clusterIP &&
    other.createdTime == createdTime &&
    other.externalHost == externalHost &&
    other.externalIP == externalIP &&
    other.internalHost == internalHost &&
    other.name == name &&
    _deepEquality.equals(other.ports, ports) &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (clusterIP == null ? 0 : clusterIP!.hashCode) +
    (createdTime == null ? 0 : createdTime!.hashCode) +
    (externalHost == null ? 0 : externalHost!.hashCode) +
    (externalIP == null ? 0 : externalIP!.hashCode) +
    (internalHost == null ? 0 : internalHost!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (ports.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'ServiceDetail[clusterIP=$clusterIP, createdTime=$createdTime, externalHost=$externalHost, externalIP=$externalIP, internalHost=$internalHost, name=$name, ports=$ports, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.clusterIP != null) {
      json[r'clusterIP'] = this.clusterIP;
    } else {
      json[r'clusterIP'] = null;
    }
    if (this.createdTime != null) {
      json[r'createdTime'] = this.createdTime;
    } else {
      json[r'createdTime'] = null;
    }
    if (this.externalHost != null) {
      json[r'externalHost'] = this.externalHost;
    } else {
      json[r'externalHost'] = null;
    }
    if (this.externalIP != null) {
      json[r'externalIP'] = this.externalIP;
    } else {
      json[r'externalIP'] = null;
    }
    if (this.internalHost != null) {
      json[r'internalHost'] = this.internalHost;
    } else {
      json[r'internalHost'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'ports'] = this.ports;
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [ServiceDetail] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServiceDetail? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ServiceDetail[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ServiceDetail[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ServiceDetail(
        clusterIP: mapValueOfType<String>(json, r'clusterIP'),
        createdTime: mapValueOfType<String>(json, r'createdTime'),
        externalHost: mapValueOfType<String>(json, r'externalHost'),
        externalIP: mapValueOfType<String>(json, r'externalIP'),
        internalHost: mapValueOfType<String>(json, r'internalHost'),
        name: mapValueOfType<String>(json, r'name'),
        ports: ServicePort.listFromJson(json[r'ports']),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<ServiceDetail> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServiceDetail>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServiceDetail.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServiceDetail> mapFromJson(dynamic json) {
    final map = <String, ServiceDetail>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServiceDetail.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServiceDetail-objects as value to a dart map
  static Map<String, List<ServiceDetail>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServiceDetail>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServiceDetail.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

