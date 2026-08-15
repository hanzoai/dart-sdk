//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Status {
  /// Returns a new [Status] instance.
  Status({
    this.addr,
    this.disabled,
    this.name,
    this.pid,
    this.prefix,
    this.prefixes = const [],
    this.reloads,
    this.restarts,
    this.running,
    this.since,
    this.source_,
    this.usage,
    this.version,
  });

  /// Addr is the socket or address serving it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? addr;

  /// Disabled is true when Unload stopped it deliberately, as opposed to it having crashed. Both answer 503, so without this an operator cannot tell a maintenance window from an outage — and would page for the former.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? disabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// PID is the child process, or 0 when this host did not start it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pid;

  /// Prefix is the FIRST subtree this plugin answers — the one a log line names it by. Prefixes is every subtree, and a plugin may own several. Reporting only the first would understate the blast radius of taking this plugin down, which is the question a fleet view exists to answer.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prefix;

  List<String> prefixes;

  /// Reloads counts successful swaps since Load. A climbing number on one host and not its peers is the signal that a rollout is uneven.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? reloads;

  /// Restarts counts times the supervisor brought this plugin back after it died on its own. Distinct from Reloads, which are deliberate: a nonzero Restarts is a plugin crashing, and a climbing one is a crash loop.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? restarts;

  /// Running is false after Unload, or after a child exited and no Reload has replaced it. Its routes stay registered and answer 503, so a false here is the difference between \"not deployed\" and \"deployed but down\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? running;

  /// Since is when the CURRENT instance started — it resets on Reload, so it reports the age of what is running, not of the mount.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? since;

  /// Source is where the binary came from: \"embedded\", \"path\", \"url\", or \"remote\" for an instance this host did not start.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Usage is what this plugin costs right now, read from the kernel.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Usage? usage;

  /// Version is the artifact's SHA-256 when it was installed from a URL — the only version identifier that cannot drift from the bits actually running, since it IS the bits. Empty for the other sources.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Status &&
    other.addr == addr &&
    other.disabled == disabled &&
    other.name == name &&
    other.pid == pid &&
    other.prefix == prefix &&
    _deepEquality.equals(other.prefixes, prefixes) &&
    other.reloads == reloads &&
    other.restarts == restarts &&
    other.running == running &&
    other.since == since &&
    other.source_ == source_ &&
    other.usage == usage &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (addr == null ? 0 : addr!.hashCode) +
    (disabled == null ? 0 : disabled!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (pid == null ? 0 : pid!.hashCode) +
    (prefix == null ? 0 : prefix!.hashCode) +
    (prefixes.hashCode) +
    (reloads == null ? 0 : reloads!.hashCode) +
    (restarts == null ? 0 : restarts!.hashCode) +
    (running == null ? 0 : running!.hashCode) +
    (since == null ? 0 : since!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (usage == null ? 0 : usage!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'Status[addr=$addr, disabled=$disabled, name=$name, pid=$pid, prefix=$prefix, prefixes=$prefixes, reloads=$reloads, restarts=$restarts, running=$running, since=$since, source_=$source_, usage=$usage, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.addr != null) {
      json[r'addr'] = this.addr;
    } else {
      json[r'addr'] = null;
    }
    if (this.disabled != null) {
      json[r'disabled'] = this.disabled;
    } else {
      json[r'disabled'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.pid != null) {
      json[r'pid'] = this.pid;
    } else {
      json[r'pid'] = null;
    }
    if (this.prefix != null) {
      json[r'prefix'] = this.prefix;
    } else {
      json[r'prefix'] = null;
    }
      json[r'prefixes'] = this.prefixes;
    if (this.reloads != null) {
      json[r'reloads'] = this.reloads;
    } else {
      json[r'reloads'] = null;
    }
    if (this.restarts != null) {
      json[r'restarts'] = this.restarts;
    } else {
      json[r'restarts'] = null;
    }
    if (this.running != null) {
      json[r'running'] = this.running;
    } else {
      json[r'running'] = null;
    }
    if (this.since != null) {
      json[r'since'] = this.since!.toUtc().toIso8601String();
    } else {
      json[r'since'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.usage != null) {
      json[r'usage'] = this.usage;
    } else {
      json[r'usage'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [Status] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Status? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Status[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Status[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Status(
        addr: mapValueOfType<String>(json, r'addr'),
        disabled: mapValueOfType<bool>(json, r'disabled'),
        name: mapValueOfType<String>(json, r'name'),
        pid: mapValueOfType<int>(json, r'pid'),
        prefix: mapValueOfType<String>(json, r'prefix'),
        prefixes: json[r'prefixes'] is Iterable
            ? (json[r'prefixes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        reloads: mapValueOfType<int>(json, r'reloads'),
        restarts: mapValueOfType<int>(json, r'restarts'),
        running: mapValueOfType<bool>(json, r'running'),
        since: mapDateTime(json, r'since', r''),
        source_: mapValueOfType<String>(json, r'source'),
        usage: Usage.fromJson(json[r'usage']),
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<Status> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Status>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Status.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Status> mapFromJson(dynamic json) {
    final map = <String, Status>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Status.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Status-objects as value to a dart map
  static Map<String, List<Status>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Status>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Status.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

