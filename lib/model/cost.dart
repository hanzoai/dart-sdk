//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Cost {
  /// Returns a new [Cost] instance.
  Cost({
    this.dropletsMonthly,
    this.loadBalancersMonthly,
    this.reclaimableMonthly,
    this.totalMonthly,
    this.volumesMonthly,
    this.wastedMonthly,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dropletsMonthly;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? loadBalancersMonthly;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? reclaimableMonthly;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalMonthly;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? volumesMonthly;

  /// WastedMonthly is what the fleet pays every month for provisioned-but-empty space on the volumes a kubelet actually measured.  It is NOT ReclaimableMonthly and must never be added to it. Reclaimable is money a button on this board collects, by deleting volumes proven to belong to no one. Wasted is money locked inside volumes that are IN USE and holding live data: DigitalOcean can only ever grow a volume, so collecting it means copying a database onto a smaller one. See shrinkRecipe.  It is also a LOWER BOUND — unmeasured volumes contribute nothing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? wastedMonthly;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Cost &&
    other.dropletsMonthly == dropletsMonthly &&
    other.loadBalancersMonthly == loadBalancersMonthly &&
    other.reclaimableMonthly == reclaimableMonthly &&
    other.totalMonthly == totalMonthly &&
    other.volumesMonthly == volumesMonthly &&
    other.wastedMonthly == wastedMonthly;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dropletsMonthly == null ? 0 : dropletsMonthly!.hashCode) +
    (loadBalancersMonthly == null ? 0 : loadBalancersMonthly!.hashCode) +
    (reclaimableMonthly == null ? 0 : reclaimableMonthly!.hashCode) +
    (totalMonthly == null ? 0 : totalMonthly!.hashCode) +
    (volumesMonthly == null ? 0 : volumesMonthly!.hashCode) +
    (wastedMonthly == null ? 0 : wastedMonthly!.hashCode);

  @override
  String toString() => 'Cost[dropletsMonthly=$dropletsMonthly, loadBalancersMonthly=$loadBalancersMonthly, reclaimableMonthly=$reclaimableMonthly, totalMonthly=$totalMonthly, volumesMonthly=$volumesMonthly, wastedMonthly=$wastedMonthly]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.dropletsMonthly != null) {
      json[r'dropletsMonthly'] = this.dropletsMonthly;
    } else {
      json[r'dropletsMonthly'] = null;
    }
    if (this.loadBalancersMonthly != null) {
      json[r'loadBalancersMonthly'] = this.loadBalancersMonthly;
    } else {
      json[r'loadBalancersMonthly'] = null;
    }
    if (this.reclaimableMonthly != null) {
      json[r'reclaimableMonthly'] = this.reclaimableMonthly;
    } else {
      json[r'reclaimableMonthly'] = null;
    }
    if (this.totalMonthly != null) {
      json[r'totalMonthly'] = this.totalMonthly;
    } else {
      json[r'totalMonthly'] = null;
    }
    if (this.volumesMonthly != null) {
      json[r'volumesMonthly'] = this.volumesMonthly;
    } else {
      json[r'volumesMonthly'] = null;
    }
    if (this.wastedMonthly != null) {
      json[r'wastedMonthly'] = this.wastedMonthly;
    } else {
      json[r'wastedMonthly'] = null;
    }
    return json;
  }

  /// Returns a new [Cost] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Cost? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Cost[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Cost[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Cost(
        dropletsMonthly: mapValueOfType<int>(json, r'dropletsMonthly'),
        loadBalancersMonthly: mapValueOfType<int>(json, r'loadBalancersMonthly'),
        reclaimableMonthly: mapValueOfType<int>(json, r'reclaimableMonthly'),
        totalMonthly: mapValueOfType<int>(json, r'totalMonthly'),
        volumesMonthly: mapValueOfType<int>(json, r'volumesMonthly'),
        wastedMonthly: mapValueOfType<int>(json, r'wastedMonthly'),
      );
    }
    return null;
  }

  static List<Cost> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Cost>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Cost.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Cost> mapFromJson(dynamic json) {
    final map = <String, Cost>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Cost.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Cost-objects as value to a dart map
  static Map<String, List<Cost>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Cost>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Cost.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

