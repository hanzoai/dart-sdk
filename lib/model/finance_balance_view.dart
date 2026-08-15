//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FinanceBalanceView {
  /// Returns a new [FinanceBalanceView] instance.
  FinanceBalanceView({
    this.asOf,
    this.availableCents,
    this.currency,
    this.dueCents,
    this.pendingCents,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? asOf;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? availableCents;

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
  int? dueCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pendingCents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FinanceBalanceView &&
    other.asOf == asOf &&
    other.availableCents == availableCents &&
    other.currency == currency &&
    other.dueCents == dueCents &&
    other.pendingCents == pendingCents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (asOf == null ? 0 : asOf!.hashCode) +
    (availableCents == null ? 0 : availableCents!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (dueCents == null ? 0 : dueCents!.hashCode) +
    (pendingCents == null ? 0 : pendingCents!.hashCode);

  @override
  String toString() => 'FinanceBalanceView[asOf=$asOf, availableCents=$availableCents, currency=$currency, dueCents=$dueCents, pendingCents=$pendingCents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.asOf != null) {
      json[r'asOf'] = this.asOf;
    } else {
      json[r'asOf'] = null;
    }
    if (this.availableCents != null) {
      json[r'availableCents'] = this.availableCents;
    } else {
      json[r'availableCents'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.dueCents != null) {
      json[r'dueCents'] = this.dueCents;
    } else {
      json[r'dueCents'] = null;
    }
    if (this.pendingCents != null) {
      json[r'pendingCents'] = this.pendingCents;
    } else {
      json[r'pendingCents'] = null;
    }
    return json;
  }

  /// Returns a new [FinanceBalanceView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FinanceBalanceView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FinanceBalanceView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FinanceBalanceView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FinanceBalanceView(
        asOf: mapValueOfType<String>(json, r'asOf'),
        availableCents: mapValueOfType<int>(json, r'availableCents'),
        currency: mapValueOfType<String>(json, r'currency'),
        dueCents: mapValueOfType<int>(json, r'dueCents'),
        pendingCents: mapValueOfType<int>(json, r'pendingCents'),
      );
    }
    return null;
  }

  static List<FinanceBalanceView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FinanceBalanceView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FinanceBalanceView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FinanceBalanceView> mapFromJson(dynamic json) {
    final map = <String, FinanceBalanceView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FinanceBalanceView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FinanceBalanceView-objects as value to a dart map
  static Map<String, List<FinanceBalanceView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FinanceBalanceView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FinanceBalanceView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

