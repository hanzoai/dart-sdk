//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FinanceRevenue {
  /// Returns a new [FinanceRevenue] instance.
  FinanceRevenue({
    this.configured,
    this.creditsConsumedCents,
    this.mrrCents,
    this.totalRevenueCents,
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
  int? creditsConsumedCents;

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
  int? totalRevenueCents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FinanceRevenue &&
    other.configured == configured &&
    other.creditsConsumedCents == creditsConsumedCents &&
    other.mrrCents == mrrCents &&
    other.totalRevenueCents == totalRevenueCents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (configured == null ? 0 : configured!.hashCode) +
    (creditsConsumedCents == null ? 0 : creditsConsumedCents!.hashCode) +
    (mrrCents == null ? 0 : mrrCents!.hashCode) +
    (totalRevenueCents == null ? 0 : totalRevenueCents!.hashCode);

  @override
  String toString() => 'FinanceRevenue[configured=$configured, creditsConsumedCents=$creditsConsumedCents, mrrCents=$mrrCents, totalRevenueCents=$totalRevenueCents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.configured != null) {
      json[r'configured'] = this.configured;
    } else {
      json[r'configured'] = null;
    }
    if (this.creditsConsumedCents != null) {
      json[r'creditsConsumedCents'] = this.creditsConsumedCents;
    } else {
      json[r'creditsConsumedCents'] = null;
    }
    if (this.mrrCents != null) {
      json[r'mrrCents'] = this.mrrCents;
    } else {
      json[r'mrrCents'] = null;
    }
    if (this.totalRevenueCents != null) {
      json[r'totalRevenueCents'] = this.totalRevenueCents;
    } else {
      json[r'totalRevenueCents'] = null;
    }
    return json;
  }

  /// Returns a new [FinanceRevenue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FinanceRevenue? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FinanceRevenue[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FinanceRevenue[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FinanceRevenue(
        configured: mapValueOfType<bool>(json, r'configured'),
        creditsConsumedCents: mapValueOfType<int>(json, r'creditsConsumedCents'),
        mrrCents: mapValueOfType<int>(json, r'mrrCents'),
        totalRevenueCents: mapValueOfType<int>(json, r'totalRevenueCents'),
      );
    }
    return null;
  }

  static List<FinanceRevenue> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FinanceRevenue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FinanceRevenue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FinanceRevenue> mapFromJson(dynamic json) {
    final map = <String, FinanceRevenue>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FinanceRevenue.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FinanceRevenue-objects as value to a dart map
  static Map<String, List<FinanceRevenue>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FinanceRevenue>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FinanceRevenue.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

