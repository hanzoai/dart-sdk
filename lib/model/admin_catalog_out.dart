//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AdminCatalogOut {
  /// Returns a new [AdminCatalogOut] instance.
  AdminCatalogOut({
    this.models = const [],
    this.providers = const {},
    this.updated,
  });

  /// Models is every model the catalog holds — disabled ones included — each carrying its enablement state under \"_overlay\".
  List<Map<String, Object>> models;

  /// Providers is every provider the catalog holds, keyed by name, each carrying its enablement state under \"_overlay\".
  Map<String, Object> providers;

  /// Updated is when the catalog was last refreshed, as the pricing source recorded it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminCatalogOut &&
    _deepEquality.equals(other.models, models) &&
    _deepEquality.equals(other.providers, providers) &&
    other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (models.hashCode) +
    (providers.hashCode) +
    (updated == null ? 0 : updated!.hashCode);

  @override
  String toString() => 'AdminCatalogOut[models=$models, providers=$providers, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'models'] = this.models;
      json[r'providers'] = this.providers;
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    return json;
  }

  /// Returns a new [AdminCatalogOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminCatalogOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AdminCatalogOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AdminCatalogOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AdminCatalogOut(
        models: json[r'models'] is Iterable
            ? (json[r'models'] as Iterable).map((e) => (e as Map).cast<String, Object>()).toList(growable: false)
            : const [],
        providers: mapCastOfType<String, Object>(json, r'providers') ?? const {},
        updated: mapValueOfType<Object>(json, r'updated'),
      );
    }
    return null;
  }

  static List<AdminCatalogOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminCatalogOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminCatalogOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminCatalogOut> mapFromJson(dynamic json) {
    final map = <String, AdminCatalogOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminCatalogOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminCatalogOut-objects as value to a dart map
  static Map<String, List<AdminCatalogOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminCatalogOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminCatalogOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

