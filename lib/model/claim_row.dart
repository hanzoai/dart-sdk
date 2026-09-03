//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ClaimRow {
  /// Returns a new [ClaimRow] instance.
  ClaimRow({
    this.at,
    this.benchmark,
    this.by,
    this.model,
    this.origin,
    this.protocol,
    this.provider,
    this.score,
    this.source_,
  });
  /// At is when a stored row was recorded. Zero for a seed row.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? at;

  /// Benchmark is the canonical test id the claim is about, from /catalog.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? benchmark;

  /// By is who recorded it, when the caller said.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? by;

  /// Model is the system the score is claimed for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  /// Origin is \"seed\" for a compiled row and \"stored\" for one written through this surface. It is the difference between what we shipped and what an operator has since corrected.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? origin;

  /// Protocol records HOW it was scored — provider-reported, agentic, third-party-leaderboard — so a provider card is never read as a measurement.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? protocol;

  /// Provider is who the claim belongs to — the lab or leaderboard whose number this is.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Score is the reported aggregate, as a percentage.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? score;

  /// Source is the citation the row was read from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClaimRow &&
    other.at == at &&
    other.benchmark == benchmark &&
    other.by == by &&
    other.model == model &&
    other.origin == origin &&
    other.protocol == protocol &&
    other.provider == provider &&
    other.score == score &&
    other.source_ == source_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (at == null ? 0 : at!.hashCode) +
    (benchmark == null ? 0 : benchmark!.hashCode) +
    (by == null ? 0 : by!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (origin == null ? 0 : origin!.hashCode) +
    (protocol == null ? 0 : protocol!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (score == null ? 0 : score!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode);

  @override
  String toString() => 'ClaimRow[at=$at, benchmark=$benchmark, by=$by, model=$model, origin=$origin, protocol=$protocol, provider=$provider, score=$score, source_=$source_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.at != null) {
      json[r'at'] = this.at!.toUtc().toIso8601String();
    } else {
      json[r'at'] = null;
    }
    if (this.benchmark != null) {
      json[r'benchmark'] = this.benchmark;
    } else {
      json[r'benchmark'] = null;
    }
    if (this.by != null) {
      json[r'by'] = this.by;
    } else {
      json[r'by'] = null;
    }
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
    if (this.origin != null) {
      json[r'origin'] = this.origin;
    } else {
      json[r'origin'] = null;
    }
    if (this.protocol != null) {
      json[r'protocol'] = this.protocol;
    } else {
      json[r'protocol'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    return json;
  }

  /// Returns a new [ClaimRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClaimRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ClaimRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ClaimRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClaimRow(
        at: mapDateTime(json, r'at', r''),
        benchmark: mapValueOfType<String>(json, r'benchmark'),
        by: mapValueOfType<String>(json, r'by'),
        model: mapValueOfType<String>(json, r'model'),
        origin: mapValueOfType<String>(json, r'origin'),
        protocol: mapValueOfType<String>(json, r'protocol'),
        provider: mapValueOfType<String>(json, r'provider'),
        score: mapValueOfType<double>(json, r'score'),
        source_: mapValueOfType<String>(json, r'source'),
      );
    }
    return null;
  }

  static List<ClaimRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClaimRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClaimRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClaimRow> mapFromJson(dynamic json) {
    final map = <String, ClaimRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClaimRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClaimRow-objects as value to a dart map
  static Map<String, List<ClaimRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClaimRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClaimRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

