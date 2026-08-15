//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Accruals {
  /// Returns a new [Accruals] instance.
  Accruals({
    this.accrued,
    this.royaltiesAccrued,
    this.royaltyFailures,
    this.swept,
  });

  /// Accrued is how many NEW commission accruals this run created, counted across every upline level. The accrual is latched at most once per (affiliate, source org, period), so a re-run inside the same month reports 0 having changed nothing — 0 means \"already accrued\", not \"failed\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accrued;

  /// RoyaltiesAccrued is how many OSS-author royalty accruals the SAME spend read produced in the sibling authors program. One read drives both.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? royaltiesAccrued;

  /// RoyaltyFailures is reported, not swallowed: a sweep that could not reach the royalty store must not read as one that found nothing owed. The count was already computed and then dropped on the floor, which is the same silence the typed leg was added to end.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? royaltyFailures;

  /// Swept is how many source (referred) orgs the run visited, bounded at 500 per run. A source with no spend this period, or one whose spend could not be read, still counts as swept.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? swept;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Accruals &&
    other.accrued == accrued &&
    other.royaltiesAccrued == royaltiesAccrued &&
    other.royaltyFailures == royaltyFailures &&
    other.swept == swept;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accrued == null ? 0 : accrued!.hashCode) +
    (royaltiesAccrued == null ? 0 : royaltiesAccrued!.hashCode) +
    (royaltyFailures == null ? 0 : royaltyFailures!.hashCode) +
    (swept == null ? 0 : swept!.hashCode);

  @override
  String toString() => 'Accruals[accrued=$accrued, royaltiesAccrued=$royaltiesAccrued, royaltyFailures=$royaltyFailures, swept=$swept]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accrued != null) {
      json[r'accrued'] = this.accrued;
    } else {
      json[r'accrued'] = null;
    }
    if (this.royaltiesAccrued != null) {
      json[r'royaltiesAccrued'] = this.royaltiesAccrued;
    } else {
      json[r'royaltiesAccrued'] = null;
    }
    if (this.royaltyFailures != null) {
      json[r'royaltyFailures'] = this.royaltyFailures;
    } else {
      json[r'royaltyFailures'] = null;
    }
    if (this.swept != null) {
      json[r'swept'] = this.swept;
    } else {
      json[r'swept'] = null;
    }
    return json;
  }

  /// Returns a new [Accruals] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Accruals? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Accruals[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Accruals[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Accruals(
        accrued: mapValueOfType<int>(json, r'accrued'),
        royaltiesAccrued: mapValueOfType<int>(json, r'royaltiesAccrued'),
        royaltyFailures: mapValueOfType<int>(json, r'royaltyFailures'),
        swept: mapValueOfType<int>(json, r'swept'),
      );
    }
    return null;
  }

  static List<Accruals> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Accruals>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Accruals.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Accruals> mapFromJson(dynamic json) {
    final map = <String, Accruals>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Accruals.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Accruals-objects as value to a dart map
  static Map<String, List<Accruals>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Accruals>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Accruals.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

