//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BinarySpec {
  /// Returns a new [BinarySpec] instance.
  BinarySpec({
    this.image,
    this.ldflags,
    this.main,
    this.name,
    this.out_,
    this.platforms = const [],
    this.run,
  });
  /// Image is the toolchain image the recipe runs in, a Go bookworm image by default. It is the one field the GitHub lane ignores: there the runner IS the toolchain, and a cluster has to be told what a runner already is.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

  /// Ldflags are the Go linker flags, `-s -w` when the recipe names none, on one line. Go lane only.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ldflags;

  /// Main is the Go package to build, repo-relative (`.` or `./cmd/x`), and it selects the GO LANE. Defaults to `.` when neither lane is named; declaring it together with `run` is refused.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? main;

  /// Name is the artifact's base name: the prefix of every file published for this entry, and the name a host later asks for. It must match `^[A-Za-z0-9][A-Za-z0-9._-]{0,63}$`, which is what makes it safe as both a filename and a URL path segment.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Out is the glob of files `run` produced, relative to the repo root; matching nothing FAILS the build rather than publishing an empty entry. It expands unquoted, so it is bounded to path and glob characters. The Go lane names its own files and ignores this.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? out_;

  /// Platforms are the `<os>/<arch>` pairs the Go lane cross-compiles, [linux/amd64] by default. Each one publishes as `<name>-<os>-<arch>`, which is the shape a host resolves a binary BY — so the list is what a caller can ask for later.
  List<String> platforms;

  /// Run is any other toolchain's build command, run by `sh -c` in this entry's image, and it selects the OTHER LANE. Arbitrary shell is the point — it is the same trust as a Dockerfile RUN — which is why it executes with no object-store credential and no service-account token. It requires `out`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? run;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BinarySpec &&
    other.image == image &&
    other.ldflags == ldflags &&
    other.main == main &&
    other.name == name &&
    other.out_ == out_ &&
    _deepEquality.equals(other.platforms, platforms) &&
    other.run == run;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (image == null ? 0 : image!.hashCode) +
    (ldflags == null ? 0 : ldflags!.hashCode) +
    (main == null ? 0 : main!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (out_ == null ? 0 : out_!.hashCode) +
    (platforms.hashCode) +
    (run == null ? 0 : run!.hashCode);

  @override
  String toString() => 'BinarySpec[image=$image, ldflags=$ldflags, main=$main, name=$name, out_=$out_, platforms=$platforms, run=$run]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.ldflags != null) {
      json[r'ldflags'] = this.ldflags;
    } else {
      json[r'ldflags'] = null;
    }
    if (this.main != null) {
      json[r'main'] = this.main;
    } else {
      json[r'main'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.out_ != null) {
      json[r'out'] = this.out_;
    } else {
      json[r'out'] = null;
    }
      json[r'platforms'] = this.platforms;
    if (this.run != null) {
      json[r'run'] = this.run;
    } else {
      json[r'run'] = null;
    }
    return json;
  }

  /// Returns a new [BinarySpec] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BinarySpec? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BinarySpec[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BinarySpec[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BinarySpec(
        image: mapValueOfType<String>(json, r'image'),
        ldflags: mapValueOfType<String>(json, r'ldflags'),
        main: mapValueOfType<String>(json, r'main'),
        name: mapValueOfType<String>(json, r'name'),
        out_: mapValueOfType<String>(json, r'out'),
        platforms: json[r'platforms'] is Iterable
            ? (json[r'platforms'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        run: mapValueOfType<String>(json, r'run'),
      );
    }
    return null;
  }

  static List<BinarySpec> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BinarySpec>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BinarySpec.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BinarySpec> mapFromJson(dynamic json) {
    final map = <String, BinarySpec>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BinarySpec.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BinarySpec-objects as value to a dart map
  static Map<String, List<BinarySpec>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BinarySpec>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BinarySpec.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

