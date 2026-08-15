//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ReferenceSource {
  /// Returns a new [ReferenceSource] instance.
  ReferenceSource({
    this.asOf,
    this.basis,
    this.keys,
    this.origin,
    this.refusal,
    this.source_,
    this.terms,
    this.version,
  });

  /// AsOf is when this publisher was current, RFC 3339.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? asOf;

  /// Basis is the KIND of permission this publisher's data reaches you under: licence (an explicit grant), registry (the registry of record publishing for anyone to consult), operator (an operator's own machine-readable statement about its own network, published for third parties to filter by — not a licence, and not claimed as one), own (computed here), or none (nothing reaches you: the membership is held by the component that screens against it). It is on the wire so the licence position is an audit you can run.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? basis;

  /// Keys is how many members this publisher contributed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? keys;

  /// Origin is exactly where it was taken from, so it can be taken again.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? origin;

  /// Refusal is why this publisher's last take failed, if it did. The set keeps its previous version of this source and ages out visibly rather than silently shrinking.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refusal;

  /// Source is the publisher.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Terms is the CITATION that basis points at — the licence identifier, the registry, or the operator publication. A source with no stated terms is not in the catalog.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? terms;

  /// Version is the content digest of what this publisher last supplied. Two refreshes that agree on it took the same data.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReferenceSource &&
    other.asOf == asOf &&
    other.basis == basis &&
    other.keys == keys &&
    other.origin == origin &&
    other.refusal == refusal &&
    other.source_ == source_ &&
    other.terms == terms &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (asOf == null ? 0 : asOf!.hashCode) +
    (basis == null ? 0 : basis!.hashCode) +
    (keys == null ? 0 : keys!.hashCode) +
    (origin == null ? 0 : origin!.hashCode) +
    (refusal == null ? 0 : refusal!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (terms == null ? 0 : terms!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'ReferenceSource[asOf=$asOf, basis=$basis, keys=$keys, origin=$origin, refusal=$refusal, source_=$source_, terms=$terms, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.asOf != null) {
      json[r'asOf'] = this.asOf;
    } else {
      json[r'asOf'] = null;
    }
    if (this.basis != null) {
      json[r'basis'] = this.basis;
    } else {
      json[r'basis'] = null;
    }
    if (this.keys != null) {
      json[r'keys'] = this.keys;
    } else {
      json[r'keys'] = null;
    }
    if (this.origin != null) {
      json[r'origin'] = this.origin;
    } else {
      json[r'origin'] = null;
    }
    if (this.refusal != null) {
      json[r'refusal'] = this.refusal;
    } else {
      json[r'refusal'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.terms != null) {
      json[r'terms'] = this.terms;
    } else {
      json[r'terms'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [ReferenceSource] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReferenceSource? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReferenceSource[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReferenceSource[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReferenceSource(
        asOf: mapValueOfType<String>(json, r'asOf'),
        basis: mapValueOfType<String>(json, r'basis'),
        keys: mapValueOfType<int>(json, r'keys'),
        origin: mapValueOfType<String>(json, r'origin'),
        refusal: mapValueOfType<String>(json, r'refusal'),
        source_: mapValueOfType<String>(json, r'source'),
        terms: mapValueOfType<String>(json, r'terms'),
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<ReferenceSource> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReferenceSource>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReferenceSource.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReferenceSource> mapFromJson(dynamic json) {
    final map = <String, ReferenceSource>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReferenceSource.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReferenceSource-objects as value to a dart map
  static Map<String, List<ReferenceSource>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReferenceSource>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReferenceSource.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

