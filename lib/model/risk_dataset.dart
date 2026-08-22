//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskDataset {
  /// Returns a new [RiskDataset] instance.
  RiskDataset({
    this.at,
    this.by,
    this.counts,
    this.digest,
    this.name,
    this.oversize,
    this.refusal,
    this.running,
    this.share,
    this.spec,
    this.status,
    this.truncated,
    this.version,
  });
  /// At is when this version last changed state, RFC 3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? at;

  /// By is who moved it there: the validated user, or the org itself when the caller is a machine with no user behind it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? by;

  /// Counts is how the rows fall across the splits.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RiskSplitCounts? counts;

  /// Digest fingerprints the SPEC and the ROWS together. Two materialisations of one spec agree on it or the plane says they do not.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? digest;

  /// Name identifies the dataset across all of its versions.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Oversize is how many of the window's subjects this version could NOT carry because their subject identity exceeds the plane's per-subject byte bound.  It is on the wire, not only in a log, because it is the one degradation a caller cannot otherwise detect: the rows that are here look complete, and a dataset silently missing a population is a model silently blind to it. Non-zero does not make a version invalid — it makes it a version whose coverage is STATED. Zero is the normal case and omits.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? oversize;

  /// Refusal names why there are no bytes, when there are none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refusal;

  /// Running is true while THIS process is materialising the version. A version that is `materializing` and not running was started by a process that is gone — two states the register cannot tell apart, because a register cannot know which processes are alive.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? running;

  /// Share is the fraction of the window's subjects admitted, in thousandths. 1000 means the whole window fitted under the cap; anything less means the version is a reproducible sample and says by how much.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? share;

  /// Spec is the bound query this version was built from, exactly as recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RiskDatasetSpec? spec;

  /// Status is declared, materializing, ready or refused. Only `ready` has bytes, and `ready` is terminal: a published version is never rewritten.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Truncated is true when the row cap bound before the window ran out. The trailing subject is dropped whole when that happens, because half a subject on one side of a split is exactly the leak the grouping prevents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? truncated;

  /// Version is which version this is, from 1 and monotone within the dataset. A number is never reused — not even after a disposal, where the next declare continues the count — so \"signups v3\" means one thing forever, which is what makes a model's citation of it checkable.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskDataset &&
    other.at == at &&
    other.by == by &&
    other.counts == counts &&
    other.digest == digest &&
    other.name == name &&
    other.oversize == oversize &&
    other.refusal == refusal &&
    other.running == running &&
    other.share == share &&
    other.spec == spec &&
    other.status == status &&
    other.truncated == truncated &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (at == null ? 0 : at!.hashCode) +
    (by == null ? 0 : by!.hashCode) +
    (counts == null ? 0 : counts!.hashCode) +
    (digest == null ? 0 : digest!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (oversize == null ? 0 : oversize!.hashCode) +
    (refusal == null ? 0 : refusal!.hashCode) +
    (running == null ? 0 : running!.hashCode) +
    (share == null ? 0 : share!.hashCode) +
    (spec == null ? 0 : spec!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (truncated == null ? 0 : truncated!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'RiskDataset[at=$at, by=$by, counts=$counts, digest=$digest, name=$name, oversize=$oversize, refusal=$refusal, running=$running, share=$share, spec=$spec, status=$status, truncated=$truncated, version=$version]';

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
    if (this.counts != null) {
      json[r'counts'] = this.counts;
    } else {
      json[r'counts'] = null;
    }
    if (this.digest != null) {
      json[r'digest'] = this.digest;
    } else {
      json[r'digest'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
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
    if (this.running != null) {
      json[r'running'] = this.running;
    } else {
      json[r'running'] = null;
    }
    if (this.share != null) {
      json[r'share'] = this.share;
    } else {
      json[r'share'] = null;
    }
    if (this.spec != null) {
      json[r'spec'] = this.spec;
    } else {
      json[r'spec'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.truncated != null) {
      json[r'truncated'] = this.truncated;
    } else {
      json[r'truncated'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [RiskDataset] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskDataset? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskDataset[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskDataset[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskDataset(
        at: mapValueOfType<String>(json, r'at'),
        by: mapValueOfType<String>(json, r'by'),
        counts: RiskSplitCounts.fromJson(json[r'counts']),
        digest: mapValueOfType<String>(json, r'digest'),
        name: mapValueOfType<String>(json, r'name'),
        oversize: mapValueOfType<int>(json, r'oversize'),
        refusal: mapValueOfType<String>(json, r'refusal'),
        running: mapValueOfType<bool>(json, r'running'),
        share: mapValueOfType<int>(json, r'share'),
        spec: RiskDatasetSpec.fromJson(json[r'spec']),
        status: mapValueOfType<String>(json, r'status'),
        truncated: mapValueOfType<bool>(json, r'truncated'),
        version: mapValueOfType<int>(json, r'version'),
      );
    }
    return null;
  }

  static List<RiskDataset> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskDataset>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskDataset.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskDataset> mapFromJson(dynamic json) {
    final map = <String, RiskDataset>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskDataset.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskDataset-objects as value to a dart map
  static Map<String, List<RiskDataset>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskDataset>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskDataset.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

