//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RestartRef {
  /// Returns a new [RestartRef] instance.
  RestartRef({
    this.app,
    this.env,
  });

  /// App is the service's CR name, from the path. It must be a DNS-1123 label.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? app;

  /// Env is REQUIRED and must be main, test or dev. A bare call does not default to production, which is what closes the fat-finger and confused-deputy hazard.  It carries no `validate:\"required\"`: the handler already refuses an empty env with the sentence that names the three values, and a validator tag would replace that sentence with a generic one. The requirement is stated here and enforced there, once.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? env;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RestartRef &&
    other.app == app &&
    other.env == env;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (app == null ? 0 : app!.hashCode) +
    (env == null ? 0 : env!.hashCode);

  @override
  String toString() => 'RestartRef[app=$app, env=$env]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.app != null) {
      json[r'app'] = this.app;
    } else {
      json[r'app'] = null;
    }
    if (this.env != null) {
      json[r'env'] = this.env;
    } else {
      json[r'env'] = null;
    }
    return json;
  }

  /// Returns a new [RestartRef] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RestartRef? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RestartRef[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RestartRef[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RestartRef(
        app: mapValueOfType<String>(json, r'app'),
        env: mapValueOfType<String>(json, r'env'),
      );
    }
    return null;
  }

  static List<RestartRef> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RestartRef>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RestartRef.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RestartRef> mapFromJson(dynamic json) {
    final map = <String, RestartRef>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RestartRef.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RestartRef-objects as value to a dart map
  static Map<String, List<RestartRef>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RestartRef>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RestartRef.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

