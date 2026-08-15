//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProviderCredit {
  /// Returns a new [ProviderCredit] instance.
  ProviderCredit({
    this.burnCents,
    this.grantCents,
    this.hasCredit,
    this.isPaidOnly,
    this.provider,
    this.remainingCents,
    this.runwayDays,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? burnCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? grantCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasCredit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPaidOnly;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? remainingCents;

  /// nil when burn is 0 / unknown (never a fabricated infinity)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? runwayDays;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProviderCredit &&
    other.burnCents == burnCents &&
    other.grantCents == grantCents &&
    other.hasCredit == hasCredit &&
    other.isPaidOnly == isPaidOnly &&
    other.provider == provider &&
    other.remainingCents == remainingCents &&
    other.runwayDays == runwayDays;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (burnCents == null ? 0 : burnCents!.hashCode) +
    (grantCents == null ? 0 : grantCents!.hashCode) +
    (hasCredit == null ? 0 : hasCredit!.hashCode) +
    (isPaidOnly == null ? 0 : isPaidOnly!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (remainingCents == null ? 0 : remainingCents!.hashCode) +
    (runwayDays == null ? 0 : runwayDays!.hashCode);

  @override
  String toString() => 'ProviderCredit[burnCents=$burnCents, grantCents=$grantCents, hasCredit=$hasCredit, isPaidOnly=$isPaidOnly, provider=$provider, remainingCents=$remainingCents, runwayDays=$runwayDays]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.burnCents != null) {
      json[r'burn_cents'] = this.burnCents;
    } else {
      json[r'burn_cents'] = null;
    }
    if (this.grantCents != null) {
      json[r'grant_cents'] = this.grantCents;
    } else {
      json[r'grant_cents'] = null;
    }
    if (this.hasCredit != null) {
      json[r'has_credit'] = this.hasCredit;
    } else {
      json[r'has_credit'] = null;
    }
    if (this.isPaidOnly != null) {
      json[r'is_paid_only'] = this.isPaidOnly;
    } else {
      json[r'is_paid_only'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.remainingCents != null) {
      json[r'remaining_cents'] = this.remainingCents;
    } else {
      json[r'remaining_cents'] = null;
    }
    if (this.runwayDays != null) {
      json[r'runway_days'] = this.runwayDays;
    } else {
      json[r'runway_days'] = null;
    }
    return json;
  }

  /// Returns a new [ProviderCredit] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProviderCredit? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProviderCredit[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProviderCredit[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProviderCredit(
        burnCents: mapValueOfType<int>(json, r'burn_cents'),
        grantCents: mapValueOfType<int>(json, r'grant_cents'),
        hasCredit: mapValueOfType<bool>(json, r'has_credit'),
        isPaidOnly: mapValueOfType<bool>(json, r'is_paid_only'),
        provider: mapValueOfType<String>(json, r'provider'),
        remainingCents: mapValueOfType<int>(json, r'remaining_cents'),
        runwayDays: num.parse('${json[r'runway_days']}'),
      );
    }
    return null;
  }

  static List<ProviderCredit> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProviderCredit>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProviderCredit.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProviderCredit> mapFromJson(dynamic json) {
    final map = <String, ProviderCredit>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProviderCredit.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProviderCredit-objects as value to a dart map
  static Map<String, List<ProviderCredit>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProviderCredit>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProviderCredit.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

