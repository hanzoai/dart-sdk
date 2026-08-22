//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskPublishOut {
  /// Returns a new [RiskPublishOut] instance.
  RiskPublishOut({
    this.minted,
    this.tenant,
    this.value,
  });
  /// Minted is false when your model was ALREADY published under this name and nothing was written. Publication is idempotent on the value itself, which is what a content address is for — publishing at every boundary costs nothing rather than being the cheapest way to fill a disk.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? minted;

  /// Tenant is whose history it entered.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tenant;

  /// Value is the published value: its name and what it is, never its masses.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RiskModelValue? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskPublishOut &&
    other.minted == minted &&
    other.tenant == tenant &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (minted == null ? 0 : minted!.hashCode) +
    (tenant == null ? 0 : tenant!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'RiskPublishOut[minted=$minted, tenant=$tenant, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.minted != null) {
      json[r'minted'] = this.minted;
    } else {
      json[r'minted'] = null;
    }
    if (this.tenant != null) {
      json[r'tenant'] = this.tenant;
    } else {
      json[r'tenant'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [RiskPublishOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskPublishOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskPublishOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskPublishOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskPublishOut(
        minted: mapValueOfType<bool>(json, r'minted'),
        tenant: mapValueOfType<String>(json, r'tenant'),
        value: RiskModelValue.fromJson(json[r'value']),
      );
    }
    return null;
  }

  static List<RiskPublishOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskPublishOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskPublishOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskPublishOut> mapFromJson(dynamic json) {
    final map = <String, RiskPublishOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskPublishOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskPublishOut-objects as value to a dart map
  static Map<String, List<RiskPublishOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskPublishOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskPublishOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

