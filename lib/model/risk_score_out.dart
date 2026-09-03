//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskScoreOut {
  /// Returns a new [RiskScoreOut] instance.
  RiskScoreOut({
    this.alert,
    this.causes = const [],
    this.cut,
    this.policy,
    this.refusal,
    this.score,
    this.scored,
    this.shadow,
    this.shape,
    this.values = const [],
  });
  /// Alert is whether this would become evidence. It is false in shadow however high the score.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? alert;

  /// Causes is the per-feature attribution, ordered by contribution. Each is a COUNTERFACTUAL on the model that produced the score — the coordinate moved to its neutral value and the event rescored — so the explanation is the same arithmetic the score came from.
  List<RiskCause> causes;

  /// Cut is the threshold in force, derived from the stated appetite as a quantile of the scores actually observed rather than fixed at a number.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? cut;

  /// Policy is the version of your organisation's decision regime this verdict was reached under, from its own policy history (GET /v1/risk/policy). Cut is derived from the appetite that version states, so it is the record that makes this decision reconstructible after the appetite is restated. Zero means no regime has ever been stated and the default posture — shadow — was in force.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? policy;

  /// Refusal names why the model declined, when it did.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refusal;

  /// Score is where the event sits in the tenant's own density: 0 where its recent behaviour is densest, 1 where there is none of it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? score;

  /// Scored is false when the model declined, and Refusal says which refusal it was: warming, unusable or unidentified. None of them is a clean bill of health, which is why the refusal is stated rather than rendered as a score of zero.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? scored;

  /// Shadow is whether the model is testing rather than deciding — scoring, learning and recording what it WOULD have alerted on, and changing no outcome. It is the default for a model no one has reviewed yet.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? shadow;

  /// Shape is the model space this verdict was reached in, as `<family>:<digest>`: the KIND of model, and that family's own digest over your organisation's feature inventory in order and the detector's geometry parameters. It is what pins an adverse decision to a model — a score is only meaningful against the space that produced it, and without this the only answer to \"which model decided this\" was \"the one that was running\", which is not an answer.  The family leads it because everything after it is one family's arithmetic. Two spaces are the same space only if they are the same family, so comparing this with the `shape` on your model state or on a published value is a comparison that holds ACROSS families and not only inside one.  It names the SPACE, not the learned state, and that is deliberate. The masses at the instant of a score are in-process counters somewhere between two published values, so citing a published address here would claim that value produced this score — true only for the score taken the instant after a publication. This, the policy version and the event's own time are what IS true, and the published history's clock (GET /v1/risk/state) brackets the decision between two named values from there.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shape;

  /// Values is every coordinate, including the ones that contributed nothing, so a reviewer sees what the model read and not only what it concluded.
  List<RiskValue> values;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskScoreOut &&
    other.alert == alert &&
    _deepEquality.equals(other.causes, causes) &&
    other.cut == cut &&
    other.policy == policy &&
    other.refusal == refusal &&
    other.score == score &&
    other.scored == scored &&
    other.shadow == shadow &&
    other.shape == shape &&
    _deepEquality.equals(other.values, values);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (alert == null ? 0 : alert!.hashCode) +
    (causes.hashCode) +
    (cut == null ? 0 : cut!.hashCode) +
    (policy == null ? 0 : policy!.hashCode) +
    (refusal == null ? 0 : refusal!.hashCode) +
    (score == null ? 0 : score!.hashCode) +
    (scored == null ? 0 : scored!.hashCode) +
    (shadow == null ? 0 : shadow!.hashCode) +
    (shape == null ? 0 : shape!.hashCode) +
    (values.hashCode);

  @override
  String toString() => 'RiskScoreOut[alert=$alert, causes=$causes, cut=$cut, policy=$policy, refusal=$refusal, score=$score, scored=$scored, shadow=$shadow, shape=$shape, values=$values]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.alert != null) {
      json[r'alert'] = this.alert;
    } else {
      json[r'alert'] = null;
    }
      json[r'causes'] = this.causes;
    if (this.cut != null) {
      json[r'cut'] = this.cut;
    } else {
      json[r'cut'] = null;
    }
    if (this.policy != null) {
      json[r'policy'] = this.policy;
    } else {
      json[r'policy'] = null;
    }
    if (this.refusal != null) {
      json[r'refusal'] = this.refusal;
    } else {
      json[r'refusal'] = null;
    }
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    if (this.scored != null) {
      json[r'scored'] = this.scored;
    } else {
      json[r'scored'] = null;
    }
    if (this.shadow != null) {
      json[r'shadow'] = this.shadow;
    } else {
      json[r'shadow'] = null;
    }
    if (this.shape != null) {
      json[r'shape'] = this.shape;
    } else {
      json[r'shape'] = null;
    }
      json[r'values'] = this.values;
    return json;
  }

  /// Returns a new [RiskScoreOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskScoreOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskScoreOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskScoreOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskScoreOut(
        alert: mapValueOfType<bool>(json, r'alert'),
        causes: RiskCause.listFromJson(json[r'causes']),
        cut: mapValueOfType<double>(json, r'cut'),
        policy: mapValueOfType<int>(json, r'policy'),
        refusal: mapValueOfType<String>(json, r'refusal'),
        score: mapValueOfType<double>(json, r'score'),
        scored: mapValueOfType<bool>(json, r'scored'),
        shadow: mapValueOfType<bool>(json, r'shadow'),
        shape: mapValueOfType<String>(json, r'shape'),
        values: RiskValue.listFromJson(json[r'values']),
      );
    }
    return null;
  }

  static List<RiskScoreOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskScoreOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskScoreOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskScoreOut> mapFromJson(dynamic json) {
    final map = <String, RiskScoreOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskScoreOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskScoreOut-objects as value to a dart map
  static Map<String, List<RiskScoreOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskScoreOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskScoreOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

