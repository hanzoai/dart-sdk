//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SaaSRevenue {
  /// Returns a new [SaaSRevenue] instance.
  SaaSRevenue({
    this.activeSubscriptions,
    this.arrCents,
    this.byCategory = const [],
    this.churnedMrrCents,
    this.mrrCents,
    this.netNewMrrCents,
    this.newMrrCents,
    this.payingCustomers,
    this.trials,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? activeSubscriptions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? arrCents;

  List<SaaSCategory> byCategory;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? churnedMrrCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mrrCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? netNewMrrCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? newMrrCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? payingCustomers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? trials;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SaaSRevenue &&
    other.activeSubscriptions == activeSubscriptions &&
    other.arrCents == arrCents &&
    _deepEquality.equals(other.byCategory, byCategory) &&
    other.churnedMrrCents == churnedMrrCents &&
    other.mrrCents == mrrCents &&
    other.netNewMrrCents == netNewMrrCents &&
    other.newMrrCents == newMrrCents &&
    other.payingCustomers == payingCustomers &&
    other.trials == trials;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (activeSubscriptions == null ? 0 : activeSubscriptions!.hashCode) +
    (arrCents == null ? 0 : arrCents!.hashCode) +
    (byCategory.hashCode) +
    (churnedMrrCents == null ? 0 : churnedMrrCents!.hashCode) +
    (mrrCents == null ? 0 : mrrCents!.hashCode) +
    (netNewMrrCents == null ? 0 : netNewMrrCents!.hashCode) +
    (newMrrCents == null ? 0 : newMrrCents!.hashCode) +
    (payingCustomers == null ? 0 : payingCustomers!.hashCode) +
    (trials == null ? 0 : trials!.hashCode);

  @override
  String toString() => 'SaaSRevenue[activeSubscriptions=$activeSubscriptions, arrCents=$arrCents, byCategory=$byCategory, churnedMrrCents=$churnedMrrCents, mrrCents=$mrrCents, netNewMrrCents=$netNewMrrCents, newMrrCents=$newMrrCents, payingCustomers=$payingCustomers, trials=$trials]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.activeSubscriptions != null) {
      json[r'activeSubscriptions'] = this.activeSubscriptions;
    } else {
      json[r'activeSubscriptions'] = null;
    }
    if (this.arrCents != null) {
      json[r'arrCents'] = this.arrCents;
    } else {
      json[r'arrCents'] = null;
    }
      json[r'byCategory'] = this.byCategory;
    if (this.churnedMrrCents != null) {
      json[r'churnedMrrCents'] = this.churnedMrrCents;
    } else {
      json[r'churnedMrrCents'] = null;
    }
    if (this.mrrCents != null) {
      json[r'mrrCents'] = this.mrrCents;
    } else {
      json[r'mrrCents'] = null;
    }
    if (this.netNewMrrCents != null) {
      json[r'netNewMrrCents'] = this.netNewMrrCents;
    } else {
      json[r'netNewMrrCents'] = null;
    }
    if (this.newMrrCents != null) {
      json[r'newMrrCents'] = this.newMrrCents;
    } else {
      json[r'newMrrCents'] = null;
    }
    if (this.payingCustomers != null) {
      json[r'payingCustomers'] = this.payingCustomers;
    } else {
      json[r'payingCustomers'] = null;
    }
    if (this.trials != null) {
      json[r'trials'] = this.trials;
    } else {
      json[r'trials'] = null;
    }
    return json;
  }

  /// Returns a new [SaaSRevenue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SaaSRevenue? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SaaSRevenue[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SaaSRevenue[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SaaSRevenue(
        activeSubscriptions: mapValueOfType<int>(json, r'activeSubscriptions'),
        arrCents: mapValueOfType<int>(json, r'arrCents'),
        byCategory: SaaSCategory.listFromJson(json[r'byCategory']),
        churnedMrrCents: mapValueOfType<int>(json, r'churnedMrrCents'),
        mrrCents: mapValueOfType<int>(json, r'mrrCents'),
        netNewMrrCents: mapValueOfType<int>(json, r'netNewMrrCents'),
        newMrrCents: mapValueOfType<int>(json, r'newMrrCents'),
        payingCustomers: mapValueOfType<int>(json, r'payingCustomers'),
        trials: mapValueOfType<int>(json, r'trials'),
      );
    }
    return null;
  }

  static List<SaaSRevenue> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SaaSRevenue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SaaSRevenue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SaaSRevenue> mapFromJson(dynamic json) {
    final map = <String, SaaSRevenue>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SaaSRevenue.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SaaSRevenue-objects as value to a dart map
  static Map<String, List<SaaSRevenue>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SaaSRevenue>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SaaSRevenue.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

