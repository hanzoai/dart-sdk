//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yQueueCheck {
  /// Returns a new [O11yO11yQueueCheck] instance.
  O11yO11yQueueCheck({
    this.attribute,
    this.errorMessage,
    this.status,
  });

  /// Attribute is the span attribute or telemetry the check looked for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? attribute;

  /// Message says what is missing when the check fails; empty on a pass. Its wire key is error_message.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorMessage;

  /// Status is \"1\" when the telemetry is present, \"0\" when it is not.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yQueueCheck &&
    other.attribute == attribute &&
    other.errorMessage == errorMessage &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (attribute == null ? 0 : attribute!.hashCode) +
    (errorMessage == null ? 0 : errorMessage!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'O11yO11yQueueCheck[attribute=$attribute, errorMessage=$errorMessage, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.attribute != null) {
      json[r'attribute'] = this.attribute;
    } else {
      json[r'attribute'] = null;
    }
    if (this.errorMessage != null) {
      json[r'error_message'] = this.errorMessage;
    } else {
      json[r'error_message'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yQueueCheck] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yQueueCheck? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yQueueCheck[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yQueueCheck[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yQueueCheck(
        attribute: mapValueOfType<String>(json, r'attribute'),
        errorMessage: mapValueOfType<String>(json, r'error_message'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<O11yO11yQueueCheck> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yQueueCheck>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yQueueCheck.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yQueueCheck> mapFromJson(dynamic json) {
    final map = <String, O11yO11yQueueCheck>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yQueueCheck.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yQueueCheck-objects as value to a dart map
  static Map<String, List<O11yO11yQueueCheck>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yQueueCheck>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yQueueCheck.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

