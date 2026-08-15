//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskAdoptIn {
  /// Returns a new [RiskAdoptIn] instance.
  RiskAdoptIn({
    this.address,
  });

  /// Address is one of YOUR organisation's own published values (GET /v1/risk/state reports them, and a search reports the one it fitted for you). An address your organisation has not published is NOT FOUND — including one another organisation published, because an address names a value and never authorises reading it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? address;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskAdoptIn &&
    other.address == address;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (address == null ? 0 : address!.hashCode);

  @override
  String toString() => 'RiskAdoptIn[address=$address]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    return json;
  }

  /// Returns a new [RiskAdoptIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskAdoptIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskAdoptIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskAdoptIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskAdoptIn(
        address: mapValueOfType<String>(json, r'address'),
      );
    }
    return null;
  }

  static List<RiskAdoptIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskAdoptIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskAdoptIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskAdoptIn> mapFromJson(dynamic json) {
    final map = <String, RiskAdoptIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskAdoptIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskAdoptIn-objects as value to a dart map
  static Map<String, List<RiskAdoptIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskAdoptIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskAdoptIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

