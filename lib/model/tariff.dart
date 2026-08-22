//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Tariff {
  /// Returns a new [Tariff] instance.
  Tariff({
    this.currency,
    this.dueNowCents,
    this.jurisdiction,
    this.lines = const [],
    this.recurring,
    this.recurringCents,
    this.structure,
  });
  /// Currency is the ISO code every amount on this quote is denominated in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  /// DueNowCents is what is charged to begin: every non-recurring line.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dueNowCents;

  /// Jurisdiction is the state of formation the filing fee belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? jurisdiction;

  /// Lines are the charges, in the order a reader should see them.
  List<Charge> lines;

  /// Recurring is how often RecurringCents repeats — \"yearly\" for an agent of record. Empty when nothing on this quote recurs.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? recurring;

  /// RecurringCents is what repeats, and Recurring says how often.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? recurringCents;

  /// Structure is the entity this prices: c-corp, llc or dao-llc.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? structure;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Tariff &&
    other.currency == currency &&
    other.dueNowCents == dueNowCents &&
    other.jurisdiction == jurisdiction &&
    _deepEquality.equals(other.lines, lines) &&
    other.recurring == recurring &&
    other.recurringCents == recurringCents &&
    other.structure == structure;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (currency == null ? 0 : currency!.hashCode) +
    (dueNowCents == null ? 0 : dueNowCents!.hashCode) +
    (jurisdiction == null ? 0 : jurisdiction!.hashCode) +
    (lines.hashCode) +
    (recurring == null ? 0 : recurring!.hashCode) +
    (recurringCents == null ? 0 : recurringCents!.hashCode) +
    (structure == null ? 0 : structure!.hashCode);

  @override
  String toString() => 'Tariff[currency=$currency, dueNowCents=$dueNowCents, jurisdiction=$jurisdiction, lines=$lines, recurring=$recurring, recurringCents=$recurringCents, structure=$structure]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.dueNowCents != null) {
      json[r'dueNowCents'] = this.dueNowCents;
    } else {
      json[r'dueNowCents'] = null;
    }
    if (this.jurisdiction != null) {
      json[r'jurisdiction'] = this.jurisdiction;
    } else {
      json[r'jurisdiction'] = null;
    }
      json[r'lines'] = this.lines;
    if (this.recurring != null) {
      json[r'recurring'] = this.recurring;
    } else {
      json[r'recurring'] = null;
    }
    if (this.recurringCents != null) {
      json[r'recurringCents'] = this.recurringCents;
    } else {
      json[r'recurringCents'] = null;
    }
    if (this.structure != null) {
      json[r'structure'] = this.structure;
    } else {
      json[r'structure'] = null;
    }
    return json;
  }

  /// Returns a new [Tariff] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Tariff? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Tariff[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Tariff[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Tariff(
        currency: mapValueOfType<String>(json, r'currency'),
        dueNowCents: mapValueOfType<int>(json, r'dueNowCents'),
        jurisdiction: mapValueOfType<String>(json, r'jurisdiction'),
        lines: Charge.listFromJson(json[r'lines']),
        recurring: mapValueOfType<String>(json, r'recurring'),
        recurringCents: mapValueOfType<int>(json, r'recurringCents'),
        structure: mapValueOfType<String>(json, r'structure'),
      );
    }
    return null;
  }

  static List<Tariff> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Tariff>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Tariff.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Tariff> mapFromJson(dynamic json) {
    final map = <String, Tariff>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Tariff.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Tariff-objects as value to a dart map
  static Map<String, List<Tariff>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Tariff>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Tariff.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

