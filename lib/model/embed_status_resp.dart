//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EmbedStatusResp {
  /// Returns a new [EmbedStatusResp] instance.
  EmbedStatusResp({
    this.app,
    this.embedUrl,
    this.entitled,
    this.origin,
    this.phase,
    this.reachable,
  });

  /// App is the app this verdict is about.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? app;

  /// EmbedURL is the in-app landing URL to frame. Empty when the caller is not entitled — a non-entitled caller never receives it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? embedUrl;

  /// Entitled is whether the caller's org may frame this brand-owned app.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? entitled;

  /// Origin is the app's origin on this deployment's own brand domain.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? origin;

  /// Phase is the verdict in one word: not-entitled, not-provisioned or ready.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phase;

  /// Reachable is whether the app answered the liveness probe.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? reachable;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmbedStatusResp &&
    other.app == app &&
    other.embedUrl == embedUrl &&
    other.entitled == entitled &&
    other.origin == origin &&
    other.phase == phase &&
    other.reachable == reachable;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (app == null ? 0 : app!.hashCode) +
    (embedUrl == null ? 0 : embedUrl!.hashCode) +
    (entitled == null ? 0 : entitled!.hashCode) +
    (origin == null ? 0 : origin!.hashCode) +
    (phase == null ? 0 : phase!.hashCode) +
    (reachable == null ? 0 : reachable!.hashCode);

  @override
  String toString() => 'EmbedStatusResp[app=$app, embedUrl=$embedUrl, entitled=$entitled, origin=$origin, phase=$phase, reachable=$reachable]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.app != null) {
      json[r'app'] = this.app;
    } else {
      json[r'app'] = null;
    }
    if (this.embedUrl != null) {
      json[r'embedUrl'] = this.embedUrl;
    } else {
      json[r'embedUrl'] = null;
    }
    if (this.entitled != null) {
      json[r'entitled'] = this.entitled;
    } else {
      json[r'entitled'] = null;
    }
    if (this.origin != null) {
      json[r'origin'] = this.origin;
    } else {
      json[r'origin'] = null;
    }
    if (this.phase != null) {
      json[r'phase'] = this.phase;
    } else {
      json[r'phase'] = null;
    }
    if (this.reachable != null) {
      json[r'reachable'] = this.reachable;
    } else {
      json[r'reachable'] = null;
    }
    return json;
  }

  /// Returns a new [EmbedStatusResp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmbedStatusResp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmbedStatusResp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmbedStatusResp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmbedStatusResp(
        app: mapValueOfType<String>(json, r'app'),
        embedUrl: mapValueOfType<String>(json, r'embedUrl'),
        entitled: mapValueOfType<bool>(json, r'entitled'),
        origin: mapValueOfType<String>(json, r'origin'),
        phase: mapValueOfType<String>(json, r'phase'),
        reachable: mapValueOfType<bool>(json, r'reachable'),
      );
    }
    return null;
  }

  static List<EmbedStatusResp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmbedStatusResp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmbedStatusResp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmbedStatusResp> mapFromJson(dynamic json) {
    final map = <String, EmbedStatusResp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmbedStatusResp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmbedStatusResp-objects as value to a dart map
  static Map<String, List<EmbedStatusResp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmbedStatusResp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmbedStatusResp.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

