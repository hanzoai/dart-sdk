//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RateCard {
  /// Returns a new [RateCard] instance.
  RateCard({
    this.basis,
    this.microUsdPerGbHour,
    this.microUsdPerVcpuHour,
  });

  /// Basis names where the rates come from, so a published price can be explained rather than merely asserted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? basis;

  /// MicroUSDPerGBHour is the price of one GiB of memory for one hour, in millionths of a US dollar.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? microUsdPerGbHour;

  /// MicroUSDPerVCPUHour is the price of one vCPU for one hour, in millionths of a US dollar.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? microUsdPerVcpuHour;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RateCard &&
    other.basis == basis &&
    other.microUsdPerGbHour == microUsdPerGbHour &&
    other.microUsdPerVcpuHour == microUsdPerVcpuHour;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (basis == null ? 0 : basis!.hashCode) +
    (microUsdPerGbHour == null ? 0 : microUsdPerGbHour!.hashCode) +
    (microUsdPerVcpuHour == null ? 0 : microUsdPerVcpuHour!.hashCode);

  @override
  String toString() => 'RateCard[basis=$basis, microUsdPerGbHour=$microUsdPerGbHour, microUsdPerVcpuHour=$microUsdPerVcpuHour]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.basis != null) {
      json[r'basis'] = this.basis;
    } else {
      json[r'basis'] = null;
    }
    if (this.microUsdPerGbHour != null) {
      json[r'microUsdPerGbHour'] = this.microUsdPerGbHour;
    } else {
      json[r'microUsdPerGbHour'] = null;
    }
    if (this.microUsdPerVcpuHour != null) {
      json[r'microUsdPerVcpuHour'] = this.microUsdPerVcpuHour;
    } else {
      json[r'microUsdPerVcpuHour'] = null;
    }
    return json;
  }

  /// Returns a new [RateCard] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RateCard? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RateCard[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RateCard[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RateCard(
        basis: mapValueOfType<String>(json, r'basis'),
        microUsdPerGbHour: mapValueOfType<int>(json, r'microUsdPerGbHour'),
        microUsdPerVcpuHour: mapValueOfType<int>(json, r'microUsdPerVcpuHour'),
      );
    }
    return null;
  }

  static List<RateCard> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RateCard>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RateCard.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RateCard> mapFromJson(dynamic json) {
    final map = <String, RateCard>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RateCard.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RateCard-objects as value to a dart map
  static Map<String, List<RateCard>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RateCard>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RateCard.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

