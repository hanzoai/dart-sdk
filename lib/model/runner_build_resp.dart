//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RunnerBuildResp {
  /// Returns a new [RunnerBuildResp] instance.
  RunnerBuildResp({
    this.buildJobId,
    this.image,
    this.index,
    this.runnerPool,
    this.status,
    this.target,
  });

  /// BuildJobID is the queued build's id, and what a release is followed by.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buildJobId;

  /// Image is the ref the image lane will push.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

  /// Index is the binaries.json URL the artifact lane will publish.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? index;

  /// RunnerPool is the runner class the build was placed on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? runnerPool;

  /// Status is `queued` for an ordinary build, `releasing` for a self-publish.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Target is the multi-stage build target, echoed back.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? target;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RunnerBuildResp &&
    other.buildJobId == buildJobId &&
    other.image == image &&
    other.index == index &&
    other.runnerPool == runnerPool &&
    other.status == status &&
    other.target == target;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (buildJobId == null ? 0 : buildJobId!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (index == null ? 0 : index!.hashCode) +
    (runnerPool == null ? 0 : runnerPool!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (target == null ? 0 : target!.hashCode);

  @override
  String toString() => 'RunnerBuildResp[buildJobId=$buildJobId, image=$image, index=$index, runnerPool=$runnerPool, status=$status, target=$target]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.buildJobId != null) {
      json[r'buildJobId'] = this.buildJobId;
    } else {
      json[r'buildJobId'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.index != null) {
      json[r'index'] = this.index;
    } else {
      json[r'index'] = null;
    }
    if (this.runnerPool != null) {
      json[r'runnerPool'] = this.runnerPool;
    } else {
      json[r'runnerPool'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.target != null) {
      json[r'target'] = this.target;
    } else {
      json[r'target'] = null;
    }
    return json;
  }

  /// Returns a new [RunnerBuildResp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RunnerBuildResp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RunnerBuildResp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RunnerBuildResp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RunnerBuildResp(
        buildJobId: mapValueOfType<String>(json, r'buildJobId'),
        image: mapValueOfType<String>(json, r'image'),
        index: mapValueOfType<String>(json, r'index'),
        runnerPool: mapValueOfType<String>(json, r'runnerPool'),
        status: mapValueOfType<String>(json, r'status'),
        target: mapValueOfType<String>(json, r'target'),
      );
    }
    return null;
  }

  static List<RunnerBuildResp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RunnerBuildResp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RunnerBuildResp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RunnerBuildResp> mapFromJson(dynamic json) {
    final map = <String, RunnerBuildResp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RunnerBuildResp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RunnerBuildResp-objects as value to a dart map
  static Map<String, List<RunnerBuildResp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RunnerBuildResp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RunnerBuildResp.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

