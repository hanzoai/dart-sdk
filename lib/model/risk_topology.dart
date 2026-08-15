//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskTopology {
  /// Returns a new [RiskTopology] instance.
  RiskTopology({
    this.blend,
    this.depth,
    this.family,
    this.review,
    this.trees,
    this.window,
  });

  /// Blend is how much of a closing window folds into the reference: 1 replaces it outright, less makes the reference expensive to move.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? blend;

  /// Depth is how deep each tree is. With Trees it sets how finely the space is partitioned, and therefore how much history it takes to fill.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? depth;

  /// Family is the KIND of model this candidate is: `halfspace` is an ensemble of half-space trees whose masses are counters, and it is the family this search grid ranks. The parameters below are that family's own — a family that does not partition space with trees has different ones — so read them against this.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? family;

  /// Review is the appetite this shape was tried at.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? review;

  /// Trees is how many half-space trees the ensemble holds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? trees;

  /// Window is how many events make one reference window.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? window;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskTopology &&
    other.blend == blend &&
    other.depth == depth &&
    other.family == family &&
    other.review == review &&
    other.trees == trees &&
    other.window == window;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (blend == null ? 0 : blend!.hashCode) +
    (depth == null ? 0 : depth!.hashCode) +
    (family == null ? 0 : family!.hashCode) +
    (review == null ? 0 : review!.hashCode) +
    (trees == null ? 0 : trees!.hashCode) +
    (window == null ? 0 : window!.hashCode);

  @override
  String toString() => 'RiskTopology[blend=$blend, depth=$depth, family=$family, review=$review, trees=$trees, window=$window]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.blend != null) {
      json[r'blend'] = this.blend;
    } else {
      json[r'blend'] = null;
    }
    if (this.depth != null) {
      json[r'depth'] = this.depth;
    } else {
      json[r'depth'] = null;
    }
    if (this.family != null) {
      json[r'family'] = this.family;
    } else {
      json[r'family'] = null;
    }
    if (this.review != null) {
      json[r'review'] = this.review;
    } else {
      json[r'review'] = null;
    }
    if (this.trees != null) {
      json[r'trees'] = this.trees;
    } else {
      json[r'trees'] = null;
    }
    if (this.window != null) {
      json[r'window'] = this.window;
    } else {
      json[r'window'] = null;
    }
    return json;
  }

  /// Returns a new [RiskTopology] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskTopology? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskTopology[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskTopology[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskTopology(
        blend: num.parse('${json[r'blend']}'),
        depth: mapValueOfType<int>(json, r'depth'),
        family: mapValueOfType<String>(json, r'family'),
        review: num.parse('${json[r'review']}'),
        trees: mapValueOfType<int>(json, r'trees'),
        window: mapValueOfType<int>(json, r'window'),
      );
    }
    return null;
  }

  static List<RiskTopology> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskTopology>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskTopology.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskTopology> mapFromJson(dynamic json) {
    final map = <String, RiskTopology>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskTopology.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskTopology-objects as value to a dart map
  static Map<String, List<RiskTopology>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskTopology>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskTopology.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

