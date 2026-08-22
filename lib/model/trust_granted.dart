//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TrustGranted {
  /// Returns a new [TrustGranted] instance.
  TrustGranted({
    this.delivery,
    this.expiresAt,
    this.link,
    this.state,
  });
  /// Delivery is empty when the asker was mailed, and otherwise says what happened instead — so an approver is never left believing a mail went out that did not.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? delivery;

  /// ExpiresAt is when the grant closes, in unix milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expiresAt;

  /// Link is the share link's id. The link admits only the address that asked.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? link;

  /// State is \"granted\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrustGranted &&
    other.delivery == delivery &&
    other.expiresAt == expiresAt &&
    other.link == link &&
    other.state == state;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (delivery == null ? 0 : delivery!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (link == null ? 0 : link!.hashCode) +
    (state == null ? 0 : state!.hashCode);

  @override
  String toString() => 'TrustGranted[delivery=$delivery, expiresAt=$expiresAt, link=$link, state=$state]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.delivery != null) {
      json[r'delivery'] = this.delivery;
    } else {
      json[r'delivery'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt;
    } else {
      json[r'expiresAt'] = null;
    }
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    return json;
  }

  /// Returns a new [TrustGranted] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrustGranted? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrustGranted[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrustGranted[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrustGranted(
        delivery: mapValueOfType<String>(json, r'delivery'),
        expiresAt: mapValueOfType<int>(json, r'expiresAt'),
        link: mapValueOfType<String>(json, r'link'),
        state: mapValueOfType<String>(json, r'state'),
      );
    }
    return null;
  }

  static List<TrustGranted> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrustGranted>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrustGranted.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrustGranted> mapFromJson(dynamic json) {
    final map = <String, TrustGranted>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrustGranted.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrustGranted-objects as value to a dart map
  static Map<String, List<TrustGranted>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrustGranted>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrustGranted.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

