//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yPostablePlannedMaintenance {
  /// Returns a new [O11yPostablePlannedMaintenance] instance.
  O11yPostablePlannedMaintenance({
    this.alertIds = const [],
    this.description,
    this.name,
    this.schedule,
    this.scope,
  });

  List<String> alertIds;

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
  String? name;

  Object? schedule;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scope;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yPostablePlannedMaintenance &&
    _deepEquality.equals(other.alertIds, alertIds) &&
    other.description == description &&
    other.name == name &&
    other.schedule == schedule &&
    other.scope == scope;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (alertIds.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (schedule == null ? 0 : schedule!.hashCode) +
    (scope == null ? 0 : scope!.hashCode);

  @override
  String toString() => 'O11yPostablePlannedMaintenance[alertIds=$alertIds, description=$description, name=$name, schedule=$schedule, scope=$scope]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'alertIds'] = this.alertIds;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.schedule != null) {
      json[r'schedule'] = this.schedule;
    } else {
      json[r'schedule'] = null;
    }
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    return json;
  }

  /// Returns a new [O11yPostablePlannedMaintenance] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yPostablePlannedMaintenance? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yPostablePlannedMaintenance[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yPostablePlannedMaintenance[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yPostablePlannedMaintenance(
        alertIds: json[r'alertIds'] is Iterable
            ? (json[r'alertIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        description: mapValueOfType<String>(json, r'description'),
        name: mapValueOfType<String>(json, r'name'),
        schedule: mapValueOfType<Object>(json, r'schedule'),
        scope: mapValueOfType<String>(json, r'scope'),
      );
    }
    return null;
  }

  static List<O11yPostablePlannedMaintenance> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yPostablePlannedMaintenance>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yPostablePlannedMaintenance.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yPostablePlannedMaintenance> mapFromJson(dynamic json) {
    final map = <String, O11yPostablePlannedMaintenance>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yPostablePlannedMaintenance.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yPostablePlannedMaintenance-objects as value to a dart map
  static Map<String, List<O11yPostablePlannedMaintenance>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yPostablePlannedMaintenance>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yPostablePlannedMaintenance.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

