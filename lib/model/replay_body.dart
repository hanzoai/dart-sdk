//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ReplayBody {
  /// Returns a new [ReplayBody] instance.
  ReplayBody({
    this.distinctId,
    this.events = const [],
    this.sessionId,
    this.windowId,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? distinctId;

  List<Object> events;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sessionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? windowId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReplayBody &&
    other.distinctId == distinctId &&
    _deepEquality.equals(other.events, events) &&
    other.sessionId == sessionId &&
    other.windowId == windowId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (distinctId == null ? 0 : distinctId!.hashCode) +
    (events.hashCode) +
    (sessionId == null ? 0 : sessionId!.hashCode) +
    (windowId == null ? 0 : windowId!.hashCode);

  @override
  String toString() => 'ReplayBody[distinctId=$distinctId, events=$events, sessionId=$sessionId, windowId=$windowId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.distinctId != null) {
      json[r'distinctId'] = this.distinctId;
    } else {
      json[r'distinctId'] = null;
    }
      json[r'events'] = this.events;
    if (this.sessionId != null) {
      json[r'sessionId'] = this.sessionId;
    } else {
      json[r'sessionId'] = null;
    }
    if (this.windowId != null) {
      json[r'windowId'] = this.windowId;
    } else {
      json[r'windowId'] = null;
    }
    return json;
  }

  /// Returns a new [ReplayBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReplayBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReplayBody[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReplayBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReplayBody(
        distinctId: mapValueOfType<String>(json, r'distinctId'),
        events: json[r'events'] is Iterable
            ? (json[r'events'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        sessionId: mapValueOfType<String>(json, r'sessionId'),
        windowId: mapValueOfType<String>(json, r'windowId'),
      );
    }
    return null;
  }

  static List<ReplayBody> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReplayBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReplayBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReplayBody> mapFromJson(dynamic json) {
    final map = <String, ReplayBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReplayBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReplayBody-objects as value to a dart map
  static Map<String, List<ReplayBody>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReplayBody>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReplayBody.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

