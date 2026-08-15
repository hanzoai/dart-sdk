//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskAppetiteIn {
  /// Returns a new [RiskAppetiteIn] instance.
  RiskAppetiteIn({
    this.live,
    this.review,
    this.sample,
  });

  /// Live turns the model out of shadow. It defaults to FALSE on every call, so going live is always an explicit act and never a side effect of changing a number.  Setting it requires an ADMIN of this organisation. Arming decides whether the model may change an outcome at all — a payment frozen, a grant refused — for every customer this organisation has, which is a governance act rather than a tuning one. Stating the appetite and the sample needs no admin.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? live;

  /// Review is the share of the stream that may be sent for examination, in (0, 0.5]. The alert threshold is derived from it as a quantile of the scores actually observed, so the level is governed rather than tuned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? review;

  /// Sample is the share of below-the-line events retained for review, in [0, 1]. It is the instrument that measures what the model missed; there are no labels, so nothing else can.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? sample;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskAppetiteIn &&
    other.live == live &&
    other.review == review &&
    other.sample == sample;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (live == null ? 0 : live!.hashCode) +
    (review == null ? 0 : review!.hashCode) +
    (sample == null ? 0 : sample!.hashCode);

  @override
  String toString() => 'RiskAppetiteIn[live=$live, review=$review, sample=$sample]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.live != null) {
      json[r'live'] = this.live;
    } else {
      json[r'live'] = null;
    }
    if (this.review != null) {
      json[r'review'] = this.review;
    } else {
      json[r'review'] = null;
    }
    if (this.sample != null) {
      json[r'sample'] = this.sample;
    } else {
      json[r'sample'] = null;
    }
    return json;
  }

  /// Returns a new [RiskAppetiteIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskAppetiteIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskAppetiteIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskAppetiteIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskAppetiteIn(
        live: mapValueOfType<bool>(json, r'live'),
        review: num.parse('${json[r'review']}'),
        sample: num.parse('${json[r'sample']}'),
      );
    }
    return null;
  }

  static List<RiskAppetiteIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskAppetiteIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskAppetiteIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskAppetiteIn> mapFromJson(dynamic json) {
    final map = <String, RiskAppetiteIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskAppetiteIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskAppetiteIn-objects as value to a dart map
  static Map<String, List<RiskAppetiteIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskAppetiteIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskAppetiteIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

