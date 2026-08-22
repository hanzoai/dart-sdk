//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DomainView {
  /// Returns a new [DomainView] instance.
  DomainView({
    this.createdAt,
    this.detail,
    this.host,
    this.kind,
    this.primary,
    this.records = const [],
    this.status,
    this.url,
    this.verified,
  });
  /// CreatedAt is the unix second the custom claim was made.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// Detail says why a claim is still pending, in the resolver's own words.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? detail;

  /// Host is the hostname itself.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? host;

  /// Kind is `default`, `subtree` or `custom` — how the org came to own it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Primary marks the app's permanent default host.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? primary;

  /// Records are the DNS records to publish while a custom claim is pending.
  List<DnsRecord> records;

  /// Status is `live`, `provisioning`, `pending_deploy` or `pending`, derived from the operator CR and never fabricated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// URL is the host as an HTTPS address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  /// Verified is whether ownership is settled — always true for a host the org structurally owns.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? verified;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainView &&
    other.createdAt == createdAt &&
    other.detail == detail &&
    other.host == host &&
    other.kind == kind &&
    other.primary == primary &&
    _deepEquality.equals(other.records, records) &&
    other.status == status &&
    other.url == url &&
    other.verified == verified;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (detail == null ? 0 : detail!.hashCode) +
    (host == null ? 0 : host!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (primary == null ? 0 : primary!.hashCode) +
    (records.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (verified == null ? 0 : verified!.hashCode);

  @override
  String toString() => 'DomainView[createdAt=$createdAt, detail=$detail, host=$host, kind=$kind, primary=$primary, records=$records, status=$status, url=$url, verified=$verified]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.detail != null) {
      json[r'detail'] = this.detail;
    } else {
      json[r'detail'] = null;
    }
    if (this.host != null) {
      json[r'host'] = this.host;
    } else {
      json[r'host'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.primary != null) {
      json[r'primary'] = this.primary;
    } else {
      json[r'primary'] = null;
    }
      json[r'records'] = this.records;
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.verified != null) {
      json[r'verified'] = this.verified;
    } else {
      json[r'verified'] = null;
    }
    return json;
  }

  /// Returns a new [DomainView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DomainView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DomainView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DomainView(
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        detail: mapValueOfType<String>(json, r'detail'),
        host: mapValueOfType<String>(json, r'host'),
        kind: mapValueOfType<String>(json, r'kind'),
        primary: mapValueOfType<bool>(json, r'primary'),
        records: DnsRecord.listFromJson(json[r'records']),
        status: mapValueOfType<String>(json, r'status'),
        url: mapValueOfType<String>(json, r'url'),
        verified: mapValueOfType<bool>(json, r'verified'),
      );
    }
    return null;
  }

  static List<DomainView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainView> mapFromJson(dynamic json) {
    final map = <String, DomainView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainView-objects as value to a dart map
  static Map<String, List<DomainView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

