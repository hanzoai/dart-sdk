//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SubscribeReq {
  /// Returns a new [SubscribeReq] instance.
  SubscribeReq({
    this.channel,
    this.events = const [],
    this.name,
  });
  /// Channel is the Slack channel the notifier posts to — an id (C…/G…), a #name, or a bare name. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channel;

  /// Events narrows delivery to these lifecycle kinds (push.landed, deploy.live, deploy.failed). Omit it to receive every deliverable kind; a kind that is never posted to Slack is refused rather than silently dropped.
  List<String> events;

  /// Name is the repo to subscribe, from the :name path segment.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SubscribeReq &&
    other.channel == channel &&
    _deepEquality.equals(other.events, events) &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (channel == null ? 0 : channel!.hashCode) +
    (events.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'SubscribeReq[channel=$channel, events=$events, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.channel != null) {
      json[r'channel'] = this.channel;
    } else {
      json[r'channel'] = null;
    }
      json[r'events'] = this.events;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [SubscribeReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SubscribeReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SubscribeReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SubscribeReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SubscribeReq(
        channel: mapValueOfType<String>(json, r'channel'),
        events: json[r'events'] is Iterable
            ? (json[r'events'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<SubscribeReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubscribeReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubscribeReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SubscribeReq> mapFromJson(dynamic json) {
    final map = <String, SubscribeReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SubscribeReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SubscribeReq-objects as value to a dart map
  static Map<String, List<SubscribeReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SubscribeReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SubscribeReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

