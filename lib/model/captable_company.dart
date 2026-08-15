//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableCompany {
  /// Returns a new [CaptableCompany] instance.
  CaptableCompany({
    this.createdAt,
    this.id,
    this.incorporationCountry,
    this.incorporationState,
    this.incorporationType,
    this.name,
    this.publicId,
    this.updatedAt,
  });

  /// CreatedAt is when the company row was seeded, in unix milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// ID is the company id, which is the tenant's own org id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// IncorporationCountry is the ISO country the entity is incorporated in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? incorporationCountry;

  /// IncorporationState is the state or province of incorporation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? incorporationState;

  /// IncorporationType is the entity kind, e.g. LLC or C_CORP.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? incorporationType;

  /// Name is the company's legal name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// PublicID is the company's shareable public identifier.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? publicId;

  /// UpdatedAt is when the company row last changed, in unix milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableCompany &&
    other.createdAt == createdAt &&
    other.id == id &&
    other.incorporationCountry == incorporationCountry &&
    other.incorporationState == incorporationState &&
    other.incorporationType == incorporationType &&
    other.name == name &&
    other.publicId == publicId &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (incorporationCountry == null ? 0 : incorporationCountry!.hashCode) +
    (incorporationState == null ? 0 : incorporationState!.hashCode) +
    (incorporationType == null ? 0 : incorporationType!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (publicId == null ? 0 : publicId!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'CaptableCompany[createdAt=$createdAt, id=$id, incorporationCountry=$incorporationCountry, incorporationState=$incorporationState, incorporationType=$incorporationType, name=$name, publicId=$publicId, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.incorporationCountry != null) {
      json[r'incorporationCountry'] = this.incorporationCountry;
    } else {
      json[r'incorporationCountry'] = null;
    }
    if (this.incorporationState != null) {
      json[r'incorporationState'] = this.incorporationState;
    } else {
      json[r'incorporationState'] = null;
    }
    if (this.incorporationType != null) {
      json[r'incorporationType'] = this.incorporationType;
    } else {
      json[r'incorporationType'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.publicId != null) {
      json[r'publicId'] = this.publicId;
    } else {
      json[r'publicId'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [CaptableCompany] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableCompany? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableCompany[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableCompany[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableCompany(
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        id: mapValueOfType<String>(json, r'id'),
        incorporationCountry: mapValueOfType<String>(json, r'incorporationCountry'),
        incorporationState: mapValueOfType<String>(json, r'incorporationState'),
        incorporationType: mapValueOfType<String>(json, r'incorporationType'),
        name: mapValueOfType<String>(json, r'name'),
        publicId: mapValueOfType<String>(json, r'publicId'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<CaptableCompany> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableCompany>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableCompany.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableCompany> mapFromJson(dynamic json) {
    final map = <String, CaptableCompany>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableCompany.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableCompany-objects as value to a dart map
  static Map<String, List<CaptableCompany>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableCompany>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableCompany.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

