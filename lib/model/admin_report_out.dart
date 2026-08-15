//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AdminReportOut {
  /// Returns a new [AdminReportOut] instance.
  AdminReportOut({
    this.data,
    this.msg,
    this.status,
  });

  /// Data is the treasury board.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AdminReportData? data;

  /// Msg carries an operator-facing note; empty on success.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? msg;

  /// Status is \"ok\" on success; the transport maps a non-ok envelope to an error.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminReportOut &&
    other.data == data &&
    other.msg == msg &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data == null ? 0 : data!.hashCode) +
    (msg == null ? 0 : msg!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'AdminReportOut[data=$data, msg=$msg, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    if (this.msg != null) {
      json[r'msg'] = this.msg;
    } else {
      json[r'msg'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [AdminReportOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminReportOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AdminReportOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AdminReportOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AdminReportOut(
        data: AdminReportData.fromJson(json[r'data']),
        msg: mapValueOfType<String>(json, r'msg'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<AdminReportOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminReportOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminReportOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminReportOut> mapFromJson(dynamic json) {
    final map = <String, AdminReportOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminReportOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminReportOut-objects as value to a dart map
  static Map<String, List<AdminReportOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminReportOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminReportOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

