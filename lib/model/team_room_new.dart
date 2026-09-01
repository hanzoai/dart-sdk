//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TeamRoomNew {
  /// Returns a new [TeamRoomNew] instance.
  TeamRoomNew({
    this.bindings = const [],
    this.life,
    this.members = const [],
    this.name,
    this.private,
    this.space,
    this.topic,
  });
  /// Bindings are what the room is about, each \"<kind>:<ref>\".
  List<String> bindings;

  /// Life is the lifecycle intent, \"standing\" or \"bound\"; empty reads standing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? life;

  /// Members are the account uuids in the room. A public room may open empty — anyone in the org can find it — and a private one that names nobody is refused rather than created unreachable.
  List<String> members;

  /// Name is what a person sees in a sidebar — \"bugfix-1010\", not \"#bugfix-1010\". The sigil is how a client DRAWS a room, and storing it would put it in the name twice the first time a client added its own.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Private restricts the room to its members. Public is the default because a room nobody can find is the more surprising of the two.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? private;

  /// Space is where the room is opened. Optional: an org with one space has no choice to make, so it does not have to state one. An org with several must, because picking for it would make the room's home depend on iteration order.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? space;

  /// Topic is the room's one-line subject.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? topic;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TeamRoomNew &&
    _deepEquality.equals(other.bindings, bindings) &&
    other.life == life &&
    _deepEquality.equals(other.members, members) &&
    other.name == name &&
    other.private == private &&
    other.space == space &&
    other.topic == topic;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bindings.hashCode) +
    (life == null ? 0 : life!.hashCode) +
    (members.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (private == null ? 0 : private!.hashCode) +
    (space == null ? 0 : space!.hashCode) +
    (topic == null ? 0 : topic!.hashCode);

  @override
  String toString() => 'TeamRoomNew[bindings=$bindings, life=$life, members=$members, name=$name, private=$private, space=$space, topic=$topic]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'bindings'] = this.bindings;
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
    if (this.space != null) {
      json[r'space'] = this.space;
    } else {
      json[r'space'] = null;
    }
    if (this.topic != null) {
      json[r'topic'] = this.topic;
    } else {
      json[r'topic'] = null;
    }
    return json;
  }

  /// Returns a new [TeamRoomNew] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TeamRoomNew? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TeamRoomNew[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TeamRoomNew[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TeamRoomNew(
        bindings: json[r'bindings'] is Iterable
            ? (json[r'bindings'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        life: mapValueOfType<String>(json, r'life'),
        members: json[r'members'] is Iterable
            ? (json[r'members'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        name: mapValueOfType<String>(json, r'name'),
        private: mapValueOfType<bool>(json, r'private'),
        space: mapValueOfType<String>(json, r'space'),
        topic: mapValueOfType<String>(json, r'topic'),
      );
    }
    return null;
  }

  static List<TeamRoomNew> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TeamRoomNew>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TeamRoomNew.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TeamRoomNew> mapFromJson(dynamic json) {
    final map = <String, TeamRoomNew>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TeamRoomNew.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TeamRoomNew-objects as value to a dart map
  static Map<String, List<TeamRoomNew>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TeamRoomNew>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TeamRoomNew.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

