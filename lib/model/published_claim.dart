//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PublishedClaim {
  /// Returns a new [PublishedClaim] instance.
  PublishedClaim({
    this.benchmark,
    this.model,
    this.protocol,
    this.provider,
    this.score,
    this.source_,
  });
  /// Benchmark is the canonical test id the claim is about, from /catalog.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? benchmark;

  /// Model is the system the score is claimed for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  /// Protocol records HOW it was scored — provider-reported, agentic, third-party-leaderboard — because a provider card and a third party running its own harness are different kinds of number and must not be blended.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? protocol;

  /// Provider is who the claim belongs to — the lab or leaderboard whose number this is. It joins a claim to the attempts measured for that same model.
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

  /// Source is the citation the row was read from. A claim without one is a number nobody can check, so every write requires it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PublishedClaim &&
    other.benchmark == benchmark &&
    other.model == model &&
    other.protocol == protocol &&
    other.provider == provider &&
    other.score == score &&
    other.source_ == source_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (benchmark == null ? 0 : benchmark!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (protocol == null ? 0 : protocol!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (score == null ? 0 : score!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode);

  @override
  String toString() => 'PublishedClaim[benchmark=$benchmark, model=$model, protocol=$protocol, provider=$provider, score=$score, source_=$source_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.benchmark != null) {
      json[r'benchmark'] = this.benchmark;
    } else {
      json[r'benchmark'] = null;
    }
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
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

  /// Returns a new [PublishedClaim] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PublishedClaim? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PublishedClaim[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PublishedClaim[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PublishedClaim(
        benchmark: mapValueOfType<String>(json, r'benchmark'),
        model: mapValueOfType<String>(json, r'model'),
        protocol: mapValueOfType<String>(json, r'protocol'),
        provider: mapValueOfType<String>(json, r'provider'),
        score: mapValueOfType<double>(json, r'score'),
        source_: mapValueOfType<String>(json, r'source'),
      );
    }
    return null;
  }

  static List<PublishedClaim> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublishedClaim>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublishedClaim.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PublishedClaim> mapFromJson(dynamic json) {
    final map = <String, PublishedClaim>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PublishedClaim.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PublishedClaim-objects as value to a dart map
  static Map<String, List<PublishedClaim>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PublishedClaim>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PublishedClaim.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

