//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BuildRequest {
  /// Returns a new [BuildRequest] instance.
  BuildRequest({
    this.name,
    this.provider,
    this.source_,
    this.spec,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? spec;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BuildRequest &&
    other.name == name &&
    other.provider == provider &&
    other.source_ == source_ &&
    other.spec == spec;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (spec == null ? 0 : spec!.hashCode);

  @override
  String toString() => 'BuildRequest[name=$name, provider=$provider, source_=$source_, spec=$spec]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.spec != null) {
      json[r'spec'] = this.spec;
    } else {
      json[r'spec'] = null;
    }
    return json;
  }

  /// Returns a new [BuildRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BuildRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BuildRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BuildRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BuildRequest(
        name: mapValueOfType<String>(json, r'name'),
        provider: mapValueOfType<String>(json, r'provider'),
        source_: mapValueOfType<String>(json, r'source'),
        spec: mapValueOfType<String>(json, r'spec'),
      );
    }
    return null;
  }

  static List<BuildRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BuildRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BuildRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BuildRequest> mapFromJson(dynamic json) {
    final map = <String, BuildRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BuildRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BuildRequest-objects as value to a dart map
  static Map<String, List<BuildRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BuildRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BuildRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

