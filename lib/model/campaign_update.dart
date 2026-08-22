//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CampaignUpdate {
  /// Returns a new [CampaignUpdate] instance.
  CampaignUpdate({
    this.audience,
    this.budget,
    this.channels = const [],
    this.content = const [],
    this.id,
    this.name,
    this.scheduleAt,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? audience;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? budget;

  List<ChannelSpec> channels;

  List<String> content;

  /// ID is the campaign to update, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? scheduleAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CampaignUpdate &&
    other.audience == audience &&
    other.budget == budget &&
    _deepEquality.equals(other.channels, channels) &&
    _deepEquality.equals(other.content, content) &&
    other.id == id &&
    other.name == name &&
    other.scheduleAt == scheduleAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (audience == null ? 0 : audience!.hashCode) +
    (budget == null ? 0 : budget!.hashCode) +
    (channels.hashCode) +
    (content.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (scheduleAt == null ? 0 : scheduleAt!.hashCode);

  @override
  String toString() => 'CampaignUpdate[audience=$audience, budget=$budget, channels=$channels, content=$content, id=$id, name=$name, scheduleAt=$scheduleAt]';

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
    return json;
  }

  /// Returns a new [CampaignUpdate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CampaignUpdate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CampaignUpdate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CampaignUpdate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CampaignUpdate(
        audience: mapValueOfType<String>(json, r'audience'),
        budget: mapValueOfType<int>(json, r'budget'),
        channels: ChannelSpec.listFromJson(json[r'channels']),
        content: json[r'content'] is Iterable
            ? (json[r'content'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        scheduleAt: mapValueOfType<int>(json, r'scheduleAt'),
      );
    }
    return null;
  }

  static List<CampaignUpdate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CampaignUpdate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CampaignUpdate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CampaignUpdate> mapFromJson(dynamic json) {
    final map = <String, CampaignUpdate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CampaignUpdate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CampaignUpdate-objects as value to a dart map
  static Map<String, List<CampaignUpdate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CampaignUpdate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CampaignUpdate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

