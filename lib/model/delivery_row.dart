//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DeliveryRow {
  /// Returns a new [DeliveryRow] instance.
  DeliveryRow({
    this.attempt,
    this.created,
    this.delivery,
    this.durationMs,
    this.endpoint,
    this.error,
    this.httpStatus,
    this.status,
    this.subject,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? attempt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? created;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? delivery;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? durationMs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? endpoint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? httpStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliveryRow &&
    other.attempt == attempt &&
    other.created == created &&
    other.delivery == delivery &&
    other.durationMs == durationMs &&
    other.endpoint == endpoint &&
    other.error == error &&
    other.httpStatus == httpStatus &&
    other.status == status &&
    other.subject == subject;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (attempt == null ? 0 : attempt!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (delivery == null ? 0 : delivery!.hashCode) +
    (durationMs == null ? 0 : durationMs!.hashCode) +
    (endpoint == null ? 0 : endpoint!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (httpStatus == null ? 0 : httpStatus!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (subject == null ? 0 : subject!.hashCode);

  @override
  String toString() => 'DeliveryRow[attempt=$attempt, created=$created, delivery=$delivery, durationMs=$durationMs, endpoint=$endpoint, error=$error, httpStatus=$httpStatus, status=$status, subject=$subject]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.attempt != null) {
      json[r'attempt'] = this.attempt;
    } else {
      json[r'attempt'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.delivery != null) {
      json[r'delivery'] = this.delivery;
    } else {
      json[r'delivery'] = null;
    }
    if (this.durationMs != null) {
      json[r'durationMs'] = this.durationMs;
    } else {
      json[r'durationMs'] = null;
    }
    if (this.endpoint != null) {
      json[r'endpoint'] = this.endpoint;
    } else {
      json[r'endpoint'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.httpStatus != null) {
      json[r'httpStatus'] = this.httpStatus;
    } else {
      json[r'httpStatus'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    return json;
  }

  /// Returns a new [DeliveryRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliveryRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeliveryRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeliveryRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeliveryRow(
        attempt: mapValueOfType<int>(json, r'attempt'),
        created: mapValueOfType<String>(json, r'created'),
        delivery: mapValueOfType<String>(json, r'delivery'),
        durationMs: mapValueOfType<int>(json, r'durationMs'),
        endpoint: mapValueOfType<String>(json, r'endpoint'),
        error: mapValueOfType<String>(json, r'error'),
        httpStatus: mapValueOfType<int>(json, r'httpStatus'),
        status: mapValueOfType<String>(json, r'status'),
        subject: mapValueOfType<String>(json, r'subject'),
      );
    }
    return null;
  }

  static List<DeliveryRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliveryRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliveryRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliveryRow> mapFromJson(dynamic json) {
    final map = <String, DeliveryRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliveryRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliveryRow-objects as value to a dart map
  static Map<String, List<DeliveryRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliveryRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliveryRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

