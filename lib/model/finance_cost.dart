//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FinanceCost {
  /// Returns a new [FinanceCost] instance.
  FinanceCost({
    this.configured,
    this.digitalocean,
    this.error,
    this.period,
    this.totalCents,
    this.vendors = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? configured;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DoCost? digitalocean;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? period;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalCents;

  List<Vendor> vendors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FinanceCost &&
    other.configured == configured &&
    other.digitalocean == digitalocean &&
    other.error == error &&
    other.period == period &&
    other.totalCents == totalCents &&
    _deepEquality.equals(other.vendors, vendors);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (configured == null ? 0 : configured!.hashCode) +
    (digitalocean == null ? 0 : digitalocean!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (period == null ? 0 : period!.hashCode) +
    (totalCents == null ? 0 : totalCents!.hashCode) +
    (vendors.hashCode);

  @override
  String toString() => 'FinanceCost[configured=$configured, digitalocean=$digitalocean, error=$error, period=$period, totalCents=$totalCents, vendors=$vendors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.configured != null) {
      json[r'configured'] = this.configured;
    } else {
      json[r'configured'] = null;
    }
    if (this.digitalocean != null) {
      json[r'digitalocean'] = this.digitalocean;
    } else {
      json[r'digitalocean'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.period != null) {
      json[r'period'] = this.period;
    } else {
      json[r'period'] = null;
    }
    if (this.totalCents != null) {
      json[r'totalCents'] = this.totalCents;
    } else {
      json[r'totalCents'] = null;
    }
      json[r'vendors'] = this.vendors;
    return json;
  }

  /// Returns a new [FinanceCost] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FinanceCost? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FinanceCost[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FinanceCost[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FinanceCost(
        configured: mapValueOfType<bool>(json, r'configured'),
        digitalocean: DoCost.fromJson(json[r'digitalocean']),
        error: mapValueOfType<String>(json, r'error'),
        period: mapValueOfType<String>(json, r'period'),
        totalCents: mapValueOfType<int>(json, r'totalCents'),
        vendors: Vendor.listFromJson(json[r'vendors']),
      );
    }
    return null;
  }

  static List<FinanceCost> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FinanceCost>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FinanceCost.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FinanceCost> mapFromJson(dynamic json) {
    final map = <String, FinanceCost>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FinanceCost.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FinanceCost-objects as value to a dart map
  static Map<String, List<FinanceCost>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FinanceCost>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FinanceCost.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

