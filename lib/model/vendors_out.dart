//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class VendorsOut {
  /// Returns a new [VendorsOut] instance.
  VendorsOut({
    this.vendors = const [],
  });

  /// Vendors is every vendor the org has recorded, canonical name ascending.
  List<VendorRow> vendors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VendorsOut &&
    _deepEquality.equals(other.vendors, vendors);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (vendors.hashCode);

  @override
  String toString() => 'VendorsOut[vendors=$vendors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'vendors'] = this.vendors;
    return json;
  }

  /// Returns a new [VendorsOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VendorsOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VendorsOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VendorsOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VendorsOut(
        vendors: VendorRow.listFromJson(json[r'vendors']),
      );
    }
    return null;
  }

  static List<VendorsOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VendorsOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VendorsOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VendorsOut> mapFromJson(dynamic json) {
    final map = <String, VendorsOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VendorsOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VendorsOut-objects as value to a dart map
  static Map<String, List<VendorsOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VendorsOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VendorsOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

