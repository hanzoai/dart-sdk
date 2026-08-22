//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Leg {
  /// Returns a new [Leg] instance.
  Leg({
    this.account,
    this.credit,
    this.debit,
  });
  /// Account is the chart-of-accounts number this side posts to, e.g. \"5300\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? account;

  /// Credit is the leg's credit in exact cents. Set this or Debit, not both.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? credit;

  /// Debit is the leg's debit in exact cents. Set this or Credit, not both.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? debit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Leg &&
    other.account == account &&
    other.credit == credit &&
    other.debit == debit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (credit == null ? 0 : credit!.hashCode) +
    (debit == null ? 0 : debit!.hashCode);

  @override
  String toString() => 'Leg[account=$account, credit=$credit, debit=$debit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.credit != null) {
      json[r'credit'] = this.credit;
    } else {
      json[r'credit'] = null;
    }
    if (this.debit != null) {
      json[r'debit'] = this.debit;
    } else {
      json[r'debit'] = null;
    }
    return json;
  }

  /// Returns a new [Leg] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Leg? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Leg[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Leg[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Leg(
        account: mapValueOfType<String>(json, r'account'),
        credit: mapValueOfType<int>(json, r'credit'),
        debit: mapValueOfType<int>(json, r'debit'),
      );
    }
    return null;
  }

  static List<Leg> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Leg>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Leg.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Leg> mapFromJson(dynamic json) {
    final map = <String, Leg>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Leg.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Leg-objects as value to a dart map
  static Map<String, List<Leg>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Leg>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Leg.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

