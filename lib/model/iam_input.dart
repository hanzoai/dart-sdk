//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamInput {
  /// Returns a new [IamInput] instance.
  IamInput({
    this.action,
    this.clientIp,
    this.createdTime,
    this.isTriggered,
    this.language,
    this.method,
    this.name,
    this.object,
    this.organization,
    this.owner,
    this.requestUri,
    this.response,
    this.statusCode,
    this.user,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? action;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientIp;

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
  bool? isTriggered;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? language;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? method;

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
  String? object;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? organization;

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
  String? requestUri;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? response;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? statusCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamInput &&
    other.action == action &&
    other.clientIp == clientIp &&
    other.createdTime == createdTime &&
    other.isTriggered == isTriggered &&
    other.language == language &&
    other.method == method &&
    other.name == name &&
    other.object == object &&
    other.organization == organization &&
    other.owner == owner &&
    other.requestUri == requestUri &&
    other.response == response &&
    other.statusCode == statusCode &&
    other.user == user;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (action == null ? 0 : action!.hashCode) +
    (clientIp == null ? 0 : clientIp!.hashCode) +
    (createdTime == null ? 0 : createdTime!.hashCode) +
    (isTriggered == null ? 0 : isTriggered!.hashCode) +
    (language == null ? 0 : language!.hashCode) +
    (method == null ? 0 : method!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (object == null ? 0 : object!.hashCode) +
    (organization == null ? 0 : organization!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (requestUri == null ? 0 : requestUri!.hashCode) +
    (response == null ? 0 : response!.hashCode) +
    (statusCode == null ? 0 : statusCode!.hashCode) +
    (user == null ? 0 : user!.hashCode);

  @override
  String toString() => 'IamInput[action=$action, clientIp=$clientIp, createdTime=$createdTime, isTriggered=$isTriggered, language=$language, method=$method, name=$name, object=$object, organization=$organization, owner=$owner, requestUri=$requestUri, response=$response, statusCode=$statusCode, user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
    if (this.clientIp != null) {
      json[r'clientIp'] = this.clientIp;
    } else {
      json[r'clientIp'] = null;
    }
    if (this.createdTime != null) {
      json[r'createdTime'] = this.createdTime;
    } else {
      json[r'createdTime'] = null;
    }
    if (this.isTriggered != null) {
      json[r'isTriggered'] = this.isTriggered;
    } else {
      json[r'isTriggered'] = null;
    }
    if (this.language != null) {
      json[r'language'] = this.language;
    } else {
      json[r'language'] = null;
    }
    if (this.method != null) {
      json[r'method'] = this.method;
    } else {
      json[r'method'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.object != null) {
      json[r'object'] = this.object;
    } else {
      json[r'object'] = null;
    }
    if (this.organization != null) {
      json[r'organization'] = this.organization;
    } else {
      json[r'organization'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.requestUri != null) {
      json[r'requestUri'] = this.requestUri;
    } else {
      json[r'requestUri'] = null;
    }
    if (this.response != null) {
      json[r'response'] = this.response;
    } else {
      json[r'response'] = null;
    }
    if (this.statusCode != null) {
      json[r'statusCode'] = this.statusCode;
    } else {
      json[r'statusCode'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    return json;
  }

  /// Returns a new [IamInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamInput(
        action: mapValueOfType<String>(json, r'action'),
        clientIp: mapValueOfType<String>(json, r'clientIp'),
        createdTime: mapValueOfType<String>(json, r'createdTime'),
        isTriggered: mapValueOfType<bool>(json, r'isTriggered'),
        language: mapValueOfType<String>(json, r'language'),
        method: mapValueOfType<String>(json, r'method'),
        name: mapValueOfType<String>(json, r'name'),
        object: mapValueOfType<String>(json, r'object'),
        organization: mapValueOfType<String>(json, r'organization'),
        owner: mapValueOfType<String>(json, r'owner'),
        requestUri: mapValueOfType<String>(json, r'requestUri'),
        response: mapValueOfType<String>(json, r'response'),
        statusCode: mapValueOfType<int>(json, r'statusCode'),
        user: mapValueOfType<String>(json, r'user'),
      );
    }
    return null;
  }

  static List<IamInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamInput> mapFromJson(dynamic json) {
    final map = <String, IamInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamInput-objects as value to a dart map
  static Map<String, List<IamInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

