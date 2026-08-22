//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class KmsHealth {
  /// Returns a new [KmsHealth] instance.
  KmsHealth({
    this.error,
    this.ready,
    this.service,
    this.signing,
    this.status,
  });
  /// Error is the honest reason readiness is false: no in-process KMS client, or no master key. Absent when ready.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  /// Ready is whether a secret operation would actually succeed right now. These are exactly the two states in which the secret operations refuse.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ready;

  /// Service names the subsystem answering, `kms`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? service;

  /// Signing reports whether signing keys are configured. Absent when there is no in-process client to ask.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? signing;

  /// Status is `ok` or `degraded`, the one-word form of Ready.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is KmsHealth &&
    other.error == error &&
    other.ready == ready &&
    other.service == service &&
    other.signing == signing &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error == null ? 0 : error!.hashCode) +
    (ready == null ? 0 : ready!.hashCode) +
    (service == null ? 0 : service!.hashCode) +
    (signing == null ? 0 : signing!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'KmsHealth[error=$error, ready=$ready, service=$service, signing=$signing, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.ready != null) {
      json[r'ready'] = this.ready;
    } else {
      json[r'ready'] = null;
    }
    if (this.service != null) {
      json[r'service'] = this.service;
    } else {
      json[r'service'] = null;
    }
    if (this.signing != null) {
      json[r'signing'] = this.signing;
    } else {
      json[r'signing'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [KmsHealth] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static KmsHealth? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "KmsHealth[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "KmsHealth[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return KmsHealth(
        error: mapValueOfType<String>(json, r'error'),
        ready: mapValueOfType<bool>(json, r'ready'),
        service: mapValueOfType<String>(json, r'service'),
        signing: mapValueOfType<bool>(json, r'signing'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<KmsHealth> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <KmsHealth>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KmsHealth.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, KmsHealth> mapFromJson(dynamic json) {
    final map = <String, KmsHealth>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = KmsHealth.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of KmsHealth-objects as value to a dart map
  static Map<String, List<KmsHealth>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<KmsHealth>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = KmsHealth.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

