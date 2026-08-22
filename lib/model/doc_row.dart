//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DocRow {
  /// Returns a new [DocRow] instance.
  DocRow({
    this.attested,
    this.href,
    this.id,
    this.kind,
    this.label,
    this.note,
    this.released,
    this.tier,
    this.title,
    this.updated,
  });
  /// Attested reports whether somebody OUTSIDE this organization put their name to it. Those are the artifacts a reviewer asks for, and they are released through a grant rather than published — there is no field that can say otherwise.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? attested;

  /// Href is where to read it, present only when this reader may.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? href;

  /// ID is the document's id within this organization's centre.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Kind is the artifact type — soc2, iso, pentest, letter, caiq, sig, vsa, questionnaire, policy or other.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Label is the artifact type in words, for rendering.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  /// Note is anything the organization says about this artifact.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? note;

  /// Released reports whether THIS reader may read it. False means the artifact exists and is available on request.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? released;

  /// Tier is \"public\" or \"gated\". It defaults to gated, so a new artifact is closed until somebody opens it deliberately.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tier;

  /// Title is what the document is called.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// Updated is when the record last changed, unix milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DocRow &&
    other.attested == attested &&
    other.href == href &&
    other.id == id &&
    other.kind == kind &&
    other.label == label &&
    other.note == note &&
    other.released == released &&
    other.tier == tier &&
    other.title == title &&
    other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (attested == null ? 0 : attested!.hashCode) +
    (href == null ? 0 : href!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (note == null ? 0 : note!.hashCode) +
    (released == null ? 0 : released!.hashCode) +
    (tier == null ? 0 : tier!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (updated == null ? 0 : updated!.hashCode);

  @override
  String toString() => 'DocRow[attested=$attested, href=$href, id=$id, kind=$kind, label=$label, note=$note, released=$released, tier=$tier, title=$title, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.attested != null) {
      json[r'attested'] = this.attested;
    } else {
      json[r'attested'] = null;
    }
    if (this.href != null) {
      json[r'href'] = this.href;
    } else {
      json[r'href'] = null;
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
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.note != null) {
      json[r'note'] = this.note;
    } else {
      json[r'note'] = null;
    }
    if (this.released != null) {
      json[r'released'] = this.released;
    } else {
      json[r'released'] = null;
    }
    if (this.tier != null) {
      json[r'tier'] = this.tier;
    } else {
      json[r'tier'] = null;
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
    return json;
  }

  /// Returns a new [DocRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DocRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DocRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DocRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DocRow(
        attested: mapValueOfType<bool>(json, r'attested'),
        href: mapValueOfType<String>(json, r'href'),
        id: mapValueOfType<String>(json, r'id'),
        kind: mapValueOfType<String>(json, r'kind'),
        label: mapValueOfType<String>(json, r'label'),
        note: mapValueOfType<String>(json, r'note'),
        released: mapValueOfType<bool>(json, r'released'),
        tier: mapValueOfType<String>(json, r'tier'),
        title: mapValueOfType<String>(json, r'title'),
        updated: mapValueOfType<int>(json, r'updated'),
      );
    }
    return null;
  }

  static List<DocRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DocRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DocRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DocRow> mapFromJson(dynamic json) {
    final map = <String, DocRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DocRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DocRow-objects as value to a dart map
  static Map<String, List<DocRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DocRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DocRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

