//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class MutateReq {
  /// Returns a new [MutateReq] instance.
  MutateReq({
    this.add = const [],
    this.remove = const [],
  });

  /// Add is the product ids to turn ON. Each must already be an ACTIVE entitlement of the org's plan, unless the caller is a platform super admin.
  List<String> add;

  /// Remove is the product ids to turn OFF. Disabling is never gated.
  List<String> remove;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MutateReq &&
    _deepEquality.equals(other.add, add) &&
    _deepEquality.equals(other.remove, remove);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (add.hashCode) +
    (remove.hashCode);

  @override
  String toString() => 'MutateReq[add=$add, remove=$remove]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'add'] = this.add;
      json[r'remove'] = this.remove;
    return json;
  }

  /// Returns a new [MutateReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MutateReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MutateReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MutateReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MutateReq(
        add: json[r'add'] is Iterable
            ? (json[r'add'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        remove: json[r'remove'] is Iterable
            ? (json[r'remove'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<MutateReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MutateReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MutateReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MutateReq> mapFromJson(dynamic json) {
    final map = <String, MutateReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MutateReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MutateReq-objects as value to a dart map
  static Map<String, List<MutateReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MutateReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MutateReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

