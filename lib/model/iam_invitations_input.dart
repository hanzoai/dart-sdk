//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamInvitationsInput {
  /// Returns a new [IamInvitationsInput] instance.
  IamInvitationsInput({
    this.application,
    this.code,
    this.createdTime,
    this.defaultCode,
    this.displayName,
    this.email,
    this.isRegexp,
    this.name,
    this.owner,
    this.phone,
    this.quota,
    this.signupGroup,
    this.state,
    this.updatedTime,
    this.usedCount,
    this.username,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? application;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? defaultCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isRegexp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? quota;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? signupGroup;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? usedCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamInvitationsInput &&
    other.application == application &&
    other.code == code &&
    other.createdTime == createdTime &&
    other.defaultCode == defaultCode &&
    other.displayName == displayName &&
    other.email == email &&
    other.isRegexp == isRegexp &&
    other.name == name &&
    other.owner == owner &&
    other.phone == phone &&
    other.quota == quota &&
    other.signupGroup == signupGroup &&
    other.state == state &&
    other.updatedTime == updatedTime &&
    other.usedCount == usedCount &&
    other.username == username;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (application == null ? 0 : application!.hashCode) +
    (code == null ? 0 : code!.hashCode) +
    (createdTime == null ? 0 : createdTime!.hashCode) +
    (defaultCode == null ? 0 : defaultCode!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (isRegexp == null ? 0 : isRegexp!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (phone == null ? 0 : phone!.hashCode) +
    (quota == null ? 0 : quota!.hashCode) +
    (signupGroup == null ? 0 : signupGroup!.hashCode) +
    (state == null ? 0 : state!.hashCode) +
    (updatedTime == null ? 0 : updatedTime!.hashCode) +
    (usedCount == null ? 0 : usedCount!.hashCode) +
    (username == null ? 0 : username!.hashCode);

  @override
  String toString() => 'IamInvitationsInput[application=$application, code=$code, createdTime=$createdTime, defaultCode=$defaultCode, displayName=$displayName, email=$email, isRegexp=$isRegexp, name=$name, owner=$owner, phone=$phone, quota=$quota, signupGroup=$signupGroup, state=$state, updatedTime=$updatedTime, usedCount=$usedCount, username=$username]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.application != null) {
      json[r'application'] = this.application;
    } else {
      json[r'application'] = null;
    }
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.createdTime != null) {
      json[r'createdTime'] = this.createdTime;
    } else {
      json[r'createdTime'] = null;
    }
    if (this.defaultCode != null) {
      json[r'defaultCode'] = this.defaultCode;
    } else {
      json[r'defaultCode'] = null;
    }
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.isRegexp != null) {
      json[r'isRegexp'] = this.isRegexp;
    } else {
      json[r'isRegexp'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.phone != null) {
      json[r'phone'] = this.phone;
    } else {
      json[r'phone'] = null;
    }
    if (this.quota != null) {
      json[r'quota'] = this.quota;
    } else {
      json[r'quota'] = null;
    }
    if (this.signupGroup != null) {
      json[r'signupGroup'] = this.signupGroup;
    } else {
      json[r'signupGroup'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    if (this.updatedTime != null) {
      json[r'updatedTime'] = this.updatedTime;
    } else {
      json[r'updatedTime'] = null;
    }
    if (this.usedCount != null) {
      json[r'usedCount'] = this.usedCount;
    } else {
      json[r'usedCount'] = null;
    }
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
    return json;
  }

  /// Returns a new [IamInvitationsInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamInvitationsInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamInvitationsInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamInvitationsInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamInvitationsInput(
        application: mapValueOfType<String>(json, r'application'),
        code: mapValueOfType<String>(json, r'code'),
        createdTime: mapValueOfType<String>(json, r'createdTime'),
        defaultCode: mapValueOfType<String>(json, r'defaultCode'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        email: mapValueOfType<String>(json, r'email'),
        isRegexp: mapValueOfType<bool>(json, r'isRegexp'),
        name: mapValueOfType<String>(json, r'name'),
        owner: mapValueOfType<String>(json, r'owner'),
        phone: mapValueOfType<String>(json, r'phone'),
        quota: mapValueOfType<int>(json, r'quota'),
        signupGroup: mapValueOfType<String>(json, r'signupGroup'),
        state: mapValueOfType<String>(json, r'state'),
        updatedTime: mapValueOfType<String>(json, r'updatedTime'),
        usedCount: mapValueOfType<int>(json, r'usedCount'),
        username: mapValueOfType<String>(json, r'username'),
      );
    }
    return null;
  }

  static List<IamInvitationsInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamInvitationsInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamInvitationsInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamInvitationsInput> mapFromJson(dynamic json) {
    final map = <String, IamInvitationsInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamInvitationsInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamInvitationsInput-objects as value to a dart map
  static Map<String, List<IamInvitationsInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamInvitationsInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamInvitationsInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

