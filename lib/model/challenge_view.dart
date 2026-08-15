//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ChallengeView {
  /// Returns a new [ChallengeView] instance.
  ChallengeView({
    this.expiresAt,
    this.message,
    this.nonce,
    this.tokenId,
    this.ttlSeconds,
  });

  /// ExpiresAt is when the nonce stops being redeemable, as a Unix timestamp.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expiresAt;

  /// Message is the EXACT text to personal_sign. It is reconstructed server-side from the validated org, the slot and the nonce at redemption, so signing anything else cannot claim the slot.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  /// Nonce is the single-use, org-bound challenge value to send back with the signature.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nonce;

  /// TokenID is the slot the challenge was issued for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tokenId;

  /// TTLSeconds is the challenge lifetime in seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ttlSeconds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChallengeView &&
    other.expiresAt == expiresAt &&
    other.message == message &&
    other.nonce == nonce &&
    other.tokenId == tokenId &&
    other.ttlSeconds == ttlSeconds;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (nonce == null ? 0 : nonce!.hashCode) +
    (tokenId == null ? 0 : tokenId!.hashCode) +
    (ttlSeconds == null ? 0 : ttlSeconds!.hashCode);

  @override
  String toString() => 'ChallengeView[expiresAt=$expiresAt, message=$message, nonce=$nonce, tokenId=$tokenId, ttlSeconds=$ttlSeconds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt;
    } else {
      json[r'expiresAt'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.nonce != null) {
      json[r'nonce'] = this.nonce;
    } else {
      json[r'nonce'] = null;
    }
    if (this.tokenId != null) {
      json[r'tokenId'] = this.tokenId;
    } else {
      json[r'tokenId'] = null;
    }
    if (this.ttlSeconds != null) {
      json[r'ttlSeconds'] = this.ttlSeconds;
    } else {
      json[r'ttlSeconds'] = null;
    }
    return json;
  }

  /// Returns a new [ChallengeView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChallengeView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ChallengeView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ChallengeView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChallengeView(
        expiresAt: mapValueOfType<int>(json, r'expiresAt'),
        message: mapValueOfType<String>(json, r'message'),
        nonce: mapValueOfType<String>(json, r'nonce'),
        tokenId: mapValueOfType<int>(json, r'tokenId'),
        ttlSeconds: mapValueOfType<int>(json, r'ttlSeconds'),
      );
    }
    return null;
  }

  static List<ChallengeView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChallengeView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChallengeView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChallengeView> mapFromJson(dynamic json) {
    final map = <String, ChallengeView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChallengeView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChallengeView-objects as value to a dart map
  static Map<String, List<ChallengeView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChallengeView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChallengeView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

