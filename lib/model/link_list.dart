//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LinkList {
  /// Returns a new [LinkList] instance.
  LinkList({
    this.devices = const [],
    this.links = const [],
  });
  /// Devices is the same rows folded per machine — the cross-machine \"AI Providers / Accounts\" view.
  List<DeviceView> devices;

  /// Links is every link the caller registered, newest first. Revoked links are INCLUDED rather than dropped, because a logged-out account keeps its usage history and audit trail.
  List<LinkView> links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LinkList &&
    _deepEquality.equals(other.devices, devices) &&
    _deepEquality.equals(other.links, links);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (devices.hashCode) +
    (links.hashCode);

  @override
  String toString() => 'LinkList[devices=$devices, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'devices'] = this.devices;
      json[r'links'] = this.links;
    return json;
  }

  /// Returns a new [LinkList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LinkList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LinkList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LinkList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LinkList(
        devices: DeviceView.listFromJson(json[r'devices']),
        links: LinkView.listFromJson(json[r'links']),
      );
    }
    return null;
  }

  static List<LinkList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LinkList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LinkList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LinkList> mapFromJson(dynamic json) {
    final map = <String, LinkList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LinkList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LinkList-objects as value to a dart map
  static Map<String, List<LinkList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LinkList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LinkList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

