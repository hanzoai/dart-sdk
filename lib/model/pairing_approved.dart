//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PairingApproved {
  /// Returns a new [PairingApproved] instance.
  PairingApproved({
    this.ownerBootstrapped,
    this.sender,
  });

  /// OwnerBootstrapped is true when this approval was the org's FIRST on the channel and therefore also made the sender its owner.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ownerBootstrapped;

  /// Sender is the external chat identity that is now allowed to DM the org's bot.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sender;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PairingApproved &&
    other.ownerBootstrapped == ownerBootstrapped &&
    other.sender == sender;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ownerBootstrapped == null ? 0 : ownerBootstrapped!.hashCode) +
    (sender == null ? 0 : sender!.hashCode);

  @override
  String toString() => 'PairingApproved[ownerBootstrapped=$ownerBootstrapped, sender=$sender]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ownerBootstrapped != null) {
      json[r'ownerBootstrapped'] = this.ownerBootstrapped;
    } else {
      json[r'ownerBootstrapped'] = null;
    }
    if (this.sender != null) {
      json[r'sender'] = this.sender;
    } else {
      json[r'sender'] = null;
    }
    return json;
  }

  /// Returns a new [PairingApproved] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PairingApproved? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PairingApproved[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PairingApproved[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PairingApproved(
        ownerBootstrapped: mapValueOfType<bool>(json, r'ownerBootstrapped'),
        sender: mapValueOfType<String>(json, r'sender'),
      );
    }
    return null;
  }

  static List<PairingApproved> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PairingApproved>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PairingApproved.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PairingApproved> mapFromJson(dynamic json) {
    final map = <String, PairingApproved>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PairingApproved.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PairingApproved-objects as value to a dart map
  static Map<String, List<PairingApproved>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PairingApproved>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PairingApproved.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

