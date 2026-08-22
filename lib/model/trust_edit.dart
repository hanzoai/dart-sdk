//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TrustEdit {
  /// Returns a new [TrustEdit] instance.
  TrustEdit({
    this.body,
    this.document,
    this.framework,
    this.id,
    this.name,
    this.retired,
    this.summary,
    this.tier,
  });
  /// Body replaces the item's content.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? body;

  /// Document replaces the file the item points at — this is how a report is superseded by its next edition. The new document must already exist in the caller org's own store.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? document;

  /// Framework replaces the standard it speaks to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? framework;

  /// ID is the item to change, taken from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Name replaces its title.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Retired withdraws the item, or true→false restores it. A retired item leaves the public centre at once and can no longer be granted; grants already made over it stand, because they are part of the record.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? retired;

  /// Summary replaces the line about it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? summary;

  /// Tier moves it between public and gated. Moving an auditor-signed item to public is refused.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tier;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrustEdit &&
    other.body == body &&
    other.document == document &&
    other.framework == framework &&
    other.id == id &&
    other.name == name &&
    other.retired == retired &&
    other.summary == summary &&
    other.tier == tier;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (body == null ? 0 : body!.hashCode) +
    (document == null ? 0 : document!.hashCode) +
    (framework == null ? 0 : framework!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (retired == null ? 0 : retired!.hashCode) +
    (summary == null ? 0 : summary!.hashCode) +
    (tier == null ? 0 : tier!.hashCode);

  @override
  String toString() => 'TrustEdit[body=$body, document=$document, framework=$framework, id=$id, name=$name, retired=$retired, summary=$summary, tier=$tier]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.body != null) {
      json[r'body'] = this.body;
    } else {
      json[r'body'] = null;
    }
    if (this.document != null) {
      json[r'document'] = this.document;
    } else {
      json[r'document'] = null;
    }
    if (this.framework != null) {
      json[r'framework'] = this.framework;
    } else {
      json[r'framework'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.retired != null) {
      json[r'retired'] = this.retired;
    } else {
      json[r'retired'] = null;
    }
    if (this.summary != null) {
      json[r'summary'] = this.summary;
    } else {
      json[r'summary'] = null;
    }
    if (this.tier != null) {
      json[r'tier'] = this.tier;
    } else {
      json[r'tier'] = null;
    }
    return json;
  }

  /// Returns a new [TrustEdit] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrustEdit? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrustEdit[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrustEdit[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrustEdit(
        body: mapValueOfType<String>(json, r'body'),
        document: mapValueOfType<String>(json, r'document'),
        framework: mapValueOfType<String>(json, r'framework'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        retired: mapValueOfType<bool>(json, r'retired'),
        summary: mapValueOfType<String>(json, r'summary'),
        tier: mapValueOfType<String>(json, r'tier'),
      );
    }
    return null;
  }

  static List<TrustEdit> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrustEdit>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrustEdit.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrustEdit> mapFromJson(dynamic json) {
    final map = <String, TrustEdit>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrustEdit.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrustEdit-objects as value to a dart map
  static Map<String, List<TrustEdit>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrustEdit>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrustEdit.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

