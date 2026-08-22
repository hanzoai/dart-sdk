//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Restarted {
  /// Returns a new [Restarted] instance.
  Restarted({
    this.app,
    this.env,
    this.namespace,
    this.ok,
    this.restartedAt,
  });
  /// App is the service that was restarted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? app;

  /// Env is that namespace's lifecycle env.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? env;

  /// Namespace is the namespace its Deployment was patched in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? namespace;

  /// OK is always true — a failure is an error, not a false here.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ok;

  /// RestartedAt is the timestamp stamped onto the pod template, RFC3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? restartedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Restarted &&
    other.app == app &&
    other.env == env &&
    other.namespace == namespace &&
    other.ok == ok &&
    other.restartedAt == restartedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (app == null ? 0 : app!.hashCode) +
    (env == null ? 0 : env!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode) +
    (ok == null ? 0 : ok!.hashCode) +
    (restartedAt == null ? 0 : restartedAt!.hashCode);

  @override
  String toString() => 'Restarted[app=$app, env=$env, namespace=$namespace, ok=$ok, restartedAt=$restartedAt]';

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
    if (this.namespace != null) {
      json[r'namespace'] = this.namespace;
    } else {
      json[r'namespace'] = null;
    }
    if (this.ok != null) {
      json[r'ok'] = this.ok;
    } else {
      json[r'ok'] = null;
    }
    if (this.restartedAt != null) {
      json[r'restartedAt'] = this.restartedAt;
    } else {
      json[r'restartedAt'] = null;
    }
    return json;
  }

  /// Returns a new [Restarted] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Restarted? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Restarted[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Restarted[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Restarted(
        app: mapValueOfType<String>(json, r'app'),
        env: mapValueOfType<String>(json, r'env'),
        namespace: mapValueOfType<String>(json, r'namespace'),
        ok: mapValueOfType<bool>(json, r'ok'),
        restartedAt: mapValueOfType<String>(json, r'restartedAt'),
      );
    }
    return null;
  }

  static List<Restarted> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Restarted>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Restarted.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Restarted> mapFromJson(dynamic json) {
    final map = <String, Restarted>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Restarted.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Restarted-objects as value to a dart map
  static Map<String, List<Restarted>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Restarted>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Restarted.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

