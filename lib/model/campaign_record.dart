//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CampaignRecord {
  /// Returns a new [CampaignRecord] instance.
  CampaignRecord({
    this.audience,
    this.budget,
    this.channels = const [],
    this.content = const [],
    this.createdAt,
    this.id,
    this.name,
    this.scheduleAt,
    this.status,
    this.updatedAt,
  });

  /// Audience is an opaque reference to the segment this campaign targets. It is stored and echoed but not yet handed to the executors — a channel targets through the provider account it runs under — so it is documentation for now. Absent when never set.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? audience;

  /// Budget is the campaign's total budget in CENTS, handed to each executor as the budget for its channel. 0 means none was set.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? budget;

  /// Channels are the fan-out targets, at most one per kind and at most 12, each carrying its own post-launch state. Empty means nothing to launch, which is what makes a launch of this campaign a 400.
  List<ChannelSpec> channels;

  /// Content is the ordered creative set, at most 32, empty entries dropped. Content[0] is the creative that runs; the rest are A/B variants a wired experiment can assign per launch.
  List<String> content;

  /// CreatedAt is when the campaign was created, in unix seconds. Server-set.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// ID is the campaign's server-minted handle — \"cmp_\" and 128 random bits — and the id every other campaign call is addressed by. Never read off the wire: a create that sends one has it ignored.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Name is the campaign's display name. Required on write, trimmed, and capped at 2048 characters.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// ScheduleAt is when the campaign should run, in unix seconds. 0 (absent) means launch immediately. It is passed to each executor; nothing in this service wakes up to launch it for you.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? scheduleAt;

  /// Status is the lifecycle state, server-owned and never accepted from a caller. Four values actually occur: draft (inert and fully mutable — nothing is sent and no budget is committed), live, paused and failed. After a fan-out live means AT LEAST ONE channel launched — read the channel rows for the rest — and failed means none did.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// UpdatedAt is the last write in unix seconds — an edit, a launch or a pause. Server-set on every save.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CampaignRecord &&
    other.audience == audience &&
    other.budget == budget &&
    _deepEquality.equals(other.channels, channels) &&
    _deepEquality.equals(other.content, content) &&
    other.createdAt == createdAt &&
    other.id == id &&
    other.name == name &&
    other.scheduleAt == scheduleAt &&
    other.status == status &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (audience == null ? 0 : audience!.hashCode) +
    (budget == null ? 0 : budget!.hashCode) +
    (channels.hashCode) +
    (content.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (scheduleAt == null ? 0 : scheduleAt!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'CampaignRecord[audience=$audience, budget=$budget, channels=$channels, content=$content, createdAt=$createdAt, id=$id, name=$name, scheduleAt=$scheduleAt, status=$status, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.audience != null) {
      json[r'audience'] = this.audience;
    } else {
      json[r'audience'] = null;
    }
    if (this.budget != null) {
      json[r'budget'] = this.budget;
    } else {
      json[r'budget'] = null;
    }
      json[r'channels'] = this.channels;
      json[r'content'] = this.content;
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
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

  /// Returns a new [CampaignRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CampaignRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CampaignRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CampaignRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CampaignRecord(
        audience: mapValueOfType<String>(json, r'audience'),
        budget: mapValueOfType<int>(json, r'budget'),
        channels: ChannelSpec.listFromJson(json[r'channels']),
        content: json[r'content'] is Iterable
            ? (json[r'content'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        scheduleAt: mapValueOfType<int>(json, r'scheduleAt'),
        status: mapValueOfType<String>(json, r'status'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<CampaignRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CampaignRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CampaignRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CampaignRecord> mapFromJson(dynamic json) {
    final map = <String, CampaignRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CampaignRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CampaignRecord-objects as value to a dart map
  static Map<String, List<CampaignRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CampaignRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CampaignRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

