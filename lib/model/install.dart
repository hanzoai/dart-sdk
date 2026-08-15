//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Install {
  /// Returns a new [Install] instance.
  Install({
    this.created = const [],
    this.existing = const [],
    this.module,
  });

  List<String> created;

  List<String> existing;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? module;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Install &&
    _deepEquality.equals(other.created, created) &&
    _deepEquality.equals(other.existing, existing) &&
    other.module == module;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created.hashCode) +
    (existing.hashCode) +
    (module == null ? 0 : module!.hashCode);

  @override
  String toString() => 'Install[created=$created, existing=$existing, module=$module]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'created'] = this.created;
      json[r'existing'] = this.existing;
    if (this.module != null) {
      json[r'module'] = this.module;
    } else {
      json[r'module'] = null;
    }
    return json;
  }

  /// Returns a new [Install] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Install? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Install[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Install[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Install(
        created: json[r'created'] is Iterable
            ? (json[r'created'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        existing: json[r'existing'] is Iterable
            ? (json[r'existing'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        module: mapValueOfType<String>(json, r'module'),
      );
    }
    return null;
  }

  static List<Install> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Install>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Install.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Install> mapFromJson(dynamic json) {
    final map = <String, Install>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Install.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Install-objects as value to a dart map
  static Map<String, List<Install>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Install>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Install.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

