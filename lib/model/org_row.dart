//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class OrgRow {
  /// Returns a new [OrgRow] instance.
  OrgRow({
    this.created,
    this.creditsCents,
    this.display,
    this.org,
    this.products,
    this.spendCents,
    this.tokens,
    this.users,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? created;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? creditsCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? display;

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
  int? products;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? spendCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tokens;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? users;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrgRow &&
    other.created == created &&
    other.creditsCents == creditsCents &&
    other.display == display &&
    other.org == org &&
    other.products == products &&
    other.spendCents == spendCents &&
    other.tokens == tokens &&
    other.users == users;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created == null ? 0 : created!.hashCode) +
    (creditsCents == null ? 0 : creditsCents!.hashCode) +
    (display == null ? 0 : display!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (products == null ? 0 : products!.hashCode) +
    (spendCents == null ? 0 : spendCents!.hashCode) +
    (tokens == null ? 0 : tokens!.hashCode) +
    (users == null ? 0 : users!.hashCode);

  @override
  String toString() => 'OrgRow[created=$created, creditsCents=$creditsCents, display=$display, org=$org, products=$products, spendCents=$spendCents, tokens=$tokens, users=$users]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.creditsCents != null) {
      json[r'creditsCents'] = this.creditsCents;
    } else {
      json[r'creditsCents'] = null;
    }
    if (this.display != null) {
      json[r'display'] = this.display;
    } else {
      json[r'display'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.products != null) {
      json[r'products'] = this.products;
    } else {
      json[r'products'] = null;
    }
    if (this.spendCents != null) {
      json[r'spendCents'] = this.spendCents;
    } else {
      json[r'spendCents'] = null;
    }
    if (this.tokens != null) {
      json[r'tokens'] = this.tokens;
    } else {
      json[r'tokens'] = null;
    }
    if (this.users != null) {
      json[r'users'] = this.users;
    } else {
      json[r'users'] = null;
    }
    return json;
  }

  /// Returns a new [OrgRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrgRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrgRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrgRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrgRow(
        created: mapValueOfType<String>(json, r'created'),
        creditsCents: mapValueOfType<int>(json, r'creditsCents'),
        display: mapValueOfType<String>(json, r'display'),
        org: mapValueOfType<String>(json, r'org'),
        products: mapValueOfType<int>(json, r'products'),
        spendCents: mapValueOfType<int>(json, r'spendCents'),
        tokens: mapValueOfType<int>(json, r'tokens'),
        users: mapValueOfType<int>(json, r'users'),
      );
    }
    return null;
  }

  static List<OrgRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrgRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrgRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrgRow> mapFromJson(dynamic json) {
    final map = <String, OrgRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrgRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrgRow-objects as value to a dart map
  static Map<String, List<OrgRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrgRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrgRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

