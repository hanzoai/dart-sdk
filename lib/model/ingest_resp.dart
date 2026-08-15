//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IngestResp {
  /// Returns a new [IngestResp] instance.
  IngestResp({
    this.accepted,
    this.links = const [],
    this.stored,
  });

  /// Accepted is how many samples this report landed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accepted;

  /// Links is the link row each distinct (machine, provider, account) in the batch refreshed.
  List<LinkView> links;

  /// Stored reports whether history was durably written; false means the warehouse was unavailable and only the link rows were refreshed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? stored;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IngestResp &&
    other.accepted == accepted &&
    _deepEquality.equals(other.links, links) &&
    other.stored == stored;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accepted == null ? 0 : accepted!.hashCode) +
    (links.hashCode) +
    (stored == null ? 0 : stored!.hashCode);

  @override
  String toString() => 'IngestResp[accepted=$accepted, links=$links, stored=$stored]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accepted != null) {
      json[r'accepted'] = this.accepted;
    } else {
      json[r'accepted'] = null;
    }
      json[r'links'] = this.links;
    if (this.stored != null) {
      json[r'stored'] = this.stored;
    } else {
      json[r'stored'] = null;
    }
    return json;
  }

  /// Returns a new [IngestResp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IngestResp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IngestResp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IngestResp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IngestResp(
        accepted: mapValueOfType<int>(json, r'accepted'),
        links: LinkView.listFromJson(json[r'links']),
        stored: mapValueOfType<bool>(json, r'stored'),
      );
    }
    return null;
  }

  static List<IngestResp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IngestResp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IngestResp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IngestResp> mapFromJson(dynamic json) {
    final map = <String, IngestResp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IngestResp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IngestResp-objects as value to a dart map
  static Map<String, List<IngestResp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IngestResp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IngestResp.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

