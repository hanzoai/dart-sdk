//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SocialPostWrite {
  /// Returns a new [SocialPostWrite] instance.
  SocialPostWrite({
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

  /// Content is the post's text. Required on every update, and bounded at 8192 characters.  Example: \"Shipping today.\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? content;

  /// Media is the post's attached media as URLs, at most 10. Omitting it CLEARS any stored media: this is a replacement, not a merge.
  List<String> media;

  /// ScheduleAt is when to publish, as a unix timestamp in SECONDS. 0 means unscheduled. Moving it into the past here does NOT publish the post — that is the scheduler's to notice, or the publish operation's.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? scheduleAt;

  /// Status is the post's lifecycle state: draft, scheduled, published or failed. Omitting it RESETS the post to draft.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SocialPostWrite &&
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
  String toString() => 'SocialPostWrite[channel=$channel, content=$content, media=$media, scheduleAt=$scheduleAt, status=$status]';

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

  /// Returns a new [SocialPostWrite] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SocialPostWrite? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SocialPostWrite[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SocialPostWrite[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SocialPostWrite(
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

  static List<SocialPostWrite> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SocialPostWrite>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SocialPostWrite.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SocialPostWrite> mapFromJson(dynamic json) {
    final map = <String, SocialPostWrite>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SocialPostWrite.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SocialPostWrite-objects as value to a dart map
  static Map<String, List<SocialPostWrite>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SocialPostWrite>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SocialPostWrite.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

