//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Number {
  /// Returns a new [Number] instance.
  Number({
    this.capable = const [],
    this.country,
    this.currency,
    this.e164,
    this.id,
    this.monthly,
    this.org,
    this.type,
  });

  /// voice | sms | mms | fax
  List<String> capable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? country;

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
  String? e164;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// minor units, as the carrier quoted it
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? monthly;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Number &&
    _deepEquality.equals(other.capable, capable) &&
    other.country == country &&
    other.currency == currency &&
    other.e164 == e164 &&
    other.id == id &&
    other.monthly == monthly &&
    other.org == org &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (capable.hashCode) +
    (country == null ? 0 : country!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (e164 == null ? 0 : e164!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (monthly == null ? 0 : monthly!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'Number[capable=$capable, country=$country, currency=$currency, e164=$e164, id=$id, monthly=$monthly, org=$org, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'capable'] = this.capable;
    if (this.country != null) {
      json[r'country'] = this.country;
    } else {
      json[r'country'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.e164 != null) {
      json[r'e164'] = this.e164;
    } else {
      json[r'e164'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.monthly != null) {
      json[r'monthly'] = this.monthly;
    } else {
      json[r'monthly'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [Number] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Number? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Number[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Number[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Number(
        capable: json[r'capable'] is Iterable
            ? (json[r'capable'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        country: mapValueOfType<String>(json, r'country'),
        currency: mapValueOfType<String>(json, r'currency'),
        e164: mapValueOfType<String>(json, r'e164'),
        id: mapValueOfType<String>(json, r'id'),
        monthly: mapValueOfType<int>(json, r'monthly'),
        org: mapValueOfType<String>(json, r'org'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<Number> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Number>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Number.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Number> mapFromJson(dynamic json) {
    final map = <String, Number>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Number.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Number-objects as value to a dart map
  static Map<String, List<Number>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Number>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Number.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

