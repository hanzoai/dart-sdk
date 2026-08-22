//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DestinationStatus {
  /// Returns a new [DestinationStatus] instance.
  DestinationStatus({
    this.account,
    this.category,
    this.config = const {},
    this.connected,
    this.enabled,
    this.fields = const [],
    this.live,
    this.name,
    this.pixel,
    this.platform,
    this.secrets = const [],
  });
  /// Account is the operator's own label for the connected account, as supplied on connect. Absent when unset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? account;

  /// groups the card: Analytics | Advertising
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  /// Config is the org's stored NON-SECRET configuration — the measurement/pixel ids keyed by DestinationField.Key. A secret is never in here; secrets live in KMS and only their names are published, in Secrets.
  Map<String, String> config;

  /// Connected is true when this org has a stored row for the platform — it has been configured here at least once. It says nothing about whether a credential still resolves; that is Live.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? connected;

  /// Enabled is whether the fan-out forwards to this destination. False on a destination that is connected but paused, and on one never connected.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  /// Fields are the non-secret inputs this platform needs, which the console card renders and the connect body fills.
  List<DestinationField> fields;

  /// Live is whether a credential resolves RIGHT NOW: a KMS-sealed secret for this org, else the integrations connection named by the platform's Fallback, else no credential needed at all (a public-ingest sink like Analytics). False on a connected destination whose secret has gone missing — Connected && !Live is exactly the \"reconnect me\" state.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? live;

  /// the platform's display name (\"Google Analytics 4\")
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Pixel is whether the hosted tag can inject a browser pixel for this platform, so a console offers a per-SITE pixel input for exactly these. False means the platform receives conversions server-side only, and an input would promise an injection that never happens. Derived from the tag's own map (event.BrowserTags), never restated — a second list is how a console offers a pixel nothing fires.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? pixel;

  /// the platform slug, and the path segment every route addresses it by
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? platform;

  /// Secrets are the KMS secret NAMES this platform custodies for the org — names only, never values. The connect body accepts each under its camelCase form.
  List<String> secrets;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DestinationStatus &&
    other.account == account &&
    other.category == category &&
    _deepEquality.equals(other.config, config) &&
    other.connected == connected &&
    other.enabled == enabled &&
    _deepEquality.equals(other.fields, fields) &&
    other.live == live &&
    other.name == name &&
    other.pixel == pixel &&
    other.platform == platform &&
    _deepEquality.equals(other.secrets, secrets);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (config.hashCode) +
    (connected == null ? 0 : connected!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode) +
    (fields.hashCode) +
    (live == null ? 0 : live!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (pixel == null ? 0 : pixel!.hashCode) +
    (platform == null ? 0 : platform!.hashCode) +
    (secrets.hashCode);

  @override
  String toString() => 'DestinationStatus[account=$account, category=$category, config=$config, connected=$connected, enabled=$enabled, fields=$fields, live=$live, name=$name, pixel=$pixel, platform=$platform, secrets=$secrets]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
      json[r'config'] = this.config;
    if (this.connected != null) {
      json[r'connected'] = this.connected;
    } else {
      json[r'connected'] = null;
    }
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
      json[r'fields'] = this.fields;
    if (this.live != null) {
      json[r'live'] = this.live;
    } else {
      json[r'live'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.pixel != null) {
      json[r'pixel'] = this.pixel;
    } else {
      json[r'pixel'] = null;
    }
    if (this.platform != null) {
      json[r'platform'] = this.platform;
    } else {
      json[r'platform'] = null;
    }
      json[r'secrets'] = this.secrets;
    return json;
  }

  /// Returns a new [DestinationStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DestinationStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DestinationStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DestinationStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DestinationStatus(
        account: mapValueOfType<String>(json, r'account'),
        category: mapValueOfType<String>(json, r'category'),
        config: mapCastOfType<String, String>(json, r'config') ?? const {},
        connected: mapValueOfType<bool>(json, r'connected'),
        enabled: mapValueOfType<bool>(json, r'enabled'),
        fields: DestinationField.listFromJson(json[r'fields']),
        live: mapValueOfType<bool>(json, r'live'),
        name: mapValueOfType<String>(json, r'name'),
        pixel: mapValueOfType<bool>(json, r'pixel'),
        platform: mapValueOfType<String>(json, r'platform'),
        secrets: json[r'secrets'] is Iterable
            ? (json[r'secrets'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<DestinationStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DestinationStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DestinationStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DestinationStatus> mapFromJson(dynamic json) {
    final map = <String, DestinationStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DestinationStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DestinationStatus-objects as value to a dart map
  static Map<String, List<DestinationStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DestinationStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DestinationStatus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

