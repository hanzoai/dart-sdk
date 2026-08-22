//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ChannelAdd {
  /// Returns a new [ChannelAdd] instance.
  ChannelAdd({
    this.account,
    this.id,
    this.kind,
    this.platform,
  });
  /// Account is the provider account this channel runs under: an ad-account, a page, or a mailing-list id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? account;

  /// ID is the campaign to add the channel to, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Kind is the channel kind and the identity a campaign holds at most one of: paid, organic or email.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Platform is the provider within the kind — meta, google, x, instagram, or the email provider.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? platform;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChannelAdd &&
    other.account == account &&
    other.id == id &&
    other.kind == kind &&
    other.platform == platform;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (platform == null ? 0 : platform!.hashCode);

  @override
  String toString() => 'ChannelAdd[account=$account, id=$id, kind=$kind, platform=$platform]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.platform != null) {
      json[r'platform'] = this.platform;
    } else {
      json[r'platform'] = null;
    }
    return json;
  }

  /// Returns a new [ChannelAdd] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChannelAdd? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ChannelAdd[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ChannelAdd[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChannelAdd(
        account: mapValueOfType<String>(json, r'account'),
        id: mapValueOfType<String>(json, r'id'),
        kind: mapValueOfType<String>(json, r'kind'),
        platform: mapValueOfType<String>(json, r'platform'),
      );
    }
    return null;
  }

  static List<ChannelAdd> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChannelAdd>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChannelAdd.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChannelAdd> mapFromJson(dynamic json) {
    final map = <String, ChannelAdd>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChannelAdd.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChannelAdd-objects as value to a dart map
  static Map<String, List<ChannelAdd>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChannelAdd>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChannelAdd.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

