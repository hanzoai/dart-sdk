//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TrustPublish {
  /// Returns a new [TrustPublish] instance.
  TrustPublish({
    this.attester,
    this.body,
    this.document,
    this.framework,
    this.kind,
    this.name,
    this.summary,
    this.tier,
  });
  /// Attester is who vouched for it: \"self\" for anything the org states itself, or \"auditor\" for anything an independent auditor put their name to. REQUIRED, and anything other than \"self\" is read as \"auditor\" — the safe direction, since an auditor-signed item can only ever be released on request.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? attester;

  /// Body is the item's content for the kinds that are text rather than a file: an article, a subprocessor entry, a dated note.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? body;

  /// Document is a data-room document holding the item's bytes, uploaded first through POST /v1/dataroom/documents. Optional: an item can be content with no file. The document must already exist in the caller org's own store.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? document;

  /// Framework is the standard it speaks to. Optional and free text — the value is the org's own, not a list this API keeps.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? framework;

  /// Kind is what the item is: report, letter, policy, questionnaire, subprocessor, article or update. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Name is the item's title. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Summary is a line about it. Optional.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? summary;

  /// Tier is who may read it: \"public\" or \"gated\". It DEFAULTS TO GATED and anything that is not exactly \"public\" is gated, so an item published by a caller that says nothing is private and someone has to release it on purpose. \"public\" is refused for an auditor-signed item.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tier;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrustPublish &&
    other.attester == attester &&
    other.body == body &&
    other.document == document &&
    other.framework == framework &&
    other.kind == kind &&
    other.name == name &&
    other.summary == summary &&
    other.tier == tier;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (attester == null ? 0 : attester!.hashCode) +
    (body == null ? 0 : body!.hashCode) +
    (document == null ? 0 : document!.hashCode) +
    (framework == null ? 0 : framework!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (summary == null ? 0 : summary!.hashCode) +
    (tier == null ? 0 : tier!.hashCode);

  @override
  String toString() => 'TrustPublish[attester=$attester, body=$body, document=$document, framework=$framework, kind=$kind, name=$name, summary=$summary, tier=$tier]';

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

  /// Returns a new [TrustPublish] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrustPublish? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrustPublish[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrustPublish[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrustPublish(
        attester: mapValueOfType<String>(json, r'attester'),
        body: mapValueOfType<String>(json, r'body'),
        document: mapValueOfType<String>(json, r'document'),
        framework: mapValueOfType<String>(json, r'framework'),
        kind: mapValueOfType<String>(json, r'kind'),
        name: mapValueOfType<String>(json, r'name'),
        summary: mapValueOfType<String>(json, r'summary'),
        tier: mapValueOfType<String>(json, r'tier'),
      );
    }
    return null;
  }

  static List<TrustPublish> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrustPublish>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrustPublish.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrustPublish> mapFromJson(dynamic json) {
    final map = <String, TrustPublish>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrustPublish.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrustPublish-objects as value to a dart map
  static Map<String, List<TrustPublish>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrustPublish>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrustPublish.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

