//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GraphFact {
  /// Returns a new [GraphFact] instance.
  GraphFact({
    this.at,
    this.confidence,
    this.entity,
    this.evidence,
    this.names,
    this.relation,
    this.seen,
    this.source_,
    this.value,
  });
  /// At is when the thing was so, RFC 3339. Required, and refused when it sits more than five minutes ahead of the server clock — an assertion dated further out would never mature and would skew every read until it did.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? at;

  /// Confidence in [0,1]. A tie-breaker within the order, never a substitute for it. Absent is 0, the weakest an assertion can be.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? confidence;

  /// Entity is the thing being described, in the organization's own namespace. It is not created: an entity exists because something was asserted about it. Required, 512 bytes at most.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entity;

  /// Evidence points at the record this claim came from, 512 bytes at most. An assertion without one is admitted and carries no defence.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? evidence;

  /// Names says the value is an entity. A walk reads only the edges, so this is a declaration and never a guess about the value's shape.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? names;

  /// Relation is what is being asserted — `depends`, `owner`, `same`, `title`. It is open: this plane holds no vocabulary of its own. Required, 128 bytes at most.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? relation;

  /// Seen is when this assertion became knowable, RFC 3339. Defaults to At and may not precede it. It is provenance and it decides nothing: the instant every read uses is derived as the later of Seen and the server's own clock.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? seen;

  /// Source names who asserted. Required, because an assertion nobody is named for cannot be weighed against one that is. Open text: this plane ranks no source above another.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Value is what the relation points at. When Names is true it is another entity's key and the assertion is an EDGE; otherwise it is a scalar and the assertion is a property. 2048 bytes at most, or 512 when it names an entity.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GraphFact &&
    other.at == at &&
    other.confidence == confidence &&
    other.entity == entity &&
    other.evidence == evidence &&
    other.names == names &&
    other.relation == relation &&
    other.seen == seen &&
    other.source_ == source_ &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (at == null ? 0 : at!.hashCode) +
    (confidence == null ? 0 : confidence!.hashCode) +
    (entity == null ? 0 : entity!.hashCode) +
    (evidence == null ? 0 : evidence!.hashCode) +
    (names == null ? 0 : names!.hashCode) +
    (relation == null ? 0 : relation!.hashCode) +
    (seen == null ? 0 : seen!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'GraphFact[at=$at, confidence=$confidence, entity=$entity, evidence=$evidence, names=$names, relation=$relation, seen=$seen, source_=$source_, value=$value]';

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

  /// Returns a new [GraphFact] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GraphFact? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GraphFact[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GraphFact[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GraphFact(
        at: mapValueOfType<String>(json, r'at'),
        confidence: num.parse('${json[r'confidence']}'),
        entity: mapValueOfType<String>(json, r'entity'),
        evidence: mapValueOfType<String>(json, r'evidence'),
        names: mapValueOfType<bool>(json, r'names'),
        relation: mapValueOfType<String>(json, r'relation'),
        seen: mapValueOfType<String>(json, r'seen'),
        source_: mapValueOfType<String>(json, r'source'),
        value: mapValueOfType<String>(json, r'value'),
      );
    }
    return null;
  }

  static List<GraphFact> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GraphFact>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GraphFact.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GraphFact> mapFromJson(dynamic json) {
    final map = <String, GraphFact>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GraphFact.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GraphFact-objects as value to a dart map
  static Map<String, List<GraphFact>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GraphFact>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GraphFact.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

