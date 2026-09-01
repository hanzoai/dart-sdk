//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AutoRechargeEdit {
  /// Returns a new [AutoRechargeEdit] instance.
  AutoRechargeEdit({
    this.amountCents,
    this.currency,
    this.enabled,
    this.thresholdCents,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amountCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? thresholdCents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AutoRechargeEdit &&
    other.amountCents == amountCents &&
    other.currency == currency &&
    other.enabled == enabled &&
    other.thresholdCents == thresholdCents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amountCents == null ? 0 : amountCents!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode) +
    (thresholdCents == null ? 0 : thresholdCents!.hashCode);

  @override
  String toString() => 'AutoRechargeEdit[amountCents=$amountCents, currency=$currency, enabled=$enabled, thresholdCents=$thresholdCents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.amountCents != null) {
      json[r'amountCents'] = this.amountCents;
    } else {
      json[r'amountCents'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    if (this.thresholdCents != null) {
      json[r'thresholdCents'] = this.thresholdCents;
    } else {
      json[r'thresholdCents'] = null;
    }
    return json;
  }

  /// Returns a new [AutoRechargeEdit] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AutoRechargeEdit? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AutoRechargeEdit[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AutoRechargeEdit[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AutoRechargeEdit(
        amountCents: mapValueOfType<int>(json, r'amountCents'),
        currency: mapValueOfType<String>(json, r'currency'),
        enabled: mapValueOfType<bool>(json, r'enabled'),
        thresholdCents: mapValueOfType<int>(json, r'thresholdCents'),
      );
    }
    return null;
  }

  static List<AutoRechargeEdit> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AutoRechargeEdit>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AutoRechargeEdit.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AutoRechargeEdit> mapFromJson(dynamic json) {
    final map = <String, AutoRechargeEdit>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AutoRechargeEdit.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AutoRechargeEdit-objects as value to a dart map
  static Map<String, List<AutoRechargeEdit>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AutoRechargeEdit>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AutoRechargeEdit.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

