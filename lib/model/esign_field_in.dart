//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EsignFieldIn {
  /// Returns a new [EsignFieldIn] instance.
  EsignFieldIn({
    this.fieldMeta,
    this.height,
    this.page,
    this.positionX,
    this.positionY,
    this.recipientId,
    this.type,
    this.width,
  });
  Object? fieldMeta;

  Object? height;

  Object? page;

  Object? positionX;

  Object? positionY;

  Object? recipientId;

  Object? type;

  Object? width;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EsignFieldIn &&
    other.fieldMeta == fieldMeta &&
    other.height == height &&
    other.page == page &&
    other.positionX == positionX &&
    other.positionY == positionY &&
    other.recipientId == recipientId &&
    other.type == type &&
    other.width == width;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fieldMeta == null ? 0 : fieldMeta!.hashCode) +
    (height == null ? 0 : height!.hashCode) +
    (page == null ? 0 : page!.hashCode) +
    (positionX == null ? 0 : positionX!.hashCode) +
    (positionY == null ? 0 : positionY!.hashCode) +
    (recipientId == null ? 0 : recipientId!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (width == null ? 0 : width!.hashCode);

  @override
  String toString() => 'EsignFieldIn[fieldMeta=$fieldMeta, height=$height, page=$page, positionX=$positionX, positionY=$positionY, recipientId=$recipientId, type=$type, width=$width]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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

  /// Returns a new [EsignFieldIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EsignFieldIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EsignFieldIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EsignFieldIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EsignFieldIn(
        fieldMeta: mapValueOfType<Object>(json, r'fieldMeta'),
        height: mapValueOfType<Object>(json, r'height'),
        page: mapValueOfType<Object>(json, r'page'),
        positionX: mapValueOfType<Object>(json, r'positionX'),
        positionY: mapValueOfType<Object>(json, r'positionY'),
        recipientId: mapValueOfType<Object>(json, r'recipientId'),
        type: mapValueOfType<Object>(json, r'type'),
        width: mapValueOfType<Object>(json, r'width'),
      );
    }
    return null;
  }

  static List<EsignFieldIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EsignFieldIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EsignFieldIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EsignFieldIn> mapFromJson(dynamic json) {
    final map = <String, EsignFieldIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EsignFieldIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EsignFieldIn-objects as value to a dart map
  static Map<String, List<EsignFieldIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EsignFieldIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EsignFieldIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

