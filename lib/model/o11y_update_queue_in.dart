//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yUpdateQueueIn {
  /// Returns a new [O11yUpdateQueueIn] instance.
  O11yUpdateQueueIn({
    this.description,
    this.id,
    this.name,
    this.scoreConfigIds = const [],
  });
  /// Description replaces the free text when present, up to 512 characters.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// ID is the annotation queue to update, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Name replaces the queue's display handle when present, 1–128 printable characters and unique within the project.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// ScoreConfigIDs replaces the whole score-config set when present.
  List<String> scoreConfigIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yUpdateQueueIn &&
    other.description == description &&
    other.id == id &&
    other.name == name &&
    _deepEquality.equals(other.scoreConfigIds, scoreConfigIds);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (description == null ? 0 : description!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (scoreConfigIds.hashCode);

  @override
  String toString() => 'O11yUpdateQueueIn[description=$description, id=$id, name=$name, scoreConfigIds=$scoreConfigIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
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
      json[r'scoreConfigIds'] = this.scoreConfigIds;
    return json;
  }

  /// Returns a new [O11yUpdateQueueIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yUpdateQueueIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yUpdateQueueIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yUpdateQueueIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yUpdateQueueIn(
        description: mapValueOfType<String>(json, r'description'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        scoreConfigIds: json[r'scoreConfigIds'] is Iterable
            ? (json[r'scoreConfigIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<O11yUpdateQueueIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yUpdateQueueIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yUpdateQueueIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yUpdateQueueIn> mapFromJson(dynamic json) {
    final map = <String, O11yUpdateQueueIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yUpdateQueueIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yUpdateQueueIn-objects as value to a dart map
  static Map<String, List<O11yUpdateQueueIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yUpdateQueueIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yUpdateQueueIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

