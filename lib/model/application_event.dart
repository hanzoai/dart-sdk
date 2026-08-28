//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ApplicationEvent {
  /// Returns a new [ApplicationEvent] instance.
  ApplicationEvent({
    this.count,
    this.firstTime,
    this.involvedObject,
    this.lastTime,
    this.message,
    this.name,
    this.reason,
    this.source_,
    this.type,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? involvedObject;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastTime;

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
  String? reason;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApplicationEvent &&
    other.count == count &&
    other.firstTime == firstTime &&
    other.involvedObject == involvedObject &&
    other.lastTime == lastTime &&
    other.message == message &&
    other.name == name &&
    other.reason == reason &&
    other.source_ == source_ &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (count == null ? 0 : count!.hashCode) +
    (firstTime == null ? 0 : firstTime!.hashCode) +
    (involvedObject == null ? 0 : involvedObject!.hashCode) +
    (lastTime == null ? 0 : lastTime!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'ApplicationEvent[count=$count, firstTime=$firstTime, involvedObject=$involvedObject, lastTime=$lastTime, message=$message, name=$name, reason=$reason, source_=$source_, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.firstTime != null) {
      json[r'firstTime'] = this.firstTime;
    } else {
      json[r'firstTime'] = null;
    }
    if (this.involvedObject != null) {
      json[r'involvedObject'] = this.involvedObject;
    } else {
      json[r'involvedObject'] = null;
    }
    if (this.lastTime != null) {
      json[r'lastTime'] = this.lastTime;
    } else {
      json[r'lastTime'] = null;
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
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [ApplicationEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApplicationEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ApplicationEvent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ApplicationEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ApplicationEvent(
        count: mapValueOfType<int>(json, r'count'),
        firstTime: mapValueOfType<String>(json, r'firstTime'),
        involvedObject: mapValueOfType<String>(json, r'involvedObject'),
        lastTime: mapValueOfType<String>(json, r'lastTime'),
        message: mapValueOfType<String>(json, r'message'),
        name: mapValueOfType<String>(json, r'name'),
        reason: mapValueOfType<String>(json, r'reason'),
        source_: mapValueOfType<String>(json, r'source'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<ApplicationEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApplicationEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApplicationEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApplicationEvent> mapFromJson(dynamic json) {
    final map = <String, ApplicationEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApplicationEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApplicationEvent-objects as value to a dart map
  static Map<String, List<ApplicationEvent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApplicationEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApplicationEvent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

