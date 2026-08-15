//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Voucher {
  /// Returns a new [Voucher] instance.
  Voucher({
    this.description,
    this.legs = const [],
    this.postingAt,
    this.sourceId,
    this.sourceKind,
  });

  /// Description is the human line for the event, e.g. the vendor a bill came from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Legs are the sides of the posting. They must balance: Σdebit == Σcredit, give or take the 2¢ round-off allowance.
  List<Leg> legs;

  /// PostingAt is the RFC3339 instant the event posts at — the time every statement window filters on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? postingAt;

  /// SourceID is the source event's own id within that namespace. Together with SourceKind it is the key that makes a repeat posting a no-op.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourceId;

  /// SourceKind is the idempotency namespace naming what booked this, e.g. \"scan\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourceKind;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Voucher &&
    other.description == description &&
    _deepEquality.equals(other.legs, legs) &&
    other.postingAt == postingAt &&
    other.sourceId == sourceId &&
    other.sourceKind == sourceKind;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (description == null ? 0 : description!.hashCode) +
    (legs.hashCode) +
    (postingAt == null ? 0 : postingAt!.hashCode) +
    (sourceId == null ? 0 : sourceId!.hashCode) +
    (sourceKind == null ? 0 : sourceKind!.hashCode);

  @override
  String toString() => 'Voucher[description=$description, legs=$legs, postingAt=$postingAt, sourceId=$sourceId, sourceKind=$sourceKind]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'legs'] = this.legs;
    if (this.postingAt != null) {
      json[r'postingAt'] = this.postingAt;
    } else {
      json[r'postingAt'] = null;
    }
    if (this.sourceId != null) {
      json[r'sourceId'] = this.sourceId;
    } else {
      json[r'sourceId'] = null;
    }
    if (this.sourceKind != null) {
      json[r'sourceKind'] = this.sourceKind;
    } else {
      json[r'sourceKind'] = null;
    }
    return json;
  }

  /// Returns a new [Voucher] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Voucher? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Voucher[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Voucher[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Voucher(
        description: mapValueOfType<String>(json, r'description'),
        legs: Leg.listFromJson(json[r'legs']),
        postingAt: mapValueOfType<String>(json, r'postingAt'),
        sourceId: mapValueOfType<String>(json, r'sourceId'),
        sourceKind: mapValueOfType<String>(json, r'sourceKind'),
      );
    }
    return null;
  }

  static List<Voucher> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Voucher>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Voucher.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Voucher> mapFromJson(dynamic json) {
    final map = <String, Voucher>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Voucher.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Voucher-objects as value to a dart map
  static Map<String, List<Voucher>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Voucher>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Voucher.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

