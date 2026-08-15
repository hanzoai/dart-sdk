//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AuthorProgramSummary {
  /// Returns a new [AuthorProgramSummary] instance.
  AuthorProgramSummary({
    this.accruedCents,
    this.approved,
    this.connected,
    this.paidCents,
    this.pendingCents,
    this.suspended,
    this.total,
  });

  /// AccruedCents is the page's lifetime royalty accrued, in integer USD cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accruedCents;

  /// Approved is how many are admitted and accruing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? approved;

  /// Connected is how many of those are enrolled but not yet admitted to earning.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? connected;

  /// PaidCents is what has been RECORDED as paid across the page, in integer USD cents. Recorded, not settled: the money leaves in a human's hands.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? paidCents;

  /// PendingCents is what the platform still owes across the page, in integer USD cents — the sum of each author's own accrued − paid, each floored at zero.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pendingCents;

  /// Suspended is how many have been stopped from accruing further. An author holds exactly one status, so the three buckets never overlap and connected + approved + suspended = total.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? suspended;

  /// Total is how many author records this response actually carried. The roll-up is folded over the SAME page as authors — newest first, bounded by limit (default 500, ceiling 1000) — so on a program larger than the page it summarizes that page, not the fleet.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthorProgramSummary &&
    other.accruedCents == accruedCents &&
    other.approved == approved &&
    other.connected == connected &&
    other.paidCents == paidCents &&
    other.pendingCents == pendingCents &&
    other.suspended == suspended &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accruedCents == null ? 0 : accruedCents!.hashCode) +
    (approved == null ? 0 : approved!.hashCode) +
    (connected == null ? 0 : connected!.hashCode) +
    (paidCents == null ? 0 : paidCents!.hashCode) +
    (pendingCents == null ? 0 : pendingCents!.hashCode) +
    (suspended == null ? 0 : suspended!.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'AuthorProgramSummary[accruedCents=$accruedCents, approved=$approved, connected=$connected, paidCents=$paidCents, pendingCents=$pendingCents, suspended=$suspended, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accruedCents != null) {
      json[r'accruedCents'] = this.accruedCents;
    } else {
      json[r'accruedCents'] = null;
    }
    if (this.approved != null) {
      json[r'approved'] = this.approved;
    } else {
      json[r'approved'] = null;
    }
    if (this.connected != null) {
      json[r'connected'] = this.connected;
    } else {
      json[r'connected'] = null;
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

  /// Returns a new [AuthorProgramSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuthorProgramSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AuthorProgramSummary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AuthorProgramSummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuthorProgramSummary(
        accruedCents: mapValueOfType<int>(json, r'accruedCents'),
        approved: mapValueOfType<int>(json, r'approved'),
        connected: mapValueOfType<int>(json, r'connected'),
        paidCents: mapValueOfType<int>(json, r'paidCents'),
        pendingCents: mapValueOfType<int>(json, r'pendingCents'),
        suspended: mapValueOfType<int>(json, r'suspended'),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<AuthorProgramSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuthorProgramSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuthorProgramSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuthorProgramSummary> mapFromJson(dynamic json) {
    final map = <String, AuthorProgramSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuthorProgramSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuthorProgramSummary-objects as value to a dart map
  static Map<String, List<AuthorProgramSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuthorProgramSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuthorProgramSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

