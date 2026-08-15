//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PromptReq {
  /// Returns a new [PromptReq] instance.
  PromptReq({
    this.labels = const [],
    this.name,
    this.prompt,
    this.tags = const [],
    this.type,
  });

  /// Labels is free-form taxonomy, each up to 64 characters, capped at 32 entries.
  List<String> labels;

  /// Name is the org-unique handle AND the URL segment the prompt is addressed by: 1-64 characters matching ^[A-Za-z0-9][A-Za-z0-9._-]*$. \"metrics\", \"new\" and \"catalog\" are reserved. A name that already exists appends a new version.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Prompt is the template body, capped at 64 KiB. It holds template text only — never a secret.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prompt;

  /// Tags is free-form taxonomy under the same bounds as Labels.
  List<String> tags;

  /// Type labels the template's kind; defaults to \"text\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PromptReq &&
    _deepEquality.equals(other.labels, labels) &&
    other.name == name &&
    other.prompt == prompt &&
    _deepEquality.equals(other.tags, tags) &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (labels.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (prompt == null ? 0 : prompt!.hashCode) +
    (tags.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'PromptReq[labels=$labels, name=$name, prompt=$prompt, tags=$tags, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'labels'] = this.labels;
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
    return json;
  }

  /// Returns a new [PromptReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PromptReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PromptReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PromptReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PromptReq(
        labels: json[r'labels'] is Iterable
            ? (json[r'labels'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        name: mapValueOfType<String>(json, r'name'),
        prompt: mapValueOfType<String>(json, r'prompt'),
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<PromptReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PromptReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PromptReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PromptReq> mapFromJson(dynamic json) {
    final map = <String, PromptReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PromptReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PromptReq-objects as value to a dart map
  static Map<String, List<PromptReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PromptReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PromptReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

