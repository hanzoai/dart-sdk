//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Centre {
  /// Returns a new [Centre] instance.
  Centre({
    this.controls = const [],
    this.coverage = const [],
    this.documents = const [],
    this.faq = const [],
    this.frameworks = const [],
    this.generated,
    this.inventory,
    this.org,
    this.policies = const [],
    this.profile,
    this.risk,
    this.subprocessors = const [],
    this.updates = const [],
    this.version,
  });
  /// Controls is the control inventory, each entry naming what it asserts, the mechanism, where it is enforced, how it is verified and the clauses it maps to.
  List<Object> controls;

  /// Coverage is the per-framework counts, computed from Controls against each framework's whole published clause list.
  List<CoverRow> coverage;

  /// Documents are the artifacts, each saying whether this reader may read it.
  List<DocRow> documents;

  /// Faq is the knowledge base — the questions a reviewer asks, answered.
  List<Object> faq;

  /// Frameworks are the clause universes the coverage is computed against.
  List<FrameworkRow> frameworks;

  /// Generated is when this answer was computed, unix milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? generated;

  /// Inventory is how the controls themselves stand, independent of framework.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TrustTally? inventory;

  /// Org is whose centre this is.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  /// Policies are the published policies.
  List<Object> policies;

  Object? profile;

  Object? risk;

  /// Subprocessors are the third parties this organization sends data to.
  List<Object> subprocessors;

  /// Updates is the changelog, newest as the organization ordered it.
  List<Object> updates;

  /// Version is the embedded inventory's version.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Centre &&
    _deepEquality.equals(other.controls, controls) &&
    _deepEquality.equals(other.coverage, coverage) &&
    _deepEquality.equals(other.documents, documents) &&
    _deepEquality.equals(other.faq, faq) &&
    _deepEquality.equals(other.frameworks, frameworks) &&
    other.generated == generated &&
    other.inventory == inventory &&
    other.org == org &&
    _deepEquality.equals(other.policies, policies) &&
    other.profile == profile &&
    other.risk == risk &&
    _deepEquality.equals(other.subprocessors, subprocessors) &&
    _deepEquality.equals(other.updates, updates) &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (controls.hashCode) +
    (coverage.hashCode) +
    (documents.hashCode) +
    (faq.hashCode) +
    (frameworks.hashCode) +
    (generated == null ? 0 : generated!.hashCode) +
    (inventory == null ? 0 : inventory!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (policies.hashCode) +
    (profile == null ? 0 : profile!.hashCode) +
    (risk == null ? 0 : risk!.hashCode) +
    (subprocessors.hashCode) +
    (updates.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'Centre[controls=$controls, coverage=$coverage, documents=$documents, faq=$faq, frameworks=$frameworks, generated=$generated, inventory=$inventory, org=$org, policies=$policies, profile=$profile, risk=$risk, subprocessors=$subprocessors, updates=$updates, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'controls'] = this.controls;
      json[r'coverage'] = this.coverage;
      json[r'documents'] = this.documents;
      json[r'faq'] = this.faq;
      json[r'frameworks'] = this.frameworks;
    if (this.generated != null) {
      json[r'generated'] = this.generated;
    } else {
      json[r'generated'] = null;
    }
    if (this.inventory != null) {
      json[r'inventory'] = this.inventory;
    } else {
      json[r'inventory'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
      json[r'policies'] = this.policies;
    if (this.profile != null) {
      json[r'profile'] = this.profile;
    } else {
      json[r'profile'] = null;
    }
    if (this.risk != null) {
      json[r'risk'] = this.risk;
    } else {
      json[r'risk'] = null;
    }
      json[r'subprocessors'] = this.subprocessors;
      json[r'updates'] = this.updates;
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [Centre] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Centre? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Centre[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Centre[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Centre(
        controls: json[r'controls'] is Iterable
            ? (json[r'controls'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        coverage: CoverRow.listFromJson(json[r'coverage']),
        documents: DocRow.listFromJson(json[r'documents']),
        faq: json[r'faq'] is Iterable
            ? (json[r'faq'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        frameworks: FrameworkRow.listFromJson(json[r'frameworks']),
        generated: mapValueOfType<int>(json, r'generated'),
        inventory: TrustTally.fromJson(json[r'inventory']),
        org: mapValueOfType<String>(json, r'org'),
        policies: json[r'policies'] is Iterable
            ? (json[r'policies'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        profile: mapValueOfType<Object>(json, r'profile'),
        risk: mapValueOfType<Object>(json, r'risk'),
        subprocessors: json[r'subprocessors'] is Iterable
            ? (json[r'subprocessors'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        updates: json[r'updates'] is Iterable
            ? (json[r'updates'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<Centre> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Centre>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Centre.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Centre> mapFromJson(dynamic json) {
    final map = <String, Centre>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Centre.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Centre-objects as value to a dart map
  static Map<String, List<Centre>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Centre>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Centre.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

