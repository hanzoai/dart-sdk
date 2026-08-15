//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskLabelFact {
  /// Returns a new [RiskLabelFact] instance.
  RiskLabelFact({
    this.at,
    this.confidence,
    this.disposition,
    this.evidence,
    this.kind,
    this.seen,
    this.source_,
    this.subject,
  });

  /// At is when the judged event happened, RFC 3339.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? at;

  /// Confidence in [0,1]. A processor chargeback is 1; an analyst's hunch is not. It breaks a tie WITHIN a precedence rank and can never lift a weak source above a strong one — otherwise every caller would send 1.  A litigation hold is NOT a field here. It is a fact about the record and not about the world, so it is not part of what was asserted, it is not in the content digest, and it has its own op — which is also the only way one can be released. Carried here it was silently a no-op on any record that already existed: the digest was the same, the insert was ignored, and the caller was told `duplicate` while the hold it asked for was never placed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? confidence;

  /// Disposition is productive, unproductive, or empty for an explicit unjudged — the AML engine's own vocabulary, verbatim.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? disposition;

  /// Evidence points at the record this conclusion came from: a dispute id, a case id, a decision id. Required, because a label with no evidence cannot be defended when the adverse action it fed is challenged.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? evidence;

  /// Kind is what the subject is: account, agent, merchant, payout, person, session or transaction. Closed, because a typo in an open field would shard a tenant's labels into a partition nothing reads and nothing would say so.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Seen is when this assertion became KNOWABLE, RFC 3339. It is required and it is not At: a chargeback lands 30 to 120 days after the transaction it judges, and a training set joined on At alone knows the future. Everything this plane does to prevent leakage is computed from Seen.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? seen;

  /// Source is who asserted: chargeoff, dispute, case, refund, review or sample. It is the primary term of the precedence rule, so it is closed — an unknown source has no rank and a conflict with it could not be resolved.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Subject identifies the thing being judged, in the tenant's own namespace.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskLabelFact &&
    other.at == at &&
    other.confidence == confidence &&
    other.disposition == disposition &&
    other.evidence == evidence &&
    other.kind == kind &&
    other.seen == seen &&
    other.source_ == source_ &&
    other.subject == subject;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (at == null ? 0 : at!.hashCode) +
    (confidence == null ? 0 : confidence!.hashCode) +
    (disposition == null ? 0 : disposition!.hashCode) +
    (evidence == null ? 0 : evidence!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (seen == null ? 0 : seen!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (subject == null ? 0 : subject!.hashCode);

  @override
  String toString() => 'RiskLabelFact[at=$at, confidence=$confidence, disposition=$disposition, evidence=$evidence, kind=$kind, seen=$seen, source_=$source_, subject=$subject]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.at != null) {
      json[r'at'] = this.at;
    } else {
      json[r'at'] = null;
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
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
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
    return json;
  }

  /// Returns a new [RiskLabelFact] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskLabelFact? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskLabelFact[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskLabelFact[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskLabelFact(
        at: mapValueOfType<String>(json, r'at'),
        confidence: num.parse('${json[r'confidence']}'),
        disposition: mapValueOfType<String>(json, r'disposition'),
        evidence: mapValueOfType<String>(json, r'evidence'),
        kind: mapValueOfType<String>(json, r'kind'),
        seen: mapValueOfType<String>(json, r'seen'),
        source_: mapValueOfType<String>(json, r'source'),
        subject: mapValueOfType<String>(json, r'subject'),
      );
    }
    return null;
  }

  static List<RiskLabelFact> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskLabelFact>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskLabelFact.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskLabelFact> mapFromJson(dynamic json) {
    final map = <String, RiskLabelFact>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskLabelFact.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskLabelFact-objects as value to a dart map
  static Map<String, List<RiskLabelFact>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskLabelFact>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskLabelFact.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

