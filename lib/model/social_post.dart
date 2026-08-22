//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SocialPost {
  /// Returns a new [SocialPost] instance.
  SocialPost({
    this.accountId,
    this.channel,
    this.content,
    this.createdAt,
    this.error,
    this.externalId,
    this.id,
    this.media = const [],
    this.scheduleAt,
    this.status,
    this.updatedAt,
  });
  /// AccountID / ExternalID / Error are server-managed publish results, set only by the publish path (never by a client update): the account a post was published through, the provider's returned external post id (for reconciliation), and the last failure reason. Empty until a publish attempt lands. AccountID is the connected account the post went out through. Absent until a publish succeeds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  /// Channel is the network this post targets: x, facebook, instagram, linkedin, tiktok, youtube or threads. It is the channel whose CONNECTED accounts a publish fans out to.  Example: \"x\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channel;

  /// Content is the post's text, bounded at 8192 characters.  Example: \"Shipping today.\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? content;

  /// CreatedAt is when the post was created, as a unix timestamp in seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// Error is why the last publish attempt failed, verbatim and bounded. Absent when no attempt has failed; cleared by a later success.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  /// ExternalID is the id the network returned for the published post, which is what reconciles this row against the post on the network. Absent until a publish succeeds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  /// ID is the post's identifier, minted on create and the id every later call addresses it by.  Example: \"post_91ab20\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Media is the post's attached media as a list of URLs (images today; the composer's URL field now, an S3 picker later, populate it). Stored as a JSON array in the media TEXT column and ALWAYS serialized as an array (never null), so a client can rely on `media` being present. Bounded at the write layer (normMedia in social.go): each URL clipped to maxField, the list to maxMedia.
  List<String> media;

  /// ScheduleAt is when the post is due, as a unix timestamp in SECONDS. 0 means unscheduled. It is meaningful only while the status is scheduled — a scheduled post whose time has arrived is published by the scheduler.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? scheduleAt;

  /// Status is the post's lifecycle state: draft, scheduled, published or failed. A fifth, transient publishing state exists while a publish attempt holds the claim; it is never settable from a request and a caller sees it only if it reads a post mid-attempt.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// UpdatedAt is when the post row last changed, as a unix timestamp in seconds. The listing is ordered by it, newest first.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SocialPost &&
    other.accountId == accountId &&
    other.channel == channel &&
    other.content == content &&
    other.createdAt == createdAt &&
    other.error == error &&
    other.externalId == externalId &&
    other.id == id &&
    _deepEquality.equals(other.media, media) &&
    other.scheduleAt == scheduleAt &&
    other.status == status &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountId == null ? 0 : accountId!.hashCode) +
    (channel == null ? 0 : channel!.hashCode) +
    (content == null ? 0 : content!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (media.hashCode) +
    (scheduleAt == null ? 0 : scheduleAt!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'SocialPost[accountId=$accountId, channel=$channel, content=$content, createdAt=$createdAt, error=$error, externalId=$externalId, id=$id, media=$media, scheduleAt=$scheduleAt, status=$status, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
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
    if (this.externalId != null) {
      json[r'externalId'] = this.externalId;
    } else {
      json[r'externalId'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
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
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [SocialPost] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SocialPost? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SocialPost[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SocialPost[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SocialPost(
        accountId: mapValueOfType<String>(json, r'accountId'),
        channel: mapValueOfType<String>(json, r'channel'),
        content: mapValueOfType<String>(json, r'content'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        error: mapValueOfType<String>(json, r'error'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        id: mapValueOfType<String>(json, r'id'),
        media: json[r'media'] is Iterable
            ? (json[r'media'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        scheduleAt: mapValueOfType<int>(json, r'scheduleAt'),
        status: mapValueOfType<String>(json, r'status'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<SocialPost> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SocialPost>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SocialPost.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SocialPost> mapFromJson(dynamic json) {
    final map = <String, SocialPost>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SocialPost.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SocialPost-objects as value to a dart map
  static Map<String, List<SocialPost>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SocialPost>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SocialPost.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

