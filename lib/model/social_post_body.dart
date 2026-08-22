//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SocialPostBody {
  /// Returns a new [SocialPostBody] instance.
  SocialPostBody({
    this.channel,
    this.content,
    this.media = const [],
    this.scheduleAt,
    this.status,
  });
  /// Channel is the network to publish to: x, facebook, instagram, linkedin, tiktok, youtube or threads. Omitted means x.  Example: \"x\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channel;

  /// Content is the post's text. Required — an empty body is a 400 — and bounded at 8192 characters, comfortably above every network's own limit.  Example: \"Shipping today.\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? content;

  /// Media is the post's attached media as URLs, at most 10, each bounded at 1024 characters. Blank entries are dropped. Omitting it CLEARS any stored media.
  List<String> media;

  /// ScheduleAt is when to publish, as a unix timestamp in SECONDS. 0 means unscheduled. A negative value is clamped to 0. It only matters for a post whose status is scheduled.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? scheduleAt;

  /// Status is the post's lifecycle state: draft, scheduled, published or failed. Omitted means draft. The transient publishing claim is never settable here — accepting it from a request would let a caller wedge or replay the guard that stops two publishers double-posting the same row.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SocialPostBody &&
    other.channel == channel &&
    other.content == content &&
    _deepEquality.equals(other.media, media) &&
    other.scheduleAt == scheduleAt &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (channel == null ? 0 : channel!.hashCode) +
    (content == null ? 0 : content!.hashCode) +
    (media.hashCode) +
    (scheduleAt == null ? 0 : scheduleAt!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'SocialPostBody[channel=$channel, content=$content, media=$media, scheduleAt=$scheduleAt, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.channel != null) {
      json[r'channel'] = this.channel;
    } else {
      json[r'channel'] = null;
    }
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
      json[r'media'] = this.media;
    if (this.scheduleAt != null) {
      json[r'scheduleAt'] = this.scheduleAt;
    } else {
      json[r'scheduleAt'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [SocialPostBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SocialPostBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SocialPostBody[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SocialPostBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SocialPostBody(
        channel: mapValueOfType<String>(json, r'channel'),
        content: mapValueOfType<String>(json, r'content'),
        media: json[r'media'] is Iterable
            ? (json[r'media'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        scheduleAt: mapValueOfType<int>(json, r'scheduleAt'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<SocialPostBody> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SocialPostBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SocialPostBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SocialPostBody> mapFromJson(dynamic json) {
    final map = <String, SocialPostBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SocialPostBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SocialPostBody-objects as value to a dart map
  static Map<String, List<SocialPostBody>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SocialPostBody>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SocialPostBody.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

