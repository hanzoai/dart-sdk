//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AudiencePreview {
  /// Returns a new [AudiencePreview] instance.
  AudiencePreview({
    this.available,
    this.count,
    this.deliverable,
    this.reason,
    this.sample = const [],
    this.source_,
    this.unmatched,
  });
  /// Available is false when the roster or the warehouse could not be read; the counts are then zero because nothing was measured, not because the cohort is empty, and Reason says which read failed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? available;

  /// Count is the cohort size: distinct warehouse identifiers for an event audience, mailable customers for an event-less (whole-org) one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  /// Deliverable is how many de-duplicated mailboxes a send would reach. Two customers sharing an address count once, so it is <= Count.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deliverable;

  /// Reason is the error text of the read that failed: the org's roster could not be loaded (\"identity store unavailable…\"), or the cohort query had no warehouse to run against (\"analytics warehouse not configured\"). Absent when the evaluation succeeded, so its presence and Available=false are one fact seen twice.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  /// Sample is up to 1000 cohort IDENTIFIERS — never addresses, which product analytics does not hold. Empty for an event-less (whole-org) audience.
  List<String> sample;

  /// Source names where the cohort was read: the events table for an event audience, \"iam:<org>\" for the whole-org one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Unmatched is how many cohort identifiers named nobody on the org's roster and so have no address to mail. It is reported rather than hidden: it is the honest explanation for a cohort of 500 that mails 3. Always 0 for an event-less (whole-org) audience, which starts from the roster and has nothing to match.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? unmatched;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AudiencePreview &&
    other.available == available &&
    other.count == count &&
    other.deliverable == deliverable &&
    other.reason == reason &&
    _deepEquality.equals(other.sample, sample) &&
    other.source_ == source_ &&
    other.unmatched == unmatched;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (available == null ? 0 : available!.hashCode) +
    (count == null ? 0 : count!.hashCode) +
    (deliverable == null ? 0 : deliverable!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (sample.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (unmatched == null ? 0 : unmatched!.hashCode);

  @override
  String toString() => 'AudiencePreview[available=$available, count=$count, deliverable=$deliverable, reason=$reason, sample=$sample, source_=$source_, unmatched=$unmatched]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.available != null) {
      json[r'available'] = this.available;
    } else {
      json[r'available'] = null;
    }
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.deliverable != null) {
      json[r'deliverable'] = this.deliverable;
    } else {
      json[r'deliverable'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
      json[r'sample'] = this.sample;
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.unmatched != null) {
      json[r'unmatched'] = this.unmatched;
    } else {
      json[r'unmatched'] = null;
    }
    return json;
  }

  /// Returns a new [AudiencePreview] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AudiencePreview? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AudiencePreview[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AudiencePreview[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AudiencePreview(
        available: mapValueOfType<bool>(json, r'available'),
        count: mapValueOfType<int>(json, r'count'),
        deliverable: mapValueOfType<int>(json, r'deliverable'),
        reason: mapValueOfType<String>(json, r'reason'),
        sample: json[r'sample'] is Iterable
            ? (json[r'sample'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        source_: mapValueOfType<String>(json, r'source'),
        unmatched: mapValueOfType<int>(json, r'unmatched'),
      );
    }
    return null;
  }

  static List<AudiencePreview> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AudiencePreview>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AudiencePreview.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AudiencePreview> mapFromJson(dynamic json) {
    final map = <String, AudiencePreview>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AudiencePreview.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AudiencePreview-objects as value to a dart map
  static Map<String, List<AudiencePreview>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AudiencePreview>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AudiencePreview.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

