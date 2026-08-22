//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProjectsUploadGrant {
  /// Returns a new [ProjectsUploadGrant] instance.
  ProjectsUploadGrant({
    this.expiresAt,
    this.fields = const {},
    this.maxBytes,
    this.prefix,
    this.url,
  });
  /// ExpiresAt is when the grant stops being accepted, as Unix seconds. It is short-lived by design and is handed out ONCE, on the response that queues the deployment — a later read of that deployment does not carry it, so a grant cannot be fetched again after the build it was minted for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expiresAt;

  /// Fields are form values every POST must carry VERBATIM, alongside `key` and `file`. The signature covers them, so altering any one of them — including widening the key to reach outside the prefix — invalidates the grant rather than extending it.
  Map<String, String> fields;

  /// MaxBytes bounds ONE object, not the upload as a whole.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxBytes;

  /// Prefix is the only place this grant can write: the deployment's own key prefix. It authorizes WRITES ONLY, which is why completing a deployment reconciles the prefix against a manifest instead of letting CI delete.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prefix;

  /// URL is the address to POST each object to. It is signed for the PUBLIC endpoint, because the signature covers the host and CI posts from outside the cluster.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectsUploadGrant &&
    other.expiresAt == expiresAt &&
    _deepEquality.equals(other.fields, fields) &&
    other.maxBytes == maxBytes &&
    other.prefix == prefix &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (fields.hashCode) +
    (maxBytes == null ? 0 : maxBytes!.hashCode) +
    (prefix == null ? 0 : prefix!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'ProjectsUploadGrant[expiresAt=$expiresAt, fields=$fields, maxBytes=$maxBytes, prefix=$prefix, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt;
    } else {
      json[r'expiresAt'] = null;
    }
      json[r'fields'] = this.fields;
    if (this.maxBytes != null) {
      json[r'maxBytes'] = this.maxBytes;
    } else {
      json[r'maxBytes'] = null;
    }
    if (this.prefix != null) {
      json[r'prefix'] = this.prefix;
    } else {
      json[r'prefix'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [ProjectsUploadGrant] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectsUploadGrant? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectsUploadGrant[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectsUploadGrant[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectsUploadGrant(
        expiresAt: mapValueOfType<int>(json, r'expiresAt'),
        fields: mapCastOfType<String, String>(json, r'fields') ?? const {},
        maxBytes: mapValueOfType<int>(json, r'maxBytes'),
        prefix: mapValueOfType<String>(json, r'prefix'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<ProjectsUploadGrant> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectsUploadGrant>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectsUploadGrant.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectsUploadGrant> mapFromJson(dynamic json) {
    final map = <String, ProjectsUploadGrant>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectsUploadGrant.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectsUploadGrant-objects as value to a dart map
  static Map<String, List<ProjectsUploadGrant>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectsUploadGrant>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectsUploadGrant.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

