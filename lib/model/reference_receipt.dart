//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ReferenceReceipt {
  /// Returns a new [ReferenceReceipt] instance.
  ReferenceReceipt({
    this.asOf,
    this.keys,
    this.refusal,
    this.source_,
    this.version,
  });

  /// AsOf is when the load happened, RFC 3339. Absent is dated on arrival, which can only make the list look older than it is.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? asOf;

  /// Keys is how many designations that load carried. Zero from a publisher who designates somebody is a failed load wearing a successful one's clothes, and belongs in Refusal instead.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? keys;

  /// Refusal is why the load failed, when it did.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refusal;

  /// Source is the publisher this receipt is for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Version is the digest of what that publisher supplied, so a refresh that changed nothing can be told from a refresh that did not run.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReferenceReceipt &&
    other.asOf == asOf &&
    other.keys == keys &&
    other.refusal == refusal &&
    other.source_ == source_ &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (asOf == null ? 0 : asOf!.hashCode) +
    (keys == null ? 0 : keys!.hashCode) +
    (refusal == null ? 0 : refusal!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'ReferenceReceipt[asOf=$asOf, keys=$keys, refusal=$refusal, source_=$source_, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.asOf != null) {
      json[r'asOf'] = this.asOf;
    } else {
      json[r'asOf'] = null;
    }
    if (this.keys != null) {
      json[r'keys'] = this.keys;
    } else {
      json[r'keys'] = null;
    }
    if (this.refusal != null) {
      json[r'refusal'] = this.refusal;
    } else {
      json[r'refusal'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [ReferenceReceipt] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReferenceReceipt? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReferenceReceipt[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReferenceReceipt[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReferenceReceipt(
        asOf: mapValueOfType<String>(json, r'asOf'),
        keys: mapValueOfType<int>(json, r'keys'),
        refusal: mapValueOfType<String>(json, r'refusal'),
        source_: mapValueOfType<String>(json, r'source'),
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<ReferenceReceipt> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReferenceReceipt>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReferenceReceipt.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReferenceReceipt> mapFromJson(dynamic json) {
    final map = <String, ReferenceReceipt>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReferenceReceipt.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReferenceReceipt-objects as value to a dart map
  static Map<String, List<ReferenceReceipt>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReferenceReceipt>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReferenceReceipt.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

