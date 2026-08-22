//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CreditGrant {
  /// Returns a new [CreditGrant] instance.
  CreditGrant({
    this.active,
    this.amountCents,
    this.createdAt,
    this.currency,
    this.effectiveAt,
    this.expiresAt,
    this.id,
    this.name,
    this.priority,
    this.remainingCents,
    this.tags,
    this.userId,
    this.voided,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? active;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amountCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

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
  String? effectiveAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? expiresAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? priority;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? remainingCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tags;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? voided;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreditGrant &&
    other.active == active &&
    other.amountCents == amountCents &&
    other.createdAt == createdAt &&
    other.currency == currency &&
    other.effectiveAt == effectiveAt &&
    other.expiresAt == expiresAt &&
    other.id == id &&
    other.name == name &&
    other.priority == priority &&
    other.remainingCents == remainingCents &&
    other.tags == tags &&
    other.userId == userId &&
    other.voided == voided;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (active == null ? 0 : active!.hashCode) +
    (amountCents == null ? 0 : amountCents!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (effectiveAt == null ? 0 : effectiveAt!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (priority == null ? 0 : priority!.hashCode) +
    (remainingCents == null ? 0 : remainingCents!.hashCode) +
    (tags == null ? 0 : tags!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (voided == null ? 0 : voided!.hashCode);

  @override
  String toString() => 'CreditGrant[active=$active, amountCents=$amountCents, createdAt=$createdAt, currency=$currency, effectiveAt=$effectiveAt, expiresAt=$expiresAt, id=$id, name=$name, priority=$priority, remainingCents=$remainingCents, tags=$tags, userId=$userId, voided=$voided]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.amountCents != null) {
      json[r'amountCents'] = this.amountCents;
    } else {
      json[r'amountCents'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.effectiveAt != null) {
      json[r'effectiveAt'] = this.effectiveAt;
    } else {
      json[r'effectiveAt'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt;
    } else {
      json[r'expiresAt'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
    }
    if (this.remainingCents != null) {
      json[r'remainingCents'] = this.remainingCents;
    } else {
      json[r'remainingCents'] = null;
    }
    if (this.tags != null) {
      json[r'tags'] = this.tags;
    } else {
      json[r'tags'] = null;
    }
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    if (this.voided != null) {
      json[r'voided'] = this.voided;
    } else {
      json[r'voided'] = null;
    }
    return json;
  }

  /// Returns a new [CreditGrant] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreditGrant? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreditGrant[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreditGrant[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreditGrant(
        active: mapValueOfType<bool>(json, r'active'),
        amountCents: mapValueOfType<int>(json, r'amountCents'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        currency: mapValueOfType<String>(json, r'currency'),
        effectiveAt: mapValueOfType<String>(json, r'effectiveAt'),
        expiresAt: mapValueOfType<String>(json, r'expiresAt'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        priority: mapValueOfType<int>(json, r'priority'),
        remainingCents: mapValueOfType<int>(json, r'remainingCents'),
        tags: mapValueOfType<String>(json, r'tags'),
        userId: mapValueOfType<String>(json, r'userId'),
        voided: mapValueOfType<bool>(json, r'voided'),
      );
    }
    return null;
  }

  static List<CreditGrant> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreditGrant>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreditGrant.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreditGrant> mapFromJson(dynamic json) {
    final map = <String, CreditGrant>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreditGrant.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreditGrant-objects as value to a dart map
  static Map<String, List<CreditGrant>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreditGrant>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreditGrant.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

