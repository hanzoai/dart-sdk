//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class StepView {
  /// Returns a new [StepView] instance.
  StepView({
    this.args = const {},
    this.automatable,
    this.available,
    this.blockedBy = const [],
    this.deps = const [],
    this.detail,
    this.draft,
    this.draftInto,
    this.enabled,
    this.id,
    this.section,
    this.signal,
    this.source_,
    this.state,
    this.title,
    this.tool,
  });

  Map<String, Object> args;

  /// Automatable is true when the Business AI can run this step (it names a tool).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? automatable;

  /// Available is true when every dependency is done or skipped.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? available;

  /// BlockedBy lists the unfinished dependencies keeping the step unavailable.
  List<String> blockedBy;

  /// Dependencies are step ids that must be done/skipped before this step is available. The wire key is `deps` (the blueprint contract).
  List<String> deps;

  /// Detail is the prose/juncture — what the Guide asks or explains here.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? detail;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? draft;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? draftInto;

  /// Enabled is the admin on/off lever; absent reads as enabled.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  /// ID is the step's id, as it appears in the journey (e.g. \"gsuite\").
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Section is the phase (section id) this step groups under.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? section;

  /// Signal names the machine detector that auto-marks this step done.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? signal;

  /// Source records what marked the state: manual, auto (detected) or agent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// State is the step's per-org lifecycle state: todo|in_progress|done|skipped.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// Tool is the MCP tool the Business AI runs for \"do it for me\"; Args are its default arguments, Draft an optional AI prompt whose output fills the DraftInto arg (default \"brief\").
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tool;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StepView &&
    _deepEquality.equals(other.args, args) &&
    other.automatable == automatable &&
    other.available == available &&
    _deepEquality.equals(other.blockedBy, blockedBy) &&
    _deepEquality.equals(other.deps, deps) &&
    other.detail == detail &&
    other.draft == draft &&
    other.draftInto == draftInto &&
    other.enabled == enabled &&
    other.id == id &&
    other.section == section &&
    other.signal == signal &&
    other.source_ == source_ &&
    other.state == state &&
    other.title == title &&
    other.tool == tool;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (args.hashCode) +
    (automatable == null ? 0 : automatable!.hashCode) +
    (available == null ? 0 : available!.hashCode) +
    (blockedBy.hashCode) +
    (deps.hashCode) +
    (detail == null ? 0 : detail!.hashCode) +
    (draft == null ? 0 : draft!.hashCode) +
    (draftInto == null ? 0 : draftInto!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (section == null ? 0 : section!.hashCode) +
    (signal == null ? 0 : signal!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (state == null ? 0 : state!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (tool == null ? 0 : tool!.hashCode);

  @override
  String toString() => 'StepView[args=$args, automatable=$automatable, available=$available, blockedBy=$blockedBy, deps=$deps, detail=$detail, draft=$draft, draftInto=$draftInto, enabled=$enabled, id=$id, section=$section, signal=$signal, source_=$source_, state=$state, title=$title, tool=$tool]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'args'] = this.args;
    if (this.automatable != null) {
      json[r'automatable'] = this.automatable;
    } else {
      json[r'automatable'] = null;
    }
    if (this.available != null) {
      json[r'available'] = this.available;
    } else {
      json[r'available'] = null;
    }
      json[r'blockedBy'] = this.blockedBy;
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
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
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

  /// Returns a new [StepView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StepView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StepView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StepView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StepView(
        args: mapCastOfType<String, Object>(json, r'args') ?? const {},
        automatable: mapValueOfType<bool>(json, r'automatable'),
        available: mapValueOfType<bool>(json, r'available'),
        blockedBy: json[r'blockedBy'] is Iterable
            ? (json[r'blockedBy'] as Iterable).cast<String>().toList(growable: false)
            : const [],
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
        source_: mapValueOfType<String>(json, r'source'),
        state: mapValueOfType<String>(json, r'state'),
        title: mapValueOfType<String>(json, r'title'),
        tool: mapValueOfType<String>(json, r'tool'),
      );
    }
    return null;
  }

  static List<StepView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StepView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StepView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StepView> mapFromJson(dynamic json) {
    final map = <String, StepView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StepView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StepView-objects as value to a dart map
  static Map<String, List<StepView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StepView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StepView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

