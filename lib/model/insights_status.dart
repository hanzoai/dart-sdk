//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class InsightsStatus {
  /// Returns a new [InsightsStatus] instance.
  InsightsStatus({
    this.engine,
    this.ok,
    this.surface,
  });

  /// Engine names the engine serving the surface: hanzo-analytics.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? engine;

  /// OK is always true — reaching this route is the liveness fact it reports.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ok;

  /// Surface is the path prefix this status covers: /v1/insights.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? surface;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InsightsStatus &&
    other.engine == engine &&
    other.ok == ok &&
    other.surface == surface;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (engine == null ? 0 : engine!.hashCode) +
    (ok == null ? 0 : ok!.hashCode) +
    (surface == null ? 0 : surface!.hashCode);

  @override
  String toString() => 'InsightsStatus[engine=$engine, ok=$ok, surface=$surface]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.engine != null) {
      json[r'engine'] = this.engine;
    } else {
      json[r'engine'] = null;
    }
    if (this.ok != null) {
      json[r'ok'] = this.ok;
    } else {
      json[r'ok'] = null;
    }
    if (this.surface != null) {
      json[r'surface'] = this.surface;
    } else {
      json[r'surface'] = null;
    }
    return json;
  }

  /// Returns a new [InsightsStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InsightsStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InsightsStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InsightsStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InsightsStatus(
        engine: mapValueOfType<String>(json, r'engine'),
        ok: mapValueOfType<bool>(json, r'ok'),
        surface: mapValueOfType<String>(json, r'surface'),
      );
    }
    return null;
  }

  static List<InsightsStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InsightsStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InsightsStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InsightsStatus> mapFromJson(dynamic json) {
    final map = <String, InsightsStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InsightsStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InsightsStatus-objects as value to a dart map
  static Map<String, List<InsightsStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InsightsStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InsightsStatus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

