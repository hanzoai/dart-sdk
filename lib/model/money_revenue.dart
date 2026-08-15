//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class MoneyRevenue {
  /// Returns a new [MoneyRevenue] instance.
  MoneyRevenue({
    this.arpuCents,
    this.arrCents,
    this.customers,
    this.mrrCents,
    this.paying,
    this.realizedCents,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? arpuCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? arrCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? customers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mrrCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? paying;

  /// consumed spend, fleet-wide
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? realizedCents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MoneyRevenue &&
    other.arpuCents == arpuCents &&
    other.arrCents == arrCents &&
    other.customers == customers &&
    other.mrrCents == mrrCents &&
    other.paying == paying &&
    other.realizedCents == realizedCents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (arpuCents == null ? 0 : arpuCents!.hashCode) +
    (arrCents == null ? 0 : arrCents!.hashCode) +
    (customers == null ? 0 : customers!.hashCode) +
    (mrrCents == null ? 0 : mrrCents!.hashCode) +
    (paying == null ? 0 : paying!.hashCode) +
    (realizedCents == null ? 0 : realizedCents!.hashCode);

  @override
  String toString() => 'MoneyRevenue[arpuCents=$arpuCents, arrCents=$arrCents, customers=$customers, mrrCents=$mrrCents, paying=$paying, realizedCents=$realizedCents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.arpuCents != null) {
      json[r'arpuCents'] = this.arpuCents;
    } else {
      json[r'arpuCents'] = null;
    }
    if (this.arrCents != null) {
      json[r'arrCents'] = this.arrCents;
    } else {
      json[r'arrCents'] = null;
    }
    if (this.customers != null) {
      json[r'customers'] = this.customers;
    } else {
      json[r'customers'] = null;
    }
    if (this.mrrCents != null) {
      json[r'mrrCents'] = this.mrrCents;
    } else {
      json[r'mrrCents'] = null;
    }
    if (this.paying != null) {
      json[r'paying'] = this.paying;
    } else {
      json[r'paying'] = null;
    }
    if (this.realizedCents != null) {
      json[r'realizedCents'] = this.realizedCents;
    } else {
      json[r'realizedCents'] = null;
    }
    return json;
  }

  /// Returns a new [MoneyRevenue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MoneyRevenue? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MoneyRevenue[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MoneyRevenue[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MoneyRevenue(
        arpuCents: mapValueOfType<int>(json, r'arpuCents'),
        arrCents: mapValueOfType<int>(json, r'arrCents'),
        customers: mapValueOfType<int>(json, r'customers'),
        mrrCents: mapValueOfType<int>(json, r'mrrCents'),
        paying: mapValueOfType<int>(json, r'paying'),
        realizedCents: mapValueOfType<int>(json, r'realizedCents'),
      );
    }
    return null;
  }

  static List<MoneyRevenue> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MoneyRevenue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MoneyRevenue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MoneyRevenue> mapFromJson(dynamic json) {
    final map = <String, MoneyRevenue>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MoneyRevenue.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MoneyRevenue-objects as value to a dart map
  static Map<String, List<MoneyRevenue>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MoneyRevenue>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MoneyRevenue.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

