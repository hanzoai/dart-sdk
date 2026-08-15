//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FinanceCredit {
  /// Returns a new [FinanceCredit] instance.
  FinanceCredit({
    this.cents,
    this.expiresAt,
    this.grantedAt,
    this.id,
    this.label,
    this.remainingCents,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? expiresAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? grantedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? remainingCents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FinanceCredit &&
    other.cents == cents &&
    other.expiresAt == expiresAt &&
    other.grantedAt == grantedAt &&
    other.id == id &&
    other.label == label &&
    other.remainingCents == remainingCents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cents == null ? 0 : cents!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (grantedAt == null ? 0 : grantedAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (remainingCents == null ? 0 : remainingCents!.hashCode);

  @override
  String toString() => 'FinanceCredit[cents=$cents, expiresAt=$expiresAt, grantedAt=$grantedAt, id=$id, label=$label, remainingCents=$remainingCents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cents != null) {
      json[r'cents'] = this.cents;
    } else {
      json[r'cents'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt;
    } else {
      json[r'expiresAt'] = null;
    }
    if (this.grantedAt != null) {
      json[r'grantedAt'] = this.grantedAt;
    } else {
      json[r'grantedAt'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.remainingCents != null) {
      json[r'remainingCents'] = this.remainingCents;
    } else {
      json[r'remainingCents'] = null;
    }
    return json;
  }

  /// Returns a new [FinanceCredit] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FinanceCredit? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FinanceCredit[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FinanceCredit[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FinanceCredit(
        cents: mapValueOfType<int>(json, r'cents'),
        expiresAt: mapValueOfType<String>(json, r'expiresAt'),
        grantedAt: mapValueOfType<String>(json, r'grantedAt'),
        id: mapValueOfType<String>(json, r'id'),
        label: mapValueOfType<String>(json, r'label'),
        remainingCents: mapValueOfType<int>(json, r'remainingCents'),
      );
    }
    return null;
  }

  static List<FinanceCredit> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FinanceCredit>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FinanceCredit.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FinanceCredit> mapFromJson(dynamic json) {
    final map = <String, FinanceCredit>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FinanceCredit.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FinanceCredit-objects as value to a dart map
  static Map<String, List<FinanceCredit>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FinanceCredit>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FinanceCredit.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

