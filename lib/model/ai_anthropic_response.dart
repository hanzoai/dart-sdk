//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AiAnthropicResponse {
  /// Returns a new [AiAnthropicResponse] instance.
  AiAnthropicResponse({
    this.content = const [],
    this.id,
    this.model,
    this.role,
    this.stopReason,
    this.type,
    this.usage,
  });
  List<AiAnthropicContentBlock> content;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? role;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stopReason;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AiAnthropicUsage? usage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AiAnthropicResponse &&
    _deepEquality.equals(other.content, content) &&
    other.id == id &&
    other.model == model &&
    other.role == role &&
    other.stopReason == stopReason &&
    other.type == type &&
    other.usage == usage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (content.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (role == null ? 0 : role!.hashCode) +
    (stopReason == null ? 0 : stopReason!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (usage == null ? 0 : usage!.hashCode);

  @override
  String toString() => 'AiAnthropicResponse[content=$content, id=$id, model=$model, role=$role, stopReason=$stopReason, type=$type, usage=$usage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'content'] = this.content;
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
    if (this.role != null) {
      json[r'role'] = this.role;
    } else {
      json[r'role'] = null;
    }
    if (this.stopReason != null) {
      json[r'stop_reason'] = this.stopReason;
    } else {
      json[r'stop_reason'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.usage != null) {
      json[r'usage'] = this.usage;
    } else {
      json[r'usage'] = null;
    }
    return json;
  }

  /// Returns a new [AiAnthropicResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AiAnthropicResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AiAnthropicResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AiAnthropicResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AiAnthropicResponse(
        content: AiAnthropicContentBlock.listFromJson(json[r'content']),
        id: mapValueOfType<String>(json, r'id'),
        model: mapValueOfType<String>(json, r'model'),
        role: mapValueOfType<String>(json, r'role'),
        stopReason: mapValueOfType<String>(json, r'stop_reason'),
        type: mapValueOfType<String>(json, r'type'),
        usage: AiAnthropicUsage.fromJson(json[r'usage']),
      );
    }
    return null;
  }

  static List<AiAnthropicResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AiAnthropicResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AiAnthropicResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AiAnthropicResponse> mapFromJson(dynamic json) {
    final map = <String, AiAnthropicResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AiAnthropicResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AiAnthropicResponse-objects as value to a dart map
  static Map<String, List<AiAnthropicResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AiAnthropicResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AiAnthropicResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

