//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AiMCPSurface {
  /// Returns a new [AiMCPSurface] instance.
  AiMCPSurface({
    this.apps = const [],
    this.names = const [],
    this.tools,
  });
  /// Apps is one row per subsystem this deployment composes, in manifest order.
  List<AiMCPApp> apps;

  /// Names are this process's own tool names, present only when the query asked for them.
  List<String> names;

  /// Tools is how many tools THIS PROCESS's door carries: its own typed-op registry, projected. It is the only number a subsystem can state honestly — what the FLEET's door carries is a question only the host can ask, and it asks it by asking every subsystem (POST /v1/mcp, tools/list).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tools;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AiMCPSurface &&
    _deepEquality.equals(other.apps, apps) &&
    _deepEquality.equals(other.names, names) &&
    other.tools == tools;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (apps.hashCode) +
    (names.hashCode) +
    (tools == null ? 0 : tools!.hashCode);

  @override
  String toString() => 'AiMCPSurface[apps=$apps, names=$names, tools=$tools]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'apps'] = this.apps;
      json[r'names'] = this.names;
    if (this.tools != null) {
      json[r'tools'] = this.tools;
    } else {
      json[r'tools'] = null;
    }
    return json;
  }

  /// Returns a new [AiMCPSurface] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AiMCPSurface? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AiMCPSurface[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AiMCPSurface[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AiMCPSurface(
        apps: AiMCPApp.listFromJson(json[r'apps']),
        names: json[r'names'] is Iterable
            ? (json[r'names'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        tools: mapValueOfType<int>(json, r'tools'),
      );
    }
    return null;
  }

  static List<AiMCPSurface> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AiMCPSurface>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AiMCPSurface.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AiMCPSurface> mapFromJson(dynamic json) {
    final map = <String, AiMCPSurface>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AiMCPSurface.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AiMCPSurface-objects as value to a dart map
  static Map<String, List<AiMCPSurface>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AiMCPSurface>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AiMCPSurface.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

