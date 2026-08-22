//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ChannelMetric {
  /// Returns a new [ChannelMetric] instance.
  ChannelMetric({
    this.externalId,
    this.kind,
    this.platform,
    this.spendCents,
    this.spendError,
    this.status,
  });
  /// ExternalID is the provider-side id of the execution the spend belongs to. Absent until the channel has launched.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  /// Kind is which channel this row is: paid, organic or email. It is also the row's identity — a campaign carries at most one channel per kind.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Platform is the provider the spend was read from: meta, google, x, instagram, or the email provider.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? platform;

  /// SpendCents is what the provider itself reports this channel spent, in CENTS. 0 when the channel never launched, when no executor is wired for it, or when the read failed — SpendError tells the last case apart from a genuine zero.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? spendCents;

  /// SpendError is why this channel's spend could not be read (connector not connected, provider error), as one secret-free line. Present only on failure; the campaign total then simply omits this channel rather than failing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? spendError;

  /// Status is the channel's launch state on the campaign — pending, live, paused, failed or unavailable. Only a live channel is asked for its spend at all.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChannelMetric &&
    other.externalId == externalId &&
    other.kind == kind &&
    other.platform == platform &&
    other.spendCents == spendCents &&
    other.spendError == spendError &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (externalId == null ? 0 : externalId!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (platform == null ? 0 : platform!.hashCode) +
    (spendCents == null ? 0 : spendCents!.hashCode) +
    (spendError == null ? 0 : spendError!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'ChannelMetric[externalId=$externalId, kind=$kind, platform=$platform, spendCents=$spendCents, spendError=$spendError, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.spendCents != null) {
      json[r'spendCents'] = this.spendCents;
    } else {
      json[r'spendCents'] = null;
    }
    if (this.spendError != null) {
      json[r'spendError'] = this.spendError;
    } else {
      json[r'spendError'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [ChannelMetric] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChannelMetric? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ChannelMetric[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ChannelMetric[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChannelMetric(
        externalId: mapValueOfType<String>(json, r'externalId'),
        kind: mapValueOfType<String>(json, r'kind'),
        platform: mapValueOfType<String>(json, r'platform'),
        spendCents: mapValueOfType<int>(json, r'spendCents'),
        spendError: mapValueOfType<String>(json, r'spendError'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<ChannelMetric> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChannelMetric>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChannelMetric.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChannelMetric> mapFromJson(dynamic json) {
    final map = <String, ChannelMetric>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChannelMetric.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChannelMetric-objects as value to a dart map
  static Map<String, List<ChannelMetric>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChannelMetric>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChannelMetric.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

