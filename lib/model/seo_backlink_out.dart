//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SeoBacklinkOut {
  /// Returns a new [SeoBacklinkOut] instance.
  SeoBacklinkOut({
    this.backlinks,
    this.broken,
    this.cost,
    this.domains,
    this.firstSeen,
    this.pages,
    this.rank,
    this.spam,
    this.target,
  });
  /// Backlinks is how many links point at it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? backlinks;

  /// Broken is how many of those links point at something that no longer answers.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? broken;

  /// Cost is what this call cost, in USD, as an exact decimal string.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cost;

  /// Domains is how many distinct sites those links come from — the number that matters, since a thousand links from one site is one site.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? domains;

  /// FirstSeen is when the upstream first saw a link to this target, RFC 3339.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstSeen;

  /// Pages is how many distinct pages link in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pages;

  /// Rank is the upstream's authority score for the target, 0 to 1000.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rank;

  /// Spam is the share of the profile judged spam, 0 to 100.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? spam;

  /// Target is the target as the upstream resolved it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? target;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SeoBacklinkOut &&
    other.backlinks == backlinks &&
    other.broken == broken &&
    other.cost == cost &&
    other.domains == domains &&
    other.firstSeen == firstSeen &&
    other.pages == pages &&
    other.rank == rank &&
    other.spam == spam &&
    other.target == target;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (backlinks == null ? 0 : backlinks!.hashCode) +
    (broken == null ? 0 : broken!.hashCode) +
    (cost == null ? 0 : cost!.hashCode) +
    (domains == null ? 0 : domains!.hashCode) +
    (firstSeen == null ? 0 : firstSeen!.hashCode) +
    (pages == null ? 0 : pages!.hashCode) +
    (rank == null ? 0 : rank!.hashCode) +
    (spam == null ? 0 : spam!.hashCode) +
    (target == null ? 0 : target!.hashCode);

  @override
  String toString() => 'SeoBacklinkOut[backlinks=$backlinks, broken=$broken, cost=$cost, domains=$domains, firstSeen=$firstSeen, pages=$pages, rank=$rank, spam=$spam, target=$target]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.backlinks != null) {
      json[r'backlinks'] = this.backlinks;
    } else {
      json[r'backlinks'] = null;
    }
    if (this.broken != null) {
      json[r'broken'] = this.broken;
    } else {
      json[r'broken'] = null;
    }
    if (this.cost != null) {
      json[r'cost'] = this.cost;
    } else {
      json[r'cost'] = null;
    }
    if (this.domains != null) {
      json[r'domains'] = this.domains;
    } else {
      json[r'domains'] = null;
    }
    if (this.firstSeen != null) {
      json[r'firstSeen'] = this.firstSeen;
    } else {
      json[r'firstSeen'] = null;
    }
    if (this.pages != null) {
      json[r'pages'] = this.pages;
    } else {
      json[r'pages'] = null;
    }
    if (this.rank != null) {
      json[r'rank'] = this.rank;
    } else {
      json[r'rank'] = null;
    }
    if (this.spam != null) {
      json[r'spam'] = this.spam;
    } else {
      json[r'spam'] = null;
    }
    if (this.target != null) {
      json[r'target'] = this.target;
    } else {
      json[r'target'] = null;
    }
    return json;
  }

  /// Returns a new [SeoBacklinkOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SeoBacklinkOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SeoBacklinkOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SeoBacklinkOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SeoBacklinkOut(
        backlinks: mapValueOfType<int>(json, r'backlinks'),
        broken: mapValueOfType<int>(json, r'broken'),
        cost: mapValueOfType<String>(json, r'cost'),
        domains: mapValueOfType<int>(json, r'domains'),
        firstSeen: mapValueOfType<String>(json, r'firstSeen'),
        pages: mapValueOfType<int>(json, r'pages'),
        rank: mapValueOfType<int>(json, r'rank'),
        spam: mapValueOfType<int>(json, r'spam'),
        target: mapValueOfType<String>(json, r'target'),
      );
    }
    return null;
  }

  static List<SeoBacklinkOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SeoBacklinkOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SeoBacklinkOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SeoBacklinkOut> mapFromJson(dynamic json) {
    final map = <String, SeoBacklinkOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SeoBacklinkOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SeoBacklinkOut-objects as value to a dart map
  static Map<String, List<SeoBacklinkOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SeoBacklinkOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SeoBacklinkOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

