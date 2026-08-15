//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Totals {
  /// Returns a new [Totals] instance.
  Totals({
    this.accruedCents,
    this.applied,
    this.approved,
    this.paidCents,
    this.pendingCents,
    this.suspended,
    this.total,
  });

  /// AccruedCents is lifetime commission accrued summed over those rows, in cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accruedCents;

  /// Applied is how many of those rows are still awaiting approval — no code, no accrual yet.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? applied;

  /// Approved is how many are approved: the only rows whose code resolves for attribution and whose balance can still grow.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? approved;

  /// PaidCents is lifetime commission already paid out summed over those rows, in cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? paidCents;

  /// PendingCents is accrued minus paid summed over those rows, in cents — the outstanding liability across the page.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pendingCents;

  /// Suspended is how many were suspended. What they already accrued stays accrued and stays payable.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? suspended;

  /// Total is how many affiliate rows this page covered, at every status. It is the page, not the table: a limit that truncates truncates this too.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Totals &&
    other.accruedCents == accruedCents &&
    other.applied == applied &&
    other.approved == approved &&
    other.paidCents == paidCents &&
    other.pendingCents == pendingCents &&
    other.suspended == suspended &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accruedCents == null ? 0 : accruedCents!.hashCode) +
    (applied == null ? 0 : applied!.hashCode) +
    (approved == null ? 0 : approved!.hashCode) +
    (paidCents == null ? 0 : paidCents!.hashCode) +
    (pendingCents == null ? 0 : pendingCents!.hashCode) +
    (suspended == null ? 0 : suspended!.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'Totals[accruedCents=$accruedCents, applied=$applied, approved=$approved, paidCents=$paidCents, pendingCents=$pendingCents, suspended=$suspended, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accruedCents != null) {
      json[r'accruedCents'] = this.accruedCents;
    } else {
      json[r'accruedCents'] = null;
    }
    if (this.applied != null) {
      json[r'applied'] = this.applied;
    } else {
      json[r'applied'] = null;
    }
    if (this.approved != null) {
      json[r'approved'] = this.approved;
    } else {
      json[r'approved'] = null;
    }
    if (this.paidCents != null) {
      json[r'paidCents'] = this.paidCents;
    } else {
      json[r'paidCents'] = null;
    }
    if (this.pendingCents != null) {
      json[r'pendingCents'] = this.pendingCents;
    } else {
      json[r'pendingCents'] = null;
    }
    if (this.suspended != null) {
      json[r'suspended'] = this.suspended;
    } else {
      json[r'suspended'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [Totals] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Totals? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Totals[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Totals[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Totals(
        accruedCents: mapValueOfType<int>(json, r'accruedCents'),
        applied: mapValueOfType<int>(json, r'applied'),
        approved: mapValueOfType<int>(json, r'approved'),
        paidCents: mapValueOfType<int>(json, r'paidCents'),
        pendingCents: mapValueOfType<int>(json, r'pendingCents'),
        suspended: mapValueOfType<int>(json, r'suspended'),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<Totals> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Totals>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Totals.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Totals> mapFromJson(dynamic json) {
    final map = <String, Totals>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Totals.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Totals-objects as value to a dart map
  static Map<String, List<Totals>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Totals>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Totals.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

