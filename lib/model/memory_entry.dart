//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class MemoryEntry {
  /// Returns a new [MemoryEntry] instance.
  MemoryEntry({
    this.actor,
    this.glossaryVersion,
    this.source_,
    this.state,
    this.target,
    this.text,
    this.tier,
    this.updatedAt,
  });
  /// Actor is the validated user id that last wrote this entry by hand. Empty on an entry an engine produced, and on one written before attribution existed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? actor;

  /// Glossary is the glossary VERSION the entry was translated under — the digest version() derives from the terms, so changing a term changes the key and the stale rendering can never be served.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? glossaryVersion;

  /// Source is the ORIGINAL string this entry translates. Part of the identity.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// State is the entry's position on the review ladder: machine, suggested, approved or published.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  /// Target is the target language tag (BCP-47, e.g. \"es\" or \"pt-BR\"). Part of the identity.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? target;

  /// Text is the stored translation. A memory hit returns it verbatim, which is the idempotence contract.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  /// Tier is the engine tier the entry belongs to, quality or bulk. Part of the identity: the two tiers keep separate renderings of the same source.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tier;

  /// UpdatedAt is the unix second the entry last changed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MemoryEntry &&
    other.actor == actor &&
    other.glossaryVersion == glossaryVersion &&
    other.source_ == source_ &&
    other.state == state &&
    other.target == target &&
    other.text == text &&
    other.tier == tier &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (actor == null ? 0 : actor!.hashCode) +
    (glossaryVersion == null ? 0 : glossaryVersion!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (state == null ? 0 : state!.hashCode) +
    (target == null ? 0 : target!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (tier == null ? 0 : tier!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'MemoryEntry[actor=$actor, glossaryVersion=$glossaryVersion, source_=$source_, state=$state, target=$target, text=$text, tier=$tier, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.actor != null) {
      json[r'actor'] = this.actor;
    } else {
      json[r'actor'] = null;
    }
    if (this.glossaryVersion != null) {
      json[r'glossary_version'] = this.glossaryVersion;
    } else {
      json[r'glossary_version'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    if (this.target != null) {
      json[r'target'] = this.target;
    } else {
      json[r'target'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    if (this.tier != null) {
      json[r'tier'] = this.tier;
    } else {
      json[r'tier'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt;
    } else {
      json[r'updated_at'] = null;
    }
    return json;
  }

  /// Returns a new [MemoryEntry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MemoryEntry? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MemoryEntry[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MemoryEntry[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MemoryEntry(
        actor: mapValueOfType<String>(json, r'actor'),
        glossaryVersion: mapValueOfType<String>(json, r'glossary_version'),
        source_: mapValueOfType<String>(json, r'source'),
        state: mapValueOfType<String>(json, r'state'),
        target: mapValueOfType<String>(json, r'target'),
        text: mapValueOfType<String>(json, r'text'),
        tier: mapValueOfType<String>(json, r'tier'),
        updatedAt: mapValueOfType<int>(json, r'updated_at'),
      );
    }
    return null;
  }

  static List<MemoryEntry> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MemoryEntry>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MemoryEntry.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MemoryEntry> mapFromJson(dynamic json) {
    final map = <String, MemoryEntry>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MemoryEntry.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MemoryEntry-objects as value to a dart map
  static Map<String, List<MemoryEntry>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MemoryEntry>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MemoryEntry.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

