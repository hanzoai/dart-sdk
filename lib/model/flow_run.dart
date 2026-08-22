//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FlowRun {
  /// Returns a new [FlowRun] instance.
  FlowRun({
    this.input,
    this.session,
    this.tweaks,
    this.workflow,
  });
  /// Input is the run's chat input value, handed to the graph's input node.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? input;

  /// Session groups runs into one conversation; the product mints one when absent and returns it in the response.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? session;

  Object? tweaks;

  /// Workflow is the UUID of the workflow to run.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? workflow;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FlowRun &&
    other.input == input &&
    other.session == session &&
    other.tweaks == tweaks &&
    other.workflow == workflow;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (input == null ? 0 : input!.hashCode) +
    (session == null ? 0 : session!.hashCode) +
    (tweaks == null ? 0 : tweaks!.hashCode) +
    (workflow == null ? 0 : workflow!.hashCode);

  @override
  String toString() => 'FlowRun[input=$input, session=$session, tweaks=$tweaks, workflow=$workflow]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.input != null) {
      json[r'input'] = this.input;
    } else {
      json[r'input'] = null;
    }
    if (this.session != null) {
      json[r'session'] = this.session;
    } else {
      json[r'session'] = null;
    }
    if (this.tweaks != null) {
      json[r'tweaks'] = this.tweaks;
    } else {
      json[r'tweaks'] = null;
    }
    if (this.workflow != null) {
      json[r'workflow'] = this.workflow;
    } else {
      json[r'workflow'] = null;
    }
    return json;
  }

  /// Returns a new [FlowRun] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FlowRun? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FlowRun[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FlowRun[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FlowRun(
        input: mapValueOfType<String>(json, r'input'),
        session: mapValueOfType<String>(json, r'session'),
        tweaks: mapValueOfType<Object>(json, r'tweaks'),
        workflow: mapValueOfType<String>(json, r'workflow'),
      );
    }
    return null;
  }

  static List<FlowRun> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FlowRun>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FlowRun.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FlowRun> mapFromJson(dynamic json) {
    final map = <String, FlowRun>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FlowRun.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FlowRun-objects as value to a dart map
  static Map<String, List<FlowRun>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FlowRun>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FlowRun.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

