//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yLLMAnnotation {
  /// Returns a new [O11yO11yLLMAnnotation] instance.
  O11yO11yLLMAnnotation({
    this.author,
    this.content,
    this.createdAt,
    this.id,
    this.observationId,
    this.queue,
    this.status,
    this.traceId,
    this.updatedAt,
  });
  /// Author is who wrote it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? author;

  /// Content is the note itself.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? content;

  /// CreatedAt is when the annotation was stored.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// ID is the annotation's id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// ObservationID is the observation the annotation attaches to, when narrowed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? observationId;

  /// Queue is the review queue the annotation sits in, when queued.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? queue;

  /// Status is the annotation's review status, e.g. PENDING.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// TraceID is the trace the annotation attaches to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? traceId;

  /// UpdatedAt is when the annotation last changed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yLLMAnnotation &&
    other.author == author &&
    other.content == content &&
    other.createdAt == createdAt &&
    other.id == id &&
    other.observationId == observationId &&
    other.queue == queue &&
    other.status == status &&
    other.traceId == traceId &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (author == null ? 0 : author!.hashCode) +
    (content == null ? 0 : content!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (observationId == null ? 0 : observationId!.hashCode) +
    (queue == null ? 0 : queue!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (traceId == null ? 0 : traceId!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'O11yO11yLLMAnnotation[author=$author, content=$content, createdAt=$createdAt, id=$id, observationId=$observationId, queue=$queue, status=$status, traceId=$traceId, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.author != null) {
      json[r'author'] = this.author;
    } else {
      json[r'author'] = null;
    }
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.observationId != null) {
      json[r'observationId'] = this.observationId;
    } else {
      json[r'observationId'] = null;
    }
    if (this.queue != null) {
      json[r'queue'] = this.queue;
    } else {
      json[r'queue'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.traceId != null) {
      json[r'traceId'] = this.traceId;
    } else {
      json[r'traceId'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yLLMAnnotation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yLLMAnnotation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yLLMAnnotation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yLLMAnnotation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yLLMAnnotation(
        author: mapValueOfType<String>(json, r'author'),
        content: mapValueOfType<String>(json, r'content'),
        createdAt: mapDateTime(json, r'createdAt', r''),
        id: mapValueOfType<String>(json, r'id'),
        observationId: mapValueOfType<String>(json, r'observationId'),
        queue: mapValueOfType<String>(json, r'queue'),
        status: mapValueOfType<String>(json, r'status'),
        traceId: mapValueOfType<String>(json, r'traceId'),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
      );
    }
    return null;
  }

  static List<O11yO11yLLMAnnotation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yLLMAnnotation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yLLMAnnotation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yLLMAnnotation> mapFromJson(dynamic json) {
    final map = <String, O11yO11yLLMAnnotation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yLLMAnnotation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yLLMAnnotation-objects as value to a dart map
  static Map<String, List<O11yO11yLLMAnnotation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yLLMAnnotation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yLLMAnnotation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

