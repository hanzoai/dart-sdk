//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RegisterKeyReq {
  /// Returns a new [RegisterKeyReq] instance.
  RegisterKeyReq({
    this.publicKey,
    this.title,
  });

  /// PublicKey is one OpenSSH authorized-key line (\"ssh-ed25519 AAAA… you@host\"). Required; a line that does not parse is refused and never stored.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? publicKey;

  /// Title labels the key in the console. Max 256 chars; when omitted the comment on the key line is used.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RegisterKeyReq &&
    other.publicKey == publicKey &&
    other.title == title;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (publicKey == null ? 0 : publicKey!.hashCode) +
    (title == null ? 0 : title!.hashCode);

  @override
  String toString() => 'RegisterKeyReq[publicKey=$publicKey, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.publicKey != null) {
      json[r'publicKey'] = this.publicKey;
    } else {
      json[r'publicKey'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    return json;
  }

  /// Returns a new [RegisterKeyReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RegisterKeyReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RegisterKeyReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RegisterKeyReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RegisterKeyReq(
        publicKey: mapValueOfType<String>(json, r'publicKey'),
        title: mapValueOfType<String>(json, r'title'),
      );
    }
    return null;
  }

  static List<RegisterKeyReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RegisterKeyReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RegisterKeyReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RegisterKeyReq> mapFromJson(dynamic json) {
    final map = <String, RegisterKeyReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RegisterKeyReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RegisterKeyReq-objects as value to a dart map
  static Map<String, List<RegisterKeyReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RegisterKeyReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RegisterKeyReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

