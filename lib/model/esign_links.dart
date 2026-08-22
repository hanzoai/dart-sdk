//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EsignLinks {
  /// Returns a new [EsignLinks] instance.
  EsignLinks({
    this.id,
    this.recipients = const [],
    this.status,
  });
  /// ID is the document that went out.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Recipients is one link per signing recipient. Nothing is emailed by this call; delivering the links is the caller's.
  List<EsignLink> recipients;

  /// Status is PENDING — the state a sent document is in until every signer has finished.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EsignLinks &&
    other.id == id &&
    _deepEquality.equals(other.recipients, recipients) &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (recipients.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'EsignLinks[id=$id, recipients=$recipients, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'recipients'] = this.recipients;
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [EsignLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EsignLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EsignLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EsignLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EsignLinks(
        id: mapValueOfType<String>(json, r'id'),
        recipients: EsignLink.listFromJson(json[r'recipients']),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<EsignLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EsignLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EsignLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EsignLinks> mapFromJson(dynamic json) {
    final map = <String, EsignLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EsignLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EsignLinks-objects as value to a dart map
  static Map<String, List<EsignLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EsignLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EsignLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

