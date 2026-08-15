//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Entry {
  /// Returns a new [Entry] instance.
  Entry({
    this.archetype,
    this.description,
    this.forkable,
    this.id,
    this.kind,
    this.language,
    this.license,
    this.name,
    this.note,
    this.org,
    this.origin,
    this.repo,
    this.scope,
    this.stars,
    this.template,
    this.title,
    this.updated,
    this.upstream,
    this.url,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? archetype;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Forkable is NOT omitempty: false is an answer here, not a missing field. Omitted, a client could not tell \"you cannot fork this\" from \"nobody said\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? forkable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// repo | site
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? language;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? license;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Note is why a row is NOT in the published catalog, set by the admission gate (gate.go) on the sites it holds back. It is the difference between a demo that silently vanished from the public lens and one whose owner can read the reason and fix it. A published row never carries one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? note;

  /// hanzo | lux | zoo
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  /// Origin is WHAT THIS IS TO YOU: template | community | third-party | product (origin.go owns the four nouns and derives them). Not omitempty, for the same reason Forkable is not: every row has an answer, and a missing one is exactly the flattening this field exists to end.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? origin;

  /// source
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  /// Scope is provenance, not storage: \"public\" for a row from the published corpus, \"org\" for one only this caller can see. A UI that cannot tell them apart cannot warn before sharing a link.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scope;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? stars;

  /// lineage, if forked from one
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? template;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updated;

  /// Upstream/License credit the third-party work an entry was published from: the difference between \"this org built it\" and \"somebody else built it and we are showing it to you\".  WHO built it is Org, above — the account that paid for the project. There was once a separate admin-gated `official` boolean here claiming the same thing, and because it was gated it disagreed: apps Hanzo wrote and hosts were published by a script holding an ordinary org token, so it stayed false on all of them and this directory filed our own work as somebody else's. A field that restates an unforgeable fact can only ever be the wrong copy of it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? upstream;

  /// live, if it is deployed
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Entry &&
    other.archetype == archetype &&
    other.description == description &&
    other.forkable == forkable &&
    other.id == id &&
    other.kind == kind &&
    other.language == language &&
    other.license == license &&
    other.name == name &&
    other.note == note &&
    other.org == org &&
    other.origin == origin &&
    other.repo == repo &&
    other.scope == scope &&
    other.stars == stars &&
    other.template == template &&
    other.title == title &&
    other.updated == updated &&
    other.upstream == upstream &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (archetype == null ? 0 : archetype!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (forkable == null ? 0 : forkable!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (language == null ? 0 : language!.hashCode) +
    (license == null ? 0 : license!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (note == null ? 0 : note!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (origin == null ? 0 : origin!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (stars == null ? 0 : stars!.hashCode) +
    (template == null ? 0 : template!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (updated == null ? 0 : updated!.hashCode) +
    (upstream == null ? 0 : upstream!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'Entry[archetype=$archetype, description=$description, forkable=$forkable, id=$id, kind=$kind, language=$language, license=$license, name=$name, note=$note, org=$org, origin=$origin, repo=$repo, scope=$scope, stars=$stars, template=$template, title=$title, updated=$updated, upstream=$upstream, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.archetype != null) {
      json[r'archetype'] = this.archetype;
    } else {
      json[r'archetype'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.forkable != null) {
      json[r'forkable'] = this.forkable;
    } else {
      json[r'forkable'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.language != null) {
      json[r'language'] = this.language;
    } else {
      json[r'language'] = null;
    }
    if (this.license != null) {
      json[r'license'] = this.license;
    } else {
      json[r'license'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.note != null) {
      json[r'note'] = this.note;
    } else {
      json[r'note'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.origin != null) {
      json[r'origin'] = this.origin;
    } else {
      json[r'origin'] = null;
    }
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    if (this.stars != null) {
      json[r'stars'] = this.stars;
    } else {
      json[r'stars'] = null;
    }
    if (this.template != null) {
      json[r'template'] = this.template;
    } else {
      json[r'template'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    if (this.upstream != null) {
      json[r'upstream'] = this.upstream;
    } else {
      json[r'upstream'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [Entry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Entry? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Entry[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Entry[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Entry(
        archetype: mapValueOfType<String>(json, r'archetype'),
        description: mapValueOfType<String>(json, r'description'),
        forkable: mapValueOfType<bool>(json, r'forkable'),
        id: mapValueOfType<String>(json, r'id'),
        kind: mapValueOfType<String>(json, r'kind'),
        language: mapValueOfType<String>(json, r'language'),
        license: mapValueOfType<String>(json, r'license'),
        name: mapValueOfType<String>(json, r'name'),
        note: mapValueOfType<String>(json, r'note'),
        org: mapValueOfType<String>(json, r'org'),
        origin: mapValueOfType<String>(json, r'origin'),
        repo: mapValueOfType<String>(json, r'repo'),
        scope: mapValueOfType<String>(json, r'scope'),
        stars: mapValueOfType<int>(json, r'stars'),
        template: mapValueOfType<String>(json, r'template'),
        title: mapValueOfType<String>(json, r'title'),
        updated: mapValueOfType<String>(json, r'updated'),
        upstream: mapValueOfType<String>(json, r'upstream'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<Entry> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Entry>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Entry.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Entry> mapFromJson(dynamic json) {
    final map = <String, Entry>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Entry.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Entry-objects as value to a dart map
  static Map<String, List<Entry>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Entry>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Entry.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

