//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yStatusComponent {
  /// Returns a new [O11yStatusComponent] instance.
  O11yStatusComponent({
    this.currentStatus,
    this.id,
    this.name,
  });
  /// CurrentStatus is this component's own condition: \"full_outage\" for a service that did not answer its health probe at all.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currentStatus;

  /// ID is the component's stable handle, which on this platform IS the service name — there is no separate component registry to allocate ids from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Name is the service as the fleet prober knows it (the `service` label on hanzo_service_up), so a reader can match a component to what is being probed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yStatusComponent &&
    other.currentStatus == currentStatus &&
    other.id == id &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (currentStatus == null ? 0 : currentStatus!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'O11yStatusComponent[currentStatus=$currentStatus, id=$id, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.currentStatus != null) {
      json[r'current_status'] = this.currentStatus;
    } else {
      json[r'current_status'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [O11yStatusComponent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yStatusComponent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yStatusComponent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yStatusComponent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yStatusComponent(
        currentStatus: mapValueOfType<String>(json, r'current_status'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<O11yStatusComponent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yStatusComponent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yStatusComponent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yStatusComponent> mapFromJson(dynamic json) {
    final map = <String, O11yStatusComponent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yStatusComponent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yStatusComponent-objects as value to a dart map
  static Map<String, List<O11yStatusComponent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yStatusComponent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yStatusComponent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

