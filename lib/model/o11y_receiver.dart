//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yReceiver {
  /// Returns a new [O11yReceiver] instance.
  O11yReceiver({
    this.discordConfigs = const [],
    this.emailConfigs = const [],
    this.incidentioConfigs = const [],
    this.jiraConfigs = const [],
    this.mattermostConfigs = const [],
    this.msteamsConfigs = const [],
    this.msteamsv2Configs = const [],
    this.name,
    this.opsgenieConfigs = const [],
    this.pagerdutyConfigs = const [],
    this.pushoverConfigs = const [],
    this.rocketchatConfigs = const [],
    this.slackConfigs = const [],
    this.snsConfigs = const [],
    this.telegramConfigs = const [],
    this.victoropsConfigs = const [],
    this.webexConfigs = const [],
    this.webhookConfigs = const [],
    this.wechatConfigs = const [],
  });

  List<O11yDiscordConfig> discordConfigs;

  List<O11yEmailConfig> emailConfigs;

  List<O11yIncidentioConfig> incidentioConfigs;

  List<O11yJiraConfig> jiraConfigs;

  List<O11yMattermostConfig> mattermostConfigs;

  List<O11yMSTeamsConfig> msteamsConfigs;

  List<O11yMSTeamsV2Config> msteamsv2Configs;

  /// A unique identifier for this receiver.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  List<O11yOpsGenieConfig> opsgenieConfigs;

  List<O11yPagerdutyConfig> pagerdutyConfigs;

  List<O11yPushoverConfig> pushoverConfigs;

  List<O11yRocketchatConfig> rocketchatConfigs;

  List<O11ySlackConfig> slackConfigs;

  List<O11ySNSConfig> snsConfigs;

  List<O11yTelegramConfig> telegramConfigs;

  List<O11yVictorOpsConfig> victoropsConfigs;

  List<O11yWebexConfig> webexConfigs;

  List<O11yWebhookConfig> webhookConfigs;

  List<O11yWechatConfig> wechatConfigs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yReceiver &&
    _deepEquality.equals(other.discordConfigs, discordConfigs) &&
    _deepEquality.equals(other.emailConfigs, emailConfigs) &&
    _deepEquality.equals(other.incidentioConfigs, incidentioConfigs) &&
    _deepEquality.equals(other.jiraConfigs, jiraConfigs) &&
    _deepEquality.equals(other.mattermostConfigs, mattermostConfigs) &&
    _deepEquality.equals(other.msteamsConfigs, msteamsConfigs) &&
    _deepEquality.equals(other.msteamsv2Configs, msteamsv2Configs) &&
    other.name == name &&
    _deepEquality.equals(other.opsgenieConfigs, opsgenieConfigs) &&
    _deepEquality.equals(other.pagerdutyConfigs, pagerdutyConfigs) &&
    _deepEquality.equals(other.pushoverConfigs, pushoverConfigs) &&
    _deepEquality.equals(other.rocketchatConfigs, rocketchatConfigs) &&
    _deepEquality.equals(other.slackConfigs, slackConfigs) &&
    _deepEquality.equals(other.snsConfigs, snsConfigs) &&
    _deepEquality.equals(other.telegramConfigs, telegramConfigs) &&
    _deepEquality.equals(other.victoropsConfigs, victoropsConfigs) &&
    _deepEquality.equals(other.webexConfigs, webexConfigs) &&
    _deepEquality.equals(other.webhookConfigs, webhookConfigs) &&
    _deepEquality.equals(other.wechatConfigs, wechatConfigs);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (discordConfigs.hashCode) +
    (emailConfigs.hashCode) +
    (incidentioConfigs.hashCode) +
    (jiraConfigs.hashCode) +
    (mattermostConfigs.hashCode) +
    (msteamsConfigs.hashCode) +
    (msteamsv2Configs.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (opsgenieConfigs.hashCode) +
    (pagerdutyConfigs.hashCode) +
    (pushoverConfigs.hashCode) +
    (rocketchatConfigs.hashCode) +
    (slackConfigs.hashCode) +
    (snsConfigs.hashCode) +
    (telegramConfigs.hashCode) +
    (victoropsConfigs.hashCode) +
    (webexConfigs.hashCode) +
    (webhookConfigs.hashCode) +
    (wechatConfigs.hashCode);

  @override
  String toString() => 'O11yReceiver[discordConfigs=$discordConfigs, emailConfigs=$emailConfigs, incidentioConfigs=$incidentioConfigs, jiraConfigs=$jiraConfigs, mattermostConfigs=$mattermostConfigs, msteamsConfigs=$msteamsConfigs, msteamsv2Configs=$msteamsv2Configs, name=$name, opsgenieConfigs=$opsgenieConfigs, pagerdutyConfigs=$pagerdutyConfigs, pushoverConfigs=$pushoverConfigs, rocketchatConfigs=$rocketchatConfigs, slackConfigs=$slackConfigs, snsConfigs=$snsConfigs, telegramConfigs=$telegramConfigs, victoropsConfigs=$victoropsConfigs, webexConfigs=$webexConfigs, webhookConfigs=$webhookConfigs, wechatConfigs=$wechatConfigs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'discord_configs'] = this.discordConfigs;
      json[r'email_configs'] = this.emailConfigs;
      json[r'incidentio_configs'] = this.incidentioConfigs;
      json[r'jira_configs'] = this.jiraConfigs;
      json[r'mattermost_configs'] = this.mattermostConfigs;
      json[r'msteams_configs'] = this.msteamsConfigs;
      json[r'msteamsv2_configs'] = this.msteamsv2Configs;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'opsgenie_configs'] = this.opsgenieConfigs;
      json[r'pagerduty_configs'] = this.pagerdutyConfigs;
      json[r'pushover_configs'] = this.pushoverConfigs;
      json[r'rocketchat_configs'] = this.rocketchatConfigs;
      json[r'slack_configs'] = this.slackConfigs;
      json[r'sns_configs'] = this.snsConfigs;
      json[r'telegram_configs'] = this.telegramConfigs;
      json[r'victorops_configs'] = this.victoropsConfigs;
      json[r'webex_configs'] = this.webexConfigs;
      json[r'webhook_configs'] = this.webhookConfigs;
      json[r'wechat_configs'] = this.wechatConfigs;
    return json;
  }

  /// Returns a new [O11yReceiver] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yReceiver? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yReceiver[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yReceiver[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yReceiver(
        discordConfigs: O11yDiscordConfig.listFromJson(json[r'discord_configs']),
        emailConfigs: O11yEmailConfig.listFromJson(json[r'email_configs']),
        incidentioConfigs: O11yIncidentioConfig.listFromJson(json[r'incidentio_configs']),
        jiraConfigs: O11yJiraConfig.listFromJson(json[r'jira_configs']),
        mattermostConfigs: O11yMattermostConfig.listFromJson(json[r'mattermost_configs']),
        msteamsConfigs: O11yMSTeamsConfig.listFromJson(json[r'msteams_configs']),
        msteamsv2Configs: O11yMSTeamsV2Config.listFromJson(json[r'msteamsv2_configs']),
        name: mapValueOfType<String>(json, r'name'),
        opsgenieConfigs: O11yOpsGenieConfig.listFromJson(json[r'opsgenie_configs']),
        pagerdutyConfigs: O11yPagerdutyConfig.listFromJson(json[r'pagerduty_configs']),
        pushoverConfigs: O11yPushoverConfig.listFromJson(json[r'pushover_configs']),
        rocketchatConfigs: O11yRocketchatConfig.listFromJson(json[r'rocketchat_configs']),
        slackConfigs: O11ySlackConfig.listFromJson(json[r'slack_configs']),
        snsConfigs: O11ySNSConfig.listFromJson(json[r'sns_configs']),
        telegramConfigs: O11yTelegramConfig.listFromJson(json[r'telegram_configs']),
        victoropsConfigs: O11yVictorOpsConfig.listFromJson(json[r'victorops_configs']),
        webexConfigs: O11yWebexConfig.listFromJson(json[r'webex_configs']),
        webhookConfigs: O11yWebhookConfig.listFromJson(json[r'webhook_configs']),
        wechatConfigs: O11yWechatConfig.listFromJson(json[r'wechat_configs']),
      );
    }
    return null;
  }

  static List<O11yReceiver> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yReceiver>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yReceiver.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yReceiver> mapFromJson(dynamic json) {
    final map = <String, O11yReceiver>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yReceiver.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yReceiver-objects as value to a dart map
  static Map<String, List<O11yReceiver>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yReceiver>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yReceiver.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

