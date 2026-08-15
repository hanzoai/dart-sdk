//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PromptDetail {
  /// Returns a new [PromptDetail] instance.
  PromptDetail({
    this.createdAt,
    this.labels = const [],
    this.lastUpdatedAt,
    this.name,
    this.prompt,
    this.tags = const [],
    this.type,
    this.version,
    this.versionHistory = const [],
  });

  /// CreatedAt is when version 1 was written, RFC 3339 UTC. Appending a version does not move it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// Labels is the current version's free-form taxonomy. `[]` when none, never null.
  List<String> labels;

  /// UpdatedAt is when the current version was appended, RFC 3339 UTC. Equal to createdAt for a prompt that has only ever had one version.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastUpdatedAt;

  /// Name is the prompt's org-unique handle and the URL segment it is addressed by.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Prompt is the CURRENT version's template body — the only content this service returns. Earlier versions are listed in versionHistory by number and date, and their bodies are not served in bulk.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prompt;

  /// Tags is the second free-form taxonomy, same rules as Labels.
  List<String> tags;

  /// Type labels the current version's kind; \"text\" unless the creator said otherwise.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// Version is the current version number, starting at 1 and incremented by one on every create against an existing name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? version;

  /// Versions is the history METADATA, newest first, capped at the last 100 — no bodies, so a long history cannot inflate this response. It always includes the current version as its first entry.
  List<VersionView> versionHistory;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PromptDetail &&
    other.createdAt == createdAt &&
    _deepEquality.equals(other.labels, labels) &&
    other.lastUpdatedAt == lastUpdatedAt &&
    other.name == name &&
    other.prompt == prompt &&
    _deepEquality.equals(other.tags, tags) &&
    other.type == type &&
    other.version == version &&
    _deepEquality.equals(other.versionHistory, versionHistory);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (labels.hashCode) +
    (lastUpdatedAt == null ? 0 : lastUpdatedAt!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (prompt == null ? 0 : prompt!.hashCode) +
    (tags.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (version == null ? 0 : version!.hashCode) +
    (versionHistory.hashCode);

  @override
  String toString() => 'PromptDetail[createdAt=$createdAt, labels=$labels, lastUpdatedAt=$lastUpdatedAt, name=$name, prompt=$prompt, tags=$tags, type=$type, version=$version, versionHistory=$versionHistory]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
      json[r'labels'] = this.labels;
    if (this.lastUpdatedAt != null) {
      json[r'lastUpdatedAt'] = this.lastUpdatedAt;
    } else {
      json[r'lastUpdatedAt'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.prompt != null) {
      json[r'prompt'] = this.prompt;
    } else {
      json[r'prompt'] = null;
    }
      json[r'tags'] = this.tags;
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
      json[r'versionHistory'] = this.versionHistory;
    return json;
  }

  /// Returns a new [PromptDetail] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PromptDetail? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PromptDetail[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PromptDetail[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PromptDetail(
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        labels: json[r'labels'] is Iterable
            ? (json[r'labels'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        lastUpdatedAt: mapValueOfType<String>(json, r'lastUpdatedAt'),
        name: mapValueOfType<String>(json, r'name'),
        prompt: mapValueOfType<String>(json, r'prompt'),
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        type: mapValueOfType<String>(json, r'type'),
        version: mapValueOfType<int>(json, r'version'),
        versionHistory: VersionView.listFromJson(json[r'versionHistory']),
      );
    }
    return null;
  }

  static List<PromptDetail> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PromptDetail>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PromptDetail.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PromptDetail> mapFromJson(dynamic json) {
    final map = <String, PromptDetail>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PromptDetail.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PromptDetail-objects as value to a dart map
  static Map<String, List<PromptDetail>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PromptDetail>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PromptDetail.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

