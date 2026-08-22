//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SharesOut {
  /// Returns a new [SharesOut] instance.
  SharesOut({
    this.shares = const [],
  });
  /// Shares is the org's active shares — empty rather than absent when there are none, or when the controller cannot be reached.
  List<ShareView> shares;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SharesOut &&
    _deepEquality.equals(other.shares, shares);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (shares.hashCode);

  @override
  String toString() => 'SharesOut[shares=$shares]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'shares'] = this.shares;
    return json;
  }

  /// Returns a new [SharesOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SharesOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SharesOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SharesOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SharesOut(
        shares: ShareView.listFromJson(json[r'shares']),
      );
    }
    return null;
  }

  static List<SharesOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SharesOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SharesOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SharesOut> mapFromJson(dynamic json) {
    final map = <String, SharesOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SharesOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SharesOut-objects as value to a dart map
  static Map<String, List<SharesOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SharesOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SharesOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

