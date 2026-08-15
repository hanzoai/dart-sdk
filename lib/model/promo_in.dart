//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PromoIn {
  /// Returns a new [PromoIn] instance.
  PromoIn({
    this.active,
    this.end,
    this.percentOff,
    this.plans = const [],
    this.start,
  });

  /// Active is the master switch: false parks the offer without deleting it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? active;

  /// End is when the offer closes (RFC3339).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? end;

  /// PercentOff is the discount, 0-100.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? percentOff;

  /// Plans are the plan ids the offer applies to.
  List<String> plans;

  /// Start is when the offer opens (RFC3339).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? start;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PromoIn &&
    other.active == active &&
    other.end == end &&
    other.percentOff == percentOff &&
    _deepEquality.equals(other.plans, plans) &&
    other.start == start;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (active == null ? 0 : active!.hashCode) +
    (end == null ? 0 : end!.hashCode) +
    (percentOff == null ? 0 : percentOff!.hashCode) +
    (plans.hashCode) +
    (start == null ? 0 : start!.hashCode);

  @override
  String toString() => 'PromoIn[active=$active, end=$end, percentOff=$percentOff, plans=$plans, start=$start]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.end != null) {
      json[r'end'] = this.end;
    } else {
      json[r'end'] = null;
    }
    if (this.percentOff != null) {
      json[r'percentOff'] = this.percentOff;
    } else {
      json[r'percentOff'] = null;
    }
      json[r'plans'] = this.plans;
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
    return json;
  }

  /// Returns a new [PromoIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PromoIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PromoIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PromoIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PromoIn(
        active: mapValueOfType<bool>(json, r'active'),
        end: mapValueOfType<String>(json, r'end'),
        percentOff: mapValueOfType<int>(json, r'percentOff'),
        plans: json[r'plans'] is Iterable
            ? (json[r'plans'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        start: mapValueOfType<String>(json, r'start'),
      );
    }
    return null;
  }

  static List<PromoIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PromoIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PromoIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PromoIn> mapFromJson(dynamic json) {
    final map = <String, PromoIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PromoIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PromoIn-objects as value to a dart map
  static Map<String, List<PromoIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PromoIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PromoIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

