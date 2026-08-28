//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Memory {
  /// Returns a new [Memory] instance.
  Memory({
    this.content,
    this.createdTime,
    this.dimension,
    this.embedding = const [],
    this.kind,
    this.metadata = const {},
    this.name,
    this.owner,
    this.score,
    this.updatedTime,
    this.userId,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? content;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dimension;

  List<num> embedding;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  Map<String, String> metadata;

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
  String? owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? score;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Memory &&
    other.content == content &&
    other.createdTime == createdTime &&
    other.dimension == dimension &&
    _deepEquality.equals(other.embedding, embedding) &&
    other.kind == kind &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.name == name &&
    other.owner == owner &&
    other.score == score &&
    other.updatedTime == updatedTime &&
    other.userId == userId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (content == null ? 0 : content!.hashCode) +
    (createdTime == null ? 0 : createdTime!.hashCode) +
    (dimension == null ? 0 : dimension!.hashCode) +
    (embedding.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (metadata.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (score == null ? 0 : score!.hashCode) +
    (updatedTime == null ? 0 : updatedTime!.hashCode) +
    (userId == null ? 0 : userId!.hashCode);

  @override
  String toString() => 'Memory[content=$content, createdTime=$createdTime, dimension=$dimension, embedding=$embedding, kind=$kind, metadata=$metadata, name=$name, owner=$owner, score=$score, updatedTime=$updatedTime, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
    if (this.createdTime != null) {
      json[r'createdTime'] = this.createdTime;
    } else {
      json[r'createdTime'] = null;
    }
    if (this.dimension != null) {
      json[r'dimension'] = this.dimension;
    } else {
      json[r'dimension'] = null;
    }
      json[r'embedding'] = this.embedding;
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
      json[r'metadata'] = this.metadata;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    if (this.updatedTime != null) {
      json[r'updatedTime'] = this.updatedTime;
    } else {
      json[r'updatedTime'] = null;
    }
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    return json;
  }

  /// Returns a new [Memory] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Memory? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Memory[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Memory[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Memory(
        content: mapValueOfType<String>(json, r'content'),
        createdTime: mapValueOfType<String>(json, r'createdTime'),
        dimension: mapValueOfType<int>(json, r'dimension'),
        embedding: json[r'embedding'] is Iterable
            ? (json[r'embedding'] as Iterable).cast<num>().toList(growable: false)
            : const [],
        kind: mapValueOfType<String>(json, r'kind'),
        metadata: mapCastOfType<String, String>(json, r'metadata') ?? const {},
        name: mapValueOfType<String>(json, r'name'),
        owner: mapValueOfType<String>(json, r'owner'),
        score: num.parse('${json[r'score']}'),
        updatedTime: mapValueOfType<String>(json, r'updatedTime'),
        userId: mapValueOfType<String>(json, r'userId'),
      );
    }
    return null;
  }

  static List<Memory> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Memory>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Memory.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Memory> mapFromJson(dynamic json) {
    final map = <String, Memory>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Memory.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Memory-objects as value to a dart map
  static Map<String, List<Memory>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Memory>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Memory.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

