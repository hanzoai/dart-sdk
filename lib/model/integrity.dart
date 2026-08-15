//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Integrity {
  /// Returns a new [Integrity] instance.
  Integrity({
    this.brokenAt,
    this.count,
    this.headHash,
    this.ok,
    this.reason,
  });

  /// BrokenAt is the seq of the FIRST record that failed verification, or -1 when OK. Reason describes the break (recomputed-hash mismatch, prev-hash discontinuity, or a seq gap).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? brokenAt;

  /// Count is the number of records walked.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  /// HeadHash is the hash of the last record (or the genesis anchor for an empty chain). Pin this externally over time to detect tail-truncation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? headHash;

  /// OK is true iff every record's stored hash equals the recomputed hash AND the chain links are continuous (each PrevHash == the prior record's Hash, seqs gapless from 0).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ok;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Integrity &&
    other.brokenAt == brokenAt &&
    other.count == count &&
    other.headHash == headHash &&
    other.ok == ok &&
    other.reason == reason;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (brokenAt == null ? 0 : brokenAt!.hashCode) +
    (count == null ? 0 : count!.hashCode) +
    (headHash == null ? 0 : headHash!.hashCode) +
    (ok == null ? 0 : ok!.hashCode) +
    (reason == null ? 0 : reason!.hashCode);

  @override
  String toString() => 'Integrity[brokenAt=$brokenAt, count=$count, headHash=$headHash, ok=$ok, reason=$reason]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.brokenAt != null) {
      json[r'brokenAt'] = this.brokenAt;
    } else {
      json[r'brokenAt'] = null;
    }
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.headHash != null) {
      json[r'headHash'] = this.headHash;
    } else {
      json[r'headHash'] = null;
    }
    if (this.ok != null) {
      json[r'ok'] = this.ok;
    } else {
      json[r'ok'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    return json;
  }

  /// Returns a new [Integrity] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Integrity? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Integrity[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Integrity[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Integrity(
        brokenAt: mapValueOfType<int>(json, r'brokenAt'),
        count: mapValueOfType<int>(json, r'count'),
        headHash: mapValueOfType<String>(json, r'headHash'),
        ok: mapValueOfType<bool>(json, r'ok'),
        reason: mapValueOfType<String>(json, r'reason'),
      );
    }
    return null;
  }

  static List<Integrity> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Integrity>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Integrity.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Integrity> mapFromJson(dynamic json) {
    final map = <String, Integrity>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Integrity.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Integrity-objects as value to a dart map
  static Map<String, List<Integrity>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Integrity>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Integrity.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

