//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EsignField {
  /// Returns a new [EsignField] instance.
  EsignField({
    this.customText,
    this.fieldMeta,
    this.height,
    this.id,
    this.inserted,
    this.page,
    this.positionX,
    this.positionY,
    this.recipientId,
    this.type,
    this.width,
  });
  /// CustomText is the value a non-signature field was filled with, empty until it is. A signature's value is not here: it is stored separately and rendered onto the page at sealing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? customText;

  Object? fieldMeta;

  /// Height is the field's height, -1 when the renderer is to choose one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? height;

  /// ID is the field id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Inserted is whether this field has been filled in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? inserted;

  /// Page is the 1-based page the field sits on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? page;

  /// PositionX is the field's horizontal position on that page.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? positionX;

  /// PositionY is the field's vertical position on that page.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? positionY;

  /// RecipientID is who must fill this field. It is absent on a signer's own view of a document, where every field returned is already theirs.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? recipientId;

  /// Type is what the field collects — SIGNATURE, DATE, NAME, EMAIL, TEXT and the rest.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// Width is the field's width, -1 when the renderer is to choose one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? width;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EsignField &&
    other.customText == customText &&
    other.fieldMeta == fieldMeta &&
    other.height == height &&
    other.id == id &&
    other.inserted == inserted &&
    other.page == page &&
    other.positionX == positionX &&
    other.positionY == positionY &&
    other.recipientId == recipientId &&
    other.type == type &&
    other.width == width;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (customText == null ? 0 : customText!.hashCode) +
    (fieldMeta == null ? 0 : fieldMeta!.hashCode) +
    (height == null ? 0 : height!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (inserted == null ? 0 : inserted!.hashCode) +
    (page == null ? 0 : page!.hashCode) +
    (positionX == null ? 0 : positionX!.hashCode) +
    (positionY == null ? 0 : positionY!.hashCode) +
    (recipientId == null ? 0 : recipientId!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (width == null ? 0 : width!.hashCode);

  @override
  String toString() => 'EsignField[customText=$customText, fieldMeta=$fieldMeta, height=$height, id=$id, inserted=$inserted, page=$page, positionX=$positionX, positionY=$positionY, recipientId=$recipientId, type=$type, width=$width]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.customText != null) {
      json[r'customText'] = this.customText;
    } else {
      json[r'customText'] = null;
    }
    if (this.fieldMeta != null) {
      json[r'fieldMeta'] = this.fieldMeta;
    } else {
      json[r'fieldMeta'] = null;
    }
    if (this.height != null) {
      json[r'height'] = this.height;
    } else {
      json[r'height'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.inserted != null) {
      json[r'inserted'] = this.inserted;
    } else {
      json[r'inserted'] = null;
    }
    if (this.page != null) {
      json[r'page'] = this.page;
    } else {
      json[r'page'] = null;
    }
    if (this.positionX != null) {
      json[r'positionX'] = this.positionX;
    } else {
      json[r'positionX'] = null;
    }
    if (this.positionY != null) {
      json[r'positionY'] = this.positionY;
    } else {
      json[r'positionY'] = null;
    }
    if (this.recipientId != null) {
      json[r'recipientId'] = this.recipientId;
    } else {
      json[r'recipientId'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.width != null) {
      json[r'width'] = this.width;
    } else {
      json[r'width'] = null;
    }
    return json;
  }

  /// Returns a new [EsignField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EsignField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EsignField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EsignField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EsignField(
        customText: mapValueOfType<String>(json, r'customText'),
        fieldMeta: mapValueOfType<Object>(json, r'fieldMeta'),
        height: num.parse('${json[r'height']}'),
        id: mapValueOfType<String>(json, r'id'),
        inserted: mapValueOfType<bool>(json, r'inserted'),
        page: num.parse('${json[r'page']}'),
        positionX: num.parse('${json[r'positionX']}'),
        positionY: num.parse('${json[r'positionY']}'),
        recipientId: mapValueOfType<String>(json, r'recipientId'),
        type: mapValueOfType<String>(json, r'type'),
        width: num.parse('${json[r'width']}'),
      );
    }
    return null;
  }

  static List<EsignField> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EsignField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EsignField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EsignField> mapFromJson(dynamic json) {
    final map = <String, EsignField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EsignField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EsignField-objects as value to a dart map
  static Map<String, List<EsignField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EsignField>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EsignField.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

