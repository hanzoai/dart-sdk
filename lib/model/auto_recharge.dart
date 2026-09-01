//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AutoRecharge {
  /// Returns a new [AutoRecharge] instance.
  AutoRecharge({
    this.amountCents,
    this.currency,
    this.enabled,
    this.lastRechargedAt,
    this.stored,
    this.subject,
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
  String? lastRechargedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? stored;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? thresholdCents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AutoRecharge &&
    other.amountCents == amountCents &&
    other.currency == currency &&
    other.enabled == enabled &&
    other.lastRechargedAt == lastRechargedAt &&
    other.stored == stored &&
    other.subject == subject &&
    other.thresholdCents == thresholdCents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amountCents == null ? 0 : amountCents!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode) +
    (lastRechargedAt == null ? 0 : lastRechargedAt!.hashCode) +
    (stored == null ? 0 : stored!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (thresholdCents == null ? 0 : thresholdCents!.hashCode);

  @override
  String toString() => 'AutoRecharge[amountCents=$amountCents, currency=$currency, enabled=$enabled, lastRechargedAt=$lastRechargedAt, stored=$stored, subject=$subject, thresholdCents=$thresholdCents]';

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
    if (this.lastRechargedAt != null) {
      json[r'lastRechargedAt'] = this.lastRechargedAt;
    } else {
      json[r'lastRechargedAt'] = null;
    }
    if (this.stored != null) {
      json[r'stored'] = this.stored;
    } else {
      json[r'stored'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.thresholdCents != null) {
      json[r'thresholdCents'] = this.thresholdCents;
    } else {
      json[r'thresholdCents'] = null;
    }
    return json;
  }

  /// Returns a new [AutoRecharge] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AutoRecharge? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AutoRecharge[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AutoRecharge[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AutoRecharge(
        amountCents: mapValueOfType<int>(json, r'amountCents'),
        currency: mapValueOfType<String>(json, r'currency'),
        enabled: mapValueOfType<bool>(json, r'enabled'),
        lastRechargedAt: mapValueOfType<String>(json, r'lastRechargedAt'),
        stored: mapValueOfType<bool>(json, r'stored'),
        subject: mapValueOfType<String>(json, r'subject'),
        thresholdCents: mapValueOfType<int>(json, r'thresholdCents'),
      );
    }
    return null;
  }

  static List<AutoRecharge> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AutoRecharge>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AutoRecharge.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AutoRecharge> mapFromJson(dynamic json) {
    final map = <String, AutoRecharge>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AutoRecharge.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AutoRecharge-objects as value to a dart map
  static Map<String, List<AutoRecharge>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AutoRecharge>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AutoRecharge.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

