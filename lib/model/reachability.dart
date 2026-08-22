//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Reachability {
  /// Returns a new [Reachability] instance.
  Reachability({
    this.configured,
    this.env,
    this.error,
    this.reachable,
    this.registrar,
    this.service,
    this.status,
  });
  /// Configured is whether the wholesale credentials are present at all.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? configured;

  /// Env is the registrar environment. It is the fact that decides whether money moves: only \"prod\" reaches the live, billable registrar — anything else, including unset, is the sandbox.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? env;

  /// Error is the blocker, so an operator reads it instead of guessing at it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  /// Reachable is whether the registrar accepted those credentials on a live call made while the caller waited.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? reachable;

  /// Registrar names the wholesale registrar behind it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? registrar;

  /// Service names the subsystem answering.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? service;

  /// Status is \"ok\" when a live call succeeded, else \"degraded\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Reachability &&
    other.configured == configured &&
    other.env == env &&
    other.error == error &&
    other.reachable == reachable &&
    other.registrar == registrar &&
    other.service == service &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (configured == null ? 0 : configured!.hashCode) +
    (env == null ? 0 : env!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (reachable == null ? 0 : reachable!.hashCode) +
    (registrar == null ? 0 : registrar!.hashCode) +
    (service == null ? 0 : service!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'Reachability[configured=$configured, env=$env, error=$error, reachable=$reachable, registrar=$registrar, service=$service, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.configured != null) {
      json[r'configured'] = this.configured;
    } else {
      json[r'configured'] = null;
    }
    if (this.env != null) {
      json[r'env'] = this.env;
    } else {
      json[r'env'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.reachable != null) {
      json[r'reachable'] = this.reachable;
    } else {
      json[r'reachable'] = null;
    }
    if (this.registrar != null) {
      json[r'registrar'] = this.registrar;
    } else {
      json[r'registrar'] = null;
    }
    if (this.service != null) {
      json[r'service'] = this.service;
    } else {
      json[r'service'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [Reachability] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Reachability? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Reachability[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Reachability[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Reachability(
        configured: mapValueOfType<bool>(json, r'configured'),
        env: mapValueOfType<String>(json, r'env'),
        error: mapValueOfType<String>(json, r'error'),
        reachable: mapValueOfType<bool>(json, r'reachable'),
        registrar: mapValueOfType<String>(json, r'registrar'),
        service: mapValueOfType<String>(json, r'service'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<Reachability> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Reachability>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Reachability.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Reachability> mapFromJson(dynamic json) {
    final map = <String, Reachability>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Reachability.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Reachability-objects as value to a dart map
  static Map<String, List<Reachability>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Reachability>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Reachability.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

