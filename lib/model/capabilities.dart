//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Capabilities {
  /// Returns a new [Capabilities] instance.
  Capabilities({
    this.actions,
    this.dm,
    this.group,
    this.media,
    this.thread,
  });

  /// Actions is whether the transport renders an INTERACTIVE control natively, and it is the flag to read before composing one. The vocabulary is a closed kind-tagged union (envelope.go), exactly four kinds, each carrying only its own field plus an optional label:   command  — a bot command to run (`command`), rendered as a button that             invokes it.  url      — an external link (`url`), rendered as a link button.  select   — a menu (`options`, each a label and the value choosing it             returns), rendered as a picker.  approval — a reference to an approval request (`approval.id`), rendered as             approve/deny controls bound to that id.  False on all four transports this pass, and nothing refuses a send for it: actions are accepted, validated per kind, and flattened by renderText to one line each after the text — `[label] command`, `[label] url`, `[label] opt | opt`, `[label] approval requested: <id>`. So a caller that needs a real control must read this flag and degrade itself; a caller that only needs the choice communicated can send actions and take the text form.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? actions;

  /// DM is whether the transport carries a DIRECT message at all. True for slack, teams and telegram. False for discord, honestly: that ingress is guild-scoped slash commands — an interaction without a guild id is refused at the door — so nothing ever arrives classified as a DM, no reply route is ever learned for one, and a send addressed at a Discord DM is refused 409.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? dm;

  /// Group is whether the transport carries multi-person rooms — a Discord guild channel, a Slack channel, a Teams channel or group chat, a Telegram group or supergroup. True on all four.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? group;

  /// Media is whether the transport renders an ATTACHMENT natively. False on all four this pass, and a send is not refused for it: renderText flattens each attachment to one `kind: url (mime)` line after the text rather than dropping it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? media;

  /// Thread is whether a reply can be threaded UNDER a specific message. True for slack alone: it is the only transport whose ingress reports a thread (thread_ts, published as the envelope's replyTo) and whose door posts back into it. Discord's replyTo makes an inline reply rather than a thread, Telegram's answers one message id, and Teams carries no reply target at all — a replyTo sent to it is ignored.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? thread;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Capabilities &&
    other.actions == actions &&
    other.dm == dm &&
    other.group == group &&
    other.media == media &&
    other.thread == thread;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (actions == null ? 0 : actions!.hashCode) +
    (dm == null ? 0 : dm!.hashCode) +
    (group == null ? 0 : group!.hashCode) +
    (media == null ? 0 : media!.hashCode) +
    (thread == null ? 0 : thread!.hashCode);

  @override
  String toString() => 'Capabilities[actions=$actions, dm=$dm, group=$group, media=$media, thread=$thread]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.actions != null) {
      json[r'actions'] = this.actions;
    } else {
      json[r'actions'] = null;
    }
    if (this.dm != null) {
      json[r'dm'] = this.dm;
    } else {
      json[r'dm'] = null;
    }
    if (this.group != null) {
      json[r'group'] = this.group;
    } else {
      json[r'group'] = null;
    }
    if (this.media != null) {
      json[r'media'] = this.media;
    } else {
      json[r'media'] = null;
    }
    if (this.thread != null) {
      json[r'thread'] = this.thread;
    } else {
      json[r'thread'] = null;
    }
    return json;
  }

  /// Returns a new [Capabilities] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Capabilities? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Capabilities[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Capabilities[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Capabilities(
        actions: mapValueOfType<bool>(json, r'actions'),
        dm: mapValueOfType<bool>(json, r'dm'),
        group: mapValueOfType<bool>(json, r'group'),
        media: mapValueOfType<bool>(json, r'media'),
        thread: mapValueOfType<bool>(json, r'thread'),
      );
    }
    return null;
  }

  static List<Capabilities> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Capabilities>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Capabilities.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Capabilities> mapFromJson(dynamic json) {
    final map = <String, Capabilities>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Capabilities.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Capabilities-objects as value to a dart map
  static Map<String, List<Capabilities>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Capabilities>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Capabilities.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

