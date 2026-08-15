//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProviderPatchIn {
  /// Returns a new [ProviderPatchIn] instance.
  ProviderPatchIn({
    this.beta,
    this.betaOrgs = const [],
    this.enabled,
    this.name,
    this.overrides,
    this.state,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? beta;

  List<String> betaOrgs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  /// Name is the provider the overlay belongs to, from the URL.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  Object? overrides;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProviderPatchIn &&
    other.beta == beta &&
    _deepEquality.equals(other.betaOrgs, betaOrgs) &&
    other.enabled == enabled &&
    other.name == name &&
    other.overrides == overrides &&
    other.state == state;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (beta == null ? 0 : beta!.hashCode) +
    (betaOrgs.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (overrides == null ? 0 : overrides!.hashCode) +
    (state == null ? 0 : state!.hashCode);

  @override
  String toString() => 'ProviderPatchIn[beta=$beta, betaOrgs=$betaOrgs, enabled=$enabled, name=$name, overrides=$overrides, state=$state]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.beta != null) {
      json[r'beta'] = this.beta;
    } else {
      json[r'beta'] = null;
    }
      json[r'betaOrgs'] = this.betaOrgs;
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.overrides != null) {
      json[r'overrides'] = this.overrides;
    } else {
      json[r'overrides'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    return json;
  }

  /// Returns a new [ProviderPatchIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProviderPatchIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProviderPatchIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProviderPatchIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProviderPatchIn(
        beta: mapValueOfType<bool>(json, r'beta'),
        betaOrgs: json[r'betaOrgs'] is Iterable
            ? (json[r'betaOrgs'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        enabled: mapValueOfType<bool>(json, r'enabled'),
        name: mapValueOfType<String>(json, r'name'),
        overrides: mapValueOfType<Object>(json, r'overrides'),
        state: mapValueOfType<String>(json, r'state'),
      );
    }
    return null;
  }

  static List<ProviderPatchIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProviderPatchIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProviderPatchIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProviderPatchIn> mapFromJson(dynamic json) {
    final map = <String, ProviderPatchIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProviderPatchIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProviderPatchIn-objects as value to a dart map
  static Map<String, List<ProviderPatchIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProviderPatchIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProviderPatchIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

