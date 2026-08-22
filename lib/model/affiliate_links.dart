//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AffiliateLinks {
  /// Returns a new [AffiliateLinks] instance.
  AffiliateLinks({
    this.isAffiliate,
    this.links = const [],
    this.maxLinks,
    this.status,
  });
  /// IsAffiliate says whether the caller org has an affiliate record. On false only maxLinks comes back — there are no links, and there is no link to mint until the org applies and is approved.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAffiliate;

  /// Links is the caller's share links, each with its URL and funnel.
  List<CodeView> links;

  /// MaxLinks is how many share links one affiliate may hold.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxLinks;

  /// Status is the caller's affiliate status: \"applied\", \"approved\" or \"suspended\"; absent for a non-affiliate. Minting a link requires \"approved\", because a link that cannot accrue quietly loses the referral.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AffiliateLinks &&
    other.isAffiliate == isAffiliate &&
    _deepEquality.equals(other.links, links) &&
    other.maxLinks == maxLinks &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (isAffiliate == null ? 0 : isAffiliate!.hashCode) +
    (links.hashCode) +
    (maxLinks == null ? 0 : maxLinks!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'AffiliateLinks[isAffiliate=$isAffiliate, links=$links, maxLinks=$maxLinks, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.isAffiliate != null) {
      json[r'isAffiliate'] = this.isAffiliate;
    } else {
      json[r'isAffiliate'] = null;
    }
      json[r'links'] = this.links;
    if (this.maxLinks != null) {
      json[r'maxLinks'] = this.maxLinks;
    } else {
      json[r'maxLinks'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [AffiliateLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AffiliateLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AffiliateLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AffiliateLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AffiliateLinks(
        isAffiliate: mapValueOfType<bool>(json, r'isAffiliate'),
        links: CodeView.listFromJson(json[r'links']),
        maxLinks: mapValueOfType<int>(json, r'maxLinks'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<AffiliateLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AffiliateLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AffiliateLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AffiliateLinks> mapFromJson(dynamic json) {
    final map = <String, AffiliateLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AffiliateLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AffiliateLinks-objects as value to a dart map
  static Map<String, List<AffiliateLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AffiliateLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AffiliateLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

