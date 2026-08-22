//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskPolicyOut {
  /// Returns a new [RiskPolicyOut] instance.
  RiskPolicyOut({
    this.changes,
    this.disposed,
    this.history = const [],
    this.retained,
    this.version,
    this.window,
  });
  /// Changes is how many DISTINCT regimes may be adopted per Window. A restatement identical to the regime in force mints no version and is not counted against it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? changes;

  /// Disposed is how many versions retention has taken. It is NOT a silence: a history bounded on disk must say what it no longer holds, because a decision citing a disposed version can no longer be reconstructed from this record.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? disposed;

  /// History is the retained versions, newest first.
  List<RiskPolicyVersion> history;

  /// Retained is how many versions this organisation's history holds at most, derived from the byte budget its rows are a multiple of.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? retained;

  /// Version is the version in force — the one every score currently cites. Zero means no regime has ever been stated and the default posture, shadow, is in force.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? version;

  /// Window is the period Changes is measured over.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? window;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskPolicyOut &&
    other.changes == changes &&
    other.disposed == disposed &&
    _deepEquality.equals(other.history, history) &&
    other.retained == retained &&
    other.version == version &&
    other.window == window;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (changes == null ? 0 : changes!.hashCode) +
    (disposed == null ? 0 : disposed!.hashCode) +
    (history.hashCode) +
    (retained == null ? 0 : retained!.hashCode) +
    (version == null ? 0 : version!.hashCode) +
    (window == null ? 0 : window!.hashCode);

  @override
  String toString() => 'RiskPolicyOut[changes=$changes, disposed=$disposed, history=$history, retained=$retained, version=$version, window=$window]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.changes != null) {
      json[r'changes'] = this.changes;
    } else {
      json[r'changes'] = null;
    }
    if (this.disposed != null) {
      json[r'disposed'] = this.disposed;
    } else {
      json[r'disposed'] = null;
    }
      json[r'history'] = this.history;
    if (this.retained != null) {
      json[r'retained'] = this.retained;
    } else {
      json[r'retained'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    if (this.window != null) {
      json[r'window'] = this.window;
    } else {
      json[r'window'] = null;
    }
    return json;
  }

  /// Returns a new [RiskPolicyOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskPolicyOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskPolicyOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskPolicyOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskPolicyOut(
        changes: mapValueOfType<int>(json, r'changes'),
        disposed: mapValueOfType<int>(json, r'disposed'),
        history: RiskPolicyVersion.listFromJson(json[r'history']),
        retained: mapValueOfType<int>(json, r'retained'),
        version: mapValueOfType<int>(json, r'version'),
        window: mapValueOfType<String>(json, r'window'),
      );
    }
    return null;
  }

  static List<RiskPolicyOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskPolicyOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskPolicyOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskPolicyOut> mapFromJson(dynamic json) {
    final map = <String, RiskPolicyOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskPolicyOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskPolicyOut-objects as value to a dart map
  static Map<String, List<RiskPolicyOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskPolicyOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskPolicyOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

