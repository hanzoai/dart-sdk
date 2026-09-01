//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TeamRoomBind {
  /// Returns a new [TeamRoomBind] instance.
  TeamRoomBind({
    this.bindings = const [],
    this.id,
    this.life,
    this.space,
  });
  /// Bindings REPLACES what the room is about, wholly. It is a replace and not a merge because a caller that cannot remove a binding would have no way to correct a wrong one, and an empty list sent explicitly is how a room is unbound. Absent (null) leaves the existing list alone.
  List<String> bindings;

  /// ID is the room to bind, from the path. The URL is the authority; a body carrying another id cannot redirect the write.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Life sets the lifecycle intent: \"standing\" or \"bound\". Any other value is refused rather than stored, so a reader never has to interpret a third one. Empty leaves the current intent unchanged.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? life;

  /// Space names the space holding the room. It is required, because a room id is unique only within one and searching every space for a matching id would make the write's target depend on iteration order.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? space;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TeamRoomBind &&
    _deepEquality.equals(other.bindings, bindings) &&
    other.id == id &&
    other.life == life &&
    other.space == space;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bindings.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (life == null ? 0 : life!.hashCode) +
    (space == null ? 0 : space!.hashCode);

  @override
  String toString() => 'TeamRoomBind[bindings=$bindings, id=$id, life=$life, space=$space]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'bindings'] = this.bindings;
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
    if (this.space != null) {
      json[r'space'] = this.space;
    } else {
      json[r'space'] = null;
    }
    return json;
  }

  /// Returns a new [TeamRoomBind] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TeamRoomBind? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TeamRoomBind[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TeamRoomBind[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TeamRoomBind(
        bindings: json[r'bindings'] is Iterable
            ? (json[r'bindings'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        id: mapValueOfType<String>(json, r'id'),
        life: mapValueOfType<String>(json, r'life'),
        space: mapValueOfType<String>(json, r'space'),
      );
    }
    return null;
  }

  static List<TeamRoomBind> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TeamRoomBind>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TeamRoomBind.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TeamRoomBind> mapFromJson(dynamic json) {
    final map = <String, TeamRoomBind>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TeamRoomBind.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TeamRoomBind-objects as value to a dart map
  static Map<String, List<TeamRoomBind>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TeamRoomBind>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TeamRoomBind.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

