//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TrustAsk {
  /// Returns a new [TrustAsk] instance.
  TrustAsk({
    this.accept,
    this.email,
    this.item,
    this.party,
    this.reason,
    this.slug,
  });
  /// Accept must be true when the centre states an NDA. The text accepted is recorded verbatim on the request, so a later edit to the NDA cannot rewrite what this party agreed to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? accept;

  /// Email is where the grant will be sent, and the ONLY address the resulting link admits. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// Item names one published item to ask for. Optional; omitting it asks for everything released on request.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? item;

  /// Party is the company the asker is from. Optional, and recorded as stated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? party;

  /// Reason is why they want it. Optional, and recorded as stated — it is what the person deciding reads.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  /// Slug is the centre's public address, taken from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slug;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrustAsk &&
    other.accept == accept &&
    other.email == email &&
    other.item == item &&
    other.party == party &&
    other.reason == reason &&
    other.slug == slug;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accept == null ? 0 : accept!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (item == null ? 0 : item!.hashCode) +
    (party == null ? 0 : party!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (slug == null ? 0 : slug!.hashCode);

  @override
  String toString() => 'TrustAsk[accept=$accept, email=$email, item=$item, party=$party, reason=$reason, slug=$slug]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accept != null) {
      json[r'accept'] = this.accept;
    } else {
      json[r'accept'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.item != null) {
      json[r'item'] = this.item;
    } else {
      json[r'item'] = null;
    }
    if (this.party != null) {
      json[r'party'] = this.party;
    } else {
      json[r'party'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    if (this.slug != null) {
      json[r'slug'] = this.slug;
    } else {
      json[r'slug'] = null;
    }
    return json;
  }

  /// Returns a new [TrustAsk] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrustAsk? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrustAsk[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrustAsk[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrustAsk(
        accept: mapValueOfType<bool>(json, r'accept'),
        email: mapValueOfType<String>(json, r'email'),
        item: mapValueOfType<String>(json, r'item'),
        party: mapValueOfType<String>(json, r'party'),
        reason: mapValueOfType<String>(json, r'reason'),
        slug: mapValueOfType<String>(json, r'slug'),
      );
    }
    return null;
  }

  static List<TrustAsk> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrustAsk>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrustAsk.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrustAsk> mapFromJson(dynamic json) {
    final map = <String, TrustAsk>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrustAsk.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrustAsk-objects as value to a dart map
  static Map<String, List<TrustAsk>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrustAsk>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrustAsk.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

