//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SubscriptionView {
  /// Returns a new [SubscriptionView] instance.
  SubscriptionView({
    this.channel,
    this.createdAt,
    this.events = const [],
    this.id,
    this.repo,
  });
  /// Channel is the Slack channel id or name the notifier posts to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channel;

  /// CreatedAt is RFC 3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// Events is the kind filter; absent means every deliverable kind.
  List<String> events;

  /// ID is the subscription's identifier (\"sub_…\"), the handle to delete it by.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Repo is the repo whose lifecycle events are delivered.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SubscriptionView &&
    other.channel == channel &&
    other.createdAt == createdAt &&
    _deepEquality.equals(other.events, events) &&
    other.id == id &&
    other.repo == repo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (channel == null ? 0 : channel!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (events.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (repo == null ? 0 : repo!.hashCode);

  @override
  String toString() => 'SubscriptionView[channel=$channel, createdAt=$createdAt, events=$events, id=$id, repo=$repo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.channel != null) {
      json[r'channel'] = this.channel;
    } else {
      json[r'channel'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
      json[r'events'] = this.events;
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    return json;
  }

  /// Returns a new [SubscriptionView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SubscriptionView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SubscriptionView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SubscriptionView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SubscriptionView(
        channel: mapValueOfType<String>(json, r'channel'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        events: json[r'events'] is Iterable
            ? (json[r'events'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        id: mapValueOfType<String>(json, r'id'),
        repo: mapValueOfType<String>(json, r'repo'),
      );
    }
    return null;
  }

  static List<SubscriptionView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubscriptionView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubscriptionView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SubscriptionView> mapFromJson(dynamic json) {
    final map = <String, SubscriptionView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SubscriptionView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SubscriptionView-objects as value to a dart map
  static Map<String, List<SubscriptionView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SubscriptionView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SubscriptionView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

