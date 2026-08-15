//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CallInput {
  /// Returns a new [CallInput] instance.
  CallInput({
    this.agent,
    this.from,
    this.record,
    this.to,
    this.webhook,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? agent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? from;

  /// Record is a per-call flag rather than a product. Where a recording lands and how long it is kept is the org's retention policy, not this call's.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? record;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? to;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webhook;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CallInput &&
    other.agent == agent &&
    other.from == from &&
    other.record == record &&
    other.to == to &&
    other.webhook == webhook;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (agent == null ? 0 : agent!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (record == null ? 0 : record!.hashCode) +
    (to == null ? 0 : to!.hashCode) +
    (webhook == null ? 0 : webhook!.hashCode);

  @override
  String toString() => 'CallInput[agent=$agent, from=$from, record=$record, to=$to, webhook=$webhook]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.agent != null) {
      json[r'agent'] = this.agent;
    } else {
      json[r'agent'] = null;
    }
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    if (this.record != null) {
      json[r'record'] = this.record;
    } else {
      json[r'record'] = null;
    }
    if (this.to != null) {
      json[r'to'] = this.to;
    } else {
      json[r'to'] = null;
    }
    if (this.webhook != null) {
      json[r'webhook'] = this.webhook;
    } else {
      json[r'webhook'] = null;
    }
    return json;
  }

  /// Returns a new [CallInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CallInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CallInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CallInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CallInput(
        agent: mapValueOfType<String>(json, r'agent'),
        from: mapValueOfType<String>(json, r'from'),
        record: mapValueOfType<bool>(json, r'record'),
        to: mapValueOfType<String>(json, r'to'),
        webhook: mapValueOfType<String>(json, r'webhook'),
      );
    }
    return null;
  }

  static List<CallInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CallInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CallInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CallInput> mapFromJson(dynamic json) {
    final map = <String, CallInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CallInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CallInput-objects as value to a dart map
  static Map<String, List<CallInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CallInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CallInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

