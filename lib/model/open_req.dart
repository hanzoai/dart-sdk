//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class OpenReq {
  /// Returns a new [OpenReq] instance.
  OpenReq({
    this.base_,
    this.body,
    this.head,
    this.name,
    this.title,
  });
  /// Base is the branch the work is proposed INTO, by short name. Defaults to the repo's default branch, which is where a proposal goes when nobody says otherwise.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? base_;

  /// Body is the longer description. Optional.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? body;

  /// Head is the branch holding the work, by short name (agent/fix-503). Required, and must already exist.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? head;

  /// Name is the repo the proposal belongs to, from the :name path segment.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Title is the one-line summary of what is being proposed. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OpenReq &&
    other.base_ == base_ &&
    other.body == body &&
    other.head == head &&
    other.name == name &&
    other.title == title;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (base_ == null ? 0 : base_!.hashCode) +
    (body == null ? 0 : body!.hashCode) +
    (head == null ? 0 : head!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (title == null ? 0 : title!.hashCode);

  @override
  String toString() => 'OpenReq[base_=$base_, body=$body, head=$head, name=$name, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.base_ != null) {
      json[r'base'] = this.base_;
    } else {
      json[r'base'] = null;
    }
    if (this.body != null) {
      json[r'body'] = this.body;
    } else {
      json[r'body'] = null;
    }
    if (this.head != null) {
      json[r'head'] = this.head;
    } else {
      json[r'head'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    return json;
  }

  /// Returns a new [OpenReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OpenReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OpenReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OpenReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OpenReq(
        base_: mapValueOfType<String>(json, r'base'),
        body: mapValueOfType<String>(json, r'body'),
        head: mapValueOfType<String>(json, r'head'),
        name: mapValueOfType<String>(json, r'name'),
        title: mapValueOfType<String>(json, r'title'),
      );
    }
    return null;
  }

  static List<OpenReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpenReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpenReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OpenReq> mapFromJson(dynamic json) {
    final map = <String, OpenReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OpenReq-objects as value to a dart map
  static Map<String, List<OpenReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OpenReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OpenReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

