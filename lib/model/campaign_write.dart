//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CampaignWrite {
  /// Returns a new [CampaignWrite] instance.
  CampaignWrite({
    this.audience,
    this.budget,
    this.channels = const [],
    this.content = const [],
    this.name,
    this.scheduleAt,
  });
  /// Audience is the segment or audience selector this campaign targets.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? audience;

  /// Budget is the campaign's total budget in CENTS. Negative reads as 0.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? budget;

  /// Channels are the fan-out targets, at most one per kind (paid, organic, email) and at most 12. A channel's status and provider id are server-owned: whatever the caller sends for them is replaced with \"pending\".
  List<ChannelSpec> channels;

  /// Content is the ordered creative set. Content[0] is the active creative and the rest are A/B variants; at most 32, empty entries dropped.
  List<String> content;

  /// Name is the campaign's display name. Required; trimmed and capped at 2048 characters.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// ScheduleAt is when the campaign should run, in unix seconds. Negative reads as 0 (immediately).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? scheduleAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CampaignWrite &&
    other.audience == audience &&
    other.budget == budget &&
    _deepEquality.equals(other.channels, channels) &&
    _deepEquality.equals(other.content, content) &&
    other.name == name &&
    other.scheduleAt == scheduleAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (audience == null ? 0 : audience!.hashCode) +
    (budget == null ? 0 : budget!.hashCode) +
    (channels.hashCode) +
    (content.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (scheduleAt == null ? 0 : scheduleAt!.hashCode);

  @override
  String toString() => 'CampaignWrite[audience=$audience, budget=$budget, channels=$channels, content=$content, name=$name, scheduleAt=$scheduleAt]';

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
    return json;
  }

  /// Returns a new [CampaignWrite] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CampaignWrite? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CampaignWrite[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CampaignWrite[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CampaignWrite(
        audience: mapValueOfType<String>(json, r'audience'),
        budget: mapValueOfType<int>(json, r'budget'),
        channels: ChannelSpec.listFromJson(json[r'channels']),
        content: json[r'content'] is Iterable
            ? (json[r'content'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        name: mapValueOfType<String>(json, r'name'),
        scheduleAt: mapValueOfType<int>(json, r'scheduleAt'),
      );
    }
    return null;
  }

  static List<CampaignWrite> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CampaignWrite>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CampaignWrite.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CampaignWrite> mapFromJson(dynamic json) {
    final map = <String, CampaignWrite>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CampaignWrite.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CampaignWrite-objects as value to a dart map
  static Map<String, List<CampaignWrite>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CampaignWrite>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CampaignWrite.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

