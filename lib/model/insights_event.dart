//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class InsightsEvent {
  /// Returns a new [InsightsEvent] instance.
  InsightsEvent({
    this.distinctIdLegacy,
    this.event,
    this.properties = const {},
    this.timestamp,
    this.uuid,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? distinctIdLegacy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? event;

  Map<String, Object> properties;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timestamp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uuid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InsightsEvent &&
    other.distinctIdLegacy == distinctIdLegacy &&
    other.event == event &&
    _deepEquality.equals(other.properties, properties) &&
    other.timestamp == timestamp &&
    other.uuid == uuid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (distinctIdLegacy == null ? 0 : distinctIdLegacy!.hashCode) +
    (event == null ? 0 : event!.hashCode) +
    (properties.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (uuid == null ? 0 : uuid!.hashCode);

  @override
  String toString() => 'InsightsEvent[distinctIdLegacy=$distinctIdLegacy, event=$event, properties=$properties, timestamp=$timestamp, uuid=$uuid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.distinctIdLegacy != null) {
      json[r'distinct_id'] = this.distinctIdLegacy;
    } else {
      json[r'distinct_id'] = null;
    }
    if (this.event != null) {
      json[r'event'] = this.event;
    } else {
      json[r'event'] = null;
    }
      json[r'properties'] = this.properties;
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp;
    } else {
      json[r'timestamp'] = null;
    }
    if (this.uuid != null) {
      json[r'uuid'] = this.uuid;
    } else {
      json[r'uuid'] = null;
    }
    return json;
  }

  /// Returns a new [InsightsEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InsightsEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InsightsEvent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InsightsEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InsightsEvent(
        distinctIdLegacy: mapValueOfType<String>(json, r'distinct_id'),
        event: mapValueOfType<String>(json, r'event'),
        properties: mapCastOfType<String, Object>(json, r'properties') ?? const {},
        timestamp: mapValueOfType<String>(json, r'timestamp'),
        uuid: mapValueOfType<String>(json, r'uuid'),
      );
    }
    return null;
  }

  static List<InsightsEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InsightsEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InsightsEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InsightsEvent> mapFromJson(dynamic json) {
    final map = <String, InsightsEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InsightsEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InsightsEvent-objects as value to a dart map
  static Map<String, List<InsightsEvent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InsightsEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InsightsEvent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

