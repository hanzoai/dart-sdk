//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Module {
  /// Returns a new [Module] instance.
  Module({
    this.doctypes = const [],
    this.enabled,
    this.module,
  });
  List<String> doctypes;

  /// Enabled is whether this org has turned the module on. A module that is off answers 404 on every DocType it owns (elective.go).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? module;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Module &&
    _deepEquality.equals(other.doctypes, doctypes) &&
    other.enabled == enabled &&
    other.module == module;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (doctypes.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode) +
    (module == null ? 0 : module!.hashCode);

  @override
  String toString() => 'Module[doctypes=$doctypes, enabled=$enabled, module=$module]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'doctypes'] = this.doctypes;
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    if (this.module != null) {
      json[r'module'] = this.module;
    } else {
      json[r'module'] = null;
    }
    return json;
  }

  /// Returns a new [Module] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Module? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Module[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Module[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Module(
        doctypes: json[r'doctypes'] is Iterable
            ? (json[r'doctypes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        enabled: mapValueOfType<bool>(json, r'enabled'),
        module: mapValueOfType<String>(json, r'module'),
      );
    }
    return null;
  }

  static List<Module> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Module>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Module.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Module> mapFromJson(dynamic json) {
    final map = <String, Module>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Module.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Module-objects as value to a dart map
  static Map<String, List<Module>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Module>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Module.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

