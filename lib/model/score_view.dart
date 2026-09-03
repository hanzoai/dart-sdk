//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ScoreView {
  /// Returns a new [ScoreView] instance.
  ScoreView({
    this.comment,
    this.dataType,
    this.id,
    this.name,
    this.runName,
    this.stringValue,
    this.timestamp,
    this.traceId,
    this.value,
  });
  /// Comment is the grader's reasoning, truncated at 2000 characters.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? comment;

  /// DataType is NUMERIC, CATEGORICAL or BOOLEAN.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataType;

  /// ID is the score event's handle.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Name is the score name, which a rubric of the same name governs.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// RunName is the run this score was recorded under, when it came from one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? runName;

  /// StringValue is the label of a CATEGORICAL score.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stringValue;

  /// Timestamp is when the score was recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timestamp;

  /// TraceID is the model call this score grades, when it grades one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? traceId;

  /// Value is the numeric score; for BOOLEAN it is 0 or 1.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScoreView &&
    other.comment == comment &&
    other.dataType == dataType &&
    other.id == id &&
    other.name == name &&
    other.runName == runName &&
    other.stringValue == stringValue &&
    other.timestamp == timestamp &&
    other.traceId == traceId &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (comment == null ? 0 : comment!.hashCode) +
    (dataType == null ? 0 : dataType!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (runName == null ? 0 : runName!.hashCode) +
    (stringValue == null ? 0 : stringValue!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (traceId == null ? 0 : traceId!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'ScoreView[comment=$comment, dataType=$dataType, id=$id, name=$name, runName=$runName, stringValue=$stringValue, timestamp=$timestamp, traceId=$traceId, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.comment != null) {
      json[r'comment'] = this.comment;
    } else {
      json[r'comment'] = null;
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
    if (this.runName != null) {
      json[r'runName'] = this.runName;
    } else {
      json[r'runName'] = null;
    }
    if (this.stringValue != null) {
      json[r'stringValue'] = this.stringValue;
    } else {
      json[r'stringValue'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp;
    } else {
      json[r'timestamp'] = null;
    }
    if (this.traceId != null) {
      json[r'traceId'] = this.traceId;
    } else {
      json[r'traceId'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [ScoreView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScoreView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScoreView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScoreView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScoreView(
        comment: mapValueOfType<String>(json, r'comment'),
        dataType: mapValueOfType<String>(json, r'dataType'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        runName: mapValueOfType<String>(json, r'runName'),
        stringValue: mapValueOfType<String>(json, r'stringValue'),
        timestamp: mapValueOfType<String>(json, r'timestamp'),
        traceId: mapValueOfType<String>(json, r'traceId'),
        value: mapValueOfType<double>(json, r'value'),
      );
    }
    return null;
  }

  static List<ScoreView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScoreView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScoreView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScoreView> mapFromJson(dynamic json) {
    final map = <String, ScoreView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScoreView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScoreView-objects as value to a dart map
  static Map<String, List<ScoreView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScoreView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScoreView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

