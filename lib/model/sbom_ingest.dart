//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SbomIngest {
  /// Returns a new [SbomIngest] instance.
  SbomIngest({
    this.document,
    this.format,
    this.gitSha,
    this.imageDigest,
    this.imageRef,
    this.sourceRepo,
  });
  Object? document;

  /// Format names the document format; \"cyclonedx\" is the only one parsed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? format;

  /// GitSha is the commit the image was built from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gitSha;

  /// ImageDigest is the content-addressed digest (sha256:…) the components are keyed under. Required — it, not a tenant, is what an SBOM belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imageDigest;

  /// ImageRef is the human-readable image reference the digest was published as. A resolve matches on either this or the digest.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imageRef;

  /// SourceRepo is the repository the image was built from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourceRepo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SbomIngest &&
    other.document == document &&
    other.format == format &&
    other.gitSha == gitSha &&
    other.imageDigest == imageDigest &&
    other.imageRef == imageRef &&
    other.sourceRepo == sourceRepo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (document == null ? 0 : document!.hashCode) +
    (format == null ? 0 : format!.hashCode) +
    (gitSha == null ? 0 : gitSha!.hashCode) +
    (imageDigest == null ? 0 : imageDigest!.hashCode) +
    (imageRef == null ? 0 : imageRef!.hashCode) +
    (sourceRepo == null ? 0 : sourceRepo!.hashCode);

  @override
  String toString() => 'SbomIngest[document=$document, format=$format, gitSha=$gitSha, imageDigest=$imageDigest, imageRef=$imageRef, sourceRepo=$sourceRepo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.document != null) {
      json[r'document'] = this.document;
    } else {
      json[r'document'] = null;
    }
    if (this.format != null) {
      json[r'format'] = this.format;
    } else {
      json[r'format'] = null;
    }
    if (this.gitSha != null) {
      json[r'gitSha'] = this.gitSha;
    } else {
      json[r'gitSha'] = null;
    }
    if (this.imageDigest != null) {
      json[r'imageDigest'] = this.imageDigest;
    } else {
      json[r'imageDigest'] = null;
    }
    if (this.imageRef != null) {
      json[r'imageRef'] = this.imageRef;
    } else {
      json[r'imageRef'] = null;
    }
    if (this.sourceRepo != null) {
      json[r'sourceRepo'] = this.sourceRepo;
    } else {
      json[r'sourceRepo'] = null;
    }
    return json;
  }

  /// Returns a new [SbomIngest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SbomIngest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SbomIngest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SbomIngest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SbomIngest(
        document: mapValueOfType<Object>(json, r'document'),
        format: mapValueOfType<String>(json, r'format'),
        gitSha: mapValueOfType<String>(json, r'gitSha'),
        imageDigest: mapValueOfType<String>(json, r'imageDigest'),
        imageRef: mapValueOfType<String>(json, r'imageRef'),
        sourceRepo: mapValueOfType<String>(json, r'sourceRepo'),
      );
    }
    return null;
  }

  static List<SbomIngest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SbomIngest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SbomIngest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SbomIngest> mapFromJson(dynamic json) {
    final map = <String, SbomIngest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SbomIngest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SbomIngest-objects as value to a dart map
  static Map<String, List<SbomIngest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SbomIngest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SbomIngest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

