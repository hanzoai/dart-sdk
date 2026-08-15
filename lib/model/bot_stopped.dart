//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BotStopped {
  /// Returns a new [BotStopped] instance.
  BotStopped({
    this.runId,
    this.status,
  });

  /// RunID is the run that was stopped.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? runId;

  /// Status is the run's terminal state: \"stopped\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BotStopped &&
    other.runId == runId &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (runId == null ? 0 : runId!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'BotStopped[runId=$runId, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.runId != null) {
      json[r'runId'] = this.runId;
    } else {
      json[r'runId'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [BotStopped] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BotStopped? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BotStopped[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BotStopped[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BotStopped(
        runId: mapValueOfType<String>(json, r'runId'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<BotStopped> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BotStopped>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BotStopped.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BotStopped> mapFromJson(dynamic json) {
    final map = <String, BotStopped>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BotStopped.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BotStopped-objects as value to a dart map
  static Map<String, List<BotStopped>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BotStopped>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BotStopped.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

