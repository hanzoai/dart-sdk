//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class InboxView {
  /// Returns a new [InboxView] instance.
  InboxView({
    this.account,
    this.channel,
    this.createdAt,
    this.id,
    this.replyTo,
    this.roomId,
    this.roomKind,
    this.sender,
    this.senderUser,
    this.text,
  });

  /// Account is the lowercased external id of the org's connected account on that transport: the Discord guild id, the Slack team id, the Teams AAD tenant id, or the bound Telegram chat id. Informational only — the gate keys on (org, channel), never on the account.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? account;

  /// Channel is the transport this message arrived on — discord, slack, teams or telegram — and the `:channel` segment to reply through.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channel;

  /// CreatedAt is Unix SECONDS, stamped by the ingest goroutine when the message was accepted — not the transport's own send time. Rows are dropped 30 days after it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// ID is the store's row id, assigned on insert — SERVER-SET, and the cursor: pass a page's last id back as `since`. It rises with arrival order but is not contiguous, because one sequence is shared by every org in the store and a caller reads only its own rows.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// ReplyTo is the transport's reply target for this message: Slack's thread_ts, or the Telegram message id it arrived as. Send it back as the body's `replyTo` to answer in the SAME thread. Empty means the transport reported none — a top-level Slack message, and every Discord and Teams message, since neither carries one — and a reply then lands at the top level of the room.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? replyTo;

  /// RoomID is the conversation on the ORIGINATING transport, and the value to send back as `room.id`: a Discord channel snowflake, a Slack conversation id (D… IM, C… public channel, G… private or mpim), a Teams conversation id (19:…@thread.… for a channel or group chat, a:… for a personal chat), or a Telegram chat id in decimal (negative for a group, positive for a DM). It is stable for the life of the room, so every message from one conversation carries the same value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? roomId;

  /// RoomKind is how ingest classified the room: \"dm\", \"group\" or \"thread\". It decides which policy gated the message — dmPolicy for \"dm\", groupPolicy for BOTH \"group\" and \"thread\". Only Slack ever reports \"thread\"; Telegram's reply-to id becomes ReplyTo instead, and Discord's ingress is guild-scoped so its rooms are always \"group\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? roomKind;

  /// Sender is the TRANSPORT-NATIVE user id of whoever wrote the message — a Discord member.user.id, a Slack U… user id, a Teams aadObjectId (falling back to from.id), a Telegram from.id in decimal. Stable per person per transport, and the identity the gate keys on: an allow entry, an access-group member and a pairing approval all name exactly this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sender;

  /// SenderUser is the HANZO account subject that chat identity is linked to, resolved at ingest through the org's user link. Best-effort and omitted when absent: a person who never linked their chat account — or a link store that could not be read — leaves it empty and is never blocked for it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? senderUser;

  /// Text is the body as the transport delivered it, with the bot mention already stripped by the ingress adapter (on Discord it is the /hanzo prompt argument, since that ingress is slash commands only), truncated to 8 KiB on store. Inbound attachments are not stored — this is the whole of what was said.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxView &&
    other.account == account &&
    other.channel == channel &&
    other.createdAt == createdAt &&
    other.id == id &&
    other.replyTo == replyTo &&
    other.roomId == roomId &&
    other.roomKind == roomKind &&
    other.sender == sender &&
    other.senderUser == senderUser &&
    other.text == text;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (channel == null ? 0 : channel!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (replyTo == null ? 0 : replyTo!.hashCode) +
    (roomId == null ? 0 : roomId!.hashCode) +
    (roomKind == null ? 0 : roomKind!.hashCode) +
    (sender == null ? 0 : sender!.hashCode) +
    (senderUser == null ? 0 : senderUser!.hashCode) +
    (text == null ? 0 : text!.hashCode);

  @override
  String toString() => 'InboxView[account=$account, channel=$channel, createdAt=$createdAt, id=$id, replyTo=$replyTo, roomId=$roomId, roomKind=$roomKind, sender=$sender, senderUser=$senderUser, text=$text]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.channel != null) {
      json[r'channel'] = this.channel;
    } else {
      json[r'channel'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.replyTo != null) {
      json[r'replyTo'] = this.replyTo;
    } else {
      json[r'replyTo'] = null;
    }
    if (this.roomId != null) {
      json[r'roomId'] = this.roomId;
    } else {
      json[r'roomId'] = null;
    }
    if (this.roomKind != null) {
      json[r'roomKind'] = this.roomKind;
    } else {
      json[r'roomKind'] = null;
    }
    if (this.sender != null) {
      json[r'sender'] = this.sender;
    } else {
      json[r'sender'] = null;
    }
    if (this.senderUser != null) {
      json[r'senderUser'] = this.senderUser;
    } else {
      json[r'senderUser'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    return json;
  }

  /// Returns a new [InboxView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxView(
        account: mapValueOfType<String>(json, r'account'),
        channel: mapValueOfType<String>(json, r'channel'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        id: mapValueOfType<int>(json, r'id'),
        replyTo: mapValueOfType<String>(json, r'replyTo'),
        roomId: mapValueOfType<String>(json, r'roomId'),
        roomKind: mapValueOfType<String>(json, r'roomKind'),
        sender: mapValueOfType<String>(json, r'sender'),
        senderUser: mapValueOfType<String>(json, r'senderUser'),
        text: mapValueOfType<String>(json, r'text'),
      );
    }
    return null;
  }

  static List<InboxView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxView> mapFromJson(dynamic json) {
    final map = <String, InboxView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxView-objects as value to a dart map
  static Map<String, List<InboxView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

