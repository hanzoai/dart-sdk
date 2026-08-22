//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TrustAskView {
  /// Returns a new [TrustAskView] instance.
  TrustAskView({
    this.createdAt,
    this.decidedAt,
    this.decidedBy,
    this.email,
    this.expiresAt,
    this.id,
    this.item,
    this.link,
    this.nda,
    this.note,
    this.party,
    this.reason,
    this.state,
  });
  /// CreatedAt is when the ask arrived, in unix milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// DecidedAt is when it was answered, in unix milliseconds; 0 while open.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? decidedAt;

  /// DecidedBy is who answered it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? decidedBy;

  /// Email is the address that asked, as stated and UNVERIFIED — it names a party and proves nothing, which is why the grant is addressed to it rather than trusting it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// ExpiresAt is when a granted ask closes, in unix milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expiresAt;

  /// ID is the request's id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Item is the item asked for, empty when the whole released tier was asked for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? item;

  /// Link is the share link a granted ask became.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? link;

  /// Nda is the text this party accepted, verbatim as it stood when they accepted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nda;

  /// Note is what the decider wrote when refusing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? note;

  /// Party is the company the asker stated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? party;

  /// Reason is why they said they want it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  /// State is open, granted or refused.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrustAskView &&
    other.createdAt == createdAt &&
    other.decidedAt == decidedAt &&
    other.decidedBy == decidedBy &&
    other.email == email &&
    other.expiresAt == expiresAt &&
    other.id == id &&
    other.item == item &&
    other.link == link &&
    other.nda == nda &&
    other.note == note &&
    other.party == party &&
    other.reason == reason &&
    other.state == state;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (decidedAt == null ? 0 : decidedAt!.hashCode) +
    (decidedBy == null ? 0 : decidedBy!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (item == null ? 0 : item!.hashCode) +
    (link == null ? 0 : link!.hashCode) +
    (nda == null ? 0 : nda!.hashCode) +
    (note == null ? 0 : note!.hashCode) +
    (party == null ? 0 : party!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (state == null ? 0 : state!.hashCode);

  @override
  String toString() => 'TrustAskView[createdAt=$createdAt, decidedAt=$decidedAt, decidedBy=$decidedBy, email=$email, expiresAt=$expiresAt, id=$id, item=$item, link=$link, nda=$nda, note=$note, party=$party, reason=$reason, state=$state]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.decidedAt != null) {
      json[r'decidedAt'] = this.decidedAt;
    } else {
      json[r'decidedAt'] = null;
    }
    if (this.decidedBy != null) {
      json[r'decidedBy'] = this.decidedBy;
    } else {
      json[r'decidedBy'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt;
    } else {
      json[r'expiresAt'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.item != null) {
      json[r'item'] = this.item;
    } else {
      json[r'item'] = null;
    }
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    if (this.nda != null) {
      json[r'nda'] = this.nda;
    } else {
      json[r'nda'] = null;
    }
    if (this.note != null) {
      json[r'note'] = this.note;
    } else {
      json[r'note'] = null;
    }
    if (this.party != null) {
      json[r'party'] = this.party;
    } else {
      json[r'party'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    return json;
  }

  /// Returns a new [TrustAskView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrustAskView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrustAskView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrustAskView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrustAskView(
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        decidedAt: mapValueOfType<int>(json, r'decidedAt'),
        decidedBy: mapValueOfType<String>(json, r'decidedBy'),
        email: mapValueOfType<String>(json, r'email'),
        expiresAt: mapValueOfType<int>(json, r'expiresAt'),
        id: mapValueOfType<String>(json, r'id'),
        item: mapValueOfType<String>(json, r'item'),
        link: mapValueOfType<String>(json, r'link'),
        nda: mapValueOfType<String>(json, r'nda'),
        note: mapValueOfType<String>(json, r'note'),
        party: mapValueOfType<String>(json, r'party'),
        reason: mapValueOfType<String>(json, r'reason'),
        state: mapValueOfType<String>(json, r'state'),
      );
    }
    return null;
  }

  static List<TrustAskView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrustAskView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrustAskView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrustAskView> mapFromJson(dynamic json) {
    final map = <String, TrustAskView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrustAskView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrustAskView-objects as value to a dart map
  static Map<String, List<TrustAskView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrustAskView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrustAskView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

