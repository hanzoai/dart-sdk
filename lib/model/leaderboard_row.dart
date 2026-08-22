//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LeaderboardRow {
  /// Returns a new [LeaderboardRow] instance.
  LeaderboardRow({
    this.accruedCents,
    this.handle,
    this.isYou,
    this.rank,
    this.referredCount,
  });
  /// AccruedCents is that affiliate's lifetime commission accrued, in cents, and what the board is ordered by. An aggregate: no per-customer figure is exposed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accruedCents;

  /// Handle is the affiliate's self-chosen display name — the only identity the board ever carries. The org behind it is never disclosed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? handle;

  /// IsYou marks the caller's own row, so a client can highlight it without matching on a handle. Absent on every other row.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isYou;

  /// Rank is the position in the GLOBAL approved set ordered by lifetime accrued commission, 1-based. Affiliates that set no handle still occupy their rank and are simply not listed, so the visible ranks have gaps and the board is not a complete roster. On the caller's own row the rank is computed over the whole set, so it is exact well outside the top page.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rank;

  /// ReferredCount is how many orgs that affiliate directly referred — a count only, never which orgs.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? referredCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LeaderboardRow &&
    other.accruedCents == accruedCents &&
    other.handle == handle &&
    other.isYou == isYou &&
    other.rank == rank &&
    other.referredCount == referredCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accruedCents == null ? 0 : accruedCents!.hashCode) +
    (handle == null ? 0 : handle!.hashCode) +
    (isYou == null ? 0 : isYou!.hashCode) +
    (rank == null ? 0 : rank!.hashCode) +
    (referredCount == null ? 0 : referredCount!.hashCode);

  @override
  String toString() => 'LeaderboardRow[accruedCents=$accruedCents, handle=$handle, isYou=$isYou, rank=$rank, referredCount=$referredCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accruedCents != null) {
      json[r'accruedCents'] = this.accruedCents;
    } else {
      json[r'accruedCents'] = null;
    }
    if (this.handle != null) {
      json[r'handle'] = this.handle;
    } else {
      json[r'handle'] = null;
    }
    if (this.isYou != null) {
      json[r'isYou'] = this.isYou;
    } else {
      json[r'isYou'] = null;
    }
    if (this.rank != null) {
      json[r'rank'] = this.rank;
    } else {
      json[r'rank'] = null;
    }
    if (this.referredCount != null) {
      json[r'referredCount'] = this.referredCount;
    } else {
      json[r'referredCount'] = null;
    }
    return json;
  }

  /// Returns a new [LeaderboardRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LeaderboardRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LeaderboardRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LeaderboardRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LeaderboardRow(
        accruedCents: mapValueOfType<int>(json, r'accruedCents'),
        handle: mapValueOfType<String>(json, r'handle'),
        isYou: mapValueOfType<bool>(json, r'isYou'),
        rank: mapValueOfType<int>(json, r'rank'),
        referredCount: mapValueOfType<int>(json, r'referredCount'),
      );
    }
    return null;
  }

  static List<LeaderboardRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LeaderboardRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LeaderboardRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LeaderboardRow> mapFromJson(dynamic json) {
    final map = <String, LeaderboardRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LeaderboardRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LeaderboardRow-objects as value to a dart map
  static Map<String, List<LeaderboardRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LeaderboardRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LeaderboardRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

