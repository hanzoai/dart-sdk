//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TrialBalanceRow {
  /// Returns a new [TrialBalanceRow] instance.
  TrialBalanceRow({
    this.account,
    this.closingCredit,
    this.closingDebit,
    this.credit,
    this.debit,
    this.name,
    this.openingCredit,
    this.openingDebit,
    this.type,
  });
  /// Account is the chart-of-accounts NUMBER this line reports on (\"1000\", \"4000\") — the stable posting key, not a display label.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? account;

  /// ClosingCredit is that closing balance in cents when it is a credit balance.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? closingCredit;

  /// ClosingDebit is the balance at the end of the window, in cents, when it is a debit balance. This is the column the report's totals are summed from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? closingDebit;

  /// Credit is the same window movement in cents when it was net credit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? credit;

  /// Debit is the account's MOVEMENT within the window — closing minus opening, not the closing balance — in cents, when that movement was net debit. Zero when the account moved net credit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? debit;

  /// Name is that account's human name from the fixed chart.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// OpeningCredit is the same opening balance in cents when it fell on the credit side. Zero when the balance was a debit one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? openingCredit;

  /// OpeningDebit is the account's balance before the window began, in whole cents, when that balance was on the debit side. Zero when the balance was a credit one — the pair is exclusive, never two halves of one number.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? openingDebit;

  /// Type is the account's fundamental class — asset, liability, income, expense or equity — which is also its normal balance side. It is carried for presentation and does NOT decide which column an amount lands in: placement follows the sign of the real net, so a contra balance shows up as one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrialBalanceRow &&
    other.account == account &&
    other.closingCredit == closingCredit &&
    other.closingDebit == closingDebit &&
    other.credit == credit &&
    other.debit == debit &&
    other.name == name &&
    other.openingCredit == openingCredit &&
    other.openingDebit == openingDebit &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (closingCredit == null ? 0 : closingCredit!.hashCode) +
    (closingDebit == null ? 0 : closingDebit!.hashCode) +
    (credit == null ? 0 : credit!.hashCode) +
    (debit == null ? 0 : debit!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (openingCredit == null ? 0 : openingCredit!.hashCode) +
    (openingDebit == null ? 0 : openingDebit!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'TrialBalanceRow[account=$account, closingCredit=$closingCredit, closingDebit=$closingDebit, credit=$credit, debit=$debit, name=$name, openingCredit=$openingCredit, openingDebit=$openingDebit, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.closingCredit != null) {
      json[r'closingCredit'] = this.closingCredit;
    } else {
      json[r'closingCredit'] = null;
    }
    if (this.closingDebit != null) {
      json[r'closingDebit'] = this.closingDebit;
    } else {
      json[r'closingDebit'] = null;
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
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.openingCredit != null) {
      json[r'openingCredit'] = this.openingCredit;
    } else {
      json[r'openingCredit'] = null;
    }
    if (this.openingDebit != null) {
      json[r'openingDebit'] = this.openingDebit;
    } else {
      json[r'openingDebit'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [TrialBalanceRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrialBalanceRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrialBalanceRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrialBalanceRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrialBalanceRow(
        account: mapValueOfType<String>(json, r'account'),
        closingCredit: mapValueOfType<int>(json, r'closingCredit'),
        closingDebit: mapValueOfType<int>(json, r'closingDebit'),
        credit: mapValueOfType<int>(json, r'credit'),
        debit: mapValueOfType<int>(json, r'debit'),
        name: mapValueOfType<String>(json, r'name'),
        openingCredit: mapValueOfType<int>(json, r'openingCredit'),
        openingDebit: mapValueOfType<int>(json, r'openingDebit'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<TrialBalanceRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrialBalanceRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrialBalanceRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrialBalanceRow> mapFromJson(dynamic json) {
    final map = <String, TrialBalanceRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrialBalanceRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrialBalanceRow-objects as value to a dart map
  static Map<String, List<TrialBalanceRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrialBalanceRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrialBalanceRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

