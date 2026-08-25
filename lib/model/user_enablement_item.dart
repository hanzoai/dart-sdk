//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class UserEnablementItem {
  /// Returns a new [UserEnablementItem] instance.
  UserEnablementItem({
    this.canOptIn,
    this.effective,
    this.id,
    this.kind,
    this.optedIn,
    this.state,
  });
  /// CanOptIn is whether POST /v1/pricing/enablement/optin would do anything here: the item is in beta and this org is not on its list yet. False for a caller with no validated org, who has no org to enrol.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? canOptIn;

  /// Effective is whether the caller's org may use the item right now, which is the field to branch on: true for any ga item, for a beta this org holds, and never for an off one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? effective;

  /// ID is the item within that namespace — a model id, a provider name, or a feature key.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Kind is the namespace the id lives in: \"model\", \"provider\" or \"feature\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// OptedIn is whether the caller's org is on this item's beta grant list. It can be true on an \"off\" item — the list survives the kill switch and is simply ignored while it is thrown — so it does not imply Effective.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? optedIn;

  /// State is the item's GLOBAL availability — \"off\", \"beta\" or \"ga\" — which is the operator's setting and not this caller's answer. Effective is that.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserEnablementItem &&
    other.canOptIn == canOptIn &&
    other.effective == effective &&
    other.id == id &&
    other.kind == kind &&
    other.optedIn == optedIn &&
    other.state == state;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (canOptIn == null ? 0 : canOptIn!.hashCode) +
    (effective == null ? 0 : effective!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (optedIn == null ? 0 : optedIn!.hashCode) +
    (state == null ? 0 : state!.hashCode);

  @override
  String toString() => 'UserEnablementItem[canOptIn=$canOptIn, effective=$effective, id=$id, kind=$kind, optedIn=$optedIn, state=$state]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.canOptIn != null) {
      json[r'canOptIn'] = this.canOptIn;
    } else {
      json[r'canOptIn'] = null;
    }
    if (this.effective != null) {
      json[r'effective'] = this.effective;
    } else {
      json[r'effective'] = null;
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
    if (this.optedIn != null) {
      json[r'optedIn'] = this.optedIn;
    } else {
      json[r'optedIn'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    return json;
  }

  /// Returns a new [UserEnablementItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserEnablementItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserEnablementItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserEnablementItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserEnablementItem(
        canOptIn: mapValueOfType<bool>(json, r'canOptIn'),
        effective: mapValueOfType<bool>(json, r'effective'),
        id: mapValueOfType<String>(json, r'id'),
        kind: mapValueOfType<String>(json, r'kind'),
        optedIn: mapValueOfType<bool>(json, r'optedIn'),
        state: mapValueOfType<String>(json, r'state'),
      );
    }
    return null;
  }

  static List<UserEnablementItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserEnablementItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserEnablementItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserEnablementItem> mapFromJson(dynamic json) {
    final map = <String, UserEnablementItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserEnablementItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserEnablementItem-objects as value to a dart map
  static Map<String, List<UserEnablementItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserEnablementItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserEnablementItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

