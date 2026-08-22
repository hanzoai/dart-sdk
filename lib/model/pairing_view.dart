//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PairingView {
  /// Returns a new [PairingView] instance.
  PairingView({
    this.channel,
    this.code,
    this.createdAt,
    this.lastSeen,
    this.sender,
  });
  /// Channel is the transport the request arrived on — discord, slack, teams or telegram — and half of what approval names. The cap of three unapproved requests applies per (org, channel); while it is full no further code is minted until one is approved or expires.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channel;

  /// Code is the CAPABILITY that authorises the approval: eight characters from a 32-symbol uppercase alphabet (A-Z0-9 minus the confusables 0, O, 1 and I), minted with crypto/rand and also sent to the requester in chat. An org admin passes it with the channel to POST /v1/channels/pairing/approve, which CONSUMES it — the request row is deleted, so a code approves once — and which takes org admin as well as the code. It lives ONE HOUR from CreatedAt; expired requests are not listed here, and approving one is a 404. It is shown on this admin surface and NEVER logged.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  /// CreatedAt is Unix SECONDS of FIRST contact: when the request was minted and the code sent. Expiry is measured from here and from nowhere else.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// LastSeen is Unix SECONDS of the MOST RECENT message from this sender while the request has been pending. It moves as they keep writing, which is how an admin tells a live request from an abandoned one — but it does not extend the hour and does not re-send the code, since one request sends exactly one chat reply.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lastSeen;

  /// Sender is the transport-native user id waiting for access — the same identity inbox messages carry. Approving mints a DM allow entry for exactly this value and nothing wider: pairing never grants group access.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sender;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PairingView &&
    other.channel == channel &&
    other.code == code &&
    other.createdAt == createdAt &&
    other.lastSeen == lastSeen &&
    other.sender == sender;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (channel == null ? 0 : channel!.hashCode) +
    (code == null ? 0 : code!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (lastSeen == null ? 0 : lastSeen!.hashCode) +
    (sender == null ? 0 : sender!.hashCode);

  @override
  String toString() => 'PairingView[channel=$channel, code=$code, createdAt=$createdAt, lastSeen=$lastSeen, sender=$sender]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.channel != null) {
      json[r'channel'] = this.channel;
    } else {
      json[r'channel'] = null;
    }
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.lastSeen != null) {
      json[r'lastSeen'] = this.lastSeen;
    } else {
      json[r'lastSeen'] = null;
    }
    if (this.sender != null) {
      json[r'sender'] = this.sender;
    } else {
      json[r'sender'] = null;
    }
    return json;
  }

  /// Returns a new [PairingView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PairingView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PairingView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PairingView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PairingView(
        channel: mapValueOfType<String>(json, r'channel'),
        code: mapValueOfType<String>(json, r'code'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        lastSeen: mapValueOfType<int>(json, r'lastSeen'),
        sender: mapValueOfType<String>(json, r'sender'),
      );
    }
    return null;
  }

  static List<PairingView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PairingView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PairingView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PairingView> mapFromJson(dynamic json) {
    final map = <String, PairingView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PairingView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PairingView-objects as value to a dart map
  static Map<String, List<PairingView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PairingView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PairingView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

