//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class HealthLenses {
  /// Returns a new [HealthLenses] instance.
  HealthLenses({
    this.events,
    this.llm,
  });

  /// Events is the web/commerce lens (event.fact, signal='act'), honest-empty until the collector emits.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HealthLens? events;

  /// LLM is the live per-org usage ledger lens (hanzo.cloud_usage).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HealthLens? llm;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HealthLenses &&
    other.events == events &&
    other.llm == llm;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (events == null ? 0 : events!.hashCode) +
    (llm == null ? 0 : llm!.hashCode);

  @override
  String toString() => 'HealthLenses[events=$events, llm=$llm]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.events != null) {
      json[r'events'] = this.events;
    } else {
      json[r'events'] = null;
    }
    if (this.llm != null) {
      json[r'llm'] = this.llm;
    } else {
      json[r'llm'] = null;
    }
    return json;
  }

  /// Returns a new [HealthLenses] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HealthLenses? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HealthLenses[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HealthLenses[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HealthLenses(
        events: HealthLens.fromJson(json[r'events']),
        llm: HealthLens.fromJson(json[r'llm']),
      );
    }
    return null;
  }

  static List<HealthLenses> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HealthLenses>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HealthLenses.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HealthLenses> mapFromJson(dynamic json) {
    final map = <String, HealthLenses>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HealthLenses.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HealthLenses-objects as value to a dart map
  static Map<String, List<HealthLenses>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HealthLenses>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HealthLenses.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

