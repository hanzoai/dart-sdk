//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yLLMObservation {
  /// Returns a new [O11yO11yLLMObservation] instance.
  O11yO11yLLMObservation({
    this.completionTokens,
    this.id,
    this.latencyMs,
    this.model,
    this.name,
    this.parentObservationId,
    this.promptTokens,
    this.provider,
    this.serviceName,
    this.sessionId,
    this.startTime,
    this.statusCode,
    this.totalCost,
    this.totalTokens,
    this.traceId,
    this.type,
    this.userId,
  });
  /// CompletionTokens is the output token count.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? completionTokens;

  /// ID is the observation's id (the span id).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// LatencyMs is how long it took, in milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? latencyMs;

  /// Model is the model that served it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  /// Name is the observation's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// ParentID is the parent observation, when the span has one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parentObservationId;

  /// PromptTokens is the input token count.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? promptTokens;

  /// Provider is the model's provider.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// ServiceName is the app that emitted it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceName;

  /// SessionID is the conversation the observation belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sessionId;

  /// StartTime is when the observation started.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? startTime;

  /// StatusCode is the observation's status, e.g. OK, ERROR.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? statusCode;

  /// TotalCost is the observation's cost.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? totalCost;

  /// TotalTokens is the sum of prompt and completion tokens.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalTokens;

  /// TraceID is the trace the observation belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? traceId;

  /// Type is the observation kind, e.g. chat, embeddings, tool.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// UserID is the end user the observation is attributed to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yLLMObservation &&
    other.completionTokens == completionTokens &&
    other.id == id &&
    other.latencyMs == latencyMs &&
    other.model == model &&
    other.name == name &&
    other.parentObservationId == parentObservationId &&
    other.promptTokens == promptTokens &&
    other.provider == provider &&
    other.serviceName == serviceName &&
    other.sessionId == sessionId &&
    other.startTime == startTime &&
    other.statusCode == statusCode &&
    other.totalCost == totalCost &&
    other.totalTokens == totalTokens &&
    other.traceId == traceId &&
    other.type == type &&
    other.userId == userId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (completionTokens == null ? 0 : completionTokens!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (latencyMs == null ? 0 : latencyMs!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (parentObservationId == null ? 0 : parentObservationId!.hashCode) +
    (promptTokens == null ? 0 : promptTokens!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (serviceName == null ? 0 : serviceName!.hashCode) +
    (sessionId == null ? 0 : sessionId!.hashCode) +
    (startTime == null ? 0 : startTime!.hashCode) +
    (statusCode == null ? 0 : statusCode!.hashCode) +
    (totalCost == null ? 0 : totalCost!.hashCode) +
    (totalTokens == null ? 0 : totalTokens!.hashCode) +
    (traceId == null ? 0 : traceId!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (userId == null ? 0 : userId!.hashCode);

  @override
  String toString() => 'O11yO11yLLMObservation[completionTokens=$completionTokens, id=$id, latencyMs=$latencyMs, model=$model, name=$name, parentObservationId=$parentObservationId, promptTokens=$promptTokens, provider=$provider, serviceName=$serviceName, sessionId=$sessionId, startTime=$startTime, statusCode=$statusCode, totalCost=$totalCost, totalTokens=$totalTokens, traceId=$traceId, type=$type, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.completionTokens != null) {
      json[r'completionTokens'] = this.completionTokens;
    } else {
      json[r'completionTokens'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
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
    if (this.parentObservationId != null) {
      json[r'parentObservationId'] = this.parentObservationId;
    } else {
      json[r'parentObservationId'] = null;
    }
    if (this.promptTokens != null) {
      json[r'promptTokens'] = this.promptTokens;
    } else {
      json[r'promptTokens'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.serviceName != null) {
      json[r'serviceName'] = this.serviceName;
    } else {
      json[r'serviceName'] = null;
    }
    if (this.sessionId != null) {
      json[r'sessionId'] = this.sessionId;
    } else {
      json[r'sessionId'] = null;
    }
    if (this.startTime != null) {
      json[r'startTime'] = this.startTime!.toUtc().toIso8601String();
    } else {
      json[r'startTime'] = null;
    }
    if (this.statusCode != null) {
      json[r'statusCode'] = this.statusCode;
    } else {
      json[r'statusCode'] = null;
    }
    if (this.totalCost != null) {
      json[r'totalCost'] = this.totalCost;
    } else {
      json[r'totalCost'] = null;
    }
    if (this.totalTokens != null) {
      json[r'totalTokens'] = this.totalTokens;
    } else {
      json[r'totalTokens'] = null;
    }
    if (this.traceId != null) {
      json[r'traceId'] = this.traceId;
    } else {
      json[r'traceId'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yLLMObservation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yLLMObservation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yLLMObservation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yLLMObservation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yLLMObservation(
        completionTokens: mapValueOfType<int>(json, r'completionTokens'),
        id: mapValueOfType<String>(json, r'id'),
        latencyMs: mapValueOfType<double>(json, r'latencyMs'),
        model: mapValueOfType<String>(json, r'model'),
        name: mapValueOfType<String>(json, r'name'),
        parentObservationId: mapValueOfType<String>(json, r'parentObservationId'),
        promptTokens: mapValueOfType<int>(json, r'promptTokens'),
        provider: mapValueOfType<String>(json, r'provider'),
        serviceName: mapValueOfType<String>(json, r'serviceName'),
        sessionId: mapValueOfType<String>(json, r'sessionId'),
        startTime: mapDateTime(json, r'startTime', r''),
        statusCode: mapValueOfType<String>(json, r'statusCode'),
        totalCost: mapValueOfType<double>(json, r'totalCost'),
        totalTokens: mapValueOfType<int>(json, r'totalTokens'),
        traceId: mapValueOfType<String>(json, r'traceId'),
        type: mapValueOfType<String>(json, r'type'),
        userId: mapValueOfType<String>(json, r'userId'),
      );
    }
    return null;
  }

  static List<O11yO11yLLMObservation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yLLMObservation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yLLMObservation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yLLMObservation> mapFromJson(dynamic json) {
    final map = <String, O11yO11yLLMObservation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yLLMObservation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yLLMObservation-objects as value to a dart map
  static Map<String, List<O11yO11yLLMObservation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yLLMObservation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yLLMObservation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

