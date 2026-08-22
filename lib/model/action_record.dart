//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ActionRecord {
  /// Returns a new [ActionRecord] instance.
  ActionRecord({
    this.args,
    this.createdAt,
    this.err,
    this.id,
    this.ok,
    this.result,
    this.stepId,
    this.tool,
  });
  /// Args is the JSON the tool was called with, recorded as TEXT exactly as sent — including whatever the AI drafted into it — so a run can be read back and reproduced. It is a string, not an object.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? args;

  /// CreatedAt is when the run was recorded, as Unix seconds. The ledger is read newest-first on this column.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// Err is why the run failed, when it did. Empty on a successful run.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? err;

  /// ID identifies this one execution. The ledger is append-only, so an id is never reused and never updated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// OK is whether the tool ran to completion. It is the ledger's own verdict, not the tool's opinion of the outcome — a tool that succeeded at reporting bad news is ok.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ok;

  /// Result is the tool's own answer, likewise recorded as JSON text. Present on a failed run too, where the tool answered but the answer was a refusal.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? result;

  /// StepID is the checklist step the Business AI was acting on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stepId;

  /// Tool is the MCP tool that was dispatched, by name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tool;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ActionRecord &&
    other.args == args &&
    other.createdAt == createdAt &&
    other.err == err &&
    other.id == id &&
    other.ok == ok &&
    other.result == result &&
    other.stepId == stepId &&
    other.tool == tool;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (args == null ? 0 : args!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (err == null ? 0 : err!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (ok == null ? 0 : ok!.hashCode) +
    (result == null ? 0 : result!.hashCode) +
    (stepId == null ? 0 : stepId!.hashCode) +
    (tool == null ? 0 : tool!.hashCode);

  @override
  String toString() => 'ActionRecord[args=$args, createdAt=$createdAt, err=$err, id=$id, ok=$ok, result=$result, stepId=$stepId, tool=$tool]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.args != null) {
      json[r'args'] = this.args;
    } else {
      json[r'args'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.err != null) {
      json[r'err'] = this.err;
    } else {
      json[r'err'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.ok != null) {
      json[r'ok'] = this.ok;
    } else {
      json[r'ok'] = null;
    }
    if (this.result != null) {
      json[r'result'] = this.result;
    } else {
      json[r'result'] = null;
    }
    if (this.stepId != null) {
      json[r'stepId'] = this.stepId;
    } else {
      json[r'stepId'] = null;
    }
    if (this.tool != null) {
      json[r'tool'] = this.tool;
    } else {
      json[r'tool'] = null;
    }
    return json;
  }

  /// Returns a new [ActionRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ActionRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ActionRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ActionRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ActionRecord(
        args: mapValueOfType<String>(json, r'args'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        err: mapValueOfType<String>(json, r'err'),
        id: mapValueOfType<String>(json, r'id'),
        ok: mapValueOfType<bool>(json, r'ok'),
        result: mapValueOfType<String>(json, r'result'),
        stepId: mapValueOfType<String>(json, r'stepId'),
        tool: mapValueOfType<String>(json, r'tool'),
      );
    }
    return null;
  }

  static List<ActionRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ActionRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ActionRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ActionRecord> mapFromJson(dynamic json) {
    final map = <String, ActionRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ActionRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ActionRecord-objects as value to a dart map
  static Map<String, List<ActionRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ActionRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ActionRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

