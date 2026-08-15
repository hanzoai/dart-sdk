//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ServiceView {
  /// Returns a new [ServiceView] instance.
  ServiceView({
    this.createdAt,
    this.description,
    this.displayName,
    this.hosts = const [],
    this.service,
    this.updatedAt,
    this.updatedBy,
    this.waitlistMode,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  List<String> hosts;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? service;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedBy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? waitlistMode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServiceView &&
    other.createdAt == createdAt &&
    other.description == description &&
    other.displayName == displayName &&
    _deepEquality.equals(other.hosts, hosts) &&
    other.service == service &&
    other.updatedAt == updatedAt &&
    other.updatedBy == updatedBy &&
    other.waitlistMode == waitlistMode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (hosts.hashCode) +
    (service == null ? 0 : service!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (updatedBy == null ? 0 : updatedBy!.hashCode) +
    (waitlistMode == null ? 0 : waitlistMode!.hashCode);

  @override
  String toString() => 'ServiceView[createdAt=$createdAt, description=$description, displayName=$displayName, hosts=$hosts, service=$service, updatedAt=$updatedAt, updatedBy=$updatedBy, waitlistMode=$waitlistMode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
      json[r'hosts'] = this.hosts;
    if (this.service != null) {
      json[r'service'] = this.service;
    } else {
      json[r'service'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.updatedBy != null) {
      json[r'updatedBy'] = this.updatedBy;
    } else {
      json[r'updatedBy'] = null;
    }
    if (this.waitlistMode != null) {
      json[r'waitlistMode'] = this.waitlistMode;
    } else {
      json[r'waitlistMode'] = null;
    }
    return json;
  }

  /// Returns a new [ServiceView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServiceView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ServiceView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ServiceView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ServiceView(
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        description: mapValueOfType<String>(json, r'description'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        hosts: json[r'hosts'] is Iterable
            ? (json[r'hosts'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        service: mapValueOfType<String>(json, r'service'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
        updatedBy: mapValueOfType<String>(json, r'updatedBy'),
        waitlistMode: mapValueOfType<bool>(json, r'waitlistMode'),
      );
    }
    return null;
  }

  static List<ServiceView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServiceView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServiceView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServiceView> mapFromJson(dynamic json) {
    final map = <String, ServiceView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServiceView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServiceView-objects as value to a dart map
  static Map<String, List<ServiceView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServiceView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServiceView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

