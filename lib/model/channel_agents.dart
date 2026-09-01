//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ChannelAgents {
  /// Returns a new [ChannelAgents] instance.
  ChannelAgents({
    this.channel,
    this.default_,
    this.rooms = const {},
  });
  /// Channel is the transport these bindings are for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channel;

  /// Default is the agent that answers any room without a binding of its own; \"hanzo\" when the org has never set one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? default_;

  /// Rooms maps a platform room id to the agent that answers there.
  Map<String, String> rooms;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChannelAgents &&
    other.channel == channel &&
    other.default_ == default_ &&
    _deepEquality.equals(other.rooms, rooms);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (channel == null ? 0 : channel!.hashCode) +
    (default_ == null ? 0 : default_!.hashCode) +
    (rooms.hashCode);

  @override
  String toString() => 'ChannelAgents[channel=$channel, default_=$default_, rooms=$rooms]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.channel != null) {
      json[r'channel'] = this.channel;
    } else {
      json[r'channel'] = null;
    }
    if (this.default_ != null) {
      json[r'default'] = this.default_;
    } else {
      json[r'default'] = null;
    }
      json[r'rooms'] = this.rooms;
    return json;
  }

  /// Returns a new [ChannelAgents] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChannelAgents? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ChannelAgents[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ChannelAgents[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChannelAgents(
        channel: mapValueOfType<String>(json, r'channel'),
        default_: mapValueOfType<String>(json, r'default'),
        rooms: mapCastOfType<String, String>(json, r'rooms') ?? const {},
      );
    }
    return null;
  }

  static List<ChannelAgents> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChannelAgents>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChannelAgents.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChannelAgents> mapFromJson(dynamic json) {
    final map = <String, ChannelAgents>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChannelAgents.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChannelAgents-objects as value to a dart map
  static Map<String, List<ChannelAgents>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChannelAgents>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChannelAgents.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

