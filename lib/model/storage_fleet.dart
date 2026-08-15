//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class StorageFleet {
  /// Returns a new [StorageFleet] instance.
  StorageFleet({
    this.count,
    this.monthlyUsd,
    this.pct,
    this.totalGiB,
    this.usedGiB,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? monthlyUsd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? pct;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalGiB;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? usedGiB;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StorageFleet &&
    other.count == count &&
    other.monthlyUsd == monthlyUsd &&
    other.pct == pct &&
    other.totalGiB == totalGiB &&
    other.usedGiB == usedGiB;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (count == null ? 0 : count!.hashCode) +
    (monthlyUsd == null ? 0 : monthlyUsd!.hashCode) +
    (pct == null ? 0 : pct!.hashCode) +
    (totalGiB == null ? 0 : totalGiB!.hashCode) +
    (usedGiB == null ? 0 : usedGiB!.hashCode);

  @override
  String toString() => 'StorageFleet[count=$count, monthlyUsd=$monthlyUsd, pct=$pct, totalGiB=$totalGiB, usedGiB=$usedGiB]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.monthlyUsd != null) {
      json[r'monthlyUsd'] = this.monthlyUsd;
    } else {
      json[r'monthlyUsd'] = null;
    }
    if (this.pct != null) {
      json[r'pct'] = this.pct;
    } else {
      json[r'pct'] = null;
    }
    if (this.totalGiB != null) {
      json[r'totalGiB'] = this.totalGiB;
    } else {
      json[r'totalGiB'] = null;
    }
    if (this.usedGiB != null) {
      json[r'usedGiB'] = this.usedGiB;
    } else {
      json[r'usedGiB'] = null;
    }
    return json;
  }

  /// Returns a new [StorageFleet] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StorageFleet? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StorageFleet[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StorageFleet[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StorageFleet(
        count: mapValueOfType<int>(json, r'count'),
        monthlyUsd: mapValueOfType<int>(json, r'monthlyUsd'),
        pct: num.parse('${json[r'pct']}'),
        totalGiB: mapValueOfType<int>(json, r'totalGiB'),
        usedGiB: num.parse('${json[r'usedGiB']}'),
      );
    }
    return null;
  }

  static List<StorageFleet> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StorageFleet>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StorageFleet.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StorageFleet> mapFromJson(dynamic json) {
    final map = <String, StorageFleet>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StorageFleet.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StorageFleet-objects as value to a dart map
  static Map<String, List<StorageFleet>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StorageFleet>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StorageFleet.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

