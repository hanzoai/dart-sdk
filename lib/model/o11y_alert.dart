//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yAlert {
  /// Returns a new [O11yAlert] instance.
  O11yAlert({
    this.annotations = const {},
    this.endsAt,
    this.generatorURL,
    this.labels = const {},
    this.startsAt,
  });
  Map<String, String> annotations;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? endsAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? generatorURL;

  Map<String, String> labels;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? startsAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yAlert &&
    _deepEquality.equals(other.annotations, annotations) &&
    other.endsAt == endsAt &&
    other.generatorURL == generatorURL &&
    _deepEquality.equals(other.labels, labels) &&
    other.startsAt == startsAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (annotations.hashCode) +
    (endsAt == null ? 0 : endsAt!.hashCode) +
    (generatorURL == null ? 0 : generatorURL!.hashCode) +
    (labels.hashCode) +
    (startsAt == null ? 0 : startsAt!.hashCode);

  @override
  String toString() => 'O11yAlert[annotations=$annotations, endsAt=$endsAt, generatorURL=$generatorURL, labels=$labels, startsAt=$startsAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'annotations'] = this.annotations;
    if (this.endsAt != null) {
      json[r'endsAt'] = this.endsAt!.toUtc().toIso8601String();
    } else {
      json[r'endsAt'] = null;
    }
    if (this.generatorURL != null) {
      json[r'generatorURL'] = this.generatorURL;
    } else {
      json[r'generatorURL'] = null;
    }
      json[r'labels'] = this.labels;
    if (this.startsAt != null) {
      json[r'startsAt'] = this.startsAt!.toUtc().toIso8601String();
    } else {
      json[r'startsAt'] = null;
    }
    return json;
  }

  /// Returns a new [O11yAlert] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yAlert? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yAlert[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yAlert[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yAlert(
        annotations: mapCastOfType<String, String>(json, r'annotations') ?? const {},
        endsAt: mapDateTime(json, r'endsAt', r''),
        generatorURL: mapValueOfType<String>(json, r'generatorURL'),
        labels: mapCastOfType<String, String>(json, r'labels') ?? const {},
        startsAt: mapDateTime(json, r'startsAt', r''),
      );
    }
    return null;
  }

  static List<O11yAlert> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yAlert>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yAlert.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yAlert> mapFromJson(dynamic json) {
    final map = <String, O11yAlert>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yAlert.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yAlert-objects as value to a dart map
  static Map<String, List<O11yAlert>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yAlert>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yAlert.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

