//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Backfilled {
  /// Returns a new [Backfilled] instance.
  Backfilled({
    this.entryId,
    this.migratedCents,
    this.org,
  });

  /// EntryID is the finance ledger entry created, or \"\" when the balance was non-positive and there was nothing to carry.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entryId;

  /// MigratedCents is the balance carried across, read from commerce BEFORE the move.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? migratedCents;

  /// Org is the tenant migrated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Backfilled &&
    other.entryId == entryId &&
    other.migratedCents == migratedCents &&
    other.org == org;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryId == null ? 0 : entryId!.hashCode) +
    (migratedCents == null ? 0 : migratedCents!.hashCode) +
    (org == null ? 0 : org!.hashCode);

  @override
  String toString() => 'Backfilled[entryId=$entryId, migratedCents=$migratedCents, org=$org]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.entryId != null) {
      json[r'entryId'] = this.entryId;
    } else {
      json[r'entryId'] = null;
    }
    if (this.migratedCents != null) {
      json[r'migratedCents'] = this.migratedCents;
    } else {
      json[r'migratedCents'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    return json;
  }

  /// Returns a new [Backfilled] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Backfilled? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Backfilled[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Backfilled[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Backfilled(
        entryId: mapValueOfType<String>(json, r'entryId'),
        migratedCents: mapValueOfType<int>(json, r'migratedCents'),
        org: mapValueOfType<String>(json, r'org'),
      );
    }
    return null;
  }

  static List<Backfilled> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Backfilled>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Backfilled.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Backfilled> mapFromJson(dynamic json) {
    final map = <String, Backfilled>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Backfilled.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Backfilled-objects as value to a dart map
  static Map<String, List<Backfilled>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Backfilled>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Backfilled.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

