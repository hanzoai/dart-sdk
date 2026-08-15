//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RouteCandidate {
  /// Returns a new [RouteCandidate] instance.
  RouteCandidate({
    this.account,
    this.available,
    this.billing,
    this.headroomPct,
    this.host,
    this.kind,
    this.linkId,
    this.machine,
    this.plan,
    this.provider,
    this.reason,
  });

  /// Account is the provider-side account identifier.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? account;

  /// Available reports whether the candidate is routable right now.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? available;

  /// Billing is the cost consequence of dialing this candidate: plan (the user's own subscription) or commerce (the metered gateway path).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? billing;

  /// HeadroomPct is the remaining rate-limit capacity, 0..100. A link with no snapshot counts as full headroom.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? headroomPct;

  /// Host is that machine's hostname label.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? host;

  /// Kind is how the account authenticates: subscription or apikey.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// LinkID is the underlying link's opaque handle.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? linkId;

  /// Machine is the machine the account is signed in on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? machine;

  /// Plan is the provider plan label the account is on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? plan;

  /// Provider is the AI provider the candidate account belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Reason says why the candidate is not routable, when Available is false.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RouteCandidate &&
    other.account == account &&
    other.available == available &&
    other.billing == billing &&
    other.headroomPct == headroomPct &&
    other.host == host &&
    other.kind == kind &&
    other.linkId == linkId &&
    other.machine == machine &&
    other.plan == plan &&
    other.provider == provider &&
    other.reason == reason;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (available == null ? 0 : available!.hashCode) +
    (billing == null ? 0 : billing!.hashCode) +
    (headroomPct == null ? 0 : headroomPct!.hashCode) +
    (host == null ? 0 : host!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (linkId == null ? 0 : linkId!.hashCode) +
    (machine == null ? 0 : machine!.hashCode) +
    (plan == null ? 0 : plan!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (reason == null ? 0 : reason!.hashCode);

  @override
  String toString() => 'RouteCandidate[account=$account, available=$available, billing=$billing, headroomPct=$headroomPct, host=$host, kind=$kind, linkId=$linkId, machine=$machine, plan=$plan, provider=$provider, reason=$reason]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.available != null) {
      json[r'available'] = this.available;
    } else {
      json[r'available'] = null;
    }
    if (this.billing != null) {
      json[r'billing'] = this.billing;
    } else {
      json[r'billing'] = null;
    }
    if (this.headroomPct != null) {
      json[r'headroomPct'] = this.headroomPct;
    } else {
      json[r'headroomPct'] = null;
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
    if (this.linkId != null) {
      json[r'linkId'] = this.linkId;
    } else {
      json[r'linkId'] = null;
    }
    if (this.machine != null) {
      json[r'machine'] = this.machine;
    } else {
      json[r'machine'] = null;
    }
    if (this.plan != null) {
      json[r'plan'] = this.plan;
    } else {
      json[r'plan'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    return json;
  }

  /// Returns a new [RouteCandidate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RouteCandidate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RouteCandidate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RouteCandidate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RouteCandidate(
        account: mapValueOfType<String>(json, r'account'),
        available: mapValueOfType<bool>(json, r'available'),
        billing: mapValueOfType<String>(json, r'billing'),
        headroomPct: num.parse('${json[r'headroomPct']}'),
        host: mapValueOfType<String>(json, r'host'),
        kind: mapValueOfType<String>(json, r'kind'),
        linkId: mapValueOfType<String>(json, r'linkId'),
        machine: mapValueOfType<String>(json, r'machine'),
        plan: mapValueOfType<String>(json, r'plan'),
        provider: mapValueOfType<String>(json, r'provider'),
        reason: mapValueOfType<String>(json, r'reason'),
      );
    }
    return null;
  }

  static List<RouteCandidate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RouteCandidate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RouteCandidate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RouteCandidate> mapFromJson(dynamic json) {
    final map = <String, RouteCandidate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RouteCandidate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RouteCandidate-objects as value to a dart map
  static Map<String, List<RouteCandidate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RouteCandidate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RouteCandidate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

