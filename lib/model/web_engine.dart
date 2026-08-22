//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class WebEngine {
  /// Returns a new [WebEngine] instance.
  WebEngine({
    this.name,
    this.outcome,
    this.results,
  });
  /// Name is the engine, matching the `engine` stamped on each result.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Outcome is \"answered\", \"blind\" or \"failed\" — see outcome.go. \"blind\" means the page came back and no results could be read out of it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? outcome;

  /// Results is how many hits this engine contributed, before the merge deduplicated them against the others.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebEngine &&
    other.name == name &&
    other.outcome == outcome &&
    other.results == results;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (outcome == null ? 0 : outcome!.hashCode) +
    (results == null ? 0 : results!.hashCode);

  @override
  String toString() => 'WebEngine[name=$name, outcome=$outcome, results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.outcome != null) {
      json[r'outcome'] = this.outcome;
    } else {
      json[r'outcome'] = null;
    }
    if (this.results != null) {
      json[r'results'] = this.results;
    } else {
      json[r'results'] = null;
    }
    return json;
  }

  /// Returns a new [WebEngine] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebEngine? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebEngine[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebEngine[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebEngine(
        name: mapValueOfType<String>(json, r'name'),
        outcome: mapValueOfType<String>(json, r'outcome'),
        results: mapValueOfType<int>(json, r'results'),
      );
    }
    return null;
  }

  static List<WebEngine> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebEngine>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebEngine.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebEngine> mapFromJson(dynamic json) {
    final map = <String, WebEngine>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebEngine.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebEngine-objects as value to a dart map
  static Map<String, List<WebEngine>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebEngine>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebEngine.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

