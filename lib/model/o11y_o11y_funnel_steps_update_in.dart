//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yFunnelStepsUpdateIn {
  /// Returns a new [O11yO11yFunnelStepsUpdateIn] instance.
  O11yO11yFunnelStepsUpdateIn({
    this.description,
    this.funnelId,
    this.funnelName,
    this.steps = const [],
    this.timestamp,
  });
  /// Description replaces the funnel's description. Empty leaves it as it was.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// FunnelID is the funnel to update.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? funnelId;

  /// Name replaces the funnel's name. Empty leaves it as it was.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? funnelName;

  /// Steps are the funnel's steps, in order. At least two are needed before any analytics read will answer.
  List<O11yFunnelStep> steps;

  /// Timestamp is when the change was made, as a millisecond epoch.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timestamp;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yFunnelStepsUpdateIn &&
    other.description == description &&
    other.funnelId == funnelId &&
    other.funnelName == funnelName &&
    _deepEquality.equals(other.steps, steps) &&
    other.timestamp == timestamp;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (description == null ? 0 : description!.hashCode) +
    (funnelId == null ? 0 : funnelId!.hashCode) +
    (funnelName == null ? 0 : funnelName!.hashCode) +
    (steps.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode);

  @override
  String toString() => 'O11yO11yFunnelStepsUpdateIn[description=$description, funnelId=$funnelId, funnelName=$funnelName, steps=$steps, timestamp=$timestamp]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.funnelId != null) {
      json[r'funnel_id'] = this.funnelId;
    } else {
      json[r'funnel_id'] = null;
    }
    if (this.funnelName != null) {
      json[r'funnel_name'] = this.funnelName;
    } else {
      json[r'funnel_name'] = null;
    }
      json[r'steps'] = this.steps;
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp;
    } else {
      json[r'timestamp'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yFunnelStepsUpdateIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yFunnelStepsUpdateIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yFunnelStepsUpdateIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yFunnelStepsUpdateIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yFunnelStepsUpdateIn(
        description: mapValueOfType<String>(json, r'description'),
        funnelId: mapValueOfType<String>(json, r'funnel_id'),
        funnelName: mapValueOfType<String>(json, r'funnel_name'),
        steps: O11yFunnelStep.listFromJson(json[r'steps']),
        timestamp: mapValueOfType<int>(json, r'timestamp'),
      );
    }
    return null;
  }

  static List<O11yO11yFunnelStepsUpdateIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yFunnelStepsUpdateIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yFunnelStepsUpdateIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yFunnelStepsUpdateIn> mapFromJson(dynamic json) {
    final map = <String, O11yO11yFunnelStepsUpdateIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yFunnelStepsUpdateIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yFunnelStepsUpdateIn-objects as value to a dart map
  static Map<String, List<O11yO11yFunnelStepsUpdateIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yFunnelStepsUpdateIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yFunnelStepsUpdateIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

