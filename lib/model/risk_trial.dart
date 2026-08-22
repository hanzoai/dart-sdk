//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskTrial {
  /// Returns a new [RiskTrial] instance.
  RiskTrial({
    this.alerted,
    this.curve = const [],
    this.fit,
    this.learned,
    this.realised,
    this.saturated,
    this.scored,
    this.stated,
    this.topology,
    this.warm,
  });
  /// Alerted is how many of those it would have raised.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? alerted;

  /// Curve is the realised alert rate over successive tenths of the history — the learning curve, which says whether the shape settled or is still moving.
  List<num> curve;

  /// Fit ranks the shape, smaller being better: the relative miss of the stated appetite, plus flat penalties for never warming and for saturating, plus the share of coordinates that were blind.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? fit;

  /// Learned is how many events the shape learned from during the replay.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? learned;

  /// Realised is what that appetite actually produced. The distance between the two is what the search is searching over.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? realised;

  /// Saturated is whether the appetite could not be honoured by any threshold, which is a shape that alerts on nothing and reads like a quiet one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? saturated;

  /// Scored is how many it was able to score.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? scored;

  /// Stated is the appetite the shape was tried at.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? stated;

  /// Topology is the shape.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RiskTopology? topology;

  /// Warm is whether the shape learned enough to have an opinion at all over this organisation's whole history.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? warm;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskTrial &&
    other.alerted == alerted &&
    _deepEquality.equals(other.curve, curve) &&
    other.fit == fit &&
    other.learned == learned &&
    other.realised == realised &&
    other.saturated == saturated &&
    other.scored == scored &&
    other.stated == stated &&
    other.topology == topology &&
    other.warm == warm;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (alerted == null ? 0 : alerted!.hashCode) +
    (curve.hashCode) +
    (fit == null ? 0 : fit!.hashCode) +
    (learned == null ? 0 : learned!.hashCode) +
    (realised == null ? 0 : realised!.hashCode) +
    (saturated == null ? 0 : saturated!.hashCode) +
    (scored == null ? 0 : scored!.hashCode) +
    (stated == null ? 0 : stated!.hashCode) +
    (topology == null ? 0 : topology!.hashCode) +
    (warm == null ? 0 : warm!.hashCode);

  @override
  String toString() => 'RiskTrial[alerted=$alerted, curve=$curve, fit=$fit, learned=$learned, realised=$realised, saturated=$saturated, scored=$scored, stated=$stated, topology=$topology, warm=$warm]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.alerted != null) {
      json[r'alerted'] = this.alerted;
    } else {
      json[r'alerted'] = null;
    }
      json[r'curve'] = this.curve;
    if (this.fit != null) {
      json[r'fit'] = this.fit;
    } else {
      json[r'fit'] = null;
    }
    if (this.learned != null) {
      json[r'learned'] = this.learned;
    } else {
      json[r'learned'] = null;
    }
    if (this.realised != null) {
      json[r'realised'] = this.realised;
    } else {
      json[r'realised'] = null;
    }
    if (this.saturated != null) {
      json[r'saturated'] = this.saturated;
    } else {
      json[r'saturated'] = null;
    }
    if (this.scored != null) {
      json[r'scored'] = this.scored;
    } else {
      json[r'scored'] = null;
    }
    if (this.stated != null) {
      json[r'stated'] = this.stated;
    } else {
      json[r'stated'] = null;
    }
    if (this.topology != null) {
      json[r'topology'] = this.topology;
    } else {
      json[r'topology'] = null;
    }
    if (this.warm != null) {
      json[r'warm'] = this.warm;
    } else {
      json[r'warm'] = null;
    }
    return json;
  }

  /// Returns a new [RiskTrial] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskTrial? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskTrial[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskTrial[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskTrial(
        alerted: mapValueOfType<int>(json, r'alerted'),
        curve: json[r'curve'] is Iterable
            ? (json[r'curve'] as Iterable).cast<num>().toList(growable: false)
            : const [],
        fit: num.parse('${json[r'fit']}'),
        learned: mapValueOfType<int>(json, r'learned'),
        realised: num.parse('${json[r'realised']}'),
        saturated: mapValueOfType<bool>(json, r'saturated'),
        scored: mapValueOfType<int>(json, r'scored'),
        stated: num.parse('${json[r'stated']}'),
        topology: RiskTopology.fromJson(json[r'topology']),
        warm: mapValueOfType<bool>(json, r'warm'),
      );
    }
    return null;
  }

  static List<RiskTrial> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskTrial>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskTrial.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskTrial> mapFromJson(dynamic json) {
    final map = <String, RiskTrial>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskTrial.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskTrial-objects as value to a dart map
  static Map<String, List<RiskTrial>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskTrial>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskTrial.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

