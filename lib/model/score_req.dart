//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ScoreReq {
  /// Returns a new [ScoreReq] instance.
  ScoreReq({
    this.comment,
    this.dataType,
    this.datasetItemId,
    this.datasetName,
    required this.name,
    this.runName,
    this.stringValue,
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

  /// DataType is NUMERIC, CATEGORICAL or BOOLEAN. A declared rubric overrides it — a caller cannot claim a type the org's rubric contradicts.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataType;

  /// ItemID attaches the score to one graded example.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? datasetItemId;

  /// Dataset attaches the score to one dataset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? datasetName;

  /// Name is the score name. A rubric of the same name, if the org has declared one, decides this score's type and the values it may take.
  String name;

  /// RunName attaches the score to one run.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? runName;

  /// StringValue is the label of a CATEGORICAL score, which must be one the rubric allows.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stringValue;

  /// TraceID attaches the score to one model call.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? traceId;

  /// Value is the numeric score, which must be finite: NaN and Inf are refused. A BOOLEAN score takes 0 or 1.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScoreReq &&
    other.comment == comment &&
    other.dataType == dataType &&
    other.datasetItemId == datasetItemId &&
    other.datasetName == datasetName &&
    other.name == name &&
    other.runName == runName &&
    other.stringValue == stringValue &&
    other.traceId == traceId &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (comment == null ? 0 : comment!.hashCode) +
    (dataType == null ? 0 : dataType!.hashCode) +
    (datasetItemId == null ? 0 : datasetItemId!.hashCode) +
    (datasetName == null ? 0 : datasetName!.hashCode) +
    (name.hashCode) +
    (runName == null ? 0 : runName!.hashCode) +
    (stringValue == null ? 0 : stringValue!.hashCode) +
    (traceId == null ? 0 : traceId!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'ScoreReq[comment=$comment, dataType=$dataType, datasetItemId=$datasetItemId, datasetName=$datasetName, name=$name, runName=$runName, stringValue=$stringValue, traceId=$traceId, value=$value]';

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
    if (this.datasetItemId != null) {
      json[r'datasetItemId'] = this.datasetItemId;
    } else {
      json[r'datasetItemId'] = null;
    }
    if (this.datasetName != null) {
      json[r'datasetName'] = this.datasetName;
    } else {
      json[r'datasetName'] = null;
    }
      json[r'name'] = this.name;
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

  /// Returns a new [ScoreReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScoreReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScoreReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScoreReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScoreReq(
        comment: mapValueOfType<String>(json, r'comment'),
        dataType: mapValueOfType<String>(json, r'dataType'),
        datasetItemId: mapValueOfType<String>(json, r'datasetItemId'),
        datasetName: mapValueOfType<String>(json, r'datasetName'),
        name: mapValueOfType<String>(json, r'name')!,
        runName: mapValueOfType<String>(json, r'runName'),
        stringValue: mapValueOfType<String>(json, r'stringValue'),
        traceId: mapValueOfType<String>(json, r'traceId'),
        value: num.parse('${json[r'value']}'),
      );
    }
    return null;
  }

  static List<ScoreReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScoreReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScoreReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScoreReq> mapFromJson(dynamic json) {
    final map = <String, ScoreReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScoreReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScoreReq-objects as value to a dart map
  static Map<String, List<ScoreReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScoreReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScoreReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

