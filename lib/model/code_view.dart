//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CodeView {
  /// Returns a new [CodeView] instance.
  CodeView({
    this.clicks,
    this.code,
    this.conversions,
    this.createdAt,
    this.label,
    this.signups,
    this.url,
  });

  /// Clicks is how many pings this code has taken. The one STORED counter here and pure vanity: no accrual or payout reads it, pings are coalesced in memory and flushed in batches, and a dropped tally is accepted rather than contending with the money write path. Do not reconcile it against anything.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? clicks;

  /// Code is the link's slug — 3–32 chars of a–z, 0–9 and hyphen — unique across the WHOLE directory, so any affiliate's code resolves an attribution.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  /// Conversions is how many of those signups have actually produced positive commission for the caller. Also derived, from the accrual rows, so it is ≤ signups and lags a referral until the first sweep after it spends.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? conversions;

  /// CreatedAt is when the link was minted, Unix seconds UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// Label is the caller's own note for the link (\"twitter\", \"newsletter\"). Cosmetic: trimmed, stripped of control characters, capped at 48 bytes, and never part of the code. \"primary\" on the link mirrored at approval.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  /// Signups is how many orgs were attributed with this code — DERIVED by counting attribution edges, never stored, so it cannot drift from the ledger.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? signups;

  /// URL is the full shareable link, the brand host plus ?aff=<code>. The host is the deployment's own brand, so a Lux or Zoo install never mints a hanzo.ai link.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CodeView &&
    other.clicks == clicks &&
    other.code == code &&
    other.conversions == conversions &&
    other.createdAt == createdAt &&
    other.label == label &&
    other.signups == signups &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (clicks == null ? 0 : clicks!.hashCode) +
    (code == null ? 0 : code!.hashCode) +
    (conversions == null ? 0 : conversions!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (signups == null ? 0 : signups!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'CodeView[clicks=$clicks, code=$code, conversions=$conversions, createdAt=$createdAt, label=$label, signups=$signups, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.clicks != null) {
      json[r'clicks'] = this.clicks;
    } else {
      json[r'clicks'] = null;
    }
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.conversions != null) {
      json[r'conversions'] = this.conversions;
    } else {
      json[r'conversions'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.signups != null) {
      json[r'signups'] = this.signups;
    } else {
      json[r'signups'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [CodeView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CodeView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CodeView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CodeView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CodeView(
        clicks: mapValueOfType<int>(json, r'clicks'),
        code: mapValueOfType<String>(json, r'code'),
        conversions: mapValueOfType<int>(json, r'conversions'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        label: mapValueOfType<String>(json, r'label'),
        signups: mapValueOfType<int>(json, r'signups'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<CodeView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CodeView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CodeView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CodeView> mapFromJson(dynamic json) {
    final map = <String, CodeView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CodeView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CodeView-objects as value to a dart map
  static Map<String, List<CodeView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CodeView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CodeView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

