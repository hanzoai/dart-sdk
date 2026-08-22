//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class VendorRow {
  /// Returns a new [VendorRow] instance.
  VendorRow({
    this.aliases = const [],
    this.canonical,
    this.defaultCategory,
  });
  /// Aliases are the other spellings a receipt may print the vendor under; a scan matching any of them resolves to this vendor.
  List<String> aliases;

  /// Canonical is the vendor's one true name, and the key an upsert writes by.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? canonical;

  /// DefaultCategory is the COA expense account new bills from this vendor book to. An upsert normalizes a slug (\"software\") to its account number.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? defaultCategory;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VendorRow &&
    _deepEquality.equals(other.aliases, aliases) &&
    other.canonical == canonical &&
    other.defaultCategory == defaultCategory;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (aliases.hashCode) +
    (canonical == null ? 0 : canonical!.hashCode) +
    (defaultCategory == null ? 0 : defaultCategory!.hashCode);

  @override
  String toString() => 'VendorRow[aliases=$aliases, canonical=$canonical, defaultCategory=$defaultCategory]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'aliases'] = this.aliases;
    if (this.canonical != null) {
      json[r'canonical'] = this.canonical;
    } else {
      json[r'canonical'] = null;
    }
    if (this.defaultCategory != null) {
      json[r'defaultCategory'] = this.defaultCategory;
    } else {
      json[r'defaultCategory'] = null;
    }
    return json;
  }

  /// Returns a new [VendorRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VendorRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VendorRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VendorRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VendorRow(
        aliases: json[r'aliases'] is Iterable
            ? (json[r'aliases'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        canonical: mapValueOfType<String>(json, r'canonical'),
        defaultCategory: mapValueOfType<String>(json, r'defaultCategory'),
      );
    }
    return null;
  }

  static List<VendorRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VendorRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VendorRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VendorRow> mapFromJson(dynamic json) {
    final map = <String, VendorRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VendorRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VendorRow-objects as value to a dart map
  static Map<String, List<VendorRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VendorRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VendorRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

