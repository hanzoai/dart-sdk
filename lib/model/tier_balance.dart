//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TierBalance {
  /// Returns a new [TierBalance] instance.
  TierBalance({
    this.creditsRemaining,
    this.currency,
    this.dailyRemaining,
    this.effectiveAvailable,
    this.prepaidAvailable,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? creditsRemaining;

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
  int? dailyRemaining;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? effectiveAvailable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? prepaidAvailable;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TierBalance &&
    other.creditsRemaining == creditsRemaining &&
    other.currency == currency &&
    other.dailyRemaining == dailyRemaining &&
    other.effectiveAvailable == effectiveAvailable &&
    other.prepaidAvailable == prepaidAvailable;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (creditsRemaining == null ? 0 : creditsRemaining!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (dailyRemaining == null ? 0 : dailyRemaining!.hashCode) +
    (effectiveAvailable == null ? 0 : effectiveAvailable!.hashCode) +
    (prepaidAvailable == null ? 0 : prepaidAvailable!.hashCode);

  @override
  String toString() => 'TierBalance[creditsRemaining=$creditsRemaining, currency=$currency, dailyRemaining=$dailyRemaining, effectiveAvailable=$effectiveAvailable, prepaidAvailable=$prepaidAvailable]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.creditsRemaining != null) {
      json[r'creditsRemaining'] = this.creditsRemaining;
    } else {
      json[r'creditsRemaining'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.dailyRemaining != null) {
      json[r'dailyRemaining'] = this.dailyRemaining;
    } else {
      json[r'dailyRemaining'] = null;
    }
    if (this.effectiveAvailable != null) {
      json[r'effectiveAvailable'] = this.effectiveAvailable;
    } else {
      json[r'effectiveAvailable'] = null;
    }
    if (this.prepaidAvailable != null) {
      json[r'prepaidAvailable'] = this.prepaidAvailable;
    } else {
      json[r'prepaidAvailable'] = null;
    }
    return json;
  }

  /// Returns a new [TierBalance] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TierBalance? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TierBalance[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TierBalance[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TierBalance(
        creditsRemaining: mapValueOfType<int>(json, r'creditsRemaining'),
        currency: mapValueOfType<String>(json, r'currency'),
        dailyRemaining: mapValueOfType<int>(json, r'dailyRemaining'),
        effectiveAvailable: mapValueOfType<int>(json, r'effectiveAvailable'),
        prepaidAvailable: mapValueOfType<int>(json, r'prepaidAvailable'),
      );
    }
    return null;
  }

  static List<TierBalance> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TierBalance>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TierBalance.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TierBalance> mapFromJson(dynamic json) {
    final map = <String, TierBalance>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TierBalance.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TierBalance-objects as value to a dart map
  static Map<String, List<TierBalance>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TierBalance>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TierBalance.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

