//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CalendarPost {
  /// Returns a new [CalendarPost] instance.
  CalendarPost({
    this.body,
    this.channel,
    this.createdAt,
    this.error,
    this.id,
    this.publishedAt,
    this.scheduledAt,
    this.status,
    this.title,
    this.updatedAt,
  });
  /// Body is the post text. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? body;

  /// Channel is the target network: x, facebook, instagram, linkedin, tiktok, youtube or threads. Required — a post must name where it goes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channel;

  /// CreatedAt is unix seconds when the post was added, server-assigned and never rewritten.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// Error is the exact reason the last publish attempt failed — the honest record behind a \"failed\" status, never a faked success.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  /// ID is the server-assigned post id (\"cal_\" + 128 random bits).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// PublishedAt is when the publish succeeded; 0 until it does.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? publishedAt;

  /// ScheduledAt is the unix publish time; 0 leaves the post a draft, and any value makes it \"scheduled\" for the durable sweep to pick up.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? scheduledAt;

  /// Status is draft, scheduled, published, failed or canceled. Server-owned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Title is the post's internal label, capped at 1024 bytes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// UpdatedAt is unix seconds of the last write, server-assigned. The durable sweep writes too — claiming a due post, publishing it and recording a failure each bump it — so this moves without anyone editing the post.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CalendarPost &&
    other.body == body &&
    other.channel == channel &&
    other.createdAt == createdAt &&
    other.error == error &&
    other.id == id &&
    other.publishedAt == publishedAt &&
    other.scheduledAt == scheduledAt &&
    other.status == status &&
    other.title == title &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (body == null ? 0 : body!.hashCode) +
    (channel == null ? 0 : channel!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (publishedAt == null ? 0 : publishedAt!.hashCode) +
    (scheduledAt == null ? 0 : scheduledAt!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'CalendarPost[body=$body, channel=$channel, createdAt=$createdAt, error=$error, id=$id, publishedAt=$publishedAt, scheduledAt=$scheduledAt, status=$status, title=$title, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.body != null) {
      json[r'body'] = this.body;
    } else {
      json[r'body'] = null;
    }
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
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.publishedAt != null) {
      json[r'publishedAt'] = this.publishedAt;
    } else {
      json[r'publishedAt'] = null;
    }
    if (this.scheduledAt != null) {
      json[r'scheduledAt'] = this.scheduledAt;
    } else {
      json[r'scheduledAt'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [CalendarPost] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CalendarPost? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CalendarPost[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CalendarPost[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CalendarPost(
        body: mapValueOfType<String>(json, r'body'),
        channel: mapValueOfType<String>(json, r'channel'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        error: mapValueOfType<String>(json, r'error'),
        id: mapValueOfType<String>(json, r'id'),
        publishedAt: mapValueOfType<int>(json, r'publishedAt'),
        scheduledAt: mapValueOfType<int>(json, r'scheduledAt'),
        status: mapValueOfType<String>(json, r'status'),
        title: mapValueOfType<String>(json, r'title'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<CalendarPost> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CalendarPost>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CalendarPost.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CalendarPost> mapFromJson(dynamic json) {
    final map = <String, CalendarPost>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CalendarPost.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CalendarPost-objects as value to a dart map
  static Map<String, List<CalendarPost>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CalendarPost>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CalendarPost.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

