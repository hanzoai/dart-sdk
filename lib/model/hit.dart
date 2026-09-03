//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Hit {
  /// Returns a new [Hit] instance.
  Hit({
    this.doctype,
    this.name,
    this.project,
    this.provider,
    this.score,
    this.title,
    this.url,
  });
  /// DocType is which kind of knowledge matched, by address: kb.page (a wiki page), kb.memory (a unit of agent memory) or kb.source (a document a connector ingested). Those three are the whole indexed set, and searchIn.DocTypes filters on them.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? doctype;

  /// Name is the document's name in the framework store — the id to read or open it with. Unique per (org, doctype), so it identifies the document with DocType and not alone.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Project is the project scope the document was saved under. Absent for a document saved with none, which is also why a project-scoped query cannot reach it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  /// Provider is the connector that ingested the document — github, slack, google or notion. Absent for a page or memory written in the product, which came from no connector.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Score is the cosine similarity between the query's embedding and the document's, from -1 to 1, higher being closer — the collection is created with Cosine distance. Hits arrive ordered by it, descending. There is no absolute cutoff: what counts as a good score moves with the query and the embedding model, so compare scores within one response and not across queries.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? score;

  /// Title is the document's title as it was indexed. Empty for a document saved without one; it is a label to show, never the id (that is Name).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// URL is the document's link back into the app it was ingested from. Absent when the indexed payload carries none, which is the normal case for pages and memories.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Hit &&
    other.doctype == doctype &&
    other.name == name &&
    other.project == project &&
    other.provider == provider &&
    other.score == score &&
    other.title == title &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (doctype == null ? 0 : doctype!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (score == null ? 0 : score!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'Hit[doctype=$doctype, name=$name, project=$project, provider=$provider, score=$score, title=$title, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.doctype != null) {
      json[r'doctype'] = this.doctype;
    } else {
      json[r'doctype'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
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
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [Hit] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Hit? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Hit[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Hit[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Hit(
        doctype: mapValueOfType<String>(json, r'doctype'),
        name: mapValueOfType<String>(json, r'name'),
        project: mapValueOfType<String>(json, r'project'),
        provider: mapValueOfType<String>(json, r'provider'),
        score: mapValueOfType<double>(json, r'score'),
        title: mapValueOfType<String>(json, r'title'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<Hit> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Hit>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Hit.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Hit> mapFromJson(dynamic json) {
    final map = <String, Hit>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Hit.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Hit-objects as value to a dart map
  static Map<String, List<Hit>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Hit>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Hit.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

