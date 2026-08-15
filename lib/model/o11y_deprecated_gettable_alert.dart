//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yDeprecatedGettableAlert {
  /// Returns a new [O11yDeprecatedGettableAlert] instance.
  O11yDeprecatedGettableAlert({
    this.alert,
    this.fingerprint,
    this.receivers = const [],
    this.status,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yAlert? alert;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fingerprint;

  List<String> receivers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yAlertStatus? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yDeprecatedGettableAlert &&
    other.alert == alert &&
    other.fingerprint == fingerprint &&
    _deepEquality.equals(other.receivers, receivers) &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (alert == null ? 0 : alert!.hashCode) +
    (fingerprint == null ? 0 : fingerprint!.hashCode) +
    (receivers.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'O11yDeprecatedGettableAlert[alert=$alert, fingerprint=$fingerprint, receivers=$receivers, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.alert != null) {
      json[r'Alert'] = this.alert;
    } else {
      json[r'Alert'] = null;
    }
    if (this.fingerprint != null) {
      json[r'fingerprint'] = this.fingerprint;
    } else {
      json[r'fingerprint'] = null;
    }
      json[r'receivers'] = this.receivers;
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [O11yDeprecatedGettableAlert] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yDeprecatedGettableAlert? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yDeprecatedGettableAlert[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yDeprecatedGettableAlert[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yDeprecatedGettableAlert(
        alert: O11yAlert.fromJson(json[r'Alert']),
        fingerprint: mapValueOfType<String>(json, r'fingerprint'),
        receivers: json[r'receivers'] is Iterable
            ? (json[r'receivers'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        status: O11yAlertStatus.fromJson(json[r'status']),
      );
    }
    return null;
  }

  static List<O11yDeprecatedGettableAlert> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yDeprecatedGettableAlert>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yDeprecatedGettableAlert.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yDeprecatedGettableAlert> mapFromJson(dynamic json) {
    final map = <String, O11yDeprecatedGettableAlert>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yDeprecatedGettableAlert.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yDeprecatedGettableAlert-objects as value to a dart map
  static Map<String, List<O11yDeprecatedGettableAlert>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yDeprecatedGettableAlert>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yDeprecatedGettableAlert.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

