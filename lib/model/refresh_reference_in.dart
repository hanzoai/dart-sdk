//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RefreshReferenceIn {
  /// Returns a new [RefreshReferenceIn] instance.
  RefreshReferenceIn({
    this.force,
    this.receipts = const [],
    this.set_,
  });

  /// Force accepts a take whose size moved past the change bound. A publisher serving a tenth or ten times its previous list is refused by default and the previous version is left standing; this is the operator saying the change is real. It cannot make an empty, truncated or unparseable take land — those are errors, not magnitudes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? force;

  /// Receipts are supplied by the component that holds the membership, for a set of kind attest. They are refused on any other kind, and a set of kind attest is refused without them: this plane never invents a freshness it did not observe.
  List<ReferenceReceipt> receipts;

  /// Set is the set to refresh.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? set_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RefreshReferenceIn &&
    other.force == force &&
    _deepEquality.equals(other.receipts, receipts) &&
    other.set_ == set_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (force == null ? 0 : force!.hashCode) +
    (receipts.hashCode) +
    (set_ == null ? 0 : set_!.hashCode);

  @override
  String toString() => 'RefreshReferenceIn[force=$force, receipts=$receipts, set_=$set_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.force != null) {
      json[r'force'] = this.force;
    } else {
      json[r'force'] = null;
    }
      json[r'receipts'] = this.receipts;
    if (this.set_ != null) {
      json[r'set'] = this.set_;
    } else {
      json[r'set'] = null;
    }
    return json;
  }

  /// Returns a new [RefreshReferenceIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RefreshReferenceIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RefreshReferenceIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RefreshReferenceIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RefreshReferenceIn(
        force: mapValueOfType<bool>(json, r'force'),
        receipts: ReferenceReceipt.listFromJson(json[r'receipts']),
        set_: mapValueOfType<String>(json, r'set'),
      );
    }
    return null;
  }

  static List<RefreshReferenceIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RefreshReferenceIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefreshReferenceIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RefreshReferenceIn> mapFromJson(dynamic json) {
    final map = <String, RefreshReferenceIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RefreshReferenceIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RefreshReferenceIn-objects as value to a dart map
  static Map<String, List<RefreshReferenceIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RefreshReferenceIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RefreshReferenceIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

