//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PricingProviderList {
  /// Returns a new [PricingProviderList] instance.
  PricingProviderList({
    this.providers = const {},
    this.updated,
  });

  /// Providers maps a provider name to its opaque info object. A provider hidden for the caller's org is absent entirely.
  Map<String, Object> providers;

  /// Updated is when the catalog was last refreshed, as the pricing source recorded it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PricingProviderList &&
    _deepEquality.equals(other.providers, providers) &&
    other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (providers.hashCode) +
    (updated == null ? 0 : updated!.hashCode);

  @override
  String toString() => 'PricingProviderList[providers=$providers, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'providers'] = this.providers;
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    return json;
  }

  /// Returns a new [PricingProviderList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PricingProviderList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PricingProviderList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PricingProviderList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PricingProviderList(
        providers: mapCastOfType<String, Object>(json, r'providers') ?? const {},
        updated: mapValueOfType<Object>(json, r'updated'),
      );
    }
    return null;
  }

  static List<PricingProviderList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PricingProviderList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PricingProviderList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PricingProviderList> mapFromJson(dynamic json) {
    final map = <String, PricingProviderList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PricingProviderList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PricingProviderList-objects as value to a dart map
  static Map<String, List<PricingProviderList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PricingProviderList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PricingProviderList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

