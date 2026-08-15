//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Definition {
  /// Returns a new [Definition] instance.
  Definition({
    this.code,
    this.envNames = const [],
    this.environment,
    this.handler,
    this.image,
    this.memoryLimit,
    required this.name,
    this.namespace,
    this.runtime,
    this.target,
    this.timeoutSec,
  });

  /// Code is the source to run, capped so one function cannot amplify the store.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  /// EnvNames are the secret NAMES to mount. Values live in the secret store and are never carried here.
  List<String> envNames;

  /// Environment is a second spelling of runtime, accepted so a console that says \"environment\" needs no translation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? environment;

  /// Handler is the entry point within the code.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? handler;

  /// Image names a prebuilt image to run instead of source.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

  /// MemoryLimit is the memory the function runs with, defaulting to 256Mi. It is also the multiplier on the GB-seconds compute charge.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? memoryLimit;

  /// Name is the function's org-unique handle and the segment that addresses it, matching ^[A-Za-z0-9][A-Za-z0-9._-]{0,63}$. The names that would shadow a collection route are reserved.
  String name;

  /// Namespace groups functions for display. It is cosmetic — the org is the isolation key — and is normalised to a DNS-safe label.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? namespace;

  /// Runtime is the language the code runs under: node, python or deno.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? runtime;

  /// Target is where the function runs: sandbox (the default) or fleet, the org's own GPU fleet. fleet supports runtime=python only.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? target;

  /// TimeoutSec is the per-invocation deadline, defaulting to 30 and clamped at 900 — a larger value is capped rather than reset to the default.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timeoutSec;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Definition &&
    other.code == code &&
    _deepEquality.equals(other.envNames, envNames) &&
    other.environment == environment &&
    other.handler == handler &&
    other.image == image &&
    other.memoryLimit == memoryLimit &&
    other.name == name &&
    other.namespace == namespace &&
    other.runtime == runtime &&
    other.target == target &&
    other.timeoutSec == timeoutSec;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code == null ? 0 : code!.hashCode) +
    (envNames.hashCode) +
    (environment == null ? 0 : environment!.hashCode) +
    (handler == null ? 0 : handler!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (memoryLimit == null ? 0 : memoryLimit!.hashCode) +
    (name.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode) +
    (runtime == null ? 0 : runtime!.hashCode) +
    (target == null ? 0 : target!.hashCode) +
    (timeoutSec == null ? 0 : timeoutSec!.hashCode);

  @override
  String toString() => 'Definition[code=$code, envNames=$envNames, environment=$environment, handler=$handler, image=$image, memoryLimit=$memoryLimit, name=$name, namespace=$namespace, runtime=$runtime, target=$target, timeoutSec=$timeoutSec]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
      json[r'envNames'] = this.envNames;
    if (this.environment != null) {
      json[r'environment'] = this.environment;
    } else {
      json[r'environment'] = null;
    }
    if (this.handler != null) {
      json[r'handler'] = this.handler;
    } else {
      json[r'handler'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.memoryLimit != null) {
      json[r'memoryLimit'] = this.memoryLimit;
    } else {
      json[r'memoryLimit'] = null;
    }
      json[r'name'] = this.name;
    if (this.namespace != null) {
      json[r'namespace'] = this.namespace;
    } else {
      json[r'namespace'] = null;
    }
    if (this.runtime != null) {
      json[r'runtime'] = this.runtime;
    } else {
      json[r'runtime'] = null;
    }
    if (this.target != null) {
      json[r'target'] = this.target;
    } else {
      json[r'target'] = null;
    }
    if (this.timeoutSec != null) {
      json[r'timeoutSec'] = this.timeoutSec;
    } else {
      json[r'timeoutSec'] = null;
    }
    return json;
  }

  /// Returns a new [Definition] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Definition? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Definition[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Definition[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Definition(
        code: mapValueOfType<String>(json, r'code'),
        envNames: json[r'envNames'] is Iterable
            ? (json[r'envNames'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        environment: mapValueOfType<String>(json, r'environment'),
        handler: mapValueOfType<String>(json, r'handler'),
        image: mapValueOfType<String>(json, r'image'),
        memoryLimit: mapValueOfType<String>(json, r'memoryLimit'),
        name: mapValueOfType<String>(json, r'name')!,
        namespace: mapValueOfType<String>(json, r'namespace'),
        runtime: mapValueOfType<String>(json, r'runtime'),
        target: mapValueOfType<String>(json, r'target'),
        timeoutSec: mapValueOfType<int>(json, r'timeoutSec'),
      );
    }
    return null;
  }

  static List<Definition> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Definition>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Definition.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Definition> mapFromJson(dynamic json) {
    final map = <String, Definition>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Definition.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Definition-objects as value to a dart map
  static Map<String, List<Definition>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Definition>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Definition.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

