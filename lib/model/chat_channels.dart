//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ChatChannels {
  /// Returns a new [ChatChannels] instance.
  ChatChannels({
    this.channels = const [],
  });
  /// Channels is every chat transport this deployment supports, in a fixed order, each carrying whether the org has connected it, the account behind the connection, what the transport can do, the org's DM/group access policies for it, and how many pairing requests are waiting.
  List<ChannelView> channels;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChatChannels &&
    _deepEquality.equals(other.channels, channels);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (channels.hashCode);

  @override
  String toString() => 'ChatChannels[channels=$channels]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'channels'] = this.channels;
    return json;
  }

  /// Returns a new [ChatChannels] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChatChannels? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ChatChannels[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ChatChannels[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChatChannels(
        channels: ChannelView.listFromJson(json[r'channels']),
      );
    }
    return null;
  }

  static List<ChatChannels> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChatChannels>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChatChannels.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChatChannels> mapFromJson(dynamic json) {
    final map = <String, ChatChannels>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChatChannels.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChatChannels-objects as value to a dart map
  static Map<String, List<ChatChannels>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChatChannels>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChatChannels.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

