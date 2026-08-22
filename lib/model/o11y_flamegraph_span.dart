//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yFlamegraphSpan {
  /// Returns a new [O11yFlamegraphSpan] instance.
  O11yFlamegraphSpan({
    this.attributes = const {},
    this.durationNano,
    this.event = const [],
    this.hasError,
    this.level,
    this.name,
    this.parentSpanId,
    this.resource = const {},
    this.spanId,
    this.timestamp,
  });
  Map<String, Object> attributes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? durationNano;

  List<O11yEvent> event;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasError;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? level;

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
  String? parentSpanId;

  Map<String, String> resource;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? spanId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timestamp;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yFlamegraphSpan &&
    _deepEquality.equals(other.attributes, attributes) &&
    other.durationNano == durationNano &&
    _deepEquality.equals(other.event, event) &&
    other.hasError == hasError &&
    other.level == level &&
    other.name == name &&
    other.parentSpanId == parentSpanId &&
    _deepEquality.equals(other.resource, resource) &&
    other.spanId == spanId &&
    other.timestamp == timestamp;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (attributes.hashCode) +
    (durationNano == null ? 0 : durationNano!.hashCode) +
    (event.hashCode) +
    (hasError == null ? 0 : hasError!.hashCode) +
    (level == null ? 0 : level!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (parentSpanId == null ? 0 : parentSpanId!.hashCode) +
    (resource.hashCode) +
    (spanId == null ? 0 : spanId!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode);

  @override
  String toString() => 'O11yFlamegraphSpan[attributes=$attributes, durationNano=$durationNano, event=$event, hasError=$hasError, level=$level, name=$name, parentSpanId=$parentSpanId, resource=$resource, spanId=$spanId, timestamp=$timestamp]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'attributes'] = this.attributes;
    if (this.durationNano != null) {
      json[r'durationNano'] = this.durationNano;
    } else {
      json[r'durationNano'] = null;
    }
      json[r'event'] = this.event;
    if (this.hasError != null) {
      json[r'hasError'] = this.hasError;
    } else {
      json[r'hasError'] = null;
    }
    if (this.level != null) {
      json[r'level'] = this.level;
    } else {
      json[r'level'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.parentSpanId != null) {
      json[r'parentSpanId'] = this.parentSpanId;
    } else {
      json[r'parentSpanId'] = null;
    }
      json[r'resource'] = this.resource;
    if (this.spanId != null) {
      json[r'spanId'] = this.spanId;
    } else {
      json[r'spanId'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp;
    } else {
      json[r'timestamp'] = null;
    }
    return json;
  }

  /// Returns a new [O11yFlamegraphSpan] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yFlamegraphSpan? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yFlamegraphSpan[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yFlamegraphSpan[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yFlamegraphSpan(
        attributes: mapCastOfType<String, Object>(json, r'attributes') ?? const {},
        durationNano: mapValueOfType<int>(json, r'durationNano'),
        event: O11yEvent.listFromJson(json[r'event']),
        hasError: mapValueOfType<bool>(json, r'hasError'),
        level: mapValueOfType<int>(json, r'level'),
        name: mapValueOfType<String>(json, r'name'),
        parentSpanId: mapValueOfType<String>(json, r'parentSpanId'),
        resource: mapCastOfType<String, String>(json, r'resource') ?? const {},
        spanId: mapValueOfType<String>(json, r'spanId'),
        timestamp: mapValueOfType<int>(json, r'timestamp'),
      );
    }
    return null;
  }

  static List<O11yFlamegraphSpan> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yFlamegraphSpan>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yFlamegraphSpan.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yFlamegraphSpan> mapFromJson(dynamic json) {
    final map = <String, O11yFlamegraphSpan>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yFlamegraphSpan.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yFlamegraphSpan-objects as value to a dart map
  static Map<String, List<O11yFlamegraphSpan>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yFlamegraphSpan>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yFlamegraphSpan.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

