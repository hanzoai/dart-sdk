//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class MCPPackage {
  /// Returns a new [MCPPackage] instance.
  MCPPackage({
    this.identifier,
    this.registry,
    this.runtime,
    this.transport,
    this.version,
  });

  /// Identifier is the package name or download URL.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? identifier;

  /// Registry is where the package is fetched from: npm, pypi, oci, nuget, mcpb.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? registry;

  /// Runtime is the publisher's hint for what launches it: npx, uvx, docker.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? runtime;

  /// Transport is what the launched process speaks: usually \"stdio\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? transport;

  /// Version is the exact published package version.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MCPPackage &&
    other.identifier == identifier &&
    other.registry == registry &&
    other.runtime == runtime &&
    other.transport == transport &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (identifier == null ? 0 : identifier!.hashCode) +
    (registry == null ? 0 : registry!.hashCode) +
    (runtime == null ? 0 : runtime!.hashCode) +
    (transport == null ? 0 : transport!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'MCPPackage[identifier=$identifier, registry=$registry, runtime=$runtime, transport=$transport, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.identifier != null) {
      json[r'identifier'] = this.identifier;
    } else {
      json[r'identifier'] = null;
    }
    if (this.registry != null) {
      json[r'registry'] = this.registry;
    } else {
      json[r'registry'] = null;
    }
    if (this.runtime != null) {
      json[r'runtime'] = this.runtime;
    } else {
      json[r'runtime'] = null;
    }
    if (this.transport != null) {
      json[r'transport'] = this.transport;
    } else {
      json[r'transport'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [MCPPackage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MCPPackage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MCPPackage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MCPPackage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MCPPackage(
        identifier: mapValueOfType<String>(json, r'identifier'),
        registry: mapValueOfType<String>(json, r'registry'),
        runtime: mapValueOfType<String>(json, r'runtime'),
        transport: mapValueOfType<String>(json, r'transport'),
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<MCPPackage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MCPPackage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MCPPackage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MCPPackage> mapFromJson(dynamic json) {
    final map = <String, MCPPackage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MCPPackage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MCPPackage-objects as value to a dart map
  static Map<String, List<MCPPackage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MCPPackage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MCPPackage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

