//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RunnerBuildReq {
  /// Returns a new [RunnerBuildReq] instance.
  RunnerBuildReq({
    this.arch,
    this.args = const {},
    this.binaries = const [],
    this.branch,
    this.bucket,
    this.context,
    this.dockerTarget,
    this.dockerfile,
    this.image,
    this.os,
    this.ref,
    this.repo,
    this.sha,
    this.tag,
  });
  /// Arch is the target architecture for the artifact lane.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? arch;

  /// Args are --build-arg values. They are what lets several images off ONE Dockerfile mean different things — the sandbox classes are three entries differing only by STAGE. Validated at the k8s choke point, with VERSION and REVISION taking precedence: those are receipts the builder derives from the tag and the commit, and a caller that could overwrite them could make an image lie about which commit it is.
  Map<String, String> args;

  /// Binaries selects the ARTIFACT lane (artifact.go): build what the repo's hanzo.yml `binaries:` block declares — a Go binary, an npm tarball, a Rust binary — and publish it to hanzoai/s3 instead of pushing an image. It is the same recipe hanzoai/ci reads, sent verbatim, so `image` is meaningless here and must be absent.
  List<BinarySpec> binaries;

  /// Branch is the branch to build when no SHA or Ref is given.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? branch;

  /// Bucket mirrors hanzo.yml's `bucket:` — where the artifact lane publishes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bucket;

  /// Context is the build context path within the repo.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? context;

  /// DockerTarget is the multi-stage build target to stop at.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dockerTarget;

  /// Dockerfile is the path to build from; empty uses the zero-config frontend.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dockerfile;

  /// Image is the output image ref to push. Required on the image lane, and it must target a registry namespace the caller's org owns.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

  /// OS is the target operating system for the artifact lane.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? os;

  /// Ref is the git ref to build when no SHA is given.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ref;

  /// Repo is the repository clone URL to build. Required on the image lane.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  /// SHA is the commit to pin; it wins over Ref and Branch.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sha;

  /// Tag is the publish path segment, so both entry points write ONE index at ONE URL. It defaults to the pinned ref, and must be named explicitly for a branch.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tag;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RunnerBuildReq &&
    other.arch == arch &&
    _deepEquality.equals(other.args, args) &&
    _deepEquality.equals(other.binaries, binaries) &&
    other.branch == branch &&
    other.bucket == bucket &&
    other.context == context &&
    other.dockerTarget == dockerTarget &&
    other.dockerfile == dockerfile &&
    other.image == image &&
    other.os == os &&
    other.ref == ref &&
    other.repo == repo &&
    other.sha == sha &&
    other.tag == tag;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (arch == null ? 0 : arch!.hashCode) +
    (args.hashCode) +
    (binaries.hashCode) +
    (branch == null ? 0 : branch!.hashCode) +
    (bucket == null ? 0 : bucket!.hashCode) +
    (context == null ? 0 : context!.hashCode) +
    (dockerTarget == null ? 0 : dockerTarget!.hashCode) +
    (dockerfile == null ? 0 : dockerfile!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (os == null ? 0 : os!.hashCode) +
    (ref == null ? 0 : ref!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (sha == null ? 0 : sha!.hashCode) +
    (tag == null ? 0 : tag!.hashCode);

  @override
  String toString() => 'RunnerBuildReq[arch=$arch, args=$args, binaries=$binaries, branch=$branch, bucket=$bucket, context=$context, dockerTarget=$dockerTarget, dockerfile=$dockerfile, image=$image, os=$os, ref=$ref, repo=$repo, sha=$sha, tag=$tag]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.arch != null) {
      json[r'arch'] = this.arch;
    } else {
      json[r'arch'] = null;
    }
      json[r'args'] = this.args;
      json[r'binaries'] = this.binaries;
    if (this.branch != null) {
      json[r'branch'] = this.branch;
    } else {
      json[r'branch'] = null;
    }
    if (this.bucket != null) {
      json[r'bucket'] = this.bucket;
    } else {
      json[r'bucket'] = null;
    }
    if (this.context != null) {
      json[r'context'] = this.context;
    } else {
      json[r'context'] = null;
    }
    if (this.dockerTarget != null) {
      json[r'dockerTarget'] = this.dockerTarget;
    } else {
      json[r'dockerTarget'] = null;
    }
    if (this.dockerfile != null) {
      json[r'dockerfile'] = this.dockerfile;
    } else {
      json[r'dockerfile'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.os != null) {
      json[r'os'] = this.os;
    } else {
      json[r'os'] = null;
    }
    if (this.ref != null) {
      json[r'ref'] = this.ref;
    } else {
      json[r'ref'] = null;
    }
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    if (this.sha != null) {
      json[r'sha'] = this.sha;
    } else {
      json[r'sha'] = null;
    }
    if (this.tag != null) {
      json[r'tag'] = this.tag;
    } else {
      json[r'tag'] = null;
    }
    return json;
  }

  /// Returns a new [RunnerBuildReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RunnerBuildReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RunnerBuildReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RunnerBuildReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RunnerBuildReq(
        arch: mapValueOfType<String>(json, r'arch'),
        args: mapCastOfType<String, String>(json, r'args') ?? const {},
        binaries: BinarySpec.listFromJson(json[r'binaries']),
        branch: mapValueOfType<String>(json, r'branch'),
        bucket: mapValueOfType<String>(json, r'bucket'),
        context: mapValueOfType<String>(json, r'context'),
        dockerTarget: mapValueOfType<String>(json, r'dockerTarget'),
        dockerfile: mapValueOfType<String>(json, r'dockerfile'),
        image: mapValueOfType<String>(json, r'image'),
        os: mapValueOfType<String>(json, r'os'),
        ref: mapValueOfType<String>(json, r'ref'),
        repo: mapValueOfType<String>(json, r'repo'),
        sha: mapValueOfType<String>(json, r'sha'),
        tag: mapValueOfType<String>(json, r'tag'),
      );
    }
    return null;
  }

  static List<RunnerBuildReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RunnerBuildReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RunnerBuildReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RunnerBuildReq> mapFromJson(dynamic json) {
    final map = <String, RunnerBuildReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RunnerBuildReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RunnerBuildReq-objects as value to a dart map
  static Map<String, List<RunnerBuildReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RunnerBuildReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RunnerBuildReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

