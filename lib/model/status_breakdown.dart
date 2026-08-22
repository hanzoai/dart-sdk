//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class StatusBreakdown {
  /// Returns a new [StatusBreakdown] instance.
  StatusBreakdown({
    this.error,
    this.success,
    this.timeout,
  });
  /// invocations that ran and failed
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? error;

  /// invocations whose code ran and wrote nothing to stderr
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? success;

  /// invocations that hit their configured deadline
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timeout;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StatusBreakdown &&
    other.error == error &&
    other.success == success &&
    other.timeout == timeout;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error == null ? 0 : error!.hashCode) +
    (success == null ? 0 : success!.hashCode) +
    (timeout == null ? 0 : timeout!.hashCode);

  @override
  String toString() => 'StatusBreakdown[error=$error, success=$success, timeout=$timeout]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.success != null) {
      json[r'success'] = this.success;
    } else {
      json[r'success'] = null;
    }
    if (this.timeout != null) {
      json[r'timeout'] = this.timeout;
    } else {
      json[r'timeout'] = null;
    }
    return json;
  }

  /// Returns a new [StatusBreakdown] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StatusBreakdown? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StatusBreakdown[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StatusBreakdown[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StatusBreakdown(
        error: mapValueOfType<int>(json, r'error'),
        success: mapValueOfType<int>(json, r'success'),
        timeout: mapValueOfType<int>(json, r'timeout'),
      );
    }
    return null;
  }

  static List<StatusBreakdown> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StatusBreakdown>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StatusBreakdown.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StatusBreakdown> mapFromJson(dynamic json) {
    final map = <String, StatusBreakdown>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StatusBreakdown.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StatusBreakdown-objects as value to a dart map
  static Map<String, List<StatusBreakdown>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StatusBreakdown>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StatusBreakdown.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

