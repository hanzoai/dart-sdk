//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableShareTransfer {
  /// Returns a new [CaptableShareTransfer] instance.
  CaptableShareTransfer({
    this.certificateId,
    this.quantity,
    this.shareId,
    this.toStakeholderId,
  });
  Object? certificateId;

  Object? quantity;

  Object? shareId;

  Object? toStakeholderId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableShareTransfer &&
    other.certificateId == certificateId &&
    other.quantity == quantity &&
    other.shareId == shareId &&
    other.toStakeholderId == toStakeholderId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (certificateId == null ? 0 : certificateId!.hashCode) +
    (quantity == null ? 0 : quantity!.hashCode) +
    (shareId == null ? 0 : shareId!.hashCode) +
    (toStakeholderId == null ? 0 : toStakeholderId!.hashCode);

  @override
  String toString() => 'CaptableShareTransfer[certificateId=$certificateId, quantity=$quantity, shareId=$shareId, toStakeholderId=$toStakeholderId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.certificateId != null) {
      json[r'certificateId'] = this.certificateId;
    } else {
      json[r'certificateId'] = null;
    }
    if (this.quantity != null) {
      json[r'quantity'] = this.quantity;
    } else {
      json[r'quantity'] = null;
    }
    if (this.shareId != null) {
      json[r'shareId'] = this.shareId;
    } else {
      json[r'shareId'] = null;
    }
    if (this.toStakeholderId != null) {
      json[r'toStakeholderId'] = this.toStakeholderId;
    } else {
      json[r'toStakeholderId'] = null;
    }
    return json;
  }

  /// Returns a new [CaptableShareTransfer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableShareTransfer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableShareTransfer[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableShareTransfer[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableShareTransfer(
        certificateId: mapValueOfType<Object>(json, r'certificateId'),
        quantity: mapValueOfType<Object>(json, r'quantity'),
        shareId: mapValueOfType<Object>(json, r'shareId'),
        toStakeholderId: mapValueOfType<Object>(json, r'toStakeholderId'),
      );
    }
    return null;
  }

  static List<CaptableShareTransfer> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableShareTransfer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableShareTransfer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableShareTransfer> mapFromJson(dynamic json) {
    final map = <String, CaptableShareTransfer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableShareTransfer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableShareTransfer-objects as value to a dart map
  static Map<String, List<CaptableShareTransfer>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableShareTransfer>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableShareTransfer.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

