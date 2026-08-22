//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class VersionMessage {
  /// Returns a new [VersionMessage] instance.
  VersionMessage({
    this.buildDate,
    this.compiler,
    this.goVersion,
    this.platform,
    this.version,
  });
  /// BuildDate is the time THIS RESPONSE was generated, in RFC 3339 — not a build timestamp. There is no argocd build here to report one for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buildDate;

  /// Compiler is the constant \"gc\" the SPA expects; it is not read from this process.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? compiler;

  /// GoVersion is always empty.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? goVersion;

  /// Platform is the constant \"linux/amd64\" the SPA expects; it is not this process's own GOOS/GOARCH.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? platform;

  /// Version names the projection, \"hanzo-cd (projection)\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VersionMessage &&
    other.buildDate == buildDate &&
    other.compiler == compiler &&
    other.goVersion == goVersion &&
    other.platform == platform &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (buildDate == null ? 0 : buildDate!.hashCode) +
    (compiler == null ? 0 : compiler!.hashCode) +
    (goVersion == null ? 0 : goVersion!.hashCode) +
    (platform == null ? 0 : platform!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'VersionMessage[buildDate=$buildDate, compiler=$compiler, goVersion=$goVersion, platform=$platform, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.buildDate != null) {
      json[r'BuildDate'] = this.buildDate;
    } else {
      json[r'BuildDate'] = null;
    }
    if (this.compiler != null) {
      json[r'Compiler'] = this.compiler;
    } else {
      json[r'Compiler'] = null;
    }
    if (this.goVersion != null) {
      json[r'GoVersion'] = this.goVersion;
    } else {
      json[r'GoVersion'] = null;
    }
    if (this.platform != null) {
      json[r'Platform'] = this.platform;
    } else {
      json[r'Platform'] = null;
    }
    if (this.version != null) {
      json[r'Version'] = this.version;
    } else {
      json[r'Version'] = null;
    }
    return json;
  }

  /// Returns a new [VersionMessage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VersionMessage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VersionMessage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VersionMessage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VersionMessage(
        buildDate: mapValueOfType<String>(json, r'BuildDate'),
        compiler: mapValueOfType<String>(json, r'Compiler'),
        goVersion: mapValueOfType<String>(json, r'GoVersion'),
        platform: mapValueOfType<String>(json, r'Platform'),
        version: mapValueOfType<String>(json, r'Version'),
      );
    }
    return null;
  }

  static List<VersionMessage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VersionMessage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VersionMessage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VersionMessage> mapFromJson(dynamic json) {
    final map = <String, VersionMessage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VersionMessage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VersionMessage-objects as value to a dart map
  static Map<String, List<VersionMessage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VersionMessage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VersionMessage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

