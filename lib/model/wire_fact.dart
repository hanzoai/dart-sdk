//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class WireFact {
  /// Returns a new [WireFact] instance.
  WireFact({
    this.at,
    this.by,
    this.confidence,
    this.entity,
    this.evidence,
    this.id,
    this.knowable,
    this.names,
    this.relation,
    this.seen,
    this.source_,
    this.value,
  });
  /// At is when the thing was so, RFC 3339, as the asserter gave it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? at;

  /// By is the identity that filed it — `owner` or `owner/user` — stamped from the validated principal at the write, never from the body.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? by;

  /// Confidence in [0,1] as the asserter gave it; absent is 0. It breaks a tie between two assertions equally knowable and decides nothing else.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? confidence;

  /// Entity is the thing described, in the organization's own namespace.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entity;

  /// Evidence points at the record the claim came from. Absent when the asserter gave none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? evidence;

  /// ID is the assertion's content address, minted by the server from what was asserted. Two callers who assert the identical thing land on one ID and one row; changing any asserted field makes a different ID and a second row.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Knowable is the first instant this plane could have answered with the assertion, RFC 3339: the later of Seen and the server's clock at the write. Derived and never supplied, which is what stops history filed today from being backdated into a past read.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? knowable;

  /// Names true means the assertion is an edge and Value is an entity. A walk reads only these.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? names;

  /// Relation is what was asserted of it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? relation;

  /// Seen is when the asserter says it became knowable, RFC 3339. Provenance only — Knowable is what an as-of read is bounded by.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? seen;

  /// Source names who asserted, as the caller gave it. This plane ranks no source above another, so it never outweighs a later Knowable.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Value is what the relation points at: another entity's key when Names is true, otherwise a scalar.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WireFact &&
    other.at == at &&
    other.by == by &&
    other.confidence == confidence &&
    other.entity == entity &&
    other.evidence == evidence &&
    other.id == id &&
    other.knowable == knowable &&
    other.names == names &&
    other.relation == relation &&
    other.seen == seen &&
    other.source_ == source_ &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (at == null ? 0 : at!.hashCode) +
    (by == null ? 0 : by!.hashCode) +
    (confidence == null ? 0 : confidence!.hashCode) +
    (entity == null ? 0 : entity!.hashCode) +
    (evidence == null ? 0 : evidence!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (knowable == null ? 0 : knowable!.hashCode) +
    (names == null ? 0 : names!.hashCode) +
    (relation == null ? 0 : relation!.hashCode) +
    (seen == null ? 0 : seen!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'WireFact[at=$at, by=$by, confidence=$confidence, entity=$entity, evidence=$evidence, id=$id, knowable=$knowable, names=$names, relation=$relation, seen=$seen, source_=$source_, value=$value]';

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
    if (this.entity != null) {
      json[r'entity'] = this.entity;
    } else {
      json[r'entity'] = null;
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
    if (this.knowable != null) {
      json[r'knowable'] = this.knowable;
    } else {
      json[r'knowable'] = null;
    }
    if (this.names != null) {
      json[r'names'] = this.names;
    } else {
      json[r'names'] = null;
    }
    if (this.relation != null) {
      json[r'relation'] = this.relation;
    } else {
      json[r'relation'] = null;
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
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [WireFact] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WireFact? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WireFact[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WireFact[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WireFact(
        at: mapValueOfType<String>(json, r'at'),
        by: mapValueOfType<String>(json, r'by'),
        confidence: mapValueOfType<double>(json, r'confidence'),
        entity: mapValueOfType<String>(json, r'entity'),
        evidence: mapValueOfType<String>(json, r'evidence'),
        id: mapValueOfType<String>(json, r'id'),
        knowable: mapValueOfType<String>(json, r'knowable'),
        names: mapValueOfType<bool>(json, r'names'),
        relation: mapValueOfType<String>(json, r'relation'),
        seen: mapValueOfType<String>(json, r'seen'),
        source_: mapValueOfType<String>(json, r'source'),
        value: mapValueOfType<String>(json, r'value'),
      );
    }
    return null;
  }

  static List<WireFact> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WireFact>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WireFact.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WireFact> mapFromJson(dynamic json) {
    final map = <String, WireFact>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WireFact.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WireFact-objects as value to a dart map
  static Map<String, List<WireFact>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WireFact>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WireFact.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

