//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TrustGrantView {
  /// Returns a new [TrustGrantView] instance.
  TrustGrantView({
    this.email,
    this.expiresAt,
    this.item,
    this.link,
    this.live,
  });
  /// Email is the one address the link admits.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// ExpiresAt is when the grant closes, in unix milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expiresAt;

  /// Item is the item granted, empty when the whole released tier was granted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? item;

  /// Link is the share link's id — the token the party opens. Reading it here does not widen it: the link admits only Email whoever holds the id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? link;

  /// Live is whether the grant is still open at the time of reading.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? live;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrustGrantView &&
    other.email == email &&
    other.expiresAt == expiresAt &&
    other.item == item &&
    other.link == link &&
    other.live == live;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email == null ? 0 : email!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (item == null ? 0 : item!.hashCode) +
    (link == null ? 0 : link!.hashCode) +
    (live == null ? 0 : live!.hashCode);

  @override
  String toString() => 'TrustGrantView[email=$email, expiresAt=$expiresAt, item=$item, link=$link, live=$live]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt;
    } else {
      json[r'expiresAt'] = null;
    }
    if (this.item != null) {
      json[r'item'] = this.item;
    } else {
      json[r'item'] = null;
    }
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    if (this.live != null) {
      json[r'live'] = this.live;
    } else {
      json[r'live'] = null;
    }
    return json;
  }

  /// Returns a new [TrustGrantView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrustGrantView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrustGrantView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrustGrantView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrustGrantView(
        email: mapValueOfType<String>(json, r'email'),
        expiresAt: mapValueOfType<int>(json, r'expiresAt'),
        item: mapValueOfType<String>(json, r'item'),
        link: mapValueOfType<String>(json, r'link'),
        live: mapValueOfType<bool>(json, r'live'),
      );
    }
    return null;
  }

  static List<TrustGrantView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrustGrantView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrustGrantView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrustGrantView> mapFromJson(dynamic json) {
    final map = <String, TrustGrantView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrustGrantView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrustGrantView-objects as value to a dart map
  static Map<String, List<TrustGrantView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrustGrantView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrustGrantView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

