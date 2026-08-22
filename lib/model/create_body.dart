//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CreateBody {
  /// Returns a new [CreateBody] instance.
  CreateBody({
    this.exposureEvent,
    this.flagKey,
    required this.id,
    required this.metricEvent,
    this.name,
    this.subjectKind,
    this.variants = const [],
  });
  /// ExposureEvent is the event that marks a subject as enrolled — the analysis denominator — defaulting to the SDK's $feature_flag_called marker.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? exposureEvent;

  /// FlagKey names the assignment flag this experiment writes, defaulting to exp_<id>. It must be a slug.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? flagKey;

  /// ID is the experiment's slug, claimed once per project. It must match [A-Za-z0-9][A-Za-z0-9._-]{0,127}.
  String id;

  /// MetricEvent is the event that counts as a conversion — the analysis numerator.
  String metricEvent;

  /// Name is free text for a reader; the id is what addresses the experiment.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// SubjectKind is the unit assigned and measured: user (the default), org, session or audience.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subjectKind;

  /// Arms are the arms, at least two. Weights that are all zero become an even split; otherwise they must sum to 100, and at most one arm may be flagged control.
  List<Arm> variants;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateBody &&
    other.exposureEvent == exposureEvent &&
    other.flagKey == flagKey &&
    other.id == id &&
    other.metricEvent == metricEvent &&
    other.name == name &&
    other.subjectKind == subjectKind &&
    _deepEquality.equals(other.variants, variants);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (exposureEvent == null ? 0 : exposureEvent!.hashCode) +
    (flagKey == null ? 0 : flagKey!.hashCode) +
    (id.hashCode) +
    (metricEvent.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (subjectKind == null ? 0 : subjectKind!.hashCode) +
    (variants.hashCode);

  @override
  String toString() => 'CreateBody[exposureEvent=$exposureEvent, flagKey=$flagKey, id=$id, metricEvent=$metricEvent, name=$name, subjectKind=$subjectKind, variants=$variants]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.exposureEvent != null) {
      json[r'exposureEvent'] = this.exposureEvent;
    } else {
      json[r'exposureEvent'] = null;
    }
    if (this.flagKey != null) {
      json[r'flagKey'] = this.flagKey;
    } else {
      json[r'flagKey'] = null;
    }
      json[r'id'] = this.id;
      json[r'metricEvent'] = this.metricEvent;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.subjectKind != null) {
      json[r'subjectKind'] = this.subjectKind;
    } else {
      json[r'subjectKind'] = null;
    }
      json[r'variants'] = this.variants;
    return json;
  }

  /// Returns a new [CreateBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateBody[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateBody(
        exposureEvent: mapValueOfType<String>(json, r'exposureEvent'),
        flagKey: mapValueOfType<String>(json, r'flagKey'),
        id: mapValueOfType<String>(json, r'id')!,
        metricEvent: mapValueOfType<String>(json, r'metricEvent')!,
        name: mapValueOfType<String>(json, r'name'),
        subjectKind: mapValueOfType<String>(json, r'subjectKind'),
        variants: Arm.listFromJson(json[r'variants']),
      );
    }
    return null;
  }

  static List<CreateBody> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateBody> mapFromJson(dynamic json) {
    final map = <String, CreateBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateBody-objects as value to a dart map
  static Map<String, List<CreateBody>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateBody>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateBody.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'metricEvent',
    'variants',
  };
}

