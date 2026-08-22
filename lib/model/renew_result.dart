//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RenewResult {
  /// Returns a new [RenewResult] instance.
  RenewResult({
    this.paidCents,
    this.record,
  });
  /// what this renewal cost, in cents
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? paidCents;

  /// the ownership row with its new expiry
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Holding? record;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RenewResult &&
    other.paidCents == paidCents &&
    other.record == record;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (paidCents == null ? 0 : paidCents!.hashCode) +
    (record == null ? 0 : record!.hashCode);

  @override
  String toString() => 'RenewResult[paidCents=$paidCents, record=$record]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.paidCents != null) {
      json[r'paidCents'] = this.paidCents;
    } else {
      json[r'paidCents'] = null;
    }
    if (this.record != null) {
      json[r'record'] = this.record;
    } else {
      json[r'record'] = null;
    }
    return json;
  }

  /// Returns a new [RenewResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RenewResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RenewResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RenewResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RenewResult(
        paidCents: mapValueOfType<int>(json, r'paidCents'),
        record: Holding.fromJson(json[r'record']),
      );
    }
    return null;
  }

  static List<RenewResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RenewResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RenewResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RenewResult> mapFromJson(dynamic json) {
    final map = <String, RenewResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RenewResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RenewResult-objects as value to a dart map
  static Map<String, List<RenewResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RenewResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RenewResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

