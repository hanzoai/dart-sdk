//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Audience {
  /// Returns a new [Audience] instance.
  Audience({
    this.createdAt,
    this.event,
    this.id,
    this.name,
    this.updatedAt,
    this.windowDays,
  });
  /// CreatedAt is unix seconds when the filter was saved, server-assigned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// Event is the analytics event a member must have fired. EMPTY MEANS NO FILTER: the audience is then every mailable customer in the org, and no warehouse is consulted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? event;

  /// ID is the server-assigned audience id (\"aud_\" + 128 random bits).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Name is the audience's label. Required, trimmed, capped at 1024 bytes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// UpdatedAt is unix seconds of the last write, server-assigned, and the key the audience list is ordered by (newest first). A saved audience has no update route, so in practice it stays equal to CreatedAt: to change a filter you save another one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  /// WindowDays is how far back the event counts, ending now. 0 means 30 and nothing above 3650 is honoured. Ignored when Event is empty.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? windowDays;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Audience &&
    other.createdAt == createdAt &&
    other.event == event &&
    other.id == id &&
    other.name == name &&
    other.updatedAt == updatedAt &&
    other.windowDays == windowDays;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (event == null ? 0 : event!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (windowDays == null ? 0 : windowDays!.hashCode);

  @override
  String toString() => 'Audience[createdAt=$createdAt, event=$event, id=$id, name=$name, updatedAt=$updatedAt, windowDays=$windowDays]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.event != null) {
      json[r'event'] = this.event;
    } else {
      json[r'event'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.windowDays != null) {
      json[r'windowDays'] = this.windowDays;
    } else {
      json[r'windowDays'] = null;
    }
    return json;
  }

  /// Returns a new [Audience] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Audience? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Audience[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Audience[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Audience(
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        event: mapValueOfType<String>(json, r'event'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
        windowDays: mapValueOfType<int>(json, r'windowDays'),
      );
    }
    return null;
  }

  static List<Audience> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Audience>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Audience.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Audience> mapFromJson(dynamic json) {
    final map = <String, Audience>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Audience.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Audience-objects as value to a dart map
  static Map<String, List<Audience>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Audience>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Audience.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

