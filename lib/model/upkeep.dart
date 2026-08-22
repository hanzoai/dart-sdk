//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Upkeep {
  /// Returns a new [Upkeep] instance.
  Upkeep({
    this.atLeast,
    this.currency,
    this.jurisdiction,
    this.obligations = const [],
    this.structure,
    this.yearlyCents,
  });
  /// AtLeast reports that some obligation is a minimum, so YearlyCents is a floor rather than a final figure.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? atLeast;

  /// Currency is the ISO code every amount here is denominated in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  /// Jurisdiction is the state whose obligations these are.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? jurisdiction;

  /// Obligations are the recurring charges, in the order a reader should see them.
  List<Obligation> obligations;

  /// Structure is the entity this prices.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? structure;

  /// YearlyCents is what the entity owes every year, all obligations summed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? yearlyCents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Upkeep &&
    other.atLeast == atLeast &&
    other.currency == currency &&
    other.jurisdiction == jurisdiction &&
    _deepEquality.equals(other.obligations, obligations) &&
    other.structure == structure &&
    other.yearlyCents == yearlyCents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (atLeast == null ? 0 : atLeast!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (jurisdiction == null ? 0 : jurisdiction!.hashCode) +
    (obligations.hashCode) +
    (structure == null ? 0 : structure!.hashCode) +
    (yearlyCents == null ? 0 : yearlyCents!.hashCode);

  @override
  String toString() => 'Upkeep[atLeast=$atLeast, currency=$currency, jurisdiction=$jurisdiction, obligations=$obligations, structure=$structure, yearlyCents=$yearlyCents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.atLeast != null) {
      json[r'atLeast'] = this.atLeast;
    } else {
      json[r'atLeast'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.jurisdiction != null) {
      json[r'jurisdiction'] = this.jurisdiction;
    } else {
      json[r'jurisdiction'] = null;
    }
      json[r'obligations'] = this.obligations;
    if (this.structure != null) {
      json[r'structure'] = this.structure;
    } else {
      json[r'structure'] = null;
    }
    if (this.yearlyCents != null) {
      json[r'yearlyCents'] = this.yearlyCents;
    } else {
      json[r'yearlyCents'] = null;
    }
    return json;
  }

  /// Returns a new [Upkeep] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Upkeep? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Upkeep[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Upkeep[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Upkeep(
        atLeast: mapValueOfType<bool>(json, r'atLeast'),
        currency: mapValueOfType<String>(json, r'currency'),
        jurisdiction: mapValueOfType<String>(json, r'jurisdiction'),
        obligations: Obligation.listFromJson(json[r'obligations']),
        structure: mapValueOfType<String>(json, r'structure'),
        yearlyCents: mapValueOfType<int>(json, r'yearlyCents'),
      );
    }
    return null;
  }

  static List<Upkeep> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Upkeep>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Upkeep.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Upkeep> mapFromJson(dynamic json) {
    final map = <String, Upkeep>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Upkeep.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Upkeep-objects as value to a dart map
  static Map<String, List<Upkeep>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Upkeep>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Upkeep.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

