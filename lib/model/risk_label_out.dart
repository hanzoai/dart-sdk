//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskLabelOut {
  /// Returns a new [RiskLabelOut] instance.
  RiskLabelOut({
    this.duplicate,
    this.mirror,
    this.pending,
    this.recorded,
    this.refused,
    this.results = const [],
  });

  /// Duplicate is how many members this tenant already held, byte for byte. The idempotency key is the assertion's CONTENT digest — kind, subject, at, seen, disposition, source, evidence, the asserting identity and confidence, folded in length-prefixed — so a webhook redelivering one chargeback is a duplicate and costs nothing, while an assertion differing in ANY of those fields is a DIFFERENT assertion and is recorded beside the first. Nothing was written and nothing was overwritten; it is an outcome, never an error. The asserting identity is in the digest, so the same claim filed by a second credential is two assertions and not a redelivery.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? duplicate;

  /// Mirror names why the columnar copy did not take this batch, when it did not. The record is already durable in the tenant's own store by then — the warehouse copy exists to make a training join cheap, and its absence is a gap in that join, never a lost label.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mirror;

  /// Pending is how many assertions the derived copy is still to take. Every write attempt carries the backlog forward as well as its own batch, so a warehouse that was unreachable closes its gap on the next write rather than leaving a hole in a training join nothing would report. It is counted under a cap and saturates there: zero means caught up, and a large number means a backlog to work through rather than an inventory to reconcile.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pending;

  /// Recorded is how many members became a NEW row in the tenant's record. Recorded + Duplicate + Refused is exactly the number of labels sent, so a caller reconciling a webhook delivery can do it on the counts alone.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? recorded;

  /// Refused is how many members failed admission and were NOT recorded. Refusal is per member and never discards the rest of the batch: an empty or over-512-byte subject or evidence, a kind, disposition or source outside the closed vocabulary, an `at` or `seen` that is not RFC 3339, a `seen` before the `at` it judges, either instant more than five minutes past the server clock, or a confidence outside [0,1]. Results names which member and why, so the refused ones are exactly the ones to fix and resend.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? refused;

  /// Results is per fact, in the order sent, so a caller can retry exactly the members that were refused and can log the content digest of the ones that landed.
  List<RiskLabelResult> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskLabelOut &&
    other.duplicate == duplicate &&
    other.mirror == mirror &&
    other.pending == pending &&
    other.recorded == recorded &&
    other.refused == refused &&
    _deepEquality.equals(other.results, results);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (duplicate == null ? 0 : duplicate!.hashCode) +
    (mirror == null ? 0 : mirror!.hashCode) +
    (pending == null ? 0 : pending!.hashCode) +
    (recorded == null ? 0 : recorded!.hashCode) +
    (refused == null ? 0 : refused!.hashCode) +
    (results.hashCode);

  @override
  String toString() => 'RiskLabelOut[duplicate=$duplicate, mirror=$mirror, pending=$pending, recorded=$recorded, refused=$refused, results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.duplicate != null) {
      json[r'duplicate'] = this.duplicate;
    } else {
      json[r'duplicate'] = null;
    }
    if (this.mirror != null) {
      json[r'mirror'] = this.mirror;
    } else {
      json[r'mirror'] = null;
    }
    if (this.pending != null) {
      json[r'pending'] = this.pending;
    } else {
      json[r'pending'] = null;
    }
    if (this.recorded != null) {
      json[r'recorded'] = this.recorded;
    } else {
      json[r'recorded'] = null;
    }
    if (this.refused != null) {
      json[r'refused'] = this.refused;
    } else {
      json[r'refused'] = null;
    }
      json[r'results'] = this.results;
    return json;
  }

  /// Returns a new [RiskLabelOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskLabelOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskLabelOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskLabelOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskLabelOut(
        duplicate: mapValueOfType<int>(json, r'duplicate'),
        mirror: mapValueOfType<String>(json, r'mirror'),
        pending: mapValueOfType<int>(json, r'pending'),
        recorded: mapValueOfType<int>(json, r'recorded'),
        refused: mapValueOfType<int>(json, r'refused'),
        results: RiskLabelResult.listFromJson(json[r'results']),
      );
    }
    return null;
  }

  static List<RiskLabelOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskLabelOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskLabelOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskLabelOut> mapFromJson(dynamic json) {
    final map = <String, RiskLabelOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskLabelOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskLabelOut-objects as value to a dart map
  static Map<String, List<RiskLabelOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskLabelOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskLabelOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

