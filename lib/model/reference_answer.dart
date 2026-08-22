//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ReferenceAnswer {
  /// Returns a new [ReferenceAnswer] instance.
  ReferenceAnswer({
    this.age,
    this.asOf,
    this.from,
    this.hit,
    this.key,
    this.matched,
    this.refusal,
    this.score,
    this.set_,
    this.stale,
    this.value = const {},
    this.verdict,
    this.version,
  });
  /// Age is how old that is, as a duration.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? age;

  /// AsOf is when the oldest contributing publisher was current, RFC 3339.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? asOf;

  /// From is override or baseline — which plane answered.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? from;

  /// Hit is whether the key is a member. It is meaningful ONLY when Refusal is empty: false with a refusal means the set could not be consulted, which is not the same as the key being clean.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hit;

  /// Key is the key as asked.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  /// Matched is the member that covered the key, which for a domain or a network is the enclosing entry rather than the key itself.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? matched;

  /// Refusal is why the set could not be consulted, when it could not: never loaded, held elsewhere, or a source we hold no licence for. Non-empty means Hit must not be read as an answer.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refusal;

  /// Score is the published risk weight where the source expresses one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? score;

  /// Set is the set consulted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? set_;

  /// Stale is whether the set is past its freshness bound. A stale set still answers — yesterday's list beats none — and this is how a decision knows it leaned on one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? stale;

  /// Value is what the publisher says about the member — class, operator, scheme, region.
  Map<String, String> value;

  /// Verdict is the tenant's own allow or deny, present only for an override. The baseline never carries one: it states facts and leaves the decision to the caller's policy.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? verdict;

  /// Version is the exact baseline version consulted, composed of each contributing publisher and its content digest. It is what makes a decision reproducible: an auditor takes this string and knows precisely what was consulted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReferenceAnswer &&
    other.age == age &&
    other.asOf == asOf &&
    other.from == from &&
    other.hit == hit &&
    other.key == key &&
    other.matched == matched &&
    other.refusal == refusal &&
    other.score == score &&
    other.set_ == set_ &&
    other.stale == stale &&
    _deepEquality.equals(other.value, value) &&
    other.verdict == verdict &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (age == null ? 0 : age!.hashCode) +
    (asOf == null ? 0 : asOf!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (hit == null ? 0 : hit!.hashCode) +
    (key == null ? 0 : key!.hashCode) +
    (matched == null ? 0 : matched!.hashCode) +
    (refusal == null ? 0 : refusal!.hashCode) +
    (score == null ? 0 : score!.hashCode) +
    (set_ == null ? 0 : set_!.hashCode) +
    (stale == null ? 0 : stale!.hashCode) +
    (value.hashCode) +
    (verdict == null ? 0 : verdict!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'ReferenceAnswer[age=$age, asOf=$asOf, from=$from, hit=$hit, key=$key, matched=$matched, refusal=$refusal, score=$score, set_=$set_, stale=$stale, value=$value, verdict=$verdict, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.age != null) {
      json[r'age'] = this.age;
    } else {
      json[r'age'] = null;
    }
    if (this.asOf != null) {
      json[r'asOf'] = this.asOf;
    } else {
      json[r'asOf'] = null;
    }
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    if (this.hit != null) {
      json[r'hit'] = this.hit;
    } else {
      json[r'hit'] = null;
    }
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.matched != null) {
      json[r'matched'] = this.matched;
    } else {
      json[r'matched'] = null;
    }
    if (this.refusal != null) {
      json[r'refusal'] = this.refusal;
    } else {
      json[r'refusal'] = null;
    }
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    if (this.set_ != null) {
      json[r'set'] = this.set_;
    } else {
      json[r'set'] = null;
    }
    if (this.stale != null) {
      json[r'stale'] = this.stale;
    } else {
      json[r'stale'] = null;
    }
      json[r'value'] = this.value;
    if (this.verdict != null) {
      json[r'verdict'] = this.verdict;
    } else {
      json[r'verdict'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [ReferenceAnswer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReferenceAnswer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReferenceAnswer[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReferenceAnswer[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReferenceAnswer(
        age: mapValueOfType<String>(json, r'age'),
        asOf: mapValueOfType<String>(json, r'asOf'),
        from: mapValueOfType<String>(json, r'from'),
        hit: mapValueOfType<bool>(json, r'hit'),
        key: mapValueOfType<String>(json, r'key'),
        matched: mapValueOfType<String>(json, r'matched'),
        refusal: mapValueOfType<String>(json, r'refusal'),
        score: num.parse('${json[r'score']}'),
        set_: mapValueOfType<String>(json, r'set'),
        stale: mapValueOfType<bool>(json, r'stale'),
        value: mapCastOfType<String, String>(json, r'value') ?? const {},
        verdict: mapValueOfType<String>(json, r'verdict'),
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<ReferenceAnswer> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReferenceAnswer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReferenceAnswer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReferenceAnswer> mapFromJson(dynamic json) {
    final map = <String, ReferenceAnswer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReferenceAnswer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReferenceAnswer-objects as value to a dart map
  static Map<String, List<ReferenceAnswer>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReferenceAnswer>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReferenceAnswer.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

