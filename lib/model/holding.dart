//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Holding {
  /// Returns a new [Holding] instance.
  Holding({
    this.costCents,
    this.domain,
    this.expiresAt,
    this.nameservers = const [],
    this.order,
    this.org,
    this.priceCents,
    this.registeredAt,
  });

  /// wholesale cost
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? costCents;

  /// the name owned
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domain;

  /// when the registration lapses, RFC3339
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? expiresAt;

  /// the authoritative nameservers the name points at
  List<String> nameservers;

  /// registrar order id
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? order;

  /// the org that owns the domain
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  /// what the customer paid (sell)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? priceCents;

  /// unix seconds
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? registeredAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Holding &&
    other.costCents == costCents &&
    other.domain == domain &&
    other.expiresAt == expiresAt &&
    _deepEquality.equals(other.nameservers, nameservers) &&
    other.order == order &&
    other.org == org &&
    other.priceCents == priceCents &&
    other.registeredAt == registeredAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (costCents == null ? 0 : costCents!.hashCode) +
    (domain == null ? 0 : domain!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (nameservers.hashCode) +
    (order == null ? 0 : order!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (priceCents == null ? 0 : priceCents!.hashCode) +
    (registeredAt == null ? 0 : registeredAt!.hashCode);

  @override
  String toString() => 'Holding[costCents=$costCents, domain=$domain, expiresAt=$expiresAt, nameservers=$nameservers, order=$order, org=$org, priceCents=$priceCents, registeredAt=$registeredAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.costCents != null) {
      json[r'costCents'] = this.costCents;
    } else {
      json[r'costCents'] = null;
    }
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt;
    } else {
      json[r'expiresAt'] = null;
    }
      json[r'nameservers'] = this.nameservers;
    if (this.order != null) {
      json[r'order'] = this.order;
    } else {
      json[r'order'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.priceCents != null) {
      json[r'priceCents'] = this.priceCents;
    } else {
      json[r'priceCents'] = null;
    }
    if (this.registeredAt != null) {
      json[r'registeredAt'] = this.registeredAt;
    } else {
      json[r'registeredAt'] = null;
    }
    return json;
  }

  /// Returns a new [Holding] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Holding? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Holding[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Holding[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Holding(
        costCents: mapValueOfType<int>(json, r'costCents'),
        domain: mapValueOfType<String>(json, r'domain'),
        expiresAt: mapValueOfType<String>(json, r'expiresAt'),
        nameservers: json[r'nameservers'] is Iterable
            ? (json[r'nameservers'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        order: mapValueOfType<int>(json, r'order'),
        org: mapValueOfType<String>(json, r'org'),
        priceCents: mapValueOfType<int>(json, r'priceCents'),
        registeredAt: mapValueOfType<int>(json, r'registeredAt'),
      );
    }
    return null;
  }

  static List<Holding> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Holding>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Holding.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Holding> mapFromJson(dynamic json) {
    final map = <String, Holding>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Holding.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Holding-objects as value to a dart map
  static Map<String, List<Holding>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Holding>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Holding.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

