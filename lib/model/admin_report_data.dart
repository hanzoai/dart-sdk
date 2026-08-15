//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AdminReportData {
  /// Returns a new [AdminReportData] instance.
  AdminReportData({
    this.anchor,
    this.journal = const [],
    this.report,
  });

  /// Anchor is the Hanzo L1 anchoring status of the ledger root.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AnchorStatus? anchor;

  /// Journal is the recent double-entry entries, newest first.
  List<JournalEntry> journal;

  /// Report is the reserve-fund snapshot — available, accrued, paid, per-program, policy.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TreasuryReport? report;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminReportData &&
    other.anchor == anchor &&
    _deepEquality.equals(other.journal, journal) &&
    other.report == report;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (anchor == null ? 0 : anchor!.hashCode) +
    (journal.hashCode) +
    (report == null ? 0 : report!.hashCode);

  @override
  String toString() => 'AdminReportData[anchor=$anchor, journal=$journal, report=$report]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.anchor != null) {
      json[r'anchor'] = this.anchor;
    } else {
      json[r'anchor'] = null;
    }
      json[r'journal'] = this.journal;
    if (this.report != null) {
      json[r'report'] = this.report;
    } else {
      json[r'report'] = null;
    }
    return json;
  }

  /// Returns a new [AdminReportData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminReportData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AdminReportData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AdminReportData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AdminReportData(
        anchor: AnchorStatus.fromJson(json[r'anchor']),
        journal: JournalEntry.listFromJson(json[r'journal']),
        report: TreasuryReport.fromJson(json[r'report']),
      );
    }
    return null;
  }

  static List<AdminReportData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminReportData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminReportData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminReportData> mapFromJson(dynamic json) {
    final map = <String, AdminReportData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminReportData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminReportData-objects as value to a dart map
  static Map<String, List<AdminReportData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminReportData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminReportData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

