//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SubdomainSetIn {
  /// Returns a new [SubdomainSetIn] instance.
  SubdomainSetIn({
    this.enabled,
    this.script,
  });
  /// Enabled publishes the script on <script>.<subdomain>.workers.dev when true, and withdraws it when false.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  /// Script is the Worker script name, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? script;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SubdomainSetIn &&
    other.enabled == enabled &&
    other.script == script;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled == null ? 0 : enabled!.hashCode) +
    (script == null ? 0 : script!.hashCode);

  @override
  String toString() => 'SubdomainSetIn[enabled=$enabled, script=$script]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    if (this.script != null) {
      json[r'script'] = this.script;
    } else {
      json[r'script'] = null;
    }
    return json;
  }

  /// Returns a new [SubdomainSetIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SubdomainSetIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SubdomainSetIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SubdomainSetIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SubdomainSetIn(
        enabled: mapValueOfType<bool>(json, r'enabled'),
        script: mapValueOfType<String>(json, r'script'),
      );
    }
    return null;
  }

  static List<SubdomainSetIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubdomainSetIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubdomainSetIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SubdomainSetIn> mapFromJson(dynamic json) {
    final map = <String, SubdomainSetIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SubdomainSetIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SubdomainSetIn-objects as value to a dart map
  static Map<String, List<SubdomainSetIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SubdomainSetIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SubdomainSetIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

