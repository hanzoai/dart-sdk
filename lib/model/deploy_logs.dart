//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DeployLogs {
  /// Returns a new [DeployLogs] instance.
  DeployLogs({
    this.deploymentId,
    this.logs,
    this.source_,
  });

  /// DeploymentID is the deployment these logs belong to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deploymentId;

  /// Logs is the recorded status timeline followed by the streamed pod output, newline-separated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logs;

  /// Source says which pod the log body carries — `build`, `app`, or `none` when neither pod was reachable — so a console can label the pane honestly.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeployLogs &&
    other.deploymentId == deploymentId &&
    other.logs == logs &&
    other.source_ == source_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (deploymentId == null ? 0 : deploymentId!.hashCode) +
    (logs == null ? 0 : logs!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode);

  @override
  String toString() => 'DeployLogs[deploymentId=$deploymentId, logs=$logs, source_=$source_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.deploymentId != null) {
      json[r'deploymentId'] = this.deploymentId;
    } else {
      json[r'deploymentId'] = null;
    }
    if (this.logs != null) {
      json[r'logs'] = this.logs;
    } else {
      json[r'logs'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    return json;
  }

  /// Returns a new [DeployLogs] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeployLogs? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeployLogs[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeployLogs[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeployLogs(
        deploymentId: mapValueOfType<String>(json, r'deploymentId'),
        logs: mapValueOfType<String>(json, r'logs'),
        source_: mapValueOfType<String>(json, r'source'),
      );
    }
    return null;
  }

  static List<DeployLogs> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeployLogs>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeployLogs.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeployLogs> mapFromJson(dynamic json) {
    final map = <String, DeployLogs>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeployLogs.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeployLogs-objects as value to a dart map
  static Map<String, List<DeployLogs>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeployLogs>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeployLogs.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

