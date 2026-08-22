//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PlanResolution {
  /// Returns a new [PlanResolution] instance.
  PlanResolution({
    this.entitlements,
    this.id,
    this.licenseFeatures = const [],
    this.priceRef,
    this.tenantId,
  });
  Object? entitlements;

  /// ID is the plan's catalog id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// LicenseFeatures is the flat, sorted feature list a signed license carries, derived from the entitlements — \"ai.premium\", \"licensing.product:team\".
  List<String> licenseFeatures;

  Object? priceRef;

  /// TenantID is the catalog the record came from: \"hanzo\" for the canonical catalog, a reseller org for that reseller's override.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tenantId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PlanResolution &&
    other.entitlements == entitlements &&
    other.id == id &&
    _deepEquality.equals(other.licenseFeatures, licenseFeatures) &&
    other.priceRef == priceRef &&
    other.tenantId == tenantId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entitlements == null ? 0 : entitlements!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (licenseFeatures.hashCode) +
    (priceRef == null ? 0 : priceRef!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode);

  @override
  String toString() => 'PlanResolution[entitlements=$entitlements, id=$id, licenseFeatures=$licenseFeatures, priceRef=$priceRef, tenantId=$tenantId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.entitlements != null) {
      json[r'entitlements'] = this.entitlements;
    } else {
      json[r'entitlements'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'license_features'] = this.licenseFeatures;
    if (this.priceRef != null) {
      json[r'price_ref'] = this.priceRef;
    } else {
      json[r'price_ref'] = null;
    }
    if (this.tenantId != null) {
      json[r'tenant_id'] = this.tenantId;
    } else {
      json[r'tenant_id'] = null;
    }
    return json;
  }

  /// Returns a new [PlanResolution] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PlanResolution? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PlanResolution[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PlanResolution[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PlanResolution(
        entitlements: mapValueOfType<Object>(json, r'entitlements'),
        id: mapValueOfType<String>(json, r'id'),
        licenseFeatures: json[r'license_features'] is Iterable
            ? (json[r'license_features'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        priceRef: mapValueOfType<Object>(json, r'price_ref'),
        tenantId: mapValueOfType<String>(json, r'tenant_id'),
      );
    }
    return null;
  }

  static List<PlanResolution> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PlanResolution>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlanResolution.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PlanResolution> mapFromJson(dynamic json) {
    final map = <String, PlanResolution>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PlanResolution.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PlanResolution-objects as value to a dart map
  static Map<String, List<PlanResolution>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PlanResolution>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PlanResolution.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

