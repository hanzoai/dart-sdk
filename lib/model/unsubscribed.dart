//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Unsubscribed {
  /// Returns a new [Unsubscribed] instance.
  Unsubscribed({
    this.address,
    this.channel,
    this.unsubscribed,
  });
  /// Address is the recipient now opted out, normalized (lower-cased, trimmed) to the form the send gate matches on — so it can differ in case from the address the link carried.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? address;

  /// Channel is the ONE surface opted out of: email, sms, social, meta, google or tiktok. The other channels are untouched, and so is this address in every other org.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channel;

  /// Unsubscribed is always true here: the opt-out is idempotent, so a second click on the same link confirms the same thing rather than reporting nothing changed. A refused token never reaches this shape — it is a 403.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? unsubscribed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Unsubscribed &&
    other.address == address &&
    other.channel == channel &&
    other.unsubscribed == unsubscribed;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (address == null ? 0 : address!.hashCode) +
    (channel == null ? 0 : channel!.hashCode) +
    (unsubscribed == null ? 0 : unsubscribed!.hashCode);

  @override
  String toString() => 'Unsubscribed[address=$address, channel=$channel, unsubscribed=$unsubscribed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.channel != null) {
      json[r'channel'] = this.channel;
    } else {
      json[r'channel'] = null;
    }
    if (this.unsubscribed != null) {
      json[r'unsubscribed'] = this.unsubscribed;
    } else {
      json[r'unsubscribed'] = null;
    }
    return json;
  }

  /// Returns a new [Unsubscribed] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Unsubscribed? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Unsubscribed[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Unsubscribed[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Unsubscribed(
        address: mapValueOfType<String>(json, r'address'),
        channel: mapValueOfType<String>(json, r'channel'),
        unsubscribed: mapValueOfType<bool>(json, r'unsubscribed'),
      );
    }
    return null;
  }

  static List<Unsubscribed> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Unsubscribed>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Unsubscribed.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Unsubscribed> mapFromJson(dynamic json) {
    final map = <String, Unsubscribed>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Unsubscribed.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Unsubscribed-objects as value to a dart map
  static Map<String, List<Unsubscribed>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Unsubscribed>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Unsubscribed.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

