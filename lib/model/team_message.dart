//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TeamMessage {
  /// Returns a new [TeamMessage] instance.
  TeamMessage({
    this.author,
    this.createdOn,
    this.id,
    this.room,
    this.text,
  });
  /// Author is the team account uuid that wrote it. It is an ACCOUNT and not a display name: what to call somebody is the roster's answer, and copying it onto every message is how the two come to disagree. An agent's messages carry the account derived from its id, so the same field answers for both.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? author;

  /// CreatedOn is unix MILLIseconds, which is what the platform stamps.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdOn;

  /// ID is the message document's own id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Room is the room it was said in — the same id the room listing answers with, so a caller holding a message can name its room without a second read.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? room;

  /// Text is the message as PLAIN TEXT. The document stores markup; this is the same `plainText` reduction the agent responder reads a prompt with, so a caller never has to parse the client's markup to know what was said.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TeamMessage &&
    other.author == author &&
    other.createdOn == createdOn &&
    other.id == id &&
    other.room == room &&
    other.text == text;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (author == null ? 0 : author!.hashCode) +
    (createdOn == null ? 0 : createdOn!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (room == null ? 0 : room!.hashCode) +
    (text == null ? 0 : text!.hashCode);

  @override
  String toString() => 'TeamMessage[author=$author, createdOn=$createdOn, id=$id, room=$room, text=$text]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.author != null) {
      json[r'author'] = this.author;
    } else {
      json[r'author'] = null;
    }
    if (this.createdOn != null) {
      json[r'createdOn'] = this.createdOn;
    } else {
      json[r'createdOn'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.room != null) {
      json[r'room'] = this.room;
    } else {
      json[r'room'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    return json;
  }

  /// Returns a new [TeamMessage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TeamMessage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TeamMessage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TeamMessage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TeamMessage(
        author: mapValueOfType<String>(json, r'author'),
        createdOn: mapValueOfType<int>(json, r'createdOn'),
        id: mapValueOfType<String>(json, r'id'),
        room: mapValueOfType<String>(json, r'room'),
        text: mapValueOfType<String>(json, r'text'),
      );
    }
    return null;
  }

  static List<TeamMessage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TeamMessage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TeamMessage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TeamMessage> mapFromJson(dynamic json) {
    final map = <String, TeamMessage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TeamMessage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TeamMessage-objects as value to a dart map
  static Map<String, List<TeamMessage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TeamMessage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TeamMessage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

