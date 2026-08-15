//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ChannelSpec {
  /// Returns a new [ChannelSpec] instance.
  ChannelSpec({
    this.account,
    this.detail,
    this.externalId,
    this.kind,
    this.platform,
    this.status,
  });

  /// Account is the provider account this channel runs under: an ad-account, a page or a mailing-list id. An executor may replace it at launch with the account it actually used.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? account;

  /// Detail is the last outcome in one secret-free line — the failure reason, or what the executor reported. Absent when there is nothing to explain.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? detail;

  /// ExternalID is the provider-side id of the running execution, recorded by the orchestrator at launch and handed back verbatim to read spend or to pause. Server-owned and absent until this channel has launched; anything a caller sends for it is dropped.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  /// Kind is the channel and the identity a campaign holds at most one of: paid, organic or email. It picks the executor the launch fans out to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Platform is the provider within the kind — meta, google, x, instagram, or the email provider.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? platform;

  /// Status is this channel's own launch outcome, not the campaign's: pending (added, never launched), live, paused, failed (Detail says why) or unavailable (no executor wired on this deployment). Server-owned — a caller can never assert it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChannelSpec &&
    other.account == account &&
    other.detail == detail &&
    other.externalId == externalId &&
    other.kind == kind &&
    other.platform == platform &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (detail == null ? 0 : detail!.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (platform == null ? 0 : platform!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'ChannelSpec[account=$account, detail=$detail, externalId=$externalId, kind=$kind, platform=$platform, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.detail != null) {
      json[r'detail'] = this.detail;
    } else {
      json[r'detail'] = null;
    }
    if (this.externalId != null) {
      json[r'externalId'] = this.externalId;
    } else {
      json[r'externalId'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.platform != null) {
      json[r'platform'] = this.platform;
    } else {
      json[r'platform'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [ChannelSpec] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChannelSpec? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ChannelSpec[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ChannelSpec[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChannelSpec(
        account: mapValueOfType<String>(json, r'account'),
        detail: mapValueOfType<String>(json, r'detail'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        kind: mapValueOfType<String>(json, r'kind'),
        platform: mapValueOfType<String>(json, r'platform'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<ChannelSpec> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChannelSpec>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChannelSpec.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChannelSpec> mapFromJson(dynamic json) {
    final map = <String, ChannelSpec>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChannelSpec.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChannelSpec-objects as value to a dart map
  static Map<String, List<ChannelSpec>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChannelSpec>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChannelSpec.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

