//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Vendor {
  /// Returns a new [Vendor] instance.
  Vendor({
    this.amountCents,
    this.note,
    this.service,
    this.source_,
    this.vendor,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amountCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? note;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? service;

  /// \"actual\" | \"estimated\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? vendor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Vendor &&
    other.amountCents == amountCents &&
    other.note == note &&
    other.service == service &&
    other.source_ == source_ &&
    other.vendor == vendor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amountCents == null ? 0 : amountCents!.hashCode) +
    (note == null ? 0 : note!.hashCode) +
    (service == null ? 0 : service!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (vendor == null ? 0 : vendor!.hashCode);

  @override
  String toString() => 'Vendor[amountCents=$amountCents, note=$note, service=$service, source_=$source_, vendor=$vendor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.amountCents != null) {
      json[r'amountCents'] = this.amountCents;
    } else {
      json[r'amountCents'] = null;
    }
    if (this.note != null) {
      json[r'note'] = this.note;
    } else {
      json[r'note'] = null;
    }
    if (this.service != null) {
      json[r'service'] = this.service;
    } else {
      json[r'service'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.vendor != null) {
      json[r'vendor'] = this.vendor;
    } else {
      json[r'vendor'] = null;
    }
    return json;
  }

  /// Returns a new [Vendor] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Vendor? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Vendor[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Vendor[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Vendor(
        amountCents: mapValueOfType<int>(json, r'amountCents'),
        note: mapValueOfType<String>(json, r'note'),
        service: mapValueOfType<String>(json, r'service'),
        source_: mapValueOfType<String>(json, r'source'),
        vendor: mapValueOfType<String>(json, r'vendor'),
      );
    }
    return null;
  }

  static List<Vendor> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Vendor>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Vendor.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Vendor> mapFromJson(dynamic json) {
    final map = <String, Vendor>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Vendor.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Vendor-objects as value to a dart map
  static Map<String, List<Vendor>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Vendor>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Vendor.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

