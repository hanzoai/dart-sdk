//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BotRun {
  /// Returns a new [BotRun] instance.
  BotRun({
    this.runId,
    this.sessionUrl,
    this.startedAt,
    this.status,
    this.surface,
    this.task,
  });
  /// RunID is the run's id in the bot runtime, and the node id its live VNC session is registered under.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? runId;

  /// SessionURL is the live session the hanzo.app /vnc panel embeds to watch or attach to this run. Derived here from the run id, never sent by the runtime.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sessionUrl;

  /// StartedAt is when the run began, RFC 3339, as the runtime stamped it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? startedAt;

  /// Status is the run's state as the runtime reports it; \"running\" when the runtime names none of its own.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Surface is what the bot drives: the desktop or terminal sandbox it runs in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? surface;

  /// Task is the instruction the bot is executing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? task;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BotRun &&
    other.runId == runId &&
    other.sessionUrl == sessionUrl &&
    other.startedAt == startedAt &&
    other.status == status &&
    other.surface == surface &&
    other.task == task;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (runId == null ? 0 : runId!.hashCode) +
    (sessionUrl == null ? 0 : sessionUrl!.hashCode) +
    (startedAt == null ? 0 : startedAt!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (surface == null ? 0 : surface!.hashCode) +
    (task == null ? 0 : task!.hashCode);

  @override
  String toString() => 'BotRun[runId=$runId, sessionUrl=$sessionUrl, startedAt=$startedAt, status=$status, surface=$surface, task=$task]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.runId != null) {
      json[r'runId'] = this.runId;
    } else {
      json[r'runId'] = null;
    }
    if (this.sessionUrl != null) {
      json[r'sessionUrl'] = this.sessionUrl;
    } else {
      json[r'sessionUrl'] = null;
    }
    if (this.startedAt != null) {
      json[r'startedAt'] = this.startedAt;
    } else {
      json[r'startedAt'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.surface != null) {
      json[r'surface'] = this.surface;
    } else {
      json[r'surface'] = null;
    }
    if (this.task != null) {
      json[r'task'] = this.task;
    } else {
      json[r'task'] = null;
    }
    return json;
  }

  /// Returns a new [BotRun] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BotRun? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BotRun[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BotRun[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BotRun(
        runId: mapValueOfType<String>(json, r'runId'),
        sessionUrl: mapValueOfType<String>(json, r'sessionUrl'),
        startedAt: mapValueOfType<String>(json, r'startedAt'),
        status: mapValueOfType<String>(json, r'status'),
        surface: mapValueOfType<String>(json, r'surface'),
        task: mapValueOfType<String>(json, r'task'),
      );
    }
    return null;
  }

  static List<BotRun> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BotRun>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BotRun.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BotRun> mapFromJson(dynamic json) {
    final map = <String, BotRun>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BotRun.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BotRun-objects as value to a dart map
  static Map<String, List<BotRun>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BotRun>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BotRun.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

