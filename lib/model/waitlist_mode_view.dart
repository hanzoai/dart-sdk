//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class WaitlistModeView {
  /// Returns a new [WaitlistModeView] instance.
  WaitlistModeView({
    this.host,
    this.known,
    this.service,
    this.waitlistMode,
  });

  /// Host is the queried host, normalized (lowercased, port stripped).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? host;

  /// Known is false when no registered service claims this host, or when the registry is unavailable — the guard then lets the request through, which is why the two cases answer alike.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? known;

  /// Service is the registered service that governs this host, empty when none does.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? service;

  /// WaitlistMode is true when the service is GATED to approved users, false when it is open. Always false for an ungoverned host.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? waitlistMode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WaitlistModeView &&
    other.host == host &&
    other.known == known &&
    other.service == service &&
    other.waitlistMode == waitlistMode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (host == null ? 0 : host!.hashCode) +
    (known == null ? 0 : known!.hashCode) +
    (service == null ? 0 : service!.hashCode) +
    (waitlistMode == null ? 0 : waitlistMode!.hashCode);

  @override
  String toString() => 'WaitlistModeView[host=$host, known=$known, service=$service, waitlistMode=$waitlistMode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.host != null) {
      json[r'host'] = this.host;
    } else {
      json[r'host'] = null;
    }
    if (this.known != null) {
      json[r'known'] = this.known;
    } else {
      json[r'known'] = null;
    }
    if (this.service != null) {
      json[r'service'] = this.service;
    } else {
      json[r'service'] = null;
    }
    if (this.waitlistMode != null) {
      json[r'waitlistMode'] = this.waitlistMode;
    } else {
      json[r'waitlistMode'] = null;
    }
    return json;
  }

  /// Returns a new [WaitlistModeView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WaitlistModeView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WaitlistModeView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WaitlistModeView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WaitlistModeView(
        host: mapValueOfType<String>(json, r'host'),
        known: mapValueOfType<bool>(json, r'known'),
        service: mapValueOfType<String>(json, r'service'),
        waitlistMode: mapValueOfType<bool>(json, r'waitlistMode'),
      );
    }
    return null;
  }

  static List<WaitlistModeView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WaitlistModeView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WaitlistModeView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WaitlistModeView> mapFromJson(dynamic json) {
    final map = <String, WaitlistModeView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WaitlistModeView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WaitlistModeView-objects as value to a dart map
  static Map<String, List<WaitlistModeView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WaitlistModeView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WaitlistModeView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

