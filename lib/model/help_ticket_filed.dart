//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class HelpTicketFiled {
  /// Returns a new [HelpTicketFiled] instance.
  HelpTicketFiled({
    this.status,
    this.ticket,
  });

  /// Status is the lifecycle state the ticket was filed in — always \"Open\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Ticket is the opaque, random customer-facing reference (\"tkt_\" + 24 hex characters). It is NOT the ticket's internal name: that name is sequential, and handing it out would disclose the center's ticket volume.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ticket;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HelpTicketFiled &&
    other.status == status &&
    other.ticket == ticket;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (status == null ? 0 : status!.hashCode) +
    (ticket == null ? 0 : ticket!.hashCode);

  @override
  String toString() => 'HelpTicketFiled[status=$status, ticket=$ticket]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.ticket != null) {
      json[r'ticket'] = this.ticket;
    } else {
      json[r'ticket'] = null;
    }
    return json;
  }

  /// Returns a new [HelpTicketFiled] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HelpTicketFiled? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HelpTicketFiled[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HelpTicketFiled[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HelpTicketFiled(
        status: mapValueOfType<String>(json, r'status'),
        ticket: mapValueOfType<String>(json, r'ticket'),
      );
    }
    return null;
  }

  static List<HelpTicketFiled> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HelpTicketFiled>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HelpTicketFiled.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HelpTicketFiled> mapFromJson(dynamic json) {
    final map = <String, HelpTicketFiled>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HelpTicketFiled.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HelpTicketFiled-objects as value to a dart map
  static Map<String, List<HelpTicketFiled>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HelpTicketFiled>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HelpTicketFiled.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

