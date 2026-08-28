//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Service {
  /// Returns a new [Service] instance.
  Service({
    this.expectedStatus,
    this.message,
    this.name,
    this.no,
    this.path,
    this.port,
    this.processId,
    this.status,
    this.subStatus,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? expectedStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

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
  int? no;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? port;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? processId;

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
  String? subStatus;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Service &&
    other.expectedStatus == expectedStatus &&
    other.message == message &&
    other.name == name &&
    other.no == no &&
    other.path == path &&
    other.port == port &&
    other.processId == processId &&
    other.status == status &&
    other.subStatus == subStatus;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (expectedStatus == null ? 0 : expectedStatus!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (no == null ? 0 : no!.hashCode) +
    (path == null ? 0 : path!.hashCode) +
    (port == null ? 0 : port!.hashCode) +
    (processId == null ? 0 : processId!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (subStatus == null ? 0 : subStatus!.hashCode);

  @override
  String toString() => 'Service[expectedStatus=$expectedStatus, message=$message, name=$name, no=$no, path=$path, port=$port, processId=$processId, status=$status, subStatus=$subStatus]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.expectedStatus != null) {
      json[r'expectedStatus'] = this.expectedStatus;
    } else {
      json[r'expectedStatus'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.no != null) {
      json[r'no'] = this.no;
    } else {
      json[r'no'] = null;
    }
    if (this.path != null) {
      json[r'path'] = this.path;
    } else {
      json[r'path'] = null;
    }
    if (this.port != null) {
      json[r'port'] = this.port;
    } else {
      json[r'port'] = null;
    }
    if (this.processId != null) {
      json[r'processId'] = this.processId;
    } else {
      json[r'processId'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.subStatus != null) {
      json[r'subStatus'] = this.subStatus;
    } else {
      json[r'subStatus'] = null;
    }
    return json;
  }

  /// Returns a new [Service] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Service? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Service[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Service[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Service(
        expectedStatus: mapValueOfType<String>(json, r'expectedStatus'),
        message: mapValueOfType<String>(json, r'message'),
        name: mapValueOfType<String>(json, r'name'),
        no: mapValueOfType<int>(json, r'no'),
        path: mapValueOfType<String>(json, r'path'),
        port: mapValueOfType<int>(json, r'port'),
        processId: mapValueOfType<int>(json, r'processId'),
        status: mapValueOfType<String>(json, r'status'),
        subStatus: mapValueOfType<String>(json, r'subStatus'),
      );
    }
    return null;
  }

  static List<Service> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Service>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Service.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Service> mapFromJson(dynamic json) {
    final map = <String, Service>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Service.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Service-objects as value to a dart map
  static Map<String, List<Service>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Service>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Service.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

