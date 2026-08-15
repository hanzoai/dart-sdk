//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskLabelRecord {
  /// Returns a new [RiskLabelRecord] instance.
  RiskLabelRecord({
    this.at,
    this.by,
    this.confidence,
    this.disposition,
    this.evidence,
    this.hold,
    this.id,
    this.kind,
    this.knowable,
    this.seen,
    this.source_,
    this.subject,
    this.wrote,
  });

  /// At is when the judged EVENT happened, RFC 3339 in UTC, truncated to the second. The filer supplies it, and it is what a maturity horizon measures from: this event's as-of is At plus the horizon. A resolve names it back exactly, to the second.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? at;

  /// By is the identity that asserted, stamped server-side at the write.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? by;

  /// Confidence is the filer's own confidence in [0,1] — 1 for a processor chargeback, less for an analyst's hunch. Zero is the ordinary value for a filer that stated none, and it means the weakest tie-break there is rather than \"unknown\". It breaks a tie only WITHIN one precedence rank and can never lift a weak source above a strong one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? confidence;

  /// Disposition is what was concluded, from the closed set: `productive` — the event led somewhere, escalated, reported or charged back; `unproductive` — judged not suspicious; or the empty string for an explicit UNJUDGED, which is a real assertion (\"we looked and could not say\") and not the absence of one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? disposition;

  /// Evidence is the pointer to the record this conclusion came from: a dispute id, a case id, a decision id. At most 512 bytes, required at the write, and opaque to this plane — stored and returned verbatim, never resolved. It is what an adverse action is defended with, which is why an assertion carrying none is refused at the door.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? evidence;

  /// Hold is true while a litigation hold is on this record: retention will not dispose of it, at any age. False — and it is omitted then — leaves the record disposable once it is older than the boundary a sweep names. It is a fact about the RECORD and not about the world, so it is not folded into ID, no write path can set it, and the hold op is the one way it moves in either direction.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hold;

  /// ID is the assertion's content digest — SHA-256 over every semantic field, rendered hex — computed server-side and never supplied. It is the key a redelivery collapses onto, and it is the id the hold op names.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Kind is what the subject IS, from the closed set: account, agent, merchant, payout, person, session or transaction. With Subject and At it is the IDENTITY of the judged event — the triple a resolve names and the triple assertions are grouped by, so a typo in it would file a label against an event nobody asks about.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Knowable is when THIS PLANE could first have answered with the assertion: the later of Seen and the server clock at the write, derived server-side. It is the instant the leakage guard compares, so it is published beside the claim it was derived from — an answer whose rule nobody can see is one nobody can check.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? knowable;

  /// Seen is when the FILER said the assertion became knowable. It is provenance: it is recorded and published, and it decides nothing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? seen;

  /// Source is WHO asserted, from the closed set: chargeoff, dispute, case, refund, review or sample. It is the primary term of the precedence rule — an unknown source has no rank and a conflict with it could not be resolved — so it is what decides which of two disagreeing assertions is in force.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Subject is the entity that was judged, named in the TENANT'S OWN namespace and at most 512 bytes. It is opaque here: stored, matched and returned verbatim, never dereferenced. It has no meaning outside this tenant — the record is the tenant's own file — so an id lifted from another tenant's response names nothing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  /// Wrote is the server clock at the write. It is the only time on the record the tenant did not supply, and it is what retention measures against.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? wrote;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskLabelRecord &&
    other.at == at &&
    other.by == by &&
    other.confidence == confidence &&
    other.disposition == disposition &&
    other.evidence == evidence &&
    other.hold == hold &&
    other.id == id &&
    other.kind == kind &&
    other.knowable == knowable &&
    other.seen == seen &&
    other.source_ == source_ &&
    other.subject == subject &&
    other.wrote == wrote;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (at == null ? 0 : at!.hashCode) +
    (by == null ? 0 : by!.hashCode) +
    (confidence == null ? 0 : confidence!.hashCode) +
    (disposition == null ? 0 : disposition!.hashCode) +
    (evidence == null ? 0 : evidence!.hashCode) +
    (hold == null ? 0 : hold!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (knowable == null ? 0 : knowable!.hashCode) +
    (seen == null ? 0 : seen!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (wrote == null ? 0 : wrote!.hashCode);

  @override
  String toString() => 'RiskLabelRecord[at=$at, by=$by, confidence=$confidence, disposition=$disposition, evidence=$evidence, hold=$hold, id=$id, kind=$kind, knowable=$knowable, seen=$seen, source_=$source_, subject=$subject, wrote=$wrote]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.hold != null) {
      json[r'hold'] = this.hold;
    } else {
      json[r'hold'] = null;
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
    if (this.knowable != null) {
      json[r'knowable'] = this.knowable;
    } else {
      json[r'knowable'] = null;
    }
    if (this.seen != null) {
      json[r'seen'] = this.seen;
    } else {
      json[r'seen'] = null;
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
    if (this.wrote != null) {
      json[r'wrote'] = this.wrote;
    } else {
      json[r'wrote'] = null;
    }
    return json;
  }

  /// Returns a new [RiskLabelRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskLabelRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskLabelRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskLabelRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskLabelRecord(
        at: mapValueOfType<String>(json, r'at'),
        by: mapValueOfType<String>(json, r'by'),
        confidence: num.parse('${json[r'confidence']}'),
        disposition: mapValueOfType<String>(json, r'disposition'),
        evidence: mapValueOfType<String>(json, r'evidence'),
        hold: mapValueOfType<bool>(json, r'hold'),
        id: mapValueOfType<String>(json, r'id'),
        kind: mapValueOfType<String>(json, r'kind'),
        knowable: mapValueOfType<String>(json, r'knowable'),
        seen: mapValueOfType<String>(json, r'seen'),
        source_: mapValueOfType<String>(json, r'source'),
        subject: mapValueOfType<String>(json, r'subject'),
        wrote: mapValueOfType<String>(json, r'wrote'),
      );
    }
    return null;
  }

  static List<RiskLabelRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskLabelRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskLabelRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskLabelRecord> mapFromJson(dynamic json) {
    final map = <String, RiskLabelRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskLabelRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskLabelRecord-objects as value to a dart map
  static Map<String, List<RiskLabelRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskLabelRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskLabelRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

