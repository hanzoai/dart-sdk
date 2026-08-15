//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableStakeholderPatch {
  /// Returns a new [CaptableStakeholderPatch] instance.
  CaptableStakeholderPatch({
    this.city,
    this.currentRelationship,
    this.email,
    this.id,
    this.institutionName,
    this.name,
    this.stakeholderType,
    this.state,
    this.streetAddress,
    this.taxId,
    this.zipcode,
  });

  Object? city;

  Object? currentRelationship;

  Object? email;

  /// ID is the stakeholder to update. It is the path segment: the URL is the addressing authority, and the org it is resolved in comes from the caller's principal, so an id from another tenant is simply not found.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  Object? institutionName;

  Object? name;

  Object? stakeholderType;

  Object? state;

  Object? streetAddress;

  Object? taxId;

  Object? zipcode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableStakeholderPatch &&
    other.city == city &&
    other.currentRelationship == currentRelationship &&
    other.email == email &&
    other.id == id &&
    other.institutionName == institutionName &&
    other.name == name &&
    other.stakeholderType == stakeholderType &&
    other.state == state &&
    other.streetAddress == streetAddress &&
    other.taxId == taxId &&
    other.zipcode == zipcode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (city == null ? 0 : city!.hashCode) +
    (currentRelationship == null ? 0 : currentRelationship!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (institutionName == null ? 0 : institutionName!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (stakeholderType == null ? 0 : stakeholderType!.hashCode) +
    (state == null ? 0 : state!.hashCode) +
    (streetAddress == null ? 0 : streetAddress!.hashCode) +
    (taxId == null ? 0 : taxId!.hashCode) +
    (zipcode == null ? 0 : zipcode!.hashCode);

  @override
  String toString() => 'CaptableStakeholderPatch[city=$city, currentRelationship=$currentRelationship, email=$email, id=$id, institutionName=$institutionName, name=$name, stakeholderType=$stakeholderType, state=$state, streetAddress=$streetAddress, taxId=$taxId, zipcode=$zipcode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.city != null) {
      json[r'city'] = this.city;
    } else {
      json[r'city'] = null;
    }
    if (this.currentRelationship != null) {
      json[r'currentRelationship'] = this.currentRelationship;
    } else {
      json[r'currentRelationship'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.institutionName != null) {
      json[r'institutionName'] = this.institutionName;
    } else {
      json[r'institutionName'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.stakeholderType != null) {
      json[r'stakeholderType'] = this.stakeholderType;
    } else {
      json[r'stakeholderType'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    if (this.streetAddress != null) {
      json[r'streetAddress'] = this.streetAddress;
    } else {
      json[r'streetAddress'] = null;
    }
    if (this.taxId != null) {
      json[r'taxId'] = this.taxId;
    } else {
      json[r'taxId'] = null;
    }
    if (this.zipcode != null) {
      json[r'zipcode'] = this.zipcode;
    } else {
      json[r'zipcode'] = null;
    }
    return json;
  }

  /// Returns a new [CaptableStakeholderPatch] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableStakeholderPatch? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableStakeholderPatch[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableStakeholderPatch[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableStakeholderPatch(
        city: mapValueOfType<Object>(json, r'city'),
        currentRelationship: mapValueOfType<Object>(json, r'currentRelationship'),
        email: mapValueOfType<Object>(json, r'email'),
        id: mapValueOfType<String>(json, r'id'),
        institutionName: mapValueOfType<Object>(json, r'institutionName'),
        name: mapValueOfType<Object>(json, r'name'),
        stakeholderType: mapValueOfType<Object>(json, r'stakeholderType'),
        state: mapValueOfType<Object>(json, r'state'),
        streetAddress: mapValueOfType<Object>(json, r'streetAddress'),
        taxId: mapValueOfType<Object>(json, r'taxId'),
        zipcode: mapValueOfType<Object>(json, r'zipcode'),
      );
    }
    return null;
  }

  static List<CaptableStakeholderPatch> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableStakeholderPatch>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableStakeholderPatch.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableStakeholderPatch> mapFromJson(dynamic json) {
    final map = <String, CaptableStakeholderPatch>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableStakeholderPatch.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableStakeholderPatch-objects as value to a dart map
  static Map<String, List<CaptableStakeholderPatch>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableStakeholderPatch>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableStakeholderPatch.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

