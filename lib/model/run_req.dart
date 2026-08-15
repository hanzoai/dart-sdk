//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RunReq {
  /// Returns a new [RunReq] instance.
  RunReq({
    this.env = const [],
    this.gpu,
    this.image,
    this.maxScale,
    this.minScale,
    this.name,
    this.port,
    this.runtime,
    this.shape,
  });

  /// Env is the run's environment. Keys must match `^[A-Za-z_][A-Za-z0-9_]*$`; a variable marked `secret: true` is sealed into KMS.
  List<EnvVarJSON> env;

  /// GPU is how many GPUs the run asks for; a negative value is 400.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? gpu;

  /// Image is the container image to run. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

  /// MaxScale above the floor declares an autoscaling ceiling; 0 means no autoscaler at all — a fixed run at the floor.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxScale;

  /// MinScale is the replica floor, clamped to the deployment's limit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? minScale;

  /// Name is the run's name, and the slug is derived from it. Required, and it must resolve to `^[a-z0-9]([a-z0-9-]{0,38}[a-z0-9])?$`. Re-running the same name updates that run in place.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Port is the container port the run listens on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? port;

  /// Runtime is accepted for the client contract and echoed nowhere: the image IS the runtime unit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? runtime;

  /// Shape is a compute size label, echoed back; sizing is the operator's default. Defaults to \"auto\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shape;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RunReq &&
    _deepEquality.equals(other.env, env) &&
    other.gpu == gpu &&
    other.image == image &&
    other.maxScale == maxScale &&
    other.minScale == minScale &&
    other.name == name &&
    other.port == port &&
    other.runtime == runtime &&
    other.shape == shape;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (env.hashCode) +
    (gpu == null ? 0 : gpu!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (maxScale == null ? 0 : maxScale!.hashCode) +
    (minScale == null ? 0 : minScale!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (port == null ? 0 : port!.hashCode) +
    (runtime == null ? 0 : runtime!.hashCode) +
    (shape == null ? 0 : shape!.hashCode);

  @override
  String toString() => 'RunReq[env=$env, gpu=$gpu, image=$image, maxScale=$maxScale, minScale=$minScale, name=$name, port=$port, runtime=$runtime, shape=$shape]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'env'] = this.env;
    if (this.gpu != null) {
      json[r'gpu'] = this.gpu;
    } else {
      json[r'gpu'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.maxScale != null) {
      json[r'maxScale'] = this.maxScale;
    } else {
      json[r'maxScale'] = null;
    }
    if (this.minScale != null) {
      json[r'minScale'] = this.minScale;
    } else {
      json[r'minScale'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.port != null) {
      json[r'port'] = this.port;
    } else {
      json[r'port'] = null;
    }
    if (this.runtime != null) {
      json[r'runtime'] = this.runtime;
    } else {
      json[r'runtime'] = null;
    }
    if (this.shape != null) {
      json[r'shape'] = this.shape;
    } else {
      json[r'shape'] = null;
    }
    return json;
  }

  /// Returns a new [RunReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RunReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RunReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RunReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RunReq(
        env: EnvVarJSON.listFromJson(json[r'env']),
        gpu: mapValueOfType<int>(json, r'gpu'),
        image: mapValueOfType<String>(json, r'image'),
        maxScale: mapValueOfType<int>(json, r'maxScale'),
        minScale: mapValueOfType<int>(json, r'minScale'),
        name: mapValueOfType<String>(json, r'name'),
        port: mapValueOfType<int>(json, r'port'),
        runtime: mapValueOfType<String>(json, r'runtime'),
        shape: mapValueOfType<String>(json, r'shape'),
      );
    }
    return null;
  }

  static List<RunReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RunReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RunReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RunReq> mapFromJson(dynamic json) {
    final map = <String, RunReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RunReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RunReq-objects as value to a dart map
  static Map<String, List<RunReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RunReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RunReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

