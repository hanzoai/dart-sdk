//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TrafficView {
  /// Returns a new [TrafficView] instance.
  TrafficView({
    this.blind,
    this.callers = const [],
    this.ceiling,
    this.denied,
    this.lanes = const {},
    this.mode,
    this.org,
    this.refused,
    this.requests,
    this.screens,
    this.strain,
    this.tracked,
    this.unscored,
    this.windowSec,
  });

  /// Blind is how many requests in the window carried no identity to attribute them to — no validated credential and no client address. Non-zero on a public plane means the client address is not reaching this process (a TCP load balancer with no PROXY protocol in front of it, typically), so this scope's callers cannot be told apart and nothing can be held against them.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? blind;

  /// Callers is the scope's busiest callers this window. A credentialed caller appears as a FINGERPRINT — a per-process one-way digest: enough to recognise the same caller across requests, never enough to reconstruct the credential.
  List<TrafficCaller> callers;

  /// Ceiling is the most callers this scope may hold at once.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ceiling;

  /// Denied is how many of them the gate refused.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? denied;

  /// Lanes is the request count per lane — agent, human, bot, unknown. This is the split that separates a customer's automation from a scraper.
  Map<String, int> lanes;

  /// Mode is the abuse gate's posture for this scope: \"shadow\" records the scorer's action without enforcing it, \"live\" enforces it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mode;

  /// Org is the scope this view was taken for — the validated principal's own, never a value the caller supplied. Empty names the anonymous lane, the one scope that has no tenant.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  /// Refused is how many callers this scope's ceilings turned away in the window.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? refused;

  /// Requests is how many requests this scope made in the window.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? requests;

  /// Screens is how many of them were put to the scorer — the billable unit of the risk product. Counted from the first request, whatever the SKU costs.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? screens;

  /// Strain is what this scope's ceilings are doing: \"clear\" below them, \"full\" at them, \"refuse\" once a caller has been turned away inside this window — which means that caller is UNMEASURED and the numbers here are a sample rather than a census. It is reported rather than logged because the alternative — a bound that degrades a scope silently — is the failure this design exists to rule out. No other scope can move it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? strain;

  /// Tracked is how many callers this scope holds state for right now, and Ceiling is the most it may hold. Tracked == Ceiling is the fact a bound that binds cannot hide.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tracked;

  /// Unscored is how many of those screens got NO answer — the scorer was absent, stuck, slow, erroring or silent. An unanswered screen allows ordinary traffic, so this is the number that separates \"a quiet day\" from \"the judge stopped answering and nothing said so\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? unscored;

  /// WindowSec is the span the counts cover, in seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? windowSec;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrafficView &&
    other.blind == blind &&
    _deepEquality.equals(other.callers, callers) &&
    other.ceiling == ceiling &&
    other.denied == denied &&
    _deepEquality.equals(other.lanes, lanes) &&
    other.mode == mode &&
    other.org == org &&
    other.refused == refused &&
    other.requests == requests &&
    other.screens == screens &&
    other.strain == strain &&
    other.tracked == tracked &&
    other.unscored == unscored &&
    other.windowSec == windowSec;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (blind == null ? 0 : blind!.hashCode) +
    (callers.hashCode) +
    (ceiling == null ? 0 : ceiling!.hashCode) +
    (denied == null ? 0 : denied!.hashCode) +
    (lanes.hashCode) +
    (mode == null ? 0 : mode!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (refused == null ? 0 : refused!.hashCode) +
    (requests == null ? 0 : requests!.hashCode) +
    (screens == null ? 0 : screens!.hashCode) +
    (strain == null ? 0 : strain!.hashCode) +
    (tracked == null ? 0 : tracked!.hashCode) +
    (unscored == null ? 0 : unscored!.hashCode) +
    (windowSec == null ? 0 : windowSec!.hashCode);

  @override
  String toString() => 'TrafficView[blind=$blind, callers=$callers, ceiling=$ceiling, denied=$denied, lanes=$lanes, mode=$mode, org=$org, refused=$refused, requests=$requests, screens=$screens, strain=$strain, tracked=$tracked, unscored=$unscored, windowSec=$windowSec]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.blind != null) {
      json[r'blind'] = this.blind;
    } else {
      json[r'blind'] = null;
    }
      json[r'callers'] = this.callers;
    if (this.ceiling != null) {
      json[r'ceiling'] = this.ceiling;
    } else {
      json[r'ceiling'] = null;
    }
    if (this.denied != null) {
      json[r'denied'] = this.denied;
    } else {
      json[r'denied'] = null;
    }
      json[r'lanes'] = this.lanes;
    if (this.mode != null) {
      json[r'mode'] = this.mode;
    } else {
      json[r'mode'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.refused != null) {
      json[r'refused'] = this.refused;
    } else {
      json[r'refused'] = null;
    }
    if (this.requests != null) {
      json[r'requests'] = this.requests;
    } else {
      json[r'requests'] = null;
    }
    if (this.screens != null) {
      json[r'screens'] = this.screens;
    } else {
      json[r'screens'] = null;
    }
    if (this.strain != null) {
      json[r'strain'] = this.strain;
    } else {
      json[r'strain'] = null;
    }
    if (this.tracked != null) {
      json[r'tracked'] = this.tracked;
    } else {
      json[r'tracked'] = null;
    }
    if (this.unscored != null) {
      json[r'unscored'] = this.unscored;
    } else {
      json[r'unscored'] = null;
    }
    if (this.windowSec != null) {
      json[r'window_sec'] = this.windowSec;
    } else {
      json[r'window_sec'] = null;
    }
    return json;
  }

  /// Returns a new [TrafficView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrafficView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrafficView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrafficView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrafficView(
        blind: mapValueOfType<int>(json, r'blind'),
        callers: TrafficCaller.listFromJson(json[r'callers']),
        ceiling: mapValueOfType<int>(json, r'ceiling'),
        denied: mapValueOfType<int>(json, r'denied'),
        lanes: mapCastOfType<String, int>(json, r'lanes') ?? const {},
        mode: mapValueOfType<String>(json, r'mode'),
        org: mapValueOfType<String>(json, r'org'),
        refused: mapValueOfType<int>(json, r'refused'),
        requests: mapValueOfType<int>(json, r'requests'),
        screens: mapValueOfType<int>(json, r'screens'),
        strain: mapValueOfType<String>(json, r'strain'),
        tracked: mapValueOfType<int>(json, r'tracked'),
        unscored: mapValueOfType<int>(json, r'unscored'),
        windowSec: mapValueOfType<int>(json, r'window_sec'),
      );
    }
    return null;
  }

  static List<TrafficView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrafficView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrafficView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrafficView> mapFromJson(dynamic json) {
    final map = <String, TrafficView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrafficView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrafficView-objects as value to a dart map
  static Map<String, List<TrafficView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrafficView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrafficView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

