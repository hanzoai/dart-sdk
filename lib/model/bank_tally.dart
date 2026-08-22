//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BankTally {
  /// Returns a new [BankTally] instance.
  BankTally({
    this.ingested,
    this.posted,
    this.questions,
    this.reconciled,
    this.skipped,
    this.transfers,
  });
  /// transactions seen
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ingested;

  /// vouchers newly posted (outflow + reconciled)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? posted;

  /// unmatched inflows that raised a question
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? questions;

  /// inflows cleared against Square-clearing
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? reconciled;

  /// already-processed idempotent no-ops
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? skipped;

  /// own-account moves recorded (no P&L)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? transfers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BankTally &&
    other.ingested == ingested &&
    other.posted == posted &&
    other.questions == questions &&
    other.reconciled == reconciled &&
    other.skipped == skipped &&
    other.transfers == transfers;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ingested == null ? 0 : ingested!.hashCode) +
    (posted == null ? 0 : posted!.hashCode) +
    (questions == null ? 0 : questions!.hashCode) +
    (reconciled == null ? 0 : reconciled!.hashCode) +
    (skipped == null ? 0 : skipped!.hashCode) +
    (transfers == null ? 0 : transfers!.hashCode);

  @override
  String toString() => 'BankTally[ingested=$ingested, posted=$posted, questions=$questions, reconciled=$reconciled, skipped=$skipped, transfers=$transfers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ingested != null) {
      json[r'ingested'] = this.ingested;
    } else {
      json[r'ingested'] = null;
    }
    if (this.posted != null) {
      json[r'posted'] = this.posted;
    } else {
      json[r'posted'] = null;
    }
    if (this.questions != null) {
      json[r'questions'] = this.questions;
    } else {
      json[r'questions'] = null;
    }
    if (this.reconciled != null) {
      json[r'reconciled'] = this.reconciled;
    } else {
      json[r'reconciled'] = null;
    }
    if (this.skipped != null) {
      json[r'skipped'] = this.skipped;
    } else {
      json[r'skipped'] = null;
    }
    if (this.transfers != null) {
      json[r'transfers'] = this.transfers;
    } else {
      json[r'transfers'] = null;
    }
    return json;
  }

  /// Returns a new [BankTally] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BankTally? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BankTally[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BankTally[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BankTally(
        ingested: mapValueOfType<int>(json, r'ingested'),
        posted: mapValueOfType<int>(json, r'posted'),
        questions: mapValueOfType<int>(json, r'questions'),
        reconciled: mapValueOfType<int>(json, r'reconciled'),
        skipped: mapValueOfType<int>(json, r'skipped'),
        transfers: mapValueOfType<int>(json, r'transfers'),
      );
    }
    return null;
  }

  static List<BankTally> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BankTally>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BankTally.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BankTally> mapFromJson(dynamic json) {
    final map = <String, BankTally>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BankTally.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BankTally-objects as value to a dart map
  static Map<String, List<BankTally>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BankTally>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BankTally.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

