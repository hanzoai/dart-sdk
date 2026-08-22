//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RenewReq {
  /// Returns a new [RenewReq] instance.
  RenewReq({
    required this.domain,
    this.years,
  });
  /// Domain is the name to extend. It is required, and the caller's org must hold it.
  String domain;

  /// Years is how much longer to hold it, defaulting to 1.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? years;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RenewReq &&
    other.domain == domain &&
    other.years == years;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domain.hashCode) +
    (years == null ? 0 : years!.hashCode);

  @override
  String toString() => 'RenewReq[domain=$domain, years=$years]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'domain'] = this.domain;
    if (this.years != null) {
      json[r'years'] = this.years;
    } else {
      json[r'years'] = null;
    }
    return json;
  }

  /// Returns a new [RenewReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RenewReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RenewReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RenewReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RenewReq(
        domain: mapValueOfType<String>(json, r'domain')!,
        years: mapValueOfType<int>(json, r'years'),
      );
    }
    return null;
  }

  static List<RenewReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RenewReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RenewReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RenewReq> mapFromJson(dynamic json) {
    final map = <String, RenewReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RenewReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RenewReq-objects as value to a dart map
  static Map<String, List<RenewReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RenewReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RenewReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'domain',
  };
}

