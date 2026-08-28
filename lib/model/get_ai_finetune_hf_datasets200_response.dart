//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GetAiFinetuneHfDatasets200Response {
  /// Returns a new [GetAiFinetuneHfDatasets200Response] instance.
  GetAiFinetuneHfDatasets200Response({
    this.data = const [],
    this.data2,
    required this.msg,
    required this.status,
  });
  List<HfDataset> data;

  Object? data2;

  /// Empty on success, the reason on failure.
  String msg;

  GetAiFinetuneHfDatasets200ResponseStatusEnum status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetAiFinetuneHfDatasets200Response &&
    _deepEquality.equals(other.data, data) &&
    other.data2 == data2 &&
    other.msg == msg &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode) +
    (data2 == null ? 0 : data2!.hashCode) +
    (msg.hashCode) +
    (status.hashCode);

  @override
  String toString() => 'GetAiFinetuneHfDatasets200Response[data=$data, data2=$data2, msg=$msg, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
    if (this.data2 != null) {
      json[r'data2'] = this.data2;
    } else {
      json[r'data2'] = null;
    }
      json[r'msg'] = this.msg;
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [GetAiFinetuneHfDatasets200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetAiFinetuneHfDatasets200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetAiFinetuneHfDatasets200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetAiFinetuneHfDatasets200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetAiFinetuneHfDatasets200Response(
        data: HfDataset.listFromJson(json[r'data']),
        data2: mapValueOfType<Object>(json, r'data2'),
        msg: mapValueOfType<String>(json, r'msg')!,
        status: GetAiFinetuneHfDatasets200ResponseStatusEnum.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<GetAiFinetuneHfDatasets200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetAiFinetuneHfDatasets200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetAiFinetuneHfDatasets200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetAiFinetuneHfDatasets200Response> mapFromJson(dynamic json) {
    final map = <String, GetAiFinetuneHfDatasets200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetAiFinetuneHfDatasets200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetAiFinetuneHfDatasets200Response-objects as value to a dart map
  static Map<String, List<GetAiFinetuneHfDatasets200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetAiFinetuneHfDatasets200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetAiFinetuneHfDatasets200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'msg',
    'status',
  };
}


class GetAiFinetuneHfDatasets200ResponseStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const GetAiFinetuneHfDatasets200ResponseStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ok = GetAiFinetuneHfDatasets200ResponseStatusEnum._(r'ok');
  static const error = GetAiFinetuneHfDatasets200ResponseStatusEnum._(r'error');

  /// List of all possible values in this [enum][GetAiFinetuneHfDatasets200ResponseStatusEnum].
  static const values = <GetAiFinetuneHfDatasets200ResponseStatusEnum>[
    ok,
    error,
  ];

  static GetAiFinetuneHfDatasets200ResponseStatusEnum? fromJson(dynamic value) => GetAiFinetuneHfDatasets200ResponseStatusEnumTypeTransformer().decode(value);

  static List<GetAiFinetuneHfDatasets200ResponseStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetAiFinetuneHfDatasets200ResponseStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetAiFinetuneHfDatasets200ResponseStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GetAiFinetuneHfDatasets200ResponseStatusEnum] to String,
/// and [decode] dynamic data back to [GetAiFinetuneHfDatasets200ResponseStatusEnum].
class GetAiFinetuneHfDatasets200ResponseStatusEnumTypeTransformer {
  factory GetAiFinetuneHfDatasets200ResponseStatusEnumTypeTransformer() => _instance ??= const GetAiFinetuneHfDatasets200ResponseStatusEnumTypeTransformer._();

  const GetAiFinetuneHfDatasets200ResponseStatusEnumTypeTransformer._();

  String encode(GetAiFinetuneHfDatasets200ResponseStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GetAiFinetuneHfDatasets200ResponseStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GetAiFinetuneHfDatasets200ResponseStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ok': return GetAiFinetuneHfDatasets200ResponseStatusEnum.ok;
        case r'error': return GetAiFinetuneHfDatasets200ResponseStatusEnum.error;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GetAiFinetuneHfDatasets200ResponseStatusEnumTypeTransformer] instance.
  static GetAiFinetuneHfDatasets200ResponseStatusEnumTypeTransformer? _instance;
}

