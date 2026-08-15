//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamProviderItem {
  /// Returns a new [IamProviderItem] instance.
  IamProviderItem({
    this.bindingRule = const [],
    this.canSignIn,
    this.canSignUp,
    this.canUnlink,
    this.countryCodes = const [],
    this.name,
    this.owner,
    this.prompted,
    this.provider,
    this.rule,
    this.signupGroup,
  });

  List<String> bindingRule;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? canSignIn;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? canSignUp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? canUnlink;

  List<String> countryCodes;

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
  bool? prompted;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IamProvider? provider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rule;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? signupGroup;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamProviderItem &&
    _deepEquality.equals(other.bindingRule, bindingRule) &&
    other.canSignIn == canSignIn &&
    other.canSignUp == canSignUp &&
    other.canUnlink == canUnlink &&
    _deepEquality.equals(other.countryCodes, countryCodes) &&
    other.name == name &&
    other.owner == owner &&
    other.prompted == prompted &&
    other.provider == provider &&
    other.rule == rule &&
    other.signupGroup == signupGroup;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bindingRule.hashCode) +
    (canSignIn == null ? 0 : canSignIn!.hashCode) +
    (canSignUp == null ? 0 : canSignUp!.hashCode) +
    (canUnlink == null ? 0 : canUnlink!.hashCode) +
    (countryCodes.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (prompted == null ? 0 : prompted!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (rule == null ? 0 : rule!.hashCode) +
    (signupGroup == null ? 0 : signupGroup!.hashCode);

  @override
  String toString() => 'IamProviderItem[bindingRule=$bindingRule, canSignIn=$canSignIn, canSignUp=$canSignUp, canUnlink=$canUnlink, countryCodes=$countryCodes, name=$name, owner=$owner, prompted=$prompted, provider=$provider, rule=$rule, signupGroup=$signupGroup]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'bindingRule'] = this.bindingRule;
    if (this.canSignIn != null) {
      json[r'canSignIn'] = this.canSignIn;
    } else {
      json[r'canSignIn'] = null;
    }
    if (this.canSignUp != null) {
      json[r'canSignUp'] = this.canSignUp;
    } else {
      json[r'canSignUp'] = null;
    }
    if (this.canUnlink != null) {
      json[r'canUnlink'] = this.canUnlink;
    } else {
      json[r'canUnlink'] = null;
    }
      json[r'countryCodes'] = this.countryCodes;
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
    if (this.prompted != null) {
      json[r'prompted'] = this.prompted;
    } else {
      json[r'prompted'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.rule != null) {
      json[r'rule'] = this.rule;
    } else {
      json[r'rule'] = null;
    }
    if (this.signupGroup != null) {
      json[r'signupGroup'] = this.signupGroup;
    } else {
      json[r'signupGroup'] = null;
    }
    return json;
  }

  /// Returns a new [IamProviderItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamProviderItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamProviderItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamProviderItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamProviderItem(
        bindingRule: json[r'bindingRule'] is Iterable
            ? (json[r'bindingRule'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        canSignIn: mapValueOfType<bool>(json, r'canSignIn'),
        canSignUp: mapValueOfType<bool>(json, r'canSignUp'),
        canUnlink: mapValueOfType<bool>(json, r'canUnlink'),
        countryCodes: json[r'countryCodes'] is Iterable
            ? (json[r'countryCodes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        name: mapValueOfType<String>(json, r'name'),
        owner: mapValueOfType<String>(json, r'owner'),
        prompted: mapValueOfType<bool>(json, r'prompted'),
        provider: IamProvider.fromJson(json[r'provider']),
        rule: mapValueOfType<String>(json, r'rule'),
        signupGroup: mapValueOfType<String>(json, r'signupGroup'),
      );
    }
    return null;
  }

  static List<IamProviderItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamProviderItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamProviderItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamProviderItem> mapFromJson(dynamic json) {
    final map = <String, IamProviderItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamProviderItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamProviderItem-objects as value to a dart map
  static Map<String, List<IamProviderItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamProviderItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamProviderItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

