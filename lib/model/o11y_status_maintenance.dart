//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yStatusMaintenance {
  /// Returns a new [O11yStatusMaintenance] instance.
  O11yStatusMaintenance({
    this.affectedComponents = const [],
    this.endsAt,
    this.id,
    this.lastUpdateAt,
    this.lastUpdateMessage,
    this.name,
    this.startsAt,
    this.status,
    this.url,
  });

  List<O11yStatusComponent> affectedComponents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? endsAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastUpdateAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastUpdateMessage;

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
  String? startsAt;

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
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yStatusMaintenance &&
    _deepEquality.equals(other.affectedComponents, affectedComponents) &&
    other.endsAt == endsAt &&
    other.id == id &&
    other.lastUpdateAt == lastUpdateAt &&
    other.lastUpdateMessage == lastUpdateMessage &&
    other.name == name &&
    other.startsAt == startsAt &&
    other.status == status &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (affectedComponents.hashCode) +
    (endsAt == null ? 0 : endsAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (lastUpdateAt == null ? 0 : lastUpdateAt!.hashCode) +
    (lastUpdateMessage == null ? 0 : lastUpdateMessage!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (startsAt == null ? 0 : startsAt!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'O11yStatusMaintenance[affectedComponents=$affectedComponents, endsAt=$endsAt, id=$id, lastUpdateAt=$lastUpdateAt, lastUpdateMessage=$lastUpdateMessage, name=$name, startsAt=$startsAt, status=$status, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'affected_components'] = this.affectedComponents;
    if (this.endsAt != null) {
      json[r'ends_at'] = this.endsAt;
    } else {
      json[r'ends_at'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.lastUpdateAt != null) {
      json[r'last_update_at'] = this.lastUpdateAt;
    } else {
      json[r'last_update_at'] = null;
    }
    if (this.lastUpdateMessage != null) {
      json[r'last_update_message'] = this.lastUpdateMessage;
    } else {
      json[r'last_update_message'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.startsAt != null) {
      json[r'starts_at'] = this.startsAt;
    } else {
      json[r'starts_at'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [O11yStatusMaintenance] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yStatusMaintenance? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yStatusMaintenance[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yStatusMaintenance[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yStatusMaintenance(
        affectedComponents: O11yStatusComponent.listFromJson(json[r'affected_components']),
        endsAt: mapValueOfType<String>(json, r'ends_at'),
        id: mapValueOfType<String>(json, r'id'),
        lastUpdateAt: mapValueOfType<String>(json, r'last_update_at'),
        lastUpdateMessage: mapValueOfType<String>(json, r'last_update_message'),
        name: mapValueOfType<String>(json, r'name'),
        startsAt: mapValueOfType<String>(json, r'starts_at'),
        status: mapValueOfType<String>(json, r'status'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<O11yStatusMaintenance> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yStatusMaintenance>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yStatusMaintenance.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yStatusMaintenance> mapFromJson(dynamic json) {
    final map = <String, O11yStatusMaintenance>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yStatusMaintenance.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yStatusMaintenance-objects as value to a dart map
  static Map<String, List<O11yStatusMaintenance>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yStatusMaintenance>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yStatusMaintenance.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

