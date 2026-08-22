//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LastEventView {
  /// Returns a new [LastEventView] instance.
  LastEventView({
    this.actor,
    this.at,
    this.kind,
    this.preview,
    this.seq,
  });
  /// Actor is who produced the turn, defaulted to the calling principal when the writer named nobody.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? actor;

  /// At is when the turn was recorded, RFC 3339 in UTC to the second.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? at;

  /// Kind is what the turn was, from the log's closed six: message, tool-call, spawn, log, status, control.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Preview is the first 240 bytes of the event's payload, cut without regard for the JSON inside it — it is a string to SHOW, never a value to parse. Read the detail or the stream for the whole payload.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? preview;

  /// Seq is that event's position in the session's log — monotonic from 1, per session. A reader holding it can ask the detail or stream reads for everything after it, so this doubles as the list's resume cursor.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? seq;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LastEventView &&
    other.actor == actor &&
    other.at == at &&
    other.kind == kind &&
    other.preview == preview &&
    other.seq == seq;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (actor == null ? 0 : actor!.hashCode) +
    (at == null ? 0 : at!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (preview == null ? 0 : preview!.hashCode) +
    (seq == null ? 0 : seq!.hashCode);

  @override
  String toString() => 'LastEventView[actor=$actor, at=$at, kind=$kind, preview=$preview, seq=$seq]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.actor != null) {
      json[r'actor'] = this.actor;
    } else {
      json[r'actor'] = null;
    }
    if (this.at != null) {
      json[r'at'] = this.at;
    } else {
      json[r'at'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.preview != null) {
      json[r'preview'] = this.preview;
    } else {
      json[r'preview'] = null;
    }
    if (this.seq != null) {
      json[r'seq'] = this.seq;
    } else {
      json[r'seq'] = null;
    }
    return json;
  }

  /// Returns a new [LastEventView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LastEventView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LastEventView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LastEventView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LastEventView(
        actor: mapValueOfType<String>(json, r'actor'),
        at: mapValueOfType<String>(json, r'at'),
        kind: mapValueOfType<String>(json, r'kind'),
        preview: mapValueOfType<String>(json, r'preview'),
        seq: mapValueOfType<int>(json, r'seq'),
      );
    }
    return null;
  }

  static List<LastEventView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LastEventView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LastEventView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LastEventView> mapFromJson(dynamic json) {
    final map = <String, LastEventView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LastEventView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LastEventView-objects as value to a dart map
  static Map<String, List<LastEventView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LastEventView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LastEventView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

