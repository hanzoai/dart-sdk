//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yAlertmanagertypesReceiver {
  /// Returns a new [O11yAlertmanagertypesReceiver] instance.
  O11yAlertmanagertypesReceiver({
    this.receiver,
    this.googlechatConfigs = const [],
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yReceiver? receiver;

  List<O11yGoogleChatReceiverConfig> googlechatConfigs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yAlertmanagertypesReceiver &&
    other.receiver == receiver &&
    _deepEquality.equals(other.googlechatConfigs, googlechatConfigs);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (receiver == null ? 0 : receiver!.hashCode) +
    (googlechatConfigs.hashCode);

  @override
  String toString() => 'O11yAlertmanagertypesReceiver[receiver=$receiver, googlechatConfigs=$googlechatConfigs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.receiver != null) {
      json[r'Receiver'] = this.receiver;
    } else {
      json[r'Receiver'] = null;
    }
      json[r'googlechat_configs'] = this.googlechatConfigs;
    return json;
  }

  /// Returns a new [O11yAlertmanagertypesReceiver] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yAlertmanagertypesReceiver? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yAlertmanagertypesReceiver[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yAlertmanagertypesReceiver[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yAlertmanagertypesReceiver(
        receiver: O11yReceiver.fromJson(json[r'Receiver']),
        googlechatConfigs: O11yGoogleChatReceiverConfig.listFromJson(json[r'googlechat_configs']),
      );
    }
    return null;
  }

  static List<O11yAlertmanagertypesReceiver> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yAlertmanagertypesReceiver>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yAlertmanagertypesReceiver.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yAlertmanagertypesReceiver> mapFromJson(dynamic json) {
    final map = <String, O11yAlertmanagertypesReceiver>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yAlertmanagertypesReceiver.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yAlertmanagertypesReceiver-objects as value to a dart map
  static Map<String, List<O11yAlertmanagertypesReceiver>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yAlertmanagertypesReceiver>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yAlertmanagertypesReceiver.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

