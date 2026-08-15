//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GrantRequest {
  /// Returns a new [GrantRequest] instance.
  GrantRequest({
    this.id,
    this.project,
    this.publishable,
    this.sha256,
    this.trainable,
    this.visibility,
  });

  /// an experiment (run) stable id
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? publishable;

  /// OR an artifact content hash
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sha256;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? trainable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? visibility;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrantRequest &&
    other.id == id &&
    other.project == project &&
    other.publishable == publishable &&
    other.sha256 == sha256 &&
    other.trainable == trainable &&
    other.visibility == visibility;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (publishable == null ? 0 : publishable!.hashCode) +
    (sha256 == null ? 0 : sha256!.hashCode) +
    (trainable == null ? 0 : trainable!.hashCode) +
    (visibility == null ? 0 : visibility!.hashCode);

  @override
  String toString() => 'GrantRequest[id=$id, project=$project, publishable=$publishable, sha256=$sha256, trainable=$trainable, visibility=$visibility]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    if (this.publishable != null) {
      json[r'publishable'] = this.publishable;
    } else {
      json[r'publishable'] = null;
    }
    if (this.sha256 != null) {
      json[r'sha256'] = this.sha256;
    } else {
      json[r'sha256'] = null;
    }
    if (this.trainable != null) {
      json[r'trainable'] = this.trainable;
    } else {
      json[r'trainable'] = null;
    }
    if (this.visibility != null) {
      json[r'visibility'] = this.visibility;
    } else {
      json[r'visibility'] = null;
    }
    return json;
  }

  /// Returns a new [GrantRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GrantRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GrantRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GrantRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GrantRequest(
        id: mapValueOfType<String>(json, r'id'),
        project: mapValueOfType<String>(json, r'project'),
        publishable: mapValueOfType<bool>(json, r'publishable'),
        sha256: mapValueOfType<String>(json, r'sha256'),
        trainable: mapValueOfType<bool>(json, r'trainable'),
        visibility: mapValueOfType<String>(json, r'visibility'),
      );
    }
    return null;
  }

  static List<GrantRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GrantRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GrantRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GrantRequest> mapFromJson(dynamic json) {
    final map = <String, GrantRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GrantRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GrantRequest-objects as value to a dart map
  static Map<String, List<GrantRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GrantRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GrantRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

