//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class JourneyStep {
  /// Returns a new [JourneyStep] instance.
  JourneyStep({
    this.args = const {},
    this.deps = const [],
    this.detail,
    this.draft,
    this.draftInto,
    this.enabled,
    this.id,
    this.section,
    this.signal,
    this.title,
    this.tool,
  });
  /// Args are the tool's default arguments, merged under whatever the caller passes at run time, so a step ships with the arguments that make it work.
  Map<String, Object> args;

  /// Dependencies are step ids that must be done/skipped before this step is available. The wire key is `deps` (the blueprint contract); the Go field keeps its descriptive name.
  List<String> deps;

  /// Detail is the juncture — what the Guide explains, or asks for, at this step.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? detail;

  /// Draft, when set, is the prompt the embedded AI answers first; its output is folded into one of Args before the tool runs, so the model writes the content and the tool only delivers it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? draft;

  /// DraftInto names the argument the drafted text lands in. Empty means \"brief\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? draftInto;

  /// Enabled is the admin on/off lever. A NIL pointer reads as ENABLED (absence == on): a legacy/org curriculum that omits the field keeps every step, and only an explicit `enabled: false` (an admin disable) drops a step from the journey. See on() in blueprint.go and the Blueprint.Curriculum() projection.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  /// ID is the stable slug the whole plane addresses this step by — the value in `deps`, in `next`, in the progress rows, and in the URL of every step route. Renaming it orphans an org's recorded progress for this step.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Section is the id of the phase this step groups under. A disabled section takes its steps out of the journey with it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? section;

  /// Signal, when set, names a machine detector (detect.go). When the detector reports the org's real state present, the step auto-marks done.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? signal;

  /// Title is the one-line quest as a person reads it in the checklist.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// Tool, when set, names the MCP tool the Business AI runs for \"do it for me\". A step with no tool can only be completed by a person; it is the field the `automatable` flag on every projection of this step is derived from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tool;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JourneyStep &&
    _deepEquality.equals(other.args, args) &&
    _deepEquality.equals(other.deps, deps) &&
    other.detail == detail &&
    other.draft == draft &&
    other.draftInto == draftInto &&
    other.enabled == enabled &&
    other.id == id &&
    other.section == section &&
    other.signal == signal &&
    other.title == title &&
    other.tool == tool;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (args.hashCode) +
    (deps.hashCode) +
    (detail == null ? 0 : detail!.hashCode) +
    (draft == null ? 0 : draft!.hashCode) +
    (draftInto == null ? 0 : draftInto!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (section == null ? 0 : section!.hashCode) +
    (signal == null ? 0 : signal!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (tool == null ? 0 : tool!.hashCode);

  @override
  String toString() => 'JourneyStep[args=$args, deps=$deps, detail=$detail, draft=$draft, draftInto=$draftInto, enabled=$enabled, id=$id, section=$section, signal=$signal, title=$title, tool=$tool]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'args'] = this.args;
      json[r'deps'] = this.deps;
    if (this.detail != null) {
      json[r'detail'] = this.detail;
    } else {
      json[r'detail'] = null;
    }
    if (this.draft != null) {
      json[r'draft'] = this.draft;
    } else {
      json[r'draft'] = null;
    }
    if (this.draftInto != null) {
      json[r'draftInto'] = this.draftInto;
    } else {
      json[r'draftInto'] = null;
    }
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.section != null) {
      json[r'section'] = this.section;
    } else {
      json[r'section'] = null;
    }
    if (this.signal != null) {
      json[r'signal'] = this.signal;
    } else {
      json[r'signal'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.tool != null) {
      json[r'tool'] = this.tool;
    } else {
      json[r'tool'] = null;
    }
    return json;
  }

  /// Returns a new [JourneyStep] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JourneyStep? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JourneyStep[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JourneyStep[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JourneyStep(
        args: mapCastOfType<String, Object>(json, r'args') ?? const {},
        deps: json[r'deps'] is Iterable
            ? (json[r'deps'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        detail: mapValueOfType<String>(json, r'detail'),
        draft: mapValueOfType<String>(json, r'draft'),
        draftInto: mapValueOfType<String>(json, r'draftInto'),
        enabled: mapValueOfType<bool>(json, r'enabled'),
        id: mapValueOfType<String>(json, r'id'),
        section: mapValueOfType<String>(json, r'section'),
        signal: mapValueOfType<String>(json, r'signal'),
        title: mapValueOfType<String>(json, r'title'),
        tool: mapValueOfType<String>(json, r'tool'),
      );
    }
    return null;
  }

  static List<JourneyStep> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JourneyStep>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JourneyStep.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JourneyStep> mapFromJson(dynamic json) {
    final map = <String, JourneyStep>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JourneyStep.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JourneyStep-objects as value to a dart map
  static Map<String, List<JourneyStep>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JourneyStep>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JourneyStep.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

