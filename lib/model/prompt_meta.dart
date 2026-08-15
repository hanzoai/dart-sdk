//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PromptMeta {
  /// Returns a new [PromptMeta] instance.
  PromptMeta({
    this.labels = const [],
    this.lastUpdatedAt,
    this.name,
    this.tags = const [],
    this.type,
    this.versions = const [],
  });

  /// Labels is the creator's free-form taxonomy, stored as given after trimming and de-duplication. Always present, `[]` when none — never null.
  List<String> labels;

  /// LastUpdatedAt is when the newest version was appended, RFC 3339 UTC. Empty only if the record carries no timestamp at all.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastUpdatedAt;

  /// Name is the prompt's org-unique handle and the URL segment it is fetched by: GET /v1/prompts/<name>.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Tags is the second free-form taxonomy under the same rules as Labels. Nothing in this service interprets either; they are yours to organize by.
  List<String> tags;

  /// Type labels the template's kind, \"text\" unless the creator said otherwise. It is the CURRENT version's type; earlier versions may carry a different one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// Versions lists every version NUMBER this prompt has, newest first, capped at the last 100. The highest is the current one. (On a metrics row the same key is a count, not a list.)
  List<int> versions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PromptMeta &&
    _deepEquality.equals(other.labels, labels) &&
    other.lastUpdatedAt == lastUpdatedAt &&
    other.name == name &&
    _deepEquality.equals(other.tags, tags) &&
    other.type == type &&
    _deepEquality.equals(other.versions, versions);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (labels.hashCode) +
    (lastUpdatedAt == null ? 0 : lastUpdatedAt!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (tags.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (versions.hashCode);

  @override
  String toString() => 'PromptMeta[labels=$labels, lastUpdatedAt=$lastUpdatedAt, name=$name, tags=$tags, type=$type, versions=$versions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
      json[r'tags'] = this.tags;
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
      json[r'versions'] = this.versions;
    return json;
  }

  /// Returns a new [PromptMeta] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PromptMeta? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PromptMeta[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PromptMeta[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PromptMeta(
        labels: json[r'labels'] is Iterable
            ? (json[r'labels'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        lastUpdatedAt: mapValueOfType<String>(json, r'lastUpdatedAt'),
        name: mapValueOfType<String>(json, r'name'),
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        type: mapValueOfType<String>(json, r'type'),
        versions: json[r'versions'] is Iterable
            ? (json[r'versions'] as Iterable).cast<int>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<PromptMeta> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PromptMeta>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PromptMeta.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PromptMeta> mapFromJson(dynamic json) {
    final map = <String, PromptMeta>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PromptMeta.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PromptMeta-objects as value to a dart map
  static Map<String, List<PromptMeta>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PromptMeta>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PromptMeta.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

