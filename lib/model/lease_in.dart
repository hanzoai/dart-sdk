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
    this.id,
    this.project,
    this.runtime,
    this.ttlSec,
  });

  /// Class is what KIND of computer to lease, and the set is closed:   exec     a throwaway one that keeps nothing. Seconds to minutes.  dev      a coding one, with the project's own disk attached. Hours.  desktop  a dev one that also has a screen.  android  a desktop with a phone running on that screen.  Empty leases an `exec`, which is the right answer for running a program and the wrong one for working on a repository, because it keeps nothing.  An `android` needs a node that can virtualise a CPU, so it is the one class a deployment may not be able to place. Where the fleet has none, the lease succeeds and the pod stays Pending naming the device it is waiting for — which is the honest answer, because the alternative is an emulator running on an interpreted CPU and never finishing its boot.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? class_;

  /// ID names a sandbox to RESUME, and is the id an earlier lease answered with. Empty asks for a new one. A caller that holds an id and omits it does not get a second view of the same computer, it gets a second computer.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Project names the disk to attach, and is REQUIRED for every class but `exec`.  One live sandbox per project: the disk attaches to one computer at a time, so a second lease over a project that already has one is refused by name rather than handed a silently empty disk.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  /// Runtime is the isolation boundary asked for: `gvisor` shares a filesystem and holds a project volume, `kata-fc` is a microVM that boots slower and reads files faster but has no shared filesystem at all. Empty asks for the fleet's default, which is the right answer unless you are measuring.  It is a REQUEST. The owner decides, and refuses a combination it cannot honour — a volume under a runtime with no shared filesystem would write into a tmpfs and lose the bytes at exit. Read Leased.Runtime for what the sandbox actually got.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? runtime;

  /// TTLSec bounds the lease in seconds. Unset takes the class default. Nothing runs forever, because a sandbox is somebody else's code on our nodes.
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
    other.id == id &&
    other.project == project &&
    other.runtime == runtime &&
    other.ttlSec == ttlSec;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (runtime == null ? 0 : runtime!.hashCode) +
    (ttlSec == null ? 0 : ttlSec!.hashCode);

  @override
  String toString() => 'LeaseIn[class_=$class_, id=$id, project=$project, runtime=$runtime, ttlSec=$ttlSec]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.class_ != null) {
      json[r'class'] = this.class_;
    } else {
      json[r'class'] = null;
    }
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
        id: mapValueOfType<String>(json, r'id'),
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

