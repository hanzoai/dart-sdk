//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BucketList {
  /// Returns a new [BucketList] instance.
  BucketList({
    this.buckets = const [],
    this.total,
  });
  /// Buckets are the caller org's buckets, friendly names, oldest first as the store returns them.
  List<BucketItem> buckets;

  /// Total is how many buckets this org has. It equals len(buckets): the listing is not paged, because an org's bucket count is small by construction.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BucketList &&
    _deepEquality.equals(other.buckets, buckets) &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (buckets.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'BucketList[buckets=$buckets, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'buckets'] = this.buckets;
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [BucketList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BucketList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BucketList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BucketList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BucketList(
        buckets: BucketItem.listFromJson(json[r'buckets']),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<BucketList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BucketList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BucketList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BucketList> mapFromJson(dynamic json) {
    final map = <String, BucketList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BucketList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BucketList-objects as value to a dart map
  static Map<String, List<BucketList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BucketList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BucketList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

