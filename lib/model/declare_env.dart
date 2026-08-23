//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DeclareEnv {
  /// Returns a new [DeclareEnv] instance.
  DeclareEnv({
    this.name,
    this.public,
    this.value,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Public marks a value that may be WRITTEN INTO GIT. Absent, it is false, and the value is sealed into KMS and referenced.  ★ THE DEFAULT IS SECRET, AND THE POLARITY IS THE WHOLE DESIGN. This lane's output is a commit in a repository replicated to every clone, so a misclassification is not a bug to fix later — it is a credential published forever. A heuristic classifier fails in both directions; what decides is which direction it fails IN. Seal-by-default makes the failure mode \"an operator cannot read back a config value\", which is a support ticket. Classify-by-shape made it \"a password is in git history\", which is an incident with no rollback.  It is also the only rule that needs no list. PGPASSWORD, *_PW, a symbol-rich password, a KUBECONFIG, a base32 MFA seed — every one of them slipped a shape classifier, and each miss was a different reason. There is no reason left when the default is to seal.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? public;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeclareEnv &&
    other.name == name &&
    other.public == public &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (public == null ? 0 : public!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'DeclareEnv[name=$name, public=$public, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.public != null) {
      json[r'public'] = this.public;
    } else {
      json[r'public'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [DeclareEnv] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeclareEnv? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeclareEnv[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeclareEnv[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeclareEnv(
        name: mapValueOfType<String>(json, r'name'),
        public: mapValueOfType<bool>(json, r'public'),
        value: mapValueOfType<String>(json, r'value'),
      );
    }
    return null;
  }

  static List<DeclareEnv> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeclareEnv>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeclareEnv.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeclareEnv> mapFromJson(dynamic json) {
    final map = <String, DeclareEnv>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeclareEnv.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeclareEnv-objects as value to a dart map
  static Map<String, List<DeclareEnv>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeclareEnv>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeclareEnv.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

