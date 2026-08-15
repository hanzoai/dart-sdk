//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ModuleInfo {
  /// Returns a new [ModuleInfo] instance.
  ModuleInfo({
    this.doctypes = const [],
    this.module,
  });

  List<String> doctypes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? module;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModuleInfo &&
    _deepEquality.equals(other.doctypes, doctypes) &&
    other.module == module;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (doctypes.hashCode) +
    (module == null ? 0 : module!.hashCode);

  @override
  String toString() => 'ModuleInfo[doctypes=$doctypes, module=$module]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'doctypes'] = this.doctypes;
    if (this.module != null) {
      json[r'module'] = this.module;
    } else {
      json[r'module'] = null;
    }
    return json;
  }

  /// Returns a new [ModuleInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModuleInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModuleInfo[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModuleInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModuleInfo(
        doctypes: json[r'doctypes'] is Iterable
            ? (json[r'doctypes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        module: mapValueOfType<String>(json, r'module'),
      );
    }
    return null;
  }

  static List<ModuleInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModuleInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModuleInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModuleInfo> mapFromJson(dynamic json) {
    final map = <String, ModuleInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModuleInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModuleInfo-objects as value to a dart map
  static Map<String, List<ModuleInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModuleInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModuleInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

