//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class KeyView {
  /// Returns a new [KeyView] instance.
  KeyView({
    this.createdAt,
    this.fingerprint,
    this.id,
    this.publicKey,
    this.title,
  });

  /// CreatedAt is RFC 3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// Fingerprint is the key's SHA256 fingerprint (\"SHA256:…\"), globally unique and the handle SSH auth resolves a presented key by.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fingerprint;

  /// ID is the key's identifier (\"gitkey_…\"), the handle to delete it by.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// PublicKey is the canonical OpenSSH authorized-key line as stored.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? publicKey;

  /// Title is the key's label — the caller's, or the comment on the key line.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is KeyView &&
    other.createdAt == createdAt &&
    other.fingerprint == fingerprint &&
    other.id == id &&
    other.publicKey == publicKey &&
    other.title == title;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (fingerprint == null ? 0 : fingerprint!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (publicKey == null ? 0 : publicKey!.hashCode) +
    (title == null ? 0 : title!.hashCode);

  @override
  String toString() => 'KeyView[createdAt=$createdAt, fingerprint=$fingerprint, id=$id, publicKey=$publicKey, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.fingerprint != null) {
      json[r'fingerprint'] = this.fingerprint;
    } else {
      json[r'fingerprint'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
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

  /// Returns a new [KeyView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static KeyView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "KeyView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "KeyView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return KeyView(
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        fingerprint: mapValueOfType<String>(json, r'fingerprint'),
        id: mapValueOfType<String>(json, r'id'),
        publicKey: mapValueOfType<String>(json, r'publicKey'),
        title: mapValueOfType<String>(json, r'title'),
      );
    }
    return null;
  }

  static List<KeyView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <KeyView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KeyView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, KeyView> mapFromJson(dynamic json) {
    final map = <String, KeyView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = KeyView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of KeyView-objects as value to a dart map
  static Map<String, List<KeyView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<KeyView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = KeyView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

