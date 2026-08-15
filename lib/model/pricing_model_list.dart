//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PricingModelList {
  /// Returns a new [PricingModelList] instance.
  PricingModelList({
    this.models = const [],
    this.total,
    this.updated,
  });

  /// Models are the catalog entries visible to the caller, each an opaque object exactly as the pricing source emits it, with any admin override merged on top. An admin additionally sees hidden entries, each annotated under \"_overlay\".
  List<Map<String, Object>> models;

  /// Total is how many models this answer carries — recounted over the visible set, not the catalog's own total.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  /// Updated is when the catalog was last refreshed, as the pricing source recorded it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PricingModelList &&
    _deepEquality.equals(other.models, models) &&
    other.total == total &&
    other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (models.hashCode) +
    (total == null ? 0 : total!.hashCode) +
    (updated == null ? 0 : updated!.hashCode);

  @override
  String toString() => 'PricingModelList[models=$models, total=$total, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'models'] = this.models;
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    return json;
  }

  /// Returns a new [PricingModelList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PricingModelList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PricingModelList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PricingModelList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PricingModelList(
        models: json[r'models'] is Iterable
            ? (json[r'models'] as Iterable).map((e) => (e as Map).cast<String, Object>()).toList(growable: false)
            : const [],
        total: mapValueOfType<int>(json, r'total'),
        updated: mapValueOfType<Object>(json, r'updated'),
      );
    }
    return null;
  }

  static List<PricingModelList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PricingModelList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PricingModelList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PricingModelList> mapFromJson(dynamic json) {
    final map = <String, PricingModelList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PricingModelList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PricingModelList-objects as value to a dart map
  static Map<String, List<PricingModelList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PricingModelList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PricingModelList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

