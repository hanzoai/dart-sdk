//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskModelState {
  /// Returns a new [RiskModelState] instance.
  RiskModelState({
    this.aggregates,
    this.blind = const {},
    this.cut,
    this.descends,
    this.disposed,
    this.learned,
    this.live,
    this.policy,
    this.realised,
    this.refused = const {},
    this.sample,
    this.saturated,
    this.shape,
    this.stated,
    this.surface,
    this.tenant,
    this.values = const [],
    this.warm,
  });
  /// Aggregates reports the pressure on this organisation's own sliding aggregates, and whether they have started forgetting subjects to stay inside their bound.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RiskAggregates? aggregates;

  /// Blind counts, per feature, how often it took its neutral value for want of data. A feature blind on most traffic is not contributing whatever the inventory claims for it.
  Map<String, int> blind;

  /// Cut is the threshold in force, derived from Stated as a quantile of the scores actually observed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? cut;

  /// Descends is the published value the working model grew out of: the newest one whose mass count it has reached or passed. Empty when nothing has been published yet.  It is DERIVED from the count and never stored, so an instant rollback is right for free — adopting an older value moves the count backward and this answers with that older value, where a stored pointer would be a second fact to keep in step. Read with Learned it is also the DRIFT: this model is Descends plus however many events the two counts differ by.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? descends;

  /// Disposed is how many published values retention has taken. It is DERIVED from the lowest surviving sequence, so it cannot drift from what it describes, and it is reported because a retention that binds is a fact an operator must be able to read rather than a silence.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? disposed;

  /// Learned is how many events the model has learned from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? learned;

  /// Live is false while the model is in shadow — scoring, learning and recording what it WOULD have alerted on, and changing no outcome. Shadow is the default for a new tenant.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? live;

  /// Policy is the version of the decision regime this model is deciding under, from your organisation's own policy history (GET /v1/risk/policy). Every score cites it, so it is the join between a past decision and the appetite that produced its threshold. Zero means no regime has ever been stated and the default posture — shadow — is in force.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? policy;

  /// Realised is the share that actually was. Reading it beside Stated is what makes the appetite a measured commitment rather than an intention.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? realised;

  /// Refused counts events the model would not score, by reason. None of them was examined; a refusal is counted, never silent.
  Map<String, int> refused;

  /// Sample is the share of below-the-line events retained for review, which is how the miss rate is measured rather than assumed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? sample;

  /// Saturated means no threshold can honour the stated appetite because too much of the stream scores in the top bucket, so the model is alerting on nothing — the one state that must never be mistaken for quiet.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? saturated;

  /// Shape is the model's identity, as `<family>:<digest>`: the KIND of model, and that family's own digest over the inventory in order and the detector's geometry parameters. It is what an auditor pins an alert to, because learned state is only meaningful against the space that produced it — and the family leads it because two families' masses are not fitted differently, they are different kinds of number.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shape;

  /// Stated is the share of the stream this organisation said may be examined.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? stated;

  /// Surface reports what of the tenant's OWN event surface has been folded in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RiskSurface? surface;

  /// Tenant is the qualified key the model is held under — the brand whose issuer vouched for the caller and the organisation it acts for. It is echoed so a reader can see the answer is its own and not a parameter it passed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tenant;

  /// Values is your organisation's own published model values, newest first — every state it deliberately named, each addressed by its own content and immutable. This is what PUT /v1/risk/state/model names, so it is reported HERE rather than behind an address of its own: they are part of what a review of one model reads, and a list of names is a few hundred bytes.  Compare each one's `shape` with the `shape` above: equal means adopting it restores masses into the space this model already runs, and different means adopting it REPLANTS the model into the space that value describes — which is how the shape a search found becomes the shape you are running.  The working model is NOT in it. Publication is a boundary somebody marked; the state between two boundaries is in-process counters, and calling those a value would be a claim about reproducibility that nothing could honour.
  List<RiskModelValue> values;

  /// Warm is whether that is enough for the model to have an opinion at all. Below it the model declines to score, which is an ordinary state and is not a clean bill of health.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? warm;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskModelState &&
    other.aggregates == aggregates &&
    _deepEquality.equals(other.blind, blind) &&
    other.cut == cut &&
    other.descends == descends &&
    other.disposed == disposed &&
    other.learned == learned &&
    other.live == live &&
    other.policy == policy &&
    other.realised == realised &&
    _deepEquality.equals(other.refused, refused) &&
    other.sample == sample &&
    other.saturated == saturated &&
    other.shape == shape &&
    other.stated == stated &&
    other.surface == surface &&
    other.tenant == tenant &&
    _deepEquality.equals(other.values, values) &&
    other.warm == warm;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (aggregates == null ? 0 : aggregates!.hashCode) +
    (blind.hashCode) +
    (cut == null ? 0 : cut!.hashCode) +
    (descends == null ? 0 : descends!.hashCode) +
    (disposed == null ? 0 : disposed!.hashCode) +
    (learned == null ? 0 : learned!.hashCode) +
    (live == null ? 0 : live!.hashCode) +
    (policy == null ? 0 : policy!.hashCode) +
    (realised == null ? 0 : realised!.hashCode) +
    (refused.hashCode) +
    (sample == null ? 0 : sample!.hashCode) +
    (saturated == null ? 0 : saturated!.hashCode) +
    (shape == null ? 0 : shape!.hashCode) +
    (stated == null ? 0 : stated!.hashCode) +
    (surface == null ? 0 : surface!.hashCode) +
    (tenant == null ? 0 : tenant!.hashCode) +
    (values.hashCode) +
    (warm == null ? 0 : warm!.hashCode);

  @override
  String toString() => 'RiskModelState[aggregates=$aggregates, blind=$blind, cut=$cut, descends=$descends, disposed=$disposed, learned=$learned, live=$live, policy=$policy, realised=$realised, refused=$refused, sample=$sample, saturated=$saturated, shape=$shape, stated=$stated, surface=$surface, tenant=$tenant, values=$values, warm=$warm]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.aggregates != null) {
      json[r'aggregates'] = this.aggregates;
    } else {
      json[r'aggregates'] = null;
    }
      json[r'blind'] = this.blind;
    if (this.cut != null) {
      json[r'cut'] = this.cut;
    } else {
      json[r'cut'] = null;
    }
    if (this.descends != null) {
      json[r'descends'] = this.descends;
    } else {
      json[r'descends'] = null;
    }
    if (this.disposed != null) {
      json[r'disposed'] = this.disposed;
    } else {
      json[r'disposed'] = null;
    }
    if (this.learned != null) {
      json[r'learned'] = this.learned;
    } else {
      json[r'learned'] = null;
    }
    if (this.live != null) {
      json[r'live'] = this.live;
    } else {
      json[r'live'] = null;
    }
    if (this.policy != null) {
      json[r'policy'] = this.policy;
    } else {
      json[r'policy'] = null;
    }
    if (this.realised != null) {
      json[r'realised'] = this.realised;
    } else {
      json[r'realised'] = null;
    }
      json[r'refused'] = this.refused;
    if (this.sample != null) {
      json[r'sample'] = this.sample;
    } else {
      json[r'sample'] = null;
    }
    if (this.saturated != null) {
      json[r'saturated'] = this.saturated;
    } else {
      json[r'saturated'] = null;
    }
    if (this.shape != null) {
      json[r'shape'] = this.shape;
    } else {
      json[r'shape'] = null;
    }
    if (this.stated != null) {
      json[r'stated'] = this.stated;
    } else {
      json[r'stated'] = null;
    }
    if (this.surface != null) {
      json[r'surface'] = this.surface;
    } else {
      json[r'surface'] = null;
    }
    if (this.tenant != null) {
      json[r'tenant'] = this.tenant;
    } else {
      json[r'tenant'] = null;
    }
      json[r'values'] = this.values;
    if (this.warm != null) {
      json[r'warm'] = this.warm;
    } else {
      json[r'warm'] = null;
    }
    return json;
  }

  /// Returns a new [RiskModelState] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskModelState? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskModelState[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskModelState[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskModelState(
        aggregates: RiskAggregates.fromJson(json[r'aggregates']),
        blind: mapCastOfType<String, int>(json, r'blind') ?? const {},
        cut: mapValueOfType<double>(json, r'cut'),
        descends: mapValueOfType<String>(json, r'descends'),
        disposed: mapValueOfType<int>(json, r'disposed'),
        learned: mapValueOfType<int>(json, r'learned'),
        live: mapValueOfType<bool>(json, r'live'),
        policy: mapValueOfType<int>(json, r'policy'),
        realised: mapValueOfType<double>(json, r'realised'),
        refused: mapCastOfType<String, int>(json, r'refused') ?? const {},
        sample: mapValueOfType<double>(json, r'sample'),
        saturated: mapValueOfType<bool>(json, r'saturated'),
        shape: mapValueOfType<String>(json, r'shape'),
        stated: mapValueOfType<double>(json, r'stated'),
        surface: RiskSurface.fromJson(json[r'surface']),
        tenant: mapValueOfType<String>(json, r'tenant'),
        values: RiskModelValue.listFromJson(json[r'values']),
        warm: mapValueOfType<bool>(json, r'warm'),
      );
    }
    return null;
  }

  static List<RiskModelState> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskModelState>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskModelState.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskModelState> mapFromJson(dynamic json) {
    final map = <String, RiskModelState>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskModelState.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskModelState-objects as value to a dart map
  static Map<String, List<RiskModelState>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskModelState>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskModelState.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

