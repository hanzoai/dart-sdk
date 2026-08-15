//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class OrgOptinView {
  /// Returns a new [OrgOptinView] instance.
  OrgOptinView({
    this.canManage,
    this.display,
    this.listed,
  });

  /// CanManage is true only for an admin of this org (or a platform SuperAdmin) — the callers whose write of the org preference will be accepted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? canManage;

  /// Display is the name shown for the org on that board. Empty when none was chosen; opting in without one defaults it to the org id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? display;

  /// Listed is true when the org has opted onto the cross-org global board. False — the default — keeps the org off it entirely; the org's own members still see their own board. Listing consents to publishing usage VOLUME, never spend.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? listed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrgOptinView &&
    other.canManage == canManage &&
    other.display == display &&
    other.listed == listed;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (canManage == null ? 0 : canManage!.hashCode) +
    (display == null ? 0 : display!.hashCode) +
    (listed == null ? 0 : listed!.hashCode);

  @override
  String toString() => 'OrgOptinView[canManage=$canManage, display=$display, listed=$listed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.canManage != null) {
      json[r'canManage'] = this.canManage;
    } else {
      json[r'canManage'] = null;
    }
    if (this.display != null) {
      json[r'display'] = this.display;
    } else {
      json[r'display'] = null;
    }
    if (this.listed != null) {
      json[r'listed'] = this.listed;
    } else {
      json[r'listed'] = null;
    }
    return json;
  }

  /// Returns a new [OrgOptinView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrgOptinView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrgOptinView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrgOptinView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrgOptinView(
        canManage: mapValueOfType<bool>(json, r'canManage'),
        display: mapValueOfType<String>(json, r'display'),
        listed: mapValueOfType<bool>(json, r'listed'),
      );
    }
    return null;
  }

  static List<OrgOptinView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrgOptinView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrgOptinView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrgOptinView> mapFromJson(dynamic json) {
    final map = <String, OrgOptinView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrgOptinView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrgOptinView-objects as value to a dart map
  static Map<String, List<OrgOptinView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrgOptinView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrgOptinView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

