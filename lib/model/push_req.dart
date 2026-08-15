//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PushReq {
  /// Returns a new [PushReq] instance.
  PushReq({
    this.branch,
    this.files = const [],
    this.message,
    this.name,
  });

  /// Branch to advance; empty means \"main\". A fresh branch that is the repo's first also becomes HEAD.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? branch;

  /// Files are added to or overwritten on the branch tip — files already there and not listed SURVIVE. At least one, at most 5000, 32 MiB each.
  List<PushFile> files;

  /// Message is the commit message; empty gets a generated one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  /// Name is the repo to push into, from the :name path segment. It is CREATED on first push if it does not exist.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PushReq &&
    other.branch == branch &&
    _deepEquality.equals(other.files, files) &&
    other.message == message &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (branch == null ? 0 : branch!.hashCode) +
    (files.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'PushReq[branch=$branch, files=$files, message=$message, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.branch != null) {
      json[r'branch'] = this.branch;
    } else {
      json[r'branch'] = null;
    }
      json[r'files'] = this.files;
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [PushReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PushReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PushReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PushReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PushReq(
        branch: mapValueOfType<String>(json, r'branch'),
        files: PushFile.listFromJson(json[r'files']),
        message: mapValueOfType<String>(json, r'message'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<PushReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PushReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PushReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PushReq> mapFromJson(dynamic json) {
    final map = <String, PushReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PushReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PushReq-objects as value to a dart map
  static Map<String, List<PushReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PushReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PushReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

