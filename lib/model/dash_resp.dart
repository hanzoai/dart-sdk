//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DashResp {
  /// Returns a new [DashResp] instance.
  DashResp({
    this.account,
    this.available,
    this.current = const [],
    this.from,
    this.provider,
    this.range,
    this.scope,
    this.source_,
    this.to,
    this.windows = const [],
  });
  /// Account is the linked account that was asked about, when one was named.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? account;

  /// Available is false when the warehouse could not be read. That means \"no answer\", NOT \"no usage\" — the two lists below are then empty for a reason.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? available;

  /// Current is the newest window instance of each lane — the dash headline.
  List<UsageWindowView> current;

  /// From is the inclusive start of that window, RFC3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? from;

  /// Provider is the upstream that was asked about, echoed back.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Range is the window that was served: 1h, 24h, 7d or 30d.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? range;

  /// Scope says whose rows these are: the caller's own linked accounts.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scope;

  /// Source names the meter of record — the provider's own login, not Hanzo.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// To is the exclusive end of that window, RFC3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? to;

  /// Windows is every instance in range, newest first — the history behind it.
  List<UsageWindowView> windows;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DashResp &&
    other.account == account &&
    other.available == available &&
    _deepEquality.equals(other.current, current) &&
    other.from == from &&
    other.provider == provider &&
    other.range == range &&
    other.scope == scope &&
    other.source_ == source_ &&
    other.to == to &&
    _deepEquality.equals(other.windows, windows);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (available == null ? 0 : available!.hashCode) +
    (current.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (range == null ? 0 : range!.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (to == null ? 0 : to!.hashCode) +
    (windows.hashCode);

  @override
  String toString() => 'DashResp[account=$account, available=$available, current=$current, from=$from, provider=$provider, range=$range, scope=$scope, source_=$source_, to=$to, windows=$windows]';

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
      json[r'current'] = this.current;
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.range != null) {
      json[r'range'] = this.range;
    } else {
      json[r'range'] = null;
    }
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.to != null) {
      json[r'to'] = this.to;
    } else {
      json[r'to'] = null;
    }
      json[r'windows'] = this.windows;
    return json;
  }

  /// Returns a new [DashResp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DashResp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DashResp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DashResp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DashResp(
        account: mapValueOfType<String>(json, r'account'),
        available: mapValueOfType<bool>(json, r'available'),
        current: UsageWindowView.listFromJson(json[r'current']),
        from: mapValueOfType<String>(json, r'from'),
        provider: mapValueOfType<String>(json, r'provider'),
        range: mapValueOfType<String>(json, r'range'),
        scope: mapValueOfType<String>(json, r'scope'),
        source_: mapValueOfType<String>(json, r'source'),
        to: mapValueOfType<String>(json, r'to'),
        windows: UsageWindowView.listFromJson(json[r'windows']),
      );
    }
    return null;
  }

  static List<DashResp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DashResp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DashResp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DashResp> mapFromJson(dynamic json) {
    final map = <String, DashResp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DashResp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DashResp-objects as value to a dart map
  static Map<String, List<DashResp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DashResp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DashResp.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

