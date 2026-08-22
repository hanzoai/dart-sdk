//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PatchSyncIn {
  /// Returns a new [PatchSyncIn] instance.
  PatchSyncIn({
    this.actor,
    this.direction,
    this.id,
    this.kind,
    this.source_,
    this.target,
    this.trigger,
  });
  /// Actor is the loop-guard identity the sync writes as. Omitted, the stored actor stands.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? actor;

  /// Direction is both, pull, push or off. Omitted, the stored direction stands.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? direction;

  /// ID is the sync to update, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Kind names a different kind of sync, and is refused, for the same reason.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Source, Target and Kind are DECLARED HERE IN ORDER TO BE REFUSED.  They are immutable by design — re-pointing a sync is a delete and a create, so a link can never silently start syncing somewhere else — but an UNDECLARED field is dropped by the binder before the handler sees it, so a request asking to repoint answered 200, changed nothing, and said nothing. The operator then believes a moved repository has been repointed and it has not.  Live: a sync still naming github.com/hanzoai/cloud after the repository moved to hanzo-inc/cloud failed every reconcile with \"Repository not found\", and the PATCH that appeared to fix it did nothing at all. Declaring the fields is what lets the documented immutability actually answer. Source names a new upstream, and is refused. Delete this sync and create the one you want.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EndpointReq? source_;

  /// Target names a new native repository, and is refused, for the same reason.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EndpointReq? target;

  /// Trigger is webhook, poll or manual. Omitted, the stored trigger stands.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? trigger;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchSyncIn &&
    other.actor == actor &&
    other.direction == direction &&
    other.id == id &&
    other.kind == kind &&
    other.source_ == source_ &&
    other.target == target &&
    other.trigger == trigger;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (actor == null ? 0 : actor!.hashCode) +
    (direction == null ? 0 : direction!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (target == null ? 0 : target!.hashCode) +
    (trigger == null ? 0 : trigger!.hashCode);

  @override
  String toString() => 'PatchSyncIn[actor=$actor, direction=$direction, id=$id, kind=$kind, source_=$source_, target=$target, trigger=$trigger]';

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
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
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

  /// Returns a new [PatchSyncIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchSyncIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchSyncIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchSyncIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchSyncIn(
        actor: mapValueOfType<String>(json, r'actor'),
        direction: mapValueOfType<String>(json, r'direction'),
        id: mapValueOfType<String>(json, r'id'),
        kind: mapValueOfType<String>(json, r'kind'),
        source_: EndpointReq.fromJson(json[r'source']),
        target: EndpointReq.fromJson(json[r'target']),
        trigger: mapValueOfType<String>(json, r'trigger'),
      );
    }
    return null;
  }

  static List<PatchSyncIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchSyncIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchSyncIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchSyncIn> mapFromJson(dynamic json) {
    final map = <String, PatchSyncIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchSyncIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchSyncIn-objects as value to a dart map
  static Map<String, List<PatchSyncIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchSyncIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchSyncIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

