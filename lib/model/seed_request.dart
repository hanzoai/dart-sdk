//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SeedRequest {
  /// Returns a new [SeedRequest] instance.
  SeedRequest({
    this.amountCents,
    this.memo,
    this.ref,
  });

  /// AmountCents is the capital to inject, in minor units. Must be > 0.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amountCents;

  /// Memo is the operator's note on the entry. Empty takes \"reserve capital injection\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? memo;

  /// Ref is an idempotency key. Without one each seed is a distinct injection.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ref;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SeedRequest &&
    other.amountCents == amountCents &&
    other.memo == memo &&
    other.ref == ref;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amountCents == null ? 0 : amountCents!.hashCode) +
    (memo == null ? 0 : memo!.hashCode) +
    (ref == null ? 0 : ref!.hashCode);

  @override
  String toString() => 'SeedRequest[amountCents=$amountCents, memo=$memo, ref=$ref]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.amountCents != null) {
      json[r'amountCents'] = this.amountCents;
    } else {
      json[r'amountCents'] = null;
    }
    if (this.memo != null) {
      json[r'memo'] = this.memo;
    } else {
      json[r'memo'] = null;
    }
    if (this.ref != null) {
      json[r'ref'] = this.ref;
    } else {
      json[r'ref'] = null;
    }
    return json;
  }

  /// Returns a new [SeedRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SeedRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SeedRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SeedRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SeedRequest(
        amountCents: mapValueOfType<int>(json, r'amountCents'),
        memo: mapValueOfType<String>(json, r'memo'),
        ref: mapValueOfType<String>(json, r'ref'),
      );
    }
    return null;
  }

  static List<SeedRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SeedRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SeedRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SeedRequest> mapFromJson(dynamic json) {
    final map = <String, SeedRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SeedRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SeedRequest-objects as value to a dart map
  static Map<String, List<SeedRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SeedRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SeedRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

