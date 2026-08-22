//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CollabPayload {
  /// Returns a new [CollabPayload] instance.
  CollabPayload({
    this.content = const {},
    this.source_,
    this.updates = const {},
  });
  /// Content maps a document field to its ProseMirror markup JSON.
  Map<String, String> content;

  /// Source is the blob ref a getContent reads the snapshot from. Absent means there is no snapshot to read, which answers empty content.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Updates carries, per field, a base64 Y.js state update encoding the SAME markup — the front computes it (markupToYDoc → encodeStateAsUpdate) so a createContent seeds the live-editing lane's update log, not just the snapshot blob. Without it a dialog-created description is invisible in the collaborative editor, which replays the ydoc log, never the snapshot.
  Map<String, String> updates;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CollabPayload &&
    _deepEquality.equals(other.content, content) &&
    other.source_ == source_ &&
    _deepEquality.equals(other.updates, updates);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (content.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (updates.hashCode);

  @override
  String toString() => 'CollabPayload[content=$content, source_=$source_, updates=$updates]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'content'] = this.content;
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
      json[r'updates'] = this.updates;
    return json;
  }

  /// Returns a new [CollabPayload] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CollabPayload? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CollabPayload[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CollabPayload[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CollabPayload(
        content: mapCastOfType<String, String>(json, r'content') ?? const {},
        source_: mapValueOfType<String>(json, r'source'),
        updates: mapCastOfType<String, String>(json, r'updates') ?? const {},
      );
    }
    return null;
  }

  static List<CollabPayload> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CollabPayload>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CollabPayload.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CollabPayload> mapFromJson(dynamic json) {
    final map = <String, CollabPayload>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CollabPayload.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CollabPayload-objects as value to a dart map
  static Map<String, List<CollabPayload>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CollabPayload>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CollabPayload.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

