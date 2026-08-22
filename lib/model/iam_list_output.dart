//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamListOutput {
  /// Returns a new [IamListOutput] instance.
  IamListOutput({
    this.auditLogs = const [],
    this.total,
  });
  List<IamAuditLog> auditLogs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamListOutput &&
    _deepEquality.equals(other.auditLogs, auditLogs) &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (auditLogs.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'IamListOutput[auditLogs=$auditLogs, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'auditLogs'] = this.auditLogs;
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [IamListOutput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamListOutput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamListOutput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamListOutput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamListOutput(
        auditLogs: IamAuditLog.listFromJson(json[r'auditLogs']),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<IamListOutput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamListOutput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamListOutput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamListOutput> mapFromJson(dynamic json) {
    final map = <String, IamListOutput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamListOutput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamListOutput-objects as value to a dart map
  static Map<String, List<IamListOutput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamListOutput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamListOutput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

