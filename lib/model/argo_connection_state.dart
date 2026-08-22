//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ArgoConnectionState {
  /// Returns a new [ArgoConnectionState] instance.
  ArgoConnectionState({
    this.attemptedAt,
    this.message,
    this.status,
  });
  /// AttemptedAt is when the connection was last probed. Always absent: nothing is probed, and a fabricated timestamp would claim a check that never ran.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? attemptedAt;

  /// Message is why a connection failed. Always absent, since none does.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  /// Status is ArgoCD's ConnectionStatus — Successful, Failed or Unknown. Always Successful here: the destination is the cluster this process is already running in, so it is reachable by construction and there is no credential to probe.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ArgoConnectionState &&
    other.attemptedAt == attemptedAt &&
    other.message == message &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (attemptedAt == null ? 0 : attemptedAt!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'ArgoConnectionState[attemptedAt=$attemptedAt, message=$message, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.attemptedAt != null) {
      json[r'attemptedAt'] = this.attemptedAt;
    } else {
      json[r'attemptedAt'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [ArgoConnectionState] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ArgoConnectionState? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ArgoConnectionState[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ArgoConnectionState[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ArgoConnectionState(
        attemptedAt: mapValueOfType<String>(json, r'attemptedAt'),
        message: mapValueOfType<String>(json, r'message'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<ArgoConnectionState> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ArgoConnectionState>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ArgoConnectionState.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ArgoConnectionState> mapFromJson(dynamic json) {
    final map = <String, ArgoConnectionState>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ArgoConnectionState.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ArgoConnectionState-objects as value to a dart map
  static Map<String, List<ArgoConnectionState>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ArgoConnectionState>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ArgoConnectionState.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

