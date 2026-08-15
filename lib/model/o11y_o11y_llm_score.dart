//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yLLMScore {
  /// Returns a new [O11yO11yLLMScore] instance.
  O11yO11yLLMScore({
    this.comment,
    this.createdAt,
    this.createdBy,
    this.dataType,
    this.id,
    this.name,
    this.observationId,
    this.source_,
    this.stringValue,
    this.timestamp,
    this.traceId,
    this.updatedAt,
    this.value,
  });

  /// Comment is a free-text note.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? comment;

  /// CreatedAt is when the score was stored.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// CreatedBy is who created the score.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdBy;

  /// DataType is the score's kind — NUMERIC or CATEGORICAL.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataType;

  /// ID is the score's id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Name is the score's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// ObservationID is the observation the score attaches to, when narrowed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? observationId;

  /// Source is where the score came from, e.g. API, EVAL.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// StringValue is the categorical score, when the score is categorical.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stringValue;

  /// Timestamp is the score's own event time.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timestamp;

  /// TraceID is the trace the score attaches to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? traceId;

  /// UpdatedAt is when the score last changed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  /// Value is the numeric score.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yLLMScore &&
    other.comment == comment &&
    other.createdAt == createdAt &&
    other.createdBy == createdBy &&
    other.dataType == dataType &&
    other.id == id &&
    other.name == name &&
    other.observationId == observationId &&
    other.source_ == source_ &&
    other.stringValue == stringValue &&
    other.timestamp == timestamp &&
    other.traceId == traceId &&
    other.updatedAt == updatedAt &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (comment == null ? 0 : comment!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (createdBy == null ? 0 : createdBy!.hashCode) +
    (dataType == null ? 0 : dataType!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (observationId == null ? 0 : observationId!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (stringValue == null ? 0 : stringValue!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (traceId == null ? 0 : traceId!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'O11yO11yLLMScore[comment=$comment, createdAt=$createdAt, createdBy=$createdBy, dataType=$dataType, id=$id, name=$name, observationId=$observationId, source_=$source_, stringValue=$stringValue, timestamp=$timestamp, traceId=$traceId, updatedAt=$updatedAt, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.comment != null) {
      json[r'comment'] = this.comment;
    } else {
      json[r'comment'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.createdBy != null) {
      json[r'createdBy'] = this.createdBy;
    } else {
      json[r'createdBy'] = null;
    }
    if (this.dataType != null) {
      json[r'dataType'] = this.dataType;
    } else {
      json[r'dataType'] = null;
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
    if (this.observationId != null) {
      json[r'observationId'] = this.observationId;
    } else {
      json[r'observationId'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.stringValue != null) {
      json[r'stringValue'] = this.stringValue;
    } else {
      json[r'stringValue'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp!.toUtc().toIso8601String();
    } else {
      json[r'timestamp'] = null;
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
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yLLMScore] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yLLMScore? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yLLMScore[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yLLMScore[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yLLMScore(
        comment: mapValueOfType<String>(json, r'comment'),
        createdAt: mapDateTime(json, r'createdAt', r''),
        createdBy: mapValueOfType<String>(json, r'createdBy'),
        dataType: mapValueOfType<String>(json, r'dataType'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        observationId: mapValueOfType<String>(json, r'observationId'),
        source_: mapValueOfType<String>(json, r'source'),
        stringValue: mapValueOfType<String>(json, r'stringValue'),
        timestamp: mapDateTime(json, r'timestamp', r''),
        traceId: mapValueOfType<String>(json, r'traceId'),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        value: num.parse('${json[r'value']}'),
      );
    }
    return null;
  }

  static List<O11yO11yLLMScore> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yLLMScore>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yLLMScore.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yLLMScore> mapFromJson(dynamic json) {
    final map = <String, O11yO11yLLMScore>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yLLMScore.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yLLMScore-objects as value to a dart map
  static Map<String, List<O11yO11yLLMScore>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yLLMScore>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yLLMScore.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

