//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Survey {
  /// Returns a new [Survey] instance.
  Survey({
    this.carries = const [],
    this.chain,
    this.reach,
    this.rpc,
  });
  /// Carries is all four where the node answered and `null` where it did not. It is never a short list: a partial read reporting three would let a reader count them and conclude the chain is missing one.
  List<Precompile> carries;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? chain;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Reach? reach;

  /// RPC is the endpoint that was asked, so an answer names where it came from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rpc;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Survey &&
    _deepEquality.equals(other.carries, carries) &&
    other.chain == chain &&
    other.reach == reach &&
    other.rpc == rpc;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (carries.hashCode) +
    (chain == null ? 0 : chain!.hashCode) +
    (reach == null ? 0 : reach!.hashCode) +
    (rpc == null ? 0 : rpc!.hashCode);

  @override
  String toString() => 'Survey[carries=$carries, chain=$chain, reach=$reach, rpc=$rpc]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'carries'] = this.carries;
    if (this.chain != null) {
      json[r'chain'] = this.chain;
    } else {
      json[r'chain'] = null;
    }
    if (this.reach != null) {
      json[r'reach'] = this.reach;
    } else {
      json[r'reach'] = null;
    }
    if (this.rpc != null) {
      json[r'rpc'] = this.rpc;
    } else {
      json[r'rpc'] = null;
    }
    return json;
  }

  /// Returns a new [Survey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Survey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Survey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Survey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Survey(
        carries: Precompile.listFromJson(json[r'carries']),
        chain: mapValueOfType<String>(json, r'chain'),
        reach: Reach.fromJson(json[r'reach']),
        rpc: mapValueOfType<String>(json, r'rpc'),
      );
    }
    return null;
  }

  static List<Survey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Survey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Survey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Survey> mapFromJson(dynamic json) {
    final map = <String, Survey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Survey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Survey-objects as value to a dart map
  static Map<String, List<Survey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Survey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Survey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

