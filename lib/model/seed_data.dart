//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SeedData {
  /// Returns a new [SeedData] instance.
  SeedData({
    this.created,
    this.entry,
    this.reserveCents,
  });

  /// Created is false when this ref had already been seeded — the injection is at-most-once.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? created;

  /// Entry is the journal entry the injection wrote.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  JournalEntry? entry;

  /// ReserveCents is the fund balance after the injection.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? reserveCents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SeedData &&
    other.created == created &&
    other.entry == entry &&
    other.reserveCents == reserveCents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created == null ? 0 : created!.hashCode) +
    (entry == null ? 0 : entry!.hashCode) +
    (reserveCents == null ? 0 : reserveCents!.hashCode);

  @override
  String toString() => 'SeedData[created=$created, entry=$entry, reserveCents=$reserveCents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.entry != null) {
      json[r'entry'] = this.entry;
    } else {
      json[r'entry'] = null;
    }
    if (this.reserveCents != null) {
      json[r'reserveCents'] = this.reserveCents;
    } else {
      json[r'reserveCents'] = null;
    }
    return json;
  }

  /// Returns a new [SeedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SeedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SeedData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SeedData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SeedData(
        created: mapValueOfType<bool>(json, r'created'),
        entry: JournalEntry.fromJson(json[r'entry']),
        reserveCents: mapValueOfType<int>(json, r'reserveCents'),
      );
    }
    return null;
  }

  static List<SeedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SeedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SeedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SeedData> mapFromJson(dynamic json) {
    final map = <String, SeedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SeedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SeedData-objects as value to a dart map
  static Map<String, List<SeedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SeedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SeedData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

