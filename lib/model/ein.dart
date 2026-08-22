//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EIN {
  /// Returns a new [EIN] instance.
  EIN({
    this.expedited,
    this.forms = const [],
    this.naics,
    this.number,
    this.online,
    this.responsible,
    this.status,
  });
  /// Expedited reports that prioritised handling was asked for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? expedited;

  /// Forms are the forms this application owes, with what each is for.
  List<Form> forms;

  /// NAICS is the six-digit code for what the business does. The SS-4 asks it and the IRS will not process an application without one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? naics;

  /// Number is the issued EIN, absent until the IRS issues it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? number;

  /// Online reports that this application can be filed with the IRS online and issued in a sitting, rather than signed and posted. It is the single fact that decides how long a customer waits, so it is answered rather than implied by the absence of forms.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? online;

  /// Responsible is the person the IRS holds answerable.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Responsible? responsible;

  /// Status is how far it has got.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EIN &&
    other.expedited == expedited &&
    _deepEquality.equals(other.forms, forms) &&
    other.naics == naics &&
    other.number == number &&
    other.online == online &&
    other.responsible == responsible &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (expedited == null ? 0 : expedited!.hashCode) +
    (forms.hashCode) +
    (naics == null ? 0 : naics!.hashCode) +
    (number == null ? 0 : number!.hashCode) +
    (online == null ? 0 : online!.hashCode) +
    (responsible == null ? 0 : responsible!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'EIN[expedited=$expedited, forms=$forms, naics=$naics, number=$number, online=$online, responsible=$responsible, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.expedited != null) {
      json[r'expedited'] = this.expedited;
    } else {
      json[r'expedited'] = null;
    }
      json[r'forms'] = this.forms;
    if (this.naics != null) {
      json[r'naics'] = this.naics;
    } else {
      json[r'naics'] = null;
    }
    if (this.number != null) {
      json[r'number'] = this.number;
    } else {
      json[r'number'] = null;
    }
    if (this.online != null) {
      json[r'online'] = this.online;
    } else {
      json[r'online'] = null;
    }
    if (this.responsible != null) {
      json[r'responsible'] = this.responsible;
    } else {
      json[r'responsible'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [EIN] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EIN? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EIN[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EIN[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EIN(
        expedited: mapValueOfType<bool>(json, r'expedited'),
        forms: Form.listFromJson(json[r'forms']),
        naics: mapValueOfType<String>(json, r'naics'),
        number: mapValueOfType<String>(json, r'number'),
        online: mapValueOfType<bool>(json, r'online'),
        responsible: Responsible.fromJson(json[r'responsible']),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<EIN> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EIN>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EIN.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EIN> mapFromJson(dynamic json) {
    final map = <String, EIN>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EIN.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EIN-objects as value to a dart map
  static Map<String, List<EIN>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EIN>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EIN.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

