//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskLineage {
  /// Returns a new [RiskLineage] instance.
  RiskLineage({
    this.dataset,
    this.digest,
    this.from,
    this.holds,
    this.oversize,
    this.refusal,
    this.reproducible,
    this.retention,
    this.rows,
    this.share,
    this.source_,
    this.subjects,
    this.to,
    this.version,
  });
  /// Dataset is the dataset traced.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataset;

  /// Digest is the version's fingerprint, repeated here so a lineage answer is self-contained.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? digest;

  /// From is where the window actually read opens, RFC 3339. Same as the spec's.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? from;

  /// Holds is what the source holds for the same window NOW. The difference between it and Rows is the whole of the reproducibility claim.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? holds;

  /// Oversize is how many subjects the window held that were too large to represent when this version was built. It is part of the fingerprint, so it is part of what \"reproducible\" is measured over.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? oversize;

  /// Refusal says which way it failed — the window expired, or the source now holds a different count. Absent when Reproducible is true.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refusal;

  /// Reproducible is true when the source still holds what this version was built from — measured by asking it again, not recalled. False is ordinary: the source is fed by a rollup that runs behind the events, so \"it holds more now\" is the common case and it means re-running the spec would not produce this version.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? reproducible;

  /// Retention is the source's own expiry rule as the store reports it, read at materialisation time rather than assumed. A source whose retention is shorter than this window cannot re-derive it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? retention;

  /// Rows is how many rows the source held for that window at materialisation time. Holds is the same question asked now, and the difference between them is the whole of the reproducibility claim.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rows;

  /// Share is the fraction of subjects admitted, in thousandths.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? share;

  /// Source is the plane the rows were derived from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Subjects is how many distinct subjects those rows belonged to. It is the real sample size — the row count flatters it whenever a subject is active.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? subjects;

  /// To is where it ends: the spec's own end pulled BACK by the maturity horizon, so it is usually earlier than the spec says. This is the window a reproduction has to ask for — asking the spec's would not return these rows.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? to;

  /// Version is the version traced — the one asked for, or the newest published one when the request named none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskLineage &&
    other.dataset == dataset &&
    other.digest == digest &&
    other.from == from &&
    other.holds == holds &&
    other.oversize == oversize &&
    other.refusal == refusal &&
    other.reproducible == reproducible &&
    other.retention == retention &&
    other.rows == rows &&
    other.share == share &&
    other.source_ == source_ &&
    other.subjects == subjects &&
    other.to == to &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dataset == null ? 0 : dataset!.hashCode) +
    (digest == null ? 0 : digest!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (holds == null ? 0 : holds!.hashCode) +
    (oversize == null ? 0 : oversize!.hashCode) +
    (refusal == null ? 0 : refusal!.hashCode) +
    (reproducible == null ? 0 : reproducible!.hashCode) +
    (retention == null ? 0 : retention!.hashCode) +
    (rows == null ? 0 : rows!.hashCode) +
    (share == null ? 0 : share!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (subjects == null ? 0 : subjects!.hashCode) +
    (to == null ? 0 : to!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'RiskLineage[dataset=$dataset, digest=$digest, from=$from, holds=$holds, oversize=$oversize, refusal=$refusal, reproducible=$reproducible, retention=$retention, rows=$rows, share=$share, source_=$source_, subjects=$subjects, to=$to, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.dataset != null) {
      json[r'dataset'] = this.dataset;
    } else {
      json[r'dataset'] = null;
    }
    if (this.digest != null) {
      json[r'digest'] = this.digest;
    } else {
      json[r'digest'] = null;
    }
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    if (this.holds != null) {
      json[r'holds'] = this.holds;
    } else {
      json[r'holds'] = null;
    }
    if (this.oversize != null) {
      json[r'oversize'] = this.oversize;
    } else {
      json[r'oversize'] = null;
    }
    if (this.refusal != null) {
      json[r'refusal'] = this.refusal;
    } else {
      json[r'refusal'] = null;
    }
    if (this.reproducible != null) {
      json[r'reproducible'] = this.reproducible;
    } else {
      json[r'reproducible'] = null;
    }
    if (this.retention != null) {
      json[r'retention'] = this.retention;
    } else {
      json[r'retention'] = null;
    }
    if (this.rows != null) {
      json[r'rows'] = this.rows;
    } else {
      json[r'rows'] = null;
    }
    if (this.share != null) {
      json[r'share'] = this.share;
    } else {
      json[r'share'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.subjects != null) {
      json[r'subjects'] = this.subjects;
    } else {
      json[r'subjects'] = null;
    }
    if (this.to != null) {
      json[r'to'] = this.to;
    } else {
      json[r'to'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [RiskLineage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskLineage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskLineage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskLineage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskLineage(
        dataset: mapValueOfType<String>(json, r'dataset'),
        digest: mapValueOfType<String>(json, r'digest'),
        from: mapValueOfType<String>(json, r'from'),
        holds: mapValueOfType<int>(json, r'holds'),
        oversize: mapValueOfType<int>(json, r'oversize'),
        refusal: mapValueOfType<String>(json, r'refusal'),
        reproducible: mapValueOfType<bool>(json, r'reproducible'),
        retention: mapValueOfType<String>(json, r'retention'),
        rows: mapValueOfType<int>(json, r'rows'),
        share: mapValueOfType<int>(json, r'share'),
        source_: mapValueOfType<String>(json, r'source'),
        subjects: mapValueOfType<int>(json, r'subjects'),
        to: mapValueOfType<String>(json, r'to'),
        version: mapValueOfType<int>(json, r'version'),
      );
    }
    return null;
  }

  static List<RiskLineage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskLineage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskLineage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskLineage> mapFromJson(dynamic json) {
    final map = <String, RiskLineage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskLineage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskLineage-objects as value to a dart map
  static Map<String, List<RiskLineage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskLineage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskLineage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

