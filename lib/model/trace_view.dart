//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TraceView {
  /// Returns a new [TraceView] instance.
  TraceView({
    this.apiKeyHash,
    this.datasetItemId,
    this.datasetName,
    this.endTime,
    this.id,
    this.input,
    this.latencyMs,
    this.model,
    this.name,
    this.output,
    this.projectId,
    this.runName,
    this.sessionId,
    this.startTime,
    this.timestamp,
  });
  /// APIKeyHash is the non-reversible credential ref (never a plaintext key), so a trace correlates to the key that drove it without the store holding a secret.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? apiKeyHash;

  /// ItemID is the example the call answered.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? datasetItemId;

  /// Dataset is the set the graded example came from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? datasetName;

  /// EndTime is when it returned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? endTime;

  /// ID is the trace's handle, the value a score points at.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Input is what the model was given.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? input;

  /// LatencyMs is EndTime-StartTime in milliseconds, nil when the trace carries no timing (so the console renders \"—\", never a fabricated 0).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? latencyMs;

  /// Model is the model that answered.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  /// Name is the trace's label, \"eval:<run>\" for a call a run made.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Output is what it answered.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? output;

  /// ProjectID is the sub-scope within the org the call was made under.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? projectId;

  /// RunName is the run the call belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? runName;

  /// SessionID groups the calls of one run.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sessionId;

  /// StartTime is when the call began.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? startTime;

  /// Timestamp is the trace's own clock, equal to StartTime for a timed call.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timestamp;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TraceView &&
    other.apiKeyHash == apiKeyHash &&
    other.datasetItemId == datasetItemId &&
    other.datasetName == datasetName &&
    other.endTime == endTime &&
    other.id == id &&
    other.input == input &&
    other.latencyMs == latencyMs &&
    other.model == model &&
    other.name == name &&
    other.output == output &&
    other.projectId == projectId &&
    other.runName == runName &&
    other.sessionId == sessionId &&
    other.startTime == startTime &&
    other.timestamp == timestamp;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (apiKeyHash == null ? 0 : apiKeyHash!.hashCode) +
    (datasetItemId == null ? 0 : datasetItemId!.hashCode) +
    (datasetName == null ? 0 : datasetName!.hashCode) +
    (endTime == null ? 0 : endTime!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (input == null ? 0 : input!.hashCode) +
    (latencyMs == null ? 0 : latencyMs!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (output == null ? 0 : output!.hashCode) +
    (projectId == null ? 0 : projectId!.hashCode) +
    (runName == null ? 0 : runName!.hashCode) +
    (sessionId == null ? 0 : sessionId!.hashCode) +
    (startTime == null ? 0 : startTime!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode);

  @override
  String toString() => 'TraceView[apiKeyHash=$apiKeyHash, datasetItemId=$datasetItemId, datasetName=$datasetName, endTime=$endTime, id=$id, input=$input, latencyMs=$latencyMs, model=$model, name=$name, output=$output, projectId=$projectId, runName=$runName, sessionId=$sessionId, startTime=$startTime, timestamp=$timestamp]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.apiKeyHash != null) {
      json[r'apiKeyHash'] = this.apiKeyHash;
    } else {
      json[r'apiKeyHash'] = null;
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
    if (this.endTime != null) {
      json[r'endTime'] = this.endTime;
    } else {
      json[r'endTime'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.input != null) {
      json[r'input'] = this.input;
    } else {
      json[r'input'] = null;
    }
    if (this.latencyMs != null) {
      json[r'latencyMs'] = this.latencyMs;
    } else {
      json[r'latencyMs'] = null;
    }
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.output != null) {
      json[r'output'] = this.output;
    } else {
      json[r'output'] = null;
    }
    if (this.projectId != null) {
      json[r'projectId'] = this.projectId;
    } else {
      json[r'projectId'] = null;
    }
    if (this.runName != null) {
      json[r'runName'] = this.runName;
    } else {
      json[r'runName'] = null;
    }
    if (this.sessionId != null) {
      json[r'sessionId'] = this.sessionId;
    } else {
      json[r'sessionId'] = null;
    }
    if (this.startTime != null) {
      json[r'startTime'] = this.startTime;
    } else {
      json[r'startTime'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp;
    } else {
      json[r'timestamp'] = null;
    }
    return json;
  }

  /// Returns a new [TraceView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TraceView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TraceView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TraceView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TraceView(
        apiKeyHash: mapValueOfType<String>(json, r'apiKeyHash'),
        datasetItemId: mapValueOfType<String>(json, r'datasetItemId'),
        datasetName: mapValueOfType<String>(json, r'datasetName'),
        endTime: mapValueOfType<String>(json, r'endTime'),
        id: mapValueOfType<String>(json, r'id'),
        input: mapValueOfType<Object>(json, r'input'),
        latencyMs: num.parse('${json[r'latencyMs']}'),
        model: mapValueOfType<String>(json, r'model'),
        name: mapValueOfType<String>(json, r'name'),
        output: mapValueOfType<String>(json, r'output'),
        projectId: mapValueOfType<String>(json, r'projectId'),
        runName: mapValueOfType<String>(json, r'runName'),
        sessionId: mapValueOfType<String>(json, r'sessionId'),
        startTime: mapValueOfType<String>(json, r'startTime'),
        timestamp: mapValueOfType<String>(json, r'timestamp'),
      );
    }
    return null;
  }

  static List<TraceView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TraceView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TraceView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TraceView> mapFromJson(dynamic json) {
    final map = <String, TraceView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TraceView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TraceView-objects as value to a dart map
  static Map<String, List<TraceView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TraceView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TraceView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

