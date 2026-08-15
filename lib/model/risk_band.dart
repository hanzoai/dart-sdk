//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskBand {
  /// Returns a new [RiskBand] instance.
  RiskBand({
    this.day,
    this.dim,
    this.kind,
    this.n,
    this.orgs,
    this.q10,
    this.q50,
    this.q90,
  });

  /// Day is the day the band covers.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? day;

  /// Dim is the dimension, named as this API publishes it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dim;

  /// Kind is the subject kind it was computed over.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// N is how many subject-days went into it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? n;

  /// Orgs is how many organisations contributed, each weighted exactly one vote whatever its size. It is published so a reader can judge the band rather than trust it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? orgs;

  /// Q10 is the quiet end of the network's day: a tenth of contributing organisations sit at or below it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? q10;

  /// Q50 is the network's median day.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? q50;

  /// Q90 is the busy end: a tenth of contributing organisations sit at or above it. It is the highest level published.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? q90;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskBand &&
    other.day == day &&
    other.dim == dim &&
    other.kind == kind &&
    other.n == n &&
    other.orgs == orgs &&
    other.q10 == q10 &&
    other.q50 == q50 &&
    other.q90 == q90;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (day == null ? 0 : day!.hashCode) +
    (dim == null ? 0 : dim!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (n == null ? 0 : n!.hashCode) +
    (orgs == null ? 0 : orgs!.hashCode) +
    (q10 == null ? 0 : q10!.hashCode) +
    (q50 == null ? 0 : q50!.hashCode) +
    (q90 == null ? 0 : q90!.hashCode);

  @override
  String toString() => 'RiskBand[day=$day, dim=$dim, kind=$kind, n=$n, orgs=$orgs, q10=$q10, q50=$q50, q90=$q90]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.day != null) {
      json[r'day'] = this.day!.toUtc().toIso8601String();
    } else {
      json[r'day'] = null;
    }
    if (this.dim != null) {
      json[r'dim'] = this.dim;
    } else {
      json[r'dim'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.n != null) {
      json[r'n'] = this.n;
    } else {
      json[r'n'] = null;
    }
    if (this.orgs != null) {
      json[r'orgs'] = this.orgs;
    } else {
      json[r'orgs'] = null;
    }
    if (this.q10 != null) {
      json[r'q10'] = this.q10;
    } else {
      json[r'q10'] = null;
    }
    if (this.q50 != null) {
      json[r'q50'] = this.q50;
    } else {
      json[r'q50'] = null;
    }
    if (this.q90 != null) {
      json[r'q90'] = this.q90;
    } else {
      json[r'q90'] = null;
    }
    return json;
  }

  /// Returns a new [RiskBand] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskBand? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskBand[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskBand[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskBand(
        day: mapDateTime(json, r'day', r''),
        dim: mapValueOfType<String>(json, r'dim'),
        kind: mapValueOfType<String>(json, r'kind'),
        n: mapValueOfType<int>(json, r'n'),
        orgs: mapValueOfType<int>(json, r'orgs'),
        q10: num.parse('${json[r'q10']}'),
        q50: num.parse('${json[r'q50']}'),
        q90: num.parse('${json[r'q90']}'),
      );
    }
    return null;
  }

  static List<RiskBand> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskBand>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskBand.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskBand> mapFromJson(dynamic json) {
    final map = <String, RiskBand>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskBand.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskBand-objects as value to a dart map
  static Map<String, List<RiskBand>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskBand>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskBand.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

