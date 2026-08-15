//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SyncReq {
  /// Returns a new [SyncReq] instance.
  SyncReq({
    this.actor,
    this.direction,
    this.kind,
    this.run,
    this.source_,
    this.target,
    this.trigger,
  });

  /// Actor is the identity the sync writes as, used as the loop guard so its own writes do not re-trigger it. Defaults to the deployment's GIT_SYNC_ACTOR.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? actor;

  /// Direction is both (the default), pull, push or off.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? direction;

  /// Kind is what is being synced. Only \"git\" today, which is also the default.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Run reconciles once immediately after the upsert, in the background.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? run;

  /// Source is the upstream end. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EndpointReq? source_;

  /// Target is the downstream end. Optional for git: a native repository named after the source is derived when it is omitted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EndpointReq? target;

  /// Trigger is what starts a reconcile: webhook (the default), poll or manual.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? trigger;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SyncReq &&
    other.actor == actor &&
    other.direction == direction &&
    other.kind == kind &&
    other.run == run &&
    other.source_ == source_ &&
    other.target == target &&
    other.trigger == trigger;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (actor == null ? 0 : actor!.hashCode) +
    (direction == null ? 0 : direction!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (run == null ? 0 : run!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (target == null ? 0 : target!.hashCode) +
    (trigger == null ? 0 : trigger!.hashCode);

  @override
  String toString() => 'SyncReq[actor=$actor, direction=$direction, kind=$kind, run=$run, source_=$source_, target=$target, trigger=$trigger]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.actor != null) {
      json[r'actor'] = this.actor;
    } else {
      json[r'actor'] = null;
    }
    if (this.direction != null) {
      json[r'direction'] = this.direction;
    } else {
      json[r'direction'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.run != null) {
      json[r'run'] = this.run;
    } else {
      json[r'run'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.target != null) {
      json[r'target'] = this.target;
    } else {
      json[r'target'] = null;
    }
    if (this.trigger != null) {
      json[r'trigger'] = this.trigger;
    } else {
      json[r'trigger'] = null;
    }
    return json;
  }

  /// Returns a new [SyncReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SyncReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SyncReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SyncReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SyncReq(
        actor: mapValueOfType<String>(json, r'actor'),
        direction: mapValueOfType<String>(json, r'direction'),
        kind: mapValueOfType<String>(json, r'kind'),
        run: mapValueOfType<bool>(json, r'run'),
        source_: EndpointReq.fromJson(json[r'source']),
        target: EndpointReq.fromJson(json[r'target']),
        trigger: mapValueOfType<String>(json, r'trigger'),
      );
    }
    return null;
  }

  static List<SyncReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SyncReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SyncReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SyncReq> mapFromJson(dynamic json) {
    final map = <String, SyncReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SyncReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SyncReq-objects as value to a dart map
  static Map<String, List<SyncReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SyncReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SyncReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

