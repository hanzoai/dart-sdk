//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskResolved {
  /// Returns a new [RiskResolved] instance.
  RiskResolved({
    this.asOf,
    this.at,
    this.by,
    this.confidence,
    this.conflicts = const [],
    this.contested,
    this.disposition,
    this.evidence,
    this.id,
    this.kind,
    this.source_,
    this.subject,
  });
  /// AsOf is the instant this answer was true at: the event time plus the horizon. Nothing seen after it was visible to this resolution.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? asOf;

  /// At is the event's instant, RFC 3339, echoed. It is what the horizon is measured from, so At plus the horizon is AsOf.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? at;

  /// By is the identity that filed the WINNING assertion, `<home org>/<user>`, stamped server-side from the validated principal at the write and never taken from a body — an attribution the caller chose is not attribution. It is the winner's alone; every losing assertion keeps its own and is returned whole in Conflicts.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? by;

  /// Confidence is the winning assertion's own confidence in [0,1], zero when its filer stated none. It is reported because it is a term of the rule that picked the winner, and it is the weakest term but one: it breaks a tie inside one rank and never lifts a weak source above a strong one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? confidence;

  /// Conflicts is every other visible assertion, strongest first, whole. They are kept and returned rather than dropped, so an adverse action can show that the plane knew of a contrary claim and say why it lost. They are horizon-filtered exactly like the winner: an assertion that was not knowable yet cannot even be named here, because naming it would leak its existence into a past decision.
  List<RiskLabelRecord> conflicts;

  /// Contested is true when a visible assertion claimed a DIFFERENT disposition. Two sources agreeing is corroboration, not conflict.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? contested;

  /// Disposition is the claim IN FORCE at AsOf: productive, unproductive, or the empty string for an explicit unjudged. It is the winning assertion's own claim, never a vote or an average — an average of two adjudications is a third claim nobody made. A matured event nobody judged is not answered here at all; it is counted in Unlabelled, because manufacturing a negative there is how a fraud model comes to describe the incumbent block list.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? disposition;

  /// Evidence is the winning assertion's pointer to the record behind it — the dispute, case or decision id it was filed with, opaque and verbatim. It travels with the answer so an adverse action can name what judged the subject without a second read.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? evidence;

  /// ID is the winning assertion's content digest, so this answer traces to the exact record it came from — and that record can be placed under litigation hold by naming this id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Kind is the judged entity's type, echoed from the event that was named. With Subject and At it is how a caller joins this answer back onto the training row or the decision it asked about.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Source is who filed the winning assertion, and it is the PRIMARY term of the rule that picked it. Sources rank by adjudication weight — chargeoff, dispute, case, refund, review, sample, strongest first — and only inside one rank do the tie-breaks run, in order: the assertion that became KNOWABLE latest, then the higher confidence, then the lower id. The vocabulary op publishes that order from the same declaration the resolver reads, so a caller holding a contested answer can reproduce it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Subject is the entity id, echoed from the event that was named — the tenant's own key, returned verbatim.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskResolved &&
    other.asOf == asOf &&
    other.at == at &&
    other.by == by &&
    other.confidence == confidence &&
    _deepEquality.equals(other.conflicts, conflicts) &&
    other.contested == contested &&
    other.disposition == disposition &&
    other.evidence == evidence &&
    other.id == id &&
    other.kind == kind &&
    other.source_ == source_ &&
    other.subject == subject;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (asOf == null ? 0 : asOf!.hashCode) +
    (at == null ? 0 : at!.hashCode) +
    (by == null ? 0 : by!.hashCode) +
    (confidence == null ? 0 : confidence!.hashCode) +
    (conflicts.hashCode) +
    (contested == null ? 0 : contested!.hashCode) +
    (disposition == null ? 0 : disposition!.hashCode) +
    (evidence == null ? 0 : evidence!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (subject == null ? 0 : subject!.hashCode);

  @override
  String toString() => 'RiskResolved[asOf=$asOf, at=$at, by=$by, confidence=$confidence, conflicts=$conflicts, contested=$contested, disposition=$disposition, evidence=$evidence, id=$id, kind=$kind, source_=$source_, subject=$subject]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.asOf != null) {
      json[r'asOf'] = this.asOf;
    } else {
      json[r'asOf'] = null;
    }
    if (this.at != null) {
      json[r'at'] = this.at;
    } else {
      json[r'at'] = null;
    }
    if (this.by != null) {
      json[r'by'] = this.by;
    } else {
      json[r'by'] = null;
    }
    if (this.confidence != null) {
      json[r'confidence'] = this.confidence;
    } else {
      json[r'confidence'] = null;
    }
      json[r'conflicts'] = this.conflicts;
    if (this.contested != null) {
      json[r'contested'] = this.contested;
    } else {
      json[r'contested'] = null;
    }
    if (this.disposition != null) {
      json[r'disposition'] = this.disposition;
    } else {
      json[r'disposition'] = null;
    }
    if (this.evidence != null) {
      json[r'evidence'] = this.evidence;
    } else {
      json[r'evidence'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    return json;
  }

  /// Returns a new [RiskResolved] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskResolved? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskResolved[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskResolved[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskResolved(
        asOf: mapValueOfType<String>(json, r'asOf'),
        at: mapValueOfType<String>(json, r'at'),
        by: mapValueOfType<String>(json, r'by'),
        confidence: mapValueOfType<double>(json, r'confidence'),
        conflicts: RiskLabelRecord.listFromJson(json[r'conflicts']),
        contested: mapValueOfType<bool>(json, r'contested'),
        disposition: mapValueOfType<String>(json, r'disposition'),
        evidence: mapValueOfType<String>(json, r'evidence'),
        id: mapValueOfType<String>(json, r'id'),
        kind: mapValueOfType<String>(json, r'kind'),
        source_: mapValueOfType<String>(json, r'source'),
        subject: mapValueOfType<String>(json, r'subject'),
      );
    }
    return null;
  }

  static List<RiskResolved> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskResolved>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskResolved.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskResolved> mapFromJson(dynamic json) {
    final map = <String, RiskResolved>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskResolved.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskResolved-objects as value to a dart map
  static Map<String, List<RiskResolved>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskResolved>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskResolved.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

