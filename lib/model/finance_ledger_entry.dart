//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FinanceLedgerEntry {
  /// Returns a new [FinanceLedgerEntry] instance.
  FinanceLedgerEntry({
    this.account,
    this.balanceCents,
    this.cents,
    this.currency,
    this.date,
    this.description,
    this.id,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? account;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? balanceCents;

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
  String? currency;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? date;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FinanceLedgerEntry &&
    other.account == account &&
    other.balanceCents == balanceCents &&
    other.cents == cents &&
    other.currency == currency &&
    other.date == date &&
    other.description == description &&
    other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (balanceCents == null ? 0 : balanceCents!.hashCode) +
    (cents == null ? 0 : cents!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (id == null ? 0 : id!.hashCode);

  @override
  String toString() => 'FinanceLedgerEntry[account=$account, balanceCents=$balanceCents, cents=$cents, currency=$currency, date=$date, description=$description, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.balanceCents != null) {
      json[r'balanceCents'] = this.balanceCents;
    } else {
      json[r'balanceCents'] = null;
    }
    if (this.cents != null) {
      json[r'cents'] = this.cents;
    } else {
      json[r'cents'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.date != null) {
      json[r'date'] = this.date;
    } else {
      json[r'date'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    return json;
  }

  /// Returns a new [FinanceLedgerEntry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FinanceLedgerEntry? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FinanceLedgerEntry[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FinanceLedgerEntry[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FinanceLedgerEntry(
        account: mapValueOfType<String>(json, r'account'),
        balanceCents: mapValueOfType<int>(json, r'balanceCents'),
        cents: mapValueOfType<int>(json, r'cents'),
        currency: mapValueOfType<String>(json, r'currency'),
        date: mapValueOfType<String>(json, r'date'),
        description: mapValueOfType<String>(json, r'description'),
        id: mapValueOfType<String>(json, r'id'),
      );
    }
    return null;
  }

  static List<FinanceLedgerEntry> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FinanceLedgerEntry>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FinanceLedgerEntry.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FinanceLedgerEntry> mapFromJson(dynamic json) {
    final map = <String, FinanceLedgerEntry>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FinanceLedgerEntry.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FinanceLedgerEntry-objects as value to a dart map
  static Map<String, List<FinanceLedgerEntry>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FinanceLedgerEntry>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FinanceLedgerEntry.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

