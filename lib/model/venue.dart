//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Venue {
  /// Returns a new [Venue] instance.
  Venue({
    this.name,
    this.ready,
    this.ws,
  });
  /// Name is the media room to join: the value POST /v1/meet/getToken takes as roomName, and the value the media server keys participants on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Ready reports that this deployment can mint a join token for this room. It is false on a deployment holding no media-server key, where Name is still correct — the name is a property of the room and the key is a property of the deployment, so a caller learns the room's identity either way and learns not to offer a join button.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ready;

  /// WS is where the media plane is — the address a client opens its own browser-to-server connection to. Empty when this deployment has not been told where its media server lives, which is reported rather than refused: a surface can say a call is unavailable without a second request.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ws;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Venue &&
    other.name == name &&
    other.ready == ready &&
    other.ws == ws;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (ready == null ? 0 : ready!.hashCode) +
    (ws == null ? 0 : ws!.hashCode);

  @override
  String toString() => 'Venue[name=$name, ready=$ready, ws=$ws]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.ready != null) {
      json[r'ready'] = this.ready;
    } else {
      json[r'ready'] = null;
    }
    if (this.ws != null) {
      json[r'ws'] = this.ws;
    } else {
      json[r'ws'] = null;
    }
    return json;
  }

  /// Returns a new [Venue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Venue? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Venue[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Venue[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Venue(
        name: mapValueOfType<String>(json, r'name'),
        ready: mapValueOfType<bool>(json, r'ready'),
        ws: mapValueOfType<String>(json, r'ws'),
      );
    }
    return null;
  }

  static List<Venue> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Venue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Venue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Venue> mapFromJson(dynamic json) {
    final map = <String, Venue>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Venue.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Venue-objects as value to a dart map
  static Map<String, List<Venue>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Venue>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Venue.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

