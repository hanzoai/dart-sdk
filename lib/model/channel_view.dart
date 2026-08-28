//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ChannelView {
  /// Returns a new [ChannelView] instance.
  ChannelView({
    this.account,
    this.accountLabel,
    this.capabilities,
    this.connected,
    this.dmPolicy,
    this.groupPolicy,
    this.id,
    this.pendingPairing,
  });
  /// Account is the id-shaped fact about that connection: the lowercased external id integrations custodies for it — a Discord guild id, a Slack team (workspace) id, a Teams AAD tenant id, or the Telegram chat the org bound. Empty when not connected. Informational: the access policy keys on (org, channel), so exactly one account is representable per pair.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? account;

  /// AccountLabel is the human label of that same account — the Discord guild name, the Slack team name, the Teams tenant name (falling back to the tenant id), the Telegram chat title. DISPLAY ONLY: never a key, and never swapped with Account, on any surface.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountLabel;

  /// Capabilities is what this transport renders natively — read it before composing a message that needs threading, media or interactive actions.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Capabilities? capabilities;

  /// Connected is whether integrations holds a connection for (this org, this transport) — whether someone finished its connect flow. False leaves Account and AccountLabel empty, and a send is then refused downstream rather than here: by the transport's own binding check (403 for a Telegram chat this org has not bound, 409 for a Discord or Teams room with no inbound-learned route), or on Slack by the absent per-org bot token, which surfaces as 502.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? connected;

  /// DMPolicy is how this org admits direct messages here: \"pairing\", \"allowlist\" or \"open\", defaulting to \"pairing\" when the org has never set one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dmPolicy;

  /// GroupPolicy is how this org admits group and thread rooms here: \"open\", \"allowlist\" or \"disabled\", defaulting to \"open\". Both policy fields come back EMPTY — rather than the listing failing — when the policy cannot be read; GET /v1/channels/allowlist carries the same two with the entries they consult.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? groupPolicy;

  /// ID is the fixed transport identifier — discord, slack, teams, telegram or whatsapp — and the value every route on this surface names a channel by, including the `:channel` segment of the send path. The listing is always in that order.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// PendingPairing counts the org's UNEXPIRED pairing requests on this channel: exactly the rows GET /v1/channels/pairing returns for it, one per person waiting on an admin. It never exceeds three — the pending cap per (org, channel) — and expired requests are not counted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pendingPairing;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChannelView &&
    other.account == account &&
    other.accountLabel == accountLabel &&
    other.capabilities == capabilities &&
    other.connected == connected &&
    other.dmPolicy == dmPolicy &&
    other.groupPolicy == groupPolicy &&
    other.id == id &&
    other.pendingPairing == pendingPairing;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (accountLabel == null ? 0 : accountLabel!.hashCode) +
    (capabilities == null ? 0 : capabilities!.hashCode) +
    (connected == null ? 0 : connected!.hashCode) +
    (dmPolicy == null ? 0 : dmPolicy!.hashCode) +
    (groupPolicy == null ? 0 : groupPolicy!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (pendingPairing == null ? 0 : pendingPairing!.hashCode);

  @override
  String toString() => 'ChannelView[account=$account, accountLabel=$accountLabel, capabilities=$capabilities, connected=$connected, dmPolicy=$dmPolicy, groupPolicy=$groupPolicy, id=$id, pendingPairing=$pendingPairing]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.accountLabel != null) {
      json[r'accountLabel'] = this.accountLabel;
    } else {
      json[r'accountLabel'] = null;
    }
    if (this.capabilities != null) {
      json[r'capabilities'] = this.capabilities;
    } else {
      json[r'capabilities'] = null;
    }
    if (this.connected != null) {
      json[r'connected'] = this.connected;
    } else {
      json[r'connected'] = null;
    }
    if (this.dmPolicy != null) {
      json[r'dmPolicy'] = this.dmPolicy;
    } else {
      json[r'dmPolicy'] = null;
    }
    if (this.groupPolicy != null) {
      json[r'groupPolicy'] = this.groupPolicy;
    } else {
      json[r'groupPolicy'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.pendingPairing != null) {
      json[r'pendingPairing'] = this.pendingPairing;
    } else {
      json[r'pendingPairing'] = null;
    }
    return json;
  }

  /// Returns a new [ChannelView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChannelView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ChannelView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ChannelView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChannelView(
        account: mapValueOfType<String>(json, r'account'),
        accountLabel: mapValueOfType<String>(json, r'accountLabel'),
        capabilities: Capabilities.fromJson(json[r'capabilities']),
        connected: mapValueOfType<bool>(json, r'connected'),
        dmPolicy: mapValueOfType<String>(json, r'dmPolicy'),
        groupPolicy: mapValueOfType<String>(json, r'groupPolicy'),
        id: mapValueOfType<String>(json, r'id'),
        pendingPairing: mapValueOfType<int>(json, r'pendingPairing'),
      );
    }
    return null;
  }

  static List<ChannelView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChannelView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChannelView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChannelView> mapFromJson(dynamic json) {
    final map = <String, ChannelView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChannelView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChannelView-objects as value to a dart map
  static Map<String, List<ChannelView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChannelView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChannelView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

