//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GetAiRouterHistory200Response {
  /// Returns a new [GetAiRouterHistory200Response] instance.
  GetAiRouterHistory200Response({
    this.data,
    this.data2,
    required this.msg,
    required this.status,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AiRouterHistory? data;

  Object? data2;

  /// Empty on success, the reason on failure.
  String msg;

  GetAiRouterHistory200ResponseStatusEnum status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetAiRouterHistory200Response &&
    other.data == data &&
    other.data2 == data2 &&
    other.msg == msg &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data == null ? 0 : data!.hashCode) +
    (data2 == null ? 0 : data2!.hashCode) +
    (msg.hashCode) +
    (status.hashCode);

  @override
  String toString() => 'GetAiRouterHistory200Response[data=$data, data2=$data2, msg=$msg, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    if (this.data2 != null) {
      json[r'data2'] = this.data2;
    } else {
      json[r'data2'] = null;
    }
      json[r'msg'] = this.msg;
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [GetAiRouterHistory200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetAiRouterHistory200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetAiRouterHistory200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetAiRouterHistory200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetAiRouterHistory200Response(
        data: AiRouterHistory.fromJson(json[r'data']),
        data2: mapValueOfType<Object>(json, r'data2'),
        msg: mapValueOfType<String>(json, r'msg')!,
        status: GetAiRouterHistory200ResponseStatusEnum.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<GetAiRouterHistory200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetAiRouterHistory200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetAiRouterHistory200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetAiRouterHistory200Response> mapFromJson(dynamic json) {
    final map = <String, GetAiRouterHistory200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetAiRouterHistory200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetAiRouterHistory200Response-objects as value to a dart map
  static Map<String, List<GetAiRouterHistory200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetAiRouterHistory200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetAiRouterHistory200Response.listFromJson(entry.value, growable: growable,);
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


class GetAiRouterHistory200ResponseStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const GetAiRouterHistory200ResponseStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ok = GetAiRouterHistory200ResponseStatusEnum._(r'ok');
  static const error = GetAiRouterHistory200ResponseStatusEnum._(r'error');

  /// List of all possible values in this [enum][GetAiRouterHistory200ResponseStatusEnum].
  static const values = <GetAiRouterHistory200ResponseStatusEnum>[
    ok,
    error,
  ];

  static GetAiRouterHistory200ResponseStatusEnum? fromJson(dynamic value) => GetAiRouterHistory200ResponseStatusEnumTypeTransformer().decode(value);

  static List<GetAiRouterHistory200ResponseStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetAiRouterHistory200ResponseStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetAiRouterHistory200ResponseStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GetAiRouterHistory200ResponseStatusEnum] to String,
/// and [decode] dynamic data back to [GetAiRouterHistory200ResponseStatusEnum].
class GetAiRouterHistory200ResponseStatusEnumTypeTransformer {
  factory GetAiRouterHistory200ResponseStatusEnumTypeTransformer() => _instance ??= const GetAiRouterHistory200ResponseStatusEnumTypeTransformer._();

  const GetAiRouterHistory200ResponseStatusEnumTypeTransformer._();

  String encode(GetAiRouterHistory200ResponseStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GetAiRouterHistory200ResponseStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GetAiRouterHistory200ResponseStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ok': return GetAiRouterHistory200ResponseStatusEnum.ok;
        case r'error': return GetAiRouterHistory200ResponseStatusEnum.error;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GetAiRouterHistory200ResponseStatusEnumTypeTransformer] instance.
  static GetAiRouterHistory200ResponseStatusEnumTypeTransformer? _instance;
}

