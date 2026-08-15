//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ServiceModeIn {
  /// Returns a new [ServiceModeIn] instance.
  ServiceModeIn({
    this.service,
    this.waitlistMode,
  });

  /// Service is the slug to flip, taken from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? service;

  /// WaitlistMode is the new mode: true gates the service behind the waitlist, false opens it. This is the launch lever.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? waitlistMode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServiceModeIn &&
    other.service == service &&
    other.waitlistMode == waitlistMode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (service == null ? 0 : service!.hashCode) +
    (waitlistMode == null ? 0 : waitlistMode!.hashCode);

  @override
  String toString() => 'ServiceModeIn[service=$service, waitlistMode=$waitlistMode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.service != null) {
      json[r'service'] = this.service;
    } else {
      json[r'service'] = null;
    }
    if (this.waitlistMode != null) {
      json[r'waitlistMode'] = this.waitlistMode;
    } else {
      json[r'waitlistMode'] = null;
    }
    return json;
  }

  /// Returns a new [ServiceModeIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServiceModeIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ServiceModeIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ServiceModeIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ServiceModeIn(
        service: mapValueOfType<String>(json, r'service'),
        waitlistMode: mapValueOfType<bool>(json, r'waitlistMode'),
      );
    }
    return null;
  }

  static List<ServiceModeIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServiceModeIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServiceModeIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServiceModeIn> mapFromJson(dynamic json) {
    final map = <String, ServiceModeIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServiceModeIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServiceModeIn-objects as value to a dart map
  static Map<String, List<ServiceModeIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServiceModeIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServiceModeIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

