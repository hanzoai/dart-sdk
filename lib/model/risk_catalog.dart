//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskCatalog {
  /// Returns a new [RiskCatalog] instance.
  RiskCatalog({
    this.gap,
    this.model = const [],
    this.network = const [],
    this.surface = const [],
    this.tenant,
  });
  /// Gap says why a lens could not be measured, when that is the case. Each reason names its own lens, because \"the surface is unreadable\" and \"the network baseline is unreadable\" are different facts.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gap;

  /// Model is the governed inventory: one entry per dimension of the model space, each carrying the typology it serves and the published standard that asks for it. It is the same for every organisation, because it is the model's shape.
  List<RiskModelFeature> model;

  /// Network is the published cross-organisation baseline over the same window, so the surface above has something to be read AGAINST. It is the same for every caller and it names nobody.  It carries no tenant and cannot be made to: the table it reads has no org column, every figure is a quantile over at least kAnonOrgs organisations weighted one vote each, and a band that does not meet that floor is dropped on the way out.
  List<RiskBand> network;

  /// Surface is what this organisation's own event surface carries, per dimension, measured over the window. A dimension present in no bucket is blind here — the model reads its neutral value and a reviewer has to be able to see that.
  List<RiskOrgFeature> surface;

  /// Tenant is whose surface was measured.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tenant;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskCatalog &&
    other.gap == gap &&
    _deepEquality.equals(other.model, model) &&
    _deepEquality.equals(other.network, network) &&
    _deepEquality.equals(other.surface, surface) &&
    other.tenant == tenant;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (gap == null ? 0 : gap!.hashCode) +
    (model.hashCode) +
    (network.hashCode) +
    (surface.hashCode) +
    (tenant == null ? 0 : tenant!.hashCode);

  @override
  String toString() => 'RiskCatalog[gap=$gap, model=$model, network=$network, surface=$surface, tenant=$tenant]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.gap != null) {
      json[r'gap'] = this.gap;
    } else {
      json[r'gap'] = null;
    }
      json[r'model'] = this.model;
      json[r'network'] = this.network;
      json[r'surface'] = this.surface;
    if (this.tenant != null) {
      json[r'tenant'] = this.tenant;
    } else {
      json[r'tenant'] = null;
    }
    return json;
  }

  /// Returns a new [RiskCatalog] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskCatalog? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskCatalog[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskCatalog[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskCatalog(
        gap: mapValueOfType<String>(json, r'gap'),
        model: RiskModelFeature.listFromJson(json[r'model']),
        network: RiskBand.listFromJson(json[r'network']),
        surface: RiskOrgFeature.listFromJson(json[r'surface']),
        tenant: mapValueOfType<String>(json, r'tenant'),
      );
    }
    return null;
  }

  static List<RiskCatalog> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskCatalog>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskCatalog.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskCatalog> mapFromJson(dynamic json) {
    final map = <String, RiskCatalog>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskCatalog.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskCatalog-objects as value to a dart map
  static Map<String, List<RiskCatalog>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskCatalog>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskCatalog.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

