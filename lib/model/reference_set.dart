//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ReferenceSet {
  /// Returns a new [ReferenceSet] instance.
  ReferenceSet({
    this.age,
    this.asOf,
    this.keys,
    this.kind,
    this.match,
    this.maxAge,
    this.overrides,
    this.refusal,
    this.set_,
    this.sources = const [],
    this.stale,
    this.version,
    this.what,
  });
  /// Age is how long ago that was.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? age;

  /// AsOf is when the OLDEST contributing publisher was current, RFC 3339. The oldest and not the newest: a set is exactly as fresh as its weakest source.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? asOf;

  /// Keys is how many members the baseline carries.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? keys;

  /// Kind is how the baseline comes to exist: fetch (downloaded from a publisher), local (computed here), attest (held by the component that screens against it, freshness reported), or seam (declared and NOT held, because the source needs a licence we do not have).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Match is how a key is tested: exact, domain, net, digits, pattern or range.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? match;

  /// MaxAge is how old this set may be before it is stale.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? maxAge;

  /// Overrides is how many entries YOUR org has laid over this baseline.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? overrides;

  /// Refusal names why the set cannot be relied on, when it cannot: never loaded, held elsewhere, or a licence we do not hold. Non-empty means a lookup against this set will not answer, rather than answering clean.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refusal;

  /// Set is the name this set is addressed by.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? set_;

  /// Sources is each contributing publisher, its licence and its own freshness.
  List<ReferenceSource> sources;

  /// Stale is whether it is past that bound. A stale set still answers and says so, because yesterday's list beats none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? stale;

  /// Version is the exact baseline consulted — every contributing publisher and its content digest. A decision records this and an auditor resolves it back.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  /// What the set holds, in one sentence.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? what;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReferenceSet &&
    other.age == age &&
    other.asOf == asOf &&
    other.keys == keys &&
    other.kind == kind &&
    other.match == match &&
    other.maxAge == maxAge &&
    other.overrides == overrides &&
    other.refusal == refusal &&
    other.set_ == set_ &&
    _deepEquality.equals(other.sources, sources) &&
    other.stale == stale &&
    other.version == version &&
    other.what == what;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (age == null ? 0 : age!.hashCode) +
    (asOf == null ? 0 : asOf!.hashCode) +
    (keys == null ? 0 : keys!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (match == null ? 0 : match!.hashCode) +
    (maxAge == null ? 0 : maxAge!.hashCode) +
    (overrides == null ? 0 : overrides!.hashCode) +
    (refusal == null ? 0 : refusal!.hashCode) +
    (set_ == null ? 0 : set_!.hashCode) +
    (sources.hashCode) +
    (stale == null ? 0 : stale!.hashCode) +
    (version == null ? 0 : version!.hashCode) +
    (what == null ? 0 : what!.hashCode);

  @override
  String toString() => 'ReferenceSet[age=$age, asOf=$asOf, keys=$keys, kind=$kind, match=$match, maxAge=$maxAge, overrides=$overrides, refusal=$refusal, set_=$set_, sources=$sources, stale=$stale, version=$version, what=$what]';

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
    if (this.keys != null) {
      json[r'keys'] = this.keys;
    } else {
      json[r'keys'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.match != null) {
      json[r'match'] = this.match;
    } else {
      json[r'match'] = null;
    }
    if (this.maxAge != null) {
      json[r'maxAge'] = this.maxAge;
    } else {
      json[r'maxAge'] = null;
    }
    if (this.overrides != null) {
      json[r'overrides'] = this.overrides;
    } else {
      json[r'overrides'] = null;
    }
    if (this.refusal != null) {
      json[r'refusal'] = this.refusal;
    } else {
      json[r'refusal'] = null;
    }
    if (this.set_ != null) {
      json[r'set'] = this.set_;
    } else {
      json[r'set'] = null;
    }
      json[r'sources'] = this.sources;
    if (this.stale != null) {
      json[r'stale'] = this.stale;
    } else {
      json[r'stale'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    if (this.what != null) {
      json[r'what'] = this.what;
    } else {
      json[r'what'] = null;
    }
    return json;
  }

  /// Returns a new [ReferenceSet] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReferenceSet? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReferenceSet[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReferenceSet[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReferenceSet(
        age: mapValueOfType<String>(json, r'age'),
        asOf: mapValueOfType<String>(json, r'asOf'),
        keys: mapValueOfType<int>(json, r'keys'),
        kind: mapValueOfType<String>(json, r'kind'),
        match: mapValueOfType<String>(json, r'match'),
        maxAge: mapValueOfType<String>(json, r'maxAge'),
        overrides: mapValueOfType<int>(json, r'overrides'),
        refusal: mapValueOfType<String>(json, r'refusal'),
        set_: mapValueOfType<String>(json, r'set'),
        sources: ReferenceSource.listFromJson(json[r'sources']),
        stale: mapValueOfType<bool>(json, r'stale'),
        version: mapValueOfType<String>(json, r'version'),
        what: mapValueOfType<String>(json, r'what'),
      );
    }
    return null;
  }

  static List<ReferenceSet> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReferenceSet>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReferenceSet.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReferenceSet> mapFromJson(dynamic json) {
    final map = <String, ReferenceSet>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReferenceSet.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReferenceSet-objects as value to a dart map
  static Map<String, List<ReferenceSet>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReferenceSet>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReferenceSet.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

