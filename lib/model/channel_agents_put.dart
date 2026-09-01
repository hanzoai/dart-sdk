//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ChannelAgentsPut {
  /// Returns a new [ChannelAgentsPut] instance.
  ChannelAgentsPut({
    this.channel,
    this.default_,
    this.rooms = const {},
    this.unbind = const [],
  });
  /// Channel is the transport to edit. Required; an unknown value is a 404.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channel;

  /// Default sets the agent for rooms with no binding of their own; \"hanzo\" restores the built-in. Empty or absent leaves it unchanged.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? default_;

  /// Rooms binds platform room ids to agents; rooms not named are left alone.
  Map<String, String> rooms;

  /// Unbind removes the bindings of these rooms, so they fall back to Default.
  List<String> unbind;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChannelAgentsPut &&
    other.channel == channel &&
    other.default_ == default_ &&
    _deepEquality.equals(other.rooms, rooms) &&
    _deepEquality.equals(other.unbind, unbind);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (channel == null ? 0 : channel!.hashCode) +
    (default_ == null ? 0 : default_!.hashCode) +
    (rooms.hashCode) +
    (unbind.hashCode);

  @override
  String toString() => 'ChannelAgentsPut[channel=$channel, default_=$default_, rooms=$rooms, unbind=$unbind]';

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
      json[r'unbind'] = this.unbind;
    return json;
  }

  /// Returns a new [ChannelAgentsPut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChannelAgentsPut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ChannelAgentsPut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ChannelAgentsPut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChannelAgentsPut(
        channel: mapValueOfType<String>(json, r'channel'),
        default_: mapValueOfType<String>(json, r'default'),
        rooms: mapCastOfType<String, String>(json, r'rooms') ?? const {},
        unbind: json[r'unbind'] is Iterable
            ? (json[r'unbind'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ChannelAgentsPut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChannelAgentsPut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChannelAgentsPut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChannelAgentsPut> mapFromJson(dynamic json) {
    final map = <String, ChannelAgentsPut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChannelAgentsPut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChannelAgentsPut-objects as value to a dart map
  static Map<String, List<ChannelAgentsPut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChannelAgentsPut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChannelAgentsPut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

