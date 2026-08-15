//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ChannelList {
  /// Returns a new [ChannelList] instance.
  ChannelList({
    this.data = const [],
  });

  /// Data is every social channel the caller's org has connected, disabled ones included (Disabled says which).
  List<Channel> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChannelList &&
    _deepEquality.equals(other.data, data);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode);

  @override
  String toString() => 'ChannelList[data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [ChannelList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChannelList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ChannelList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ChannelList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChannelList(
        data: Channel.listFromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<ChannelList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChannelList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChannelList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChannelList> mapFromJson(dynamic json) {
    final map = <String, ChannelList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChannelList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChannelList-objects as value to a dart map
  static Map<String, List<ChannelList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChannelList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChannelList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

