//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TeamRoom {
  /// Returns a new [TeamRoom] instance.
  TeamRoom({
    this.archived,
    this.bindings = const [],
    this.direct,
    this.id,
    this.life,
    this.members = const [],
    this.name,
    this.private,
    this.topic,
    this.workspace,
  });
  /// Archived reports that the room has been closed. It is the platform's own Space attribute — the same one the Team client writes — and NOT a field of the work facet, so there is exactly one answer to \"is this room open\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? archived;

  /// Bindings are what this room is ABOUT, each a \"<kind>:<ref>\" string — \"project:acme/web\", \"repo:hanzoai/cloud\", \"issue:1010\". One list rather than one field per kind, because the next thing a room can be about should not be a schema change; and a bound value is opaque here on purpose, since the app that owns a project is the app that can resolve one. HIP-0523 §2: a binding is a REFERENCE, never a copy — a room holding an issue's title or status would be the parallel work-item store HIP-1160 §1 forbids.
  List<String> bindings;

  /// Direct reports that this is a room between people rather than a named room. It is derived from the document's class, so it cannot disagree with what the client will render.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? direct;

  /// ID is the room document's own id, and the value the bind op addresses. It is unique within a workspace, not across the org.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Life is the room's lifecycle INTENT — \"standing\" or \"bound\" (HIP-0523 §2). Absent on the document it reads \"standing\": a room nobody classified is one that persists.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? life;

  /// Members are the account uuids in the room, agents included: an agent projects as a workspace member under a uuid derived from its id, so a caller comparing this against GET /v1/team/bots learns which rooms an agent is in.
  List<String> members;

  /// Name is what a person sees in a sidebar. A direct message carries none, so this is empty for one — the members are its name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Private reports that the room is restricted to its members.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? private;

  /// Topic is the room's own one-line subject, as the Team client sets it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? topic;

  /// Workspace is the workspace uuid holding this room. It is part of the room's address: two workspaces of one org may each hold a room with the same name, and only the pair identifies one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? workspace;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TeamRoom &&
    other.archived == archived &&
    _deepEquality.equals(other.bindings, bindings) &&
    other.direct == direct &&
    other.id == id &&
    other.life == life &&
    _deepEquality.equals(other.members, members) &&
    other.name == name &&
    other.private == private &&
    other.topic == topic &&
    other.workspace == workspace;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (archived == null ? 0 : archived!.hashCode) +
    (bindings.hashCode) +
    (direct == null ? 0 : direct!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (life == null ? 0 : life!.hashCode) +
    (members.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (private == null ? 0 : private!.hashCode) +
    (topic == null ? 0 : topic!.hashCode) +
    (workspace == null ? 0 : workspace!.hashCode);

  @override
  String toString() => 'TeamRoom[archived=$archived, bindings=$bindings, direct=$direct, id=$id, life=$life, members=$members, name=$name, private=$private, topic=$topic, workspace=$workspace]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.archived != null) {
      json[r'archived'] = this.archived;
    } else {
      json[r'archived'] = null;
    }
      json[r'bindings'] = this.bindings;
    if (this.direct != null) {
      json[r'direct'] = this.direct;
    } else {
      json[r'direct'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.life != null) {
      json[r'life'] = this.life;
    } else {
      json[r'life'] = null;
    }
      json[r'members'] = this.members;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.private != null) {
      json[r'private'] = this.private;
    } else {
      json[r'private'] = null;
    }
    if (this.topic != null) {
      json[r'topic'] = this.topic;
    } else {
      json[r'topic'] = null;
    }
    if (this.workspace != null) {
      json[r'workspace'] = this.workspace;
    } else {
      json[r'workspace'] = null;
    }
    return json;
  }

  /// Returns a new [TeamRoom] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TeamRoom? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TeamRoom[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TeamRoom[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TeamRoom(
        archived: mapValueOfType<bool>(json, r'archived'),
        bindings: json[r'bindings'] is Iterable
            ? (json[r'bindings'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        direct: mapValueOfType<bool>(json, r'direct'),
        id: mapValueOfType<String>(json, r'id'),
        life: mapValueOfType<String>(json, r'life'),
        members: json[r'members'] is Iterable
            ? (json[r'members'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        name: mapValueOfType<String>(json, r'name'),
        private: mapValueOfType<bool>(json, r'private'),
        topic: mapValueOfType<String>(json, r'topic'),
        workspace: mapValueOfType<String>(json, r'workspace'),
      );
    }
    return null;
  }

  static List<TeamRoom> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TeamRoom>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TeamRoom.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TeamRoom> mapFromJson(dynamic json) {
    final map = <String, TeamRoom>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TeamRoom.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TeamRoom-objects as value to a dart map
  static Map<String, List<TeamRoom>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TeamRoom>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TeamRoom.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

