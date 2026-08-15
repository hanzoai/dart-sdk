//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PatchSessionIn {
  /// Returns a new [PatchSessionIn] instance.
  PatchSessionIn({
    this.cwd,
    this.id,
    this.project,
    this.published,
    this.status,
    this.target,
    this.terminal,
    this.title,
  });

  /// Cwd is where the session is working NOW.  It was write-once — captured at register and never again — which is right for a run that starts in a directory and stays there, and wrong for a linked shell, which is a place a person moves around in. The console showed the directory `hanzo link` happened to be run from and kept showing it after the shell had walked away, so the field answered \"which work is this\" with an answer that was true once. A pointer, so an unchanged path is an omitted field rather than a repeated write.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cwd;

  /// ID is the session to update, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Project tags the product this session built; Published is the author's decision to let anyone read the story (provenance.go). Both are pointers so \"absent\" and \"cleared\" are different requests.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? published;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Target re-dispatches a session to a run-target (the #48 association). \"\" detaches.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? target;

  /// Terminal publishes (or, with \"\", withdraws) the URL this session's live terminal can be watched at. A pointer so \"absent\" and \"withdrawn\" are different requests: a session that stops sharing must be able to say so.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? terminal;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchSessionIn &&
    other.cwd == cwd &&
    other.id == id &&
    other.project == project &&
    other.published == published &&
    other.status == status &&
    other.target == target &&
    other.terminal == terminal &&
    other.title == title;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cwd == null ? 0 : cwd!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (published == null ? 0 : published!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (target == null ? 0 : target!.hashCode) +
    (terminal == null ? 0 : terminal!.hashCode) +
    (title == null ? 0 : title!.hashCode);

  @override
  String toString() => 'PatchSessionIn[cwd=$cwd, id=$id, project=$project, published=$published, status=$status, target=$target, terminal=$terminal, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cwd != null) {
      json[r'cwd'] = this.cwd;
    } else {
      json[r'cwd'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    if (this.published != null) {
      json[r'published'] = this.published;
    } else {
      json[r'published'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.target != null) {
      json[r'target'] = this.target;
    } else {
      json[r'target'] = null;
    }
    if (this.terminal != null) {
      json[r'terminal'] = this.terminal;
    } else {
      json[r'terminal'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    return json;
  }

  /// Returns a new [PatchSessionIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchSessionIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchSessionIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchSessionIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchSessionIn(
        cwd: mapValueOfType<String>(json, r'cwd'),
        id: mapValueOfType<String>(json, r'id'),
        project: mapValueOfType<String>(json, r'project'),
        published: mapValueOfType<bool>(json, r'published'),
        status: mapValueOfType<String>(json, r'status'),
        target: mapValueOfType<String>(json, r'target'),
        terminal: mapValueOfType<String>(json, r'terminal'),
        title: mapValueOfType<String>(json, r'title'),
      );
    }
    return null;
  }

  static List<PatchSessionIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchSessionIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchSessionIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchSessionIn> mapFromJson(dynamic json) {
    final map = <String, PatchSessionIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchSessionIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchSessionIn-objects as value to a dart map
  static Map<String, List<PatchSessionIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchSessionIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchSessionIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

