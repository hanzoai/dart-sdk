//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CreateReq {
  /// Returns a new [CreateReq] instance.
  CreateReq({
    this.description,
    this.name,
    this.project,
    this.public,
  });
  /// Description is a free-form blurb, max 4KiB.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Name is the repo's handle, unique within the scope, and the last segment of both clone URLs. Must match ^[A-Za-z0-9][A-Za-z0-9._-]{0,63}$; a trailing \".git\" is stripped first. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Project narrows the repo to a sub-scope of the org. Omit it to use the caller's own X-Project-Id scope; it can never widen past the caller's org.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  /// Public grants ANONYMOUS read (fetch) only; push and the whole control plane stay org-authed. Defaults to false.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? public;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateReq &&
    other.description == description &&
    other.name == name &&
    other.project == project &&
    other.public == public;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (description == null ? 0 : description!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (public == null ? 0 : public!.hashCode);

  @override
  String toString() => 'CreateReq[description=$description, name=$name, project=$project, public=$public]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    if (this.public != null) {
      json[r'public'] = this.public;
    } else {
      json[r'public'] = null;
    }
    return json;
  }

  /// Returns a new [CreateReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateReq(
        description: mapValueOfType<String>(json, r'description'),
        name: mapValueOfType<String>(json, r'name'),
        project: mapValueOfType<String>(json, r'project'),
        public: mapValueOfType<bool>(json, r'public'),
      );
    }
    return null;
  }

  static List<CreateReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateReq> mapFromJson(dynamic json) {
    final map = <String, CreateReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateReq-objects as value to a dart map
  static Map<String, List<CreateReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

