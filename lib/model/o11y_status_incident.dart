//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yStatusIncident {
  /// Returns a new [O11yStatusIncident] instance.
  O11yStatusIncident({
    this.affectedComponents = const [],
    this.currentWorstImpact,
    this.id,
    this.lastUpdateAt,
    this.lastUpdateMessage,
    this.name,
    this.status,
    this.url,
  });

  List<O11yStatusComponent> affectedComponents;

  /// CurrentWorstImpact is the incident's impact on the PLATFORM, which is not the same question as the component's own condition above.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currentWorstImpact;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// LastUpdateAt is when the failing measurement this incident reports was read, RFC3339 UTC.
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
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yStatusIncident &&
    _deepEquality.equals(other.affectedComponents, affectedComponents) &&
    other.currentWorstImpact == currentWorstImpact &&
    other.id == id &&
    other.lastUpdateAt == lastUpdateAt &&
    other.lastUpdateMessage == lastUpdateMessage &&
    other.name == name &&
    other.status == status &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (affectedComponents.hashCode) +
    (currentWorstImpact == null ? 0 : currentWorstImpact!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (lastUpdateAt == null ? 0 : lastUpdateAt!.hashCode) +
    (lastUpdateMessage == null ? 0 : lastUpdateMessage!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'O11yStatusIncident[affectedComponents=$affectedComponents, currentWorstImpact=$currentWorstImpact, id=$id, lastUpdateAt=$lastUpdateAt, lastUpdateMessage=$lastUpdateMessage, name=$name, status=$status, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'affected_components'] = this.affectedComponents;
    if (this.currentWorstImpact != null) {
      json[r'current_worst_impact'] = this.currentWorstImpact;
    } else {
      json[r'current_worst_impact'] = null;
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

  /// Returns a new [O11yStatusIncident] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yStatusIncident? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yStatusIncident[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yStatusIncident[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yStatusIncident(
        affectedComponents: O11yStatusComponent.listFromJson(json[r'affected_components']),
        currentWorstImpact: mapValueOfType<String>(json, r'current_worst_impact'),
        id: mapValueOfType<String>(json, r'id'),
        lastUpdateAt: mapValueOfType<String>(json, r'last_update_at'),
        lastUpdateMessage: mapValueOfType<String>(json, r'last_update_message'),
        name: mapValueOfType<String>(json, r'name'),
        status: mapValueOfType<String>(json, r'status'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<O11yStatusIncident> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yStatusIncident>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yStatusIncident.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yStatusIncident> mapFromJson(dynamic json) {
    final map = <String, O11yStatusIncident>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yStatusIncident.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yStatusIncident-objects as value to a dart map
  static Map<String, List<O11yStatusIncident>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yStatusIncident>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yStatusIncident.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

