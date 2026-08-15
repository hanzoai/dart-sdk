//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class InvocationView {
  /// Returns a new [InvocationView] instance.
  InvocationView({
    this.durationMs,
    this.id,
    this.method,
    this.status,
    this.statusCode,
    this.time,
  });

  /// how long it took
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? durationMs;

  /// the invocation's handle
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// the HTTP method that triggered it
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? method;

  /// how the run ended: ok, error or timeout
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Code is the status the function's OWN code answered with, which is not the status of the reply — a program can answer 500 through a healthy sandbox.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? statusCode;

  /// when it ran, RFC3339
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? time;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InvocationView &&
    other.durationMs == durationMs &&
    other.id == id &&
    other.method == method &&
    other.status == status &&
    other.statusCode == statusCode &&
    other.time == time;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (durationMs == null ? 0 : durationMs!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (method == null ? 0 : method!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (statusCode == null ? 0 : statusCode!.hashCode) +
    (time == null ? 0 : time!.hashCode);

  @override
  String toString() => 'InvocationView[durationMs=$durationMs, id=$id, method=$method, status=$status, statusCode=$statusCode, time=$time]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.durationMs != null) {
      json[r'durationMs'] = this.durationMs;
    } else {
      json[r'durationMs'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.method != null) {
      json[r'method'] = this.method;
    } else {
      json[r'method'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.statusCode != null) {
      json[r'statusCode'] = this.statusCode;
    } else {
      json[r'statusCode'] = null;
    }
    if (this.time != null) {
      json[r'time'] = this.time;
    } else {
      json[r'time'] = null;
    }
    return json;
  }

  /// Returns a new [InvocationView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InvocationView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InvocationView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InvocationView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InvocationView(
        durationMs: mapValueOfType<int>(json, r'durationMs'),
        id: mapValueOfType<String>(json, r'id'),
        method: mapValueOfType<String>(json, r'method'),
        status: mapValueOfType<String>(json, r'status'),
        statusCode: mapValueOfType<int>(json, r'statusCode'),
        time: mapValueOfType<String>(json, r'time'),
      );
    }
    return null;
  }

  static List<InvocationView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvocationView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvocationView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InvocationView> mapFromJson(dynamic json) {
    final map = <String, InvocationView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InvocationView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InvocationView-objects as value to a dart map
  static Map<String, List<InvocationView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InvocationView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InvocationView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

