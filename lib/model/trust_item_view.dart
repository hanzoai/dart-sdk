//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TrustItemView {
  /// Returns a new [TrustItemView] instance.
  TrustItemView({
    this.attester,
    this.body,
    this.createdAt,
    this.document,
    this.framework,
    this.id,
    this.kind,
    this.name,
    this.retired,
    this.summary,
    this.tier,
    this.updatedAt,
  });
  /// Attester is who vouched for it: self or auditor.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? attester;

  /// Body is the item's content for the kinds that are text rather than a file.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? body;

  /// CreatedAt is when it was published, in unix milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// Document is the data-room document holding its bytes, empty when it has none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? document;

  /// Framework is the standard it speaks to, when it speaks to one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? framework;

  /// ID addresses the item.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Kind is what it is.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Name is its title.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Retired is whether it has been withdrawn. A retired item is absent from the public centre and cannot be granted; it is kept because a grant already made over it is part of the record.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? retired;

  /// Summary is a line about it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? summary;

  /// Tier is public or gated. Gated is the default and an auditor-signed item can only ever be gated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tier;

  /// UpdatedAt is when it last changed, in unix milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrustItemView &&
    other.attester == attester &&
    other.body == body &&
    other.createdAt == createdAt &&
    other.document == document &&
    other.framework == framework &&
    other.id == id &&
    other.kind == kind &&
    other.name == name &&
    other.retired == retired &&
    other.summary == summary &&
    other.tier == tier &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (attester == null ? 0 : attester!.hashCode) +
    (body == null ? 0 : body!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (document == null ? 0 : document!.hashCode) +
    (framework == null ? 0 : framework!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (retired == null ? 0 : retired!.hashCode) +
    (summary == null ? 0 : summary!.hashCode) +
    (tier == null ? 0 : tier!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'TrustItemView[attester=$attester, body=$body, createdAt=$createdAt, document=$document, framework=$framework, id=$id, kind=$kind, name=$name, retired=$retired, summary=$summary, tier=$tier, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.attester != null) {
      json[r'attester'] = this.attester;
    } else {
      json[r'attester'] = null;
    }
    if (this.body != null) {
      json[r'body'] = this.body;
    } else {
      json[r'body'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
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
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
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
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [TrustItemView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrustItemView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrustItemView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrustItemView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrustItemView(
        attester: mapValueOfType<String>(json, r'attester'),
        body: mapValueOfType<String>(json, r'body'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        document: mapValueOfType<String>(json, r'document'),
        framework: mapValueOfType<String>(json, r'framework'),
        id: mapValueOfType<String>(json, r'id'),
        kind: mapValueOfType<String>(json, r'kind'),
        name: mapValueOfType<String>(json, r'name'),
        retired: mapValueOfType<bool>(json, r'retired'),
        summary: mapValueOfType<String>(json, r'summary'),
        tier: mapValueOfType<String>(json, r'tier'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<TrustItemView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrustItemView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrustItemView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrustItemView> mapFromJson(dynamic json) {
    final map = <String, TrustItemView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrustItemView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrustItemView-objects as value to a dart map
  static Map<String, List<TrustItemView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrustItemView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrustItemView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

