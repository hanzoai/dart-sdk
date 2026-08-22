//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LeaseIn {
  /// Returns a new [LeaseIn] instance.
  LeaseIn({
    this.class_,
    this.image,
    this.project,
    this.runtime,
    this.ttlSec,
  });
  /// Class is what the sandbox is FOR: \"exec\" for a code-interpreter call, \"dev\" for a workspace bound to a project, \"desktop\" for one with a screen. It decides the image, the working directory and the isolation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? class_;

  /// Image overrides the image the class would pick. Honoured only for a caller the policy admits, and the sandbox that comes back names the image it GOT.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

  /// Project binds the sandbox to one of the org's projects. Required for a dev or desktop class, which are single-attach per project; an exec sandbox carries none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  /// Runtime asks for an isolation: runc, gvisor, kata-clh or kata-fc. It is a REQUEST, not a guarantee — the sandbox that comes back carries the runtime it was actually given, which is the field to read.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? runtime;

  /// TTLSec is how long the lease runs before the reaper may take it, in seconds. Zero takes the class's own default.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ttlSec;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LeaseIn &&
    other.class_ == class_ &&
    other.image == image &&
    other.project == project &&
    other.runtime == runtime &&
    other.ttlSec == ttlSec;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (runtime == null ? 0 : runtime!.hashCode) +
    (ttlSec == null ? 0 : ttlSec!.hashCode);

  @override
  String toString() => 'LeaseIn[class_=$class_, image=$image, project=$project, runtime=$runtime, ttlSec=$ttlSec]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.class_ != null) {
      json[r'class'] = this.class_;
    } else {
      json[r'class'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    if (this.runtime != null) {
      json[r'runtime'] = this.runtime;
    } else {
      json[r'runtime'] = null;
    }
    if (this.ttlSec != null) {
      json[r'ttlSec'] = this.ttlSec;
    } else {
      json[r'ttlSec'] = null;
    }
    return json;
  }

  /// Returns a new [LeaseIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LeaseIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LeaseIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LeaseIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LeaseIn(
        class_: mapValueOfType<String>(json, r'class'),
        image: mapValueOfType<String>(json, r'image'),
        project: mapValueOfType<String>(json, r'project'),
        runtime: mapValueOfType<String>(json, r'runtime'),
        ttlSec: mapValueOfType<int>(json, r'ttlSec'),
      );
    }
    return null;
  }

  static List<LeaseIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LeaseIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LeaseIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LeaseIn> mapFromJson(dynamic json) {
    final map = <String, LeaseIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LeaseIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LeaseIn-objects as value to a dart map
  static Map<String, List<LeaseIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LeaseIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LeaseIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

