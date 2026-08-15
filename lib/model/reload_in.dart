//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ReloadIn {
  /// Returns a new [ReloadIn] instance.
  ReloadIn({
    this.name,
    this.scope,
    this.sum,
    this.url,
    this.version,
  });

  /// Name is the app, from the path. It must be one the manifest declares.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Scope \"host\" applies here only. Default \"fleet\" rolls it out one host at a time, halting on the first host that fails to come up.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scope;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sum;

  /// URL is the artifact directly, for an origin with no index. Sum is its hex SHA-256 and is REQUIRED with it: zip refuses an unverified download, and so does this.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  /// Version is a release tag, resolved to a URL and digest through the origin's binaries.json index — the same index CI publishes, so there is no second table mapping versions to digests.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReloadIn &&
    other.name == name &&
    other.scope == scope &&
    other.sum == sum &&
    other.url == url &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (sum == null ? 0 : sum!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'ReloadIn[name=$name, scope=$scope, sum=$sum, url=$url, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    if (this.sum != null) {
      json[r'sum'] = this.sum;
    } else {
      json[r'sum'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [ReloadIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReloadIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReloadIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReloadIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReloadIn(
        name: mapValueOfType<String>(json, r'name'),
        scope: mapValueOfType<String>(json, r'scope'),
        sum: mapValueOfType<String>(json, r'sum'),
        url: mapValueOfType<String>(json, r'url'),
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<ReloadIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReloadIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReloadIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReloadIn> mapFromJson(dynamic json) {
    final map = <String, ReloadIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReloadIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReloadIn-objects as value to a dart map
  static Map<String, List<ReloadIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReloadIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReloadIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

