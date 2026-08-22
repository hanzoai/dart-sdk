//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yFunction {
  /// Returns a new [O11yFunction] instance.
  O11yFunction({
    this.args = const [],
    this.name,
    this.namedArgs = const {},
  });
  List<Object> args;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  Map<String, Object> namedArgs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yFunction &&
    _deepEquality.equals(other.args, args) &&
    other.name == name &&
    _deepEquality.equals(other.namedArgs, namedArgs);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (args.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (namedArgs.hashCode);

  @override
  String toString() => 'O11yFunction[args=$args, name=$name, namedArgs=$namedArgs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'args'] = this.args;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'namedArgs'] = this.namedArgs;
    return json;
  }

  /// Returns a new [O11yFunction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yFunction? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yFunction[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yFunction[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yFunction(
        args: json[r'args'] is Iterable
            ? (json[r'args'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        name: mapValueOfType<String>(json, r'name'),
        namedArgs: mapCastOfType<String, Object>(json, r'namedArgs') ?? const {},
      );
    }
    return null;
  }

  static List<O11yFunction> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yFunction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yFunction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yFunction> mapFromJson(dynamic json) {
    final map = <String, O11yFunction>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yFunction.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yFunction-objects as value to a dart map
  static Map<String, List<O11yFunction>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yFunction>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yFunction.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

